#!/bin/bash
# build.sh - Build, align and sign script for yoozworld
set -e

# Config
FINAL_APK="yooz_final_v3_private.apk"
ALIGNED_APK="out-aligned.apk"
TEMP_APK="out.apk"
KS="${KEYSTORE:-$HOME/.android/debug.keystore}"

# 1. Dependency check
for tool in apktool java zip apksigner; do
    if ! command -v "$tool" &> /dev/null; then
        echo "[-] Error: '$tool' not found in PATH."
        exit 1
    fi
done

# Find zipalign with -P support
for c in "$ANDROID_HOME"/build-tools/*/zipalign /usr/bin/zipalign /usr/local/bin/zipalign; do
    if [ -f "$c" ]; then
        if "$c" 2>&1 | grep -q -- '-P '; then
            ZIPALIGN="$c"
            break
        fi
    fi
done

if [ -z "$ZIPALIGN" ]; then
    echo "[-] Error: zipalign with -P support not found. Please install build-tools;35.0.0 or newer."
    exit 1
fi

if [ ! -f "$KS" ]; then
    echo "[-] Error: Keystore not found at $KS. Please set KEYSTORE env var."
    exit 1
fi

echo "[+] Tools found. Using zipalign: $ZIPALIGN. Keystore: $KS. Starting build..."

# 2. Build APK
apktool b . -o "$TEMP_APK" --copy-original

# 3. Remove old signatures (only specific signature files)
echo "[+] Stripping old signatures..."
zip -d "$TEMP_APK" "META-INF/*.SF" "META-INF/*.RSA" "META-INF/*.DSA" "META-INF/MANIFEST.MF" || echo "[!] No signatures to remove."

# 4. Zipalign with 16KB alignment
echo "[+] Zipaligning (16 KB alignment)..."
"$ZIPALIGN" -P 16 -f -v 4 "$TEMP_APK" "$ALIGNED_APK"

# 5. Sign APK
echo "[+] Signing APK..."
apksigner sign --ks "$KS" --ks-key-alias "${KS_ALIAS:-androiddebugkey}" \
  --ks-pass pass:"${KS_PASS:-android}" --key-pass pass:"${KS_PASS:-android}" \
  --out "$FINAL_APK" "$ALIGNED_APK"

# 6. Verification
echo "[+] Verifying signature..."
apksigner verify --print-certs "$FINAL_APK"

echo "[+] Verifying alignment..."
"$ZIPALIGN" -c -P 16 -v 4 "$FINAL_APK"

echo "[+] Build completed: $FINAL_APK"
echo ""
echo "-----------------------------------------------------------------------"
echo "DISCLAIMER: 16 KB page size support status"
echo "16 KB page size support is NOT supported for native libraries."
echo "libJNIControl.so, libimage_processing_util_jni.so, and libsqlite3.so"
echo "have ELF p_align = 0x1000. Full 16 KB support requires re-linking"
echo "these libraries with -z max-page-size=16384."
echo "-----------------------------------------------------------------------"
