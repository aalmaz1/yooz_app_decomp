#!/bin/bash
# build.sh - Build, align and sign script for yoozworld
set -e

# Config
FINAL_APK="yooz_final_v3_private.apk"
ALIGNED_APK="out-aligned.apk"
TEMP_APK="out.apk"
KS="${KEYSTORE:-$HOME/.android/debug.keystore}"

# Setup ANDROID_HOME and PATH for build tools
ANDROID_HOME="${ANDROID_HOME:-$HOME/Android/Sdk}"
export PATH="$HOME/.local/bin:$HOME/bin:$ANDROID_HOME/build-tools/37.0.0:$ANDROID_HOME/build-tools/36.0.0:$ANDROID_HOME/build-tools/35.0.0:$PATH"

# 1. Dependency check
for tool in apktool java zip; do
    if ! command -v "$tool" &> /dev/null; then
        echo "[-] Error: '$tool' not found in PATH."
        exit 1
    fi
done

# Find apksigner
APKSIGNER=""
for candidate in apksigner "$ANDROID_HOME"/build-tools/*/apksigner; do
    if command -v "$candidate" &> /dev/null || [ -x "$candidate" ]; then
        APKSIGNER="$candidate"
    fi
done

if [ -z "$APKSIGNER" ]; then
    echo "[-] Error: apksigner not found. Please install Android SDK build-tools."
    exit 1
fi

# Find zipalign with -P support
ZIPALIGN=""
for c in zipalign "$ANDROID_HOME"/build-tools/*/zipalign /usr/bin/zipalign /usr/local/bin/zipalign; do
    if command -v "$c" &> /dev/null || [ -x "$c" ]; then
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

echo "[+] Tools found. Using zipalign: $ZIPALIGN | apksigner: $APKSIGNER | Keystore: $KS. Starting build..."

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
"$APKSIGNER" sign --ks "$KS" --ks-key-alias "${KS_ALIAS:-androiddebugkey}" \
  --ks-pass pass:"${KS_PASS:-android}" --key-pass pass:"${KS_PASS:-android}" \
  --out "$FINAL_APK" "$ALIGNED_APK"

# 6. Verification
echo "[+] Verifying signature..."
"$APKSIGNER" verify --print-certs "$FINAL_APK"

echo "[+] Verifying alignment..."
"$ZIPALIGN" -c -P 16 -v 4 "$FINAL_APK"

if [ -f "verify_apk.py" ]; then
    echo "[+] Verifying APK composition..."
    python3 verify_apk.py "$FINAL_APK"
fi

# 7. Cleanup
echo "[+] Cleaning up intermediate files..."
rm -f "$TEMP_APK" "$ALIGNED_APK"

echo "[+] Build successfully completed: $FINAL_APK"
