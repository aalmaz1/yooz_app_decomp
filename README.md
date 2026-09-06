# Yoozworld v1.2.0: Technical Privacy Hardening & Boot Stability Report

This repository contains the standalone source code of the modified Yoozworld Android application. This version is pre-patched for privacy and stability.

## 🛠️ Key Technical Fixes

### 1. Boot-time Stability (The "Black Screen" Fix)
*   **Cognito Data Mocking**: Replaced `getContextData()` in `AmplifyAuthCognitoPlugin.smali` with static fake values.
*   **Fail-safe Plugin Registration**: Modified `GeneratedPluginRegistrant.smali` to use `Throwable` catch blocks.
*   **Explicit Registration**: Added manual calls to `GeneratedPluginRegistrant.registerWith(engine)` in `HomeActivity` and `BLfLst` to ensure initialization.
*   **Hang Prevention**: Disabled `LogcatThread` by neutralising its methods to prevent deadlocks from `Runtime.exec("logcat")`.

### 2. Privacy Hardening (Telemetry Reduction)
*   **ID Masking**: Extended `DeviceIdUtil`, `FirebaseInstallations`, and `AmplifyAnalyticsPinpointPlugin` to return a static string: `yooz_private_id`.
*   **CCT "Blindfold"**: Patched `CctTransportBackend` to immediately return `null` in `doSend`, dropping telemetry packets.
*   **Analytics Mitigation**: Core logging methods in `FirebaseAnalytics.smali` and GMS `zzdy.smali` are stubbed.

For a detailed list of all applied code modifications, see [PATCHES.md](PATCHES.md).

---

## 🏗️ How to Build
Collected and signed locally.

1.  **Build and Sign**:
    ```bash
    ./build.sh
    ```
    *By default, it uses the debug keystore. Use `KEYSTORE=path/to/key.ks ./build.sh` for custom keys.*

black-screen fix НЕ подтверждён на устройстве; сборка проверена только на уровне apktool+sign.

## 📁 Repository Structure
*   `smali/`, `smali_classes2-4/`: Fixed Smali source code.
*   `unknown/res/`, `assets/`, `lib/`: Full application binaries and resources (raw).
*   `AndroidManifest.xml`: Full manifest (binary format).

---

## ⚠️ Disclaimer
16 KB page size support is **NOT** supported for native libraries. `libJNIControl.so`, `libimage_processing_util_jni.so`, and `libsqlite3.so` have `p_align = 0x1000`. Re-linking these libraries is required for full compatibility.

This is a research project for educational purposes. All original intellectual property belongs to the respective owners.
