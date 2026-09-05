# Yoozworld v1.2.0: Technical Privacy Hardening & Boot Stability Report

This repository contains the standalone source code of the modified Yoozworld Android application. This version is pre-patched for privacy and stability.

## 🛠️ Key Technical Fixes

### 1. Boot-time Stability (The "Black Screen" Fix)
*   **DEX Verifier Repair**: Resolved a `java.lang.VerifyError` in `AmplifyAuthCognitoPlugin.smali`. The original code had a register assignment conflict in `getContextData()` when handling 64-bit `Long` values.
*   **Fail-safe Plugin Registration**: Modified `GeneratedPluginRegistrant.smali` to use `Throwable` catch blocks. This prevents the entire application from crashing if a non-critical plugin fails to verify.
*   **Explicit Registration**: Added manual calls to `GeneratedPluginRegistrant.registerWith(engine)` in `HomeActivity` and `BLfLst` to ensure initialization.
*   **Hang Prevention**: Disabled `LogcatThread` to prevent deadlocks from `Runtime.exec("logcat")`.

### 2. Privacy Hardening (Telemetry Reduction)
*   **ID Masking**: Extended `DeviceIdUtil` methods (`getDeviceId`, `getAndroidId`, `getUniqueID`, `getIMEI`) to return a static string: `yooz_private_id`.
*   **CCT "Blindfold"**: Patched `CctTransportBackend` to immediately return `null` in `doSend`, dropping telemetry packets.
*   **Firebase Analytics Mitigation**: Core logging methods in `FirebaseAnalytics.smali` and GMS `zzdy.smali` are stubbed.

---

## 🏗️ How to Build
This repository uses **Raw Resource Mapping** to ensure 100% build compatibility without needing external frameworks.

1.  **Clone the repository**.
2.  **Build the APK** using Apktool:
    ```bash
    apktool b . -o yooz_built.apk --copy-original
    ```
    *The `--copy-original` flag is mandatory to link the binary resources and original manifest signature metadata.*
3.  **Align the APK** (4KB or 16KB):
    ```bash
    zipalign -v -p 16 yooz_built.apk yooz_aligned.apk
    ```
4.  **Sign the APK**:
    ```bash
    apksigner sign --ks your_key.keystore --out yooz_final_v3_private.apk yooz_aligned.apk
    ```

## 📁 Repository Structure
*   `smali/`, `smali_classes2-4/`: Fixed Smali source code.
*   `res/`, `assets/`, `lib/`: Full application binaries and resources (raw).
*   `AndroidManifest.xml`: Full manifest (binary format).

---

## ⚠️ Disclaimer
This is a research project for educational purposes in the field of Android reverse engineering. All original intellectual property belongs to the respective owners.
