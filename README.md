# Yoozworld v1.2.0: Technical Privacy Hardening & Boot Stability Report

This repository contains a modified version of the Yoozworld Android application. The project focuses on **Deterministic Telemetry Neutralization** and resolving critical boot-time failures caused by modern Android runtime constraints.

## 🛠️ Key Technical Fixes

### 1. Boot-time Stability (The "Black Screen" Fix)
*   **DEX Verifier Repair**: Resolved a `java.lang.VerifyError` in `AmplifyAuthCognitoPlugin.smali`. The original code had a register assignment conflict in `getContextData()` when handling 64-bit `Long` values.
*   **Fail-safe Plugin Registration**: Modified `GeneratedPluginRegistrant.smali` to use `Throwable` catch blocks. This prevents the entire application from crashing if a non-critical plugin fails to verify.
*   **Explicit Registration**: Added manual calls to `GeneratedPluginRegistrant.registerWith(engine)` in `HomeActivity` and `BLfLst` to ensure the Flutter environment initializes even if the default auto-registration mechanism fails.
*   **Hang Prevention**: Commented out the `LogcatThread` initialization in `HomeActivity`. This thread performed `Runtime.exec("logcat")`, which causes deadlocks or security exceptions on Android 13+.

### 2. Privacy Hardening (Telemetry Blackout)
*   **ID Masking**: Overrode `DeviceIdUtil` methods (`getDeviceId`, `getAndroidId`) to return a static string: `yooz_private_id`.
*   **CCT "Blindfold"**: Patched `com.google.android.datatransport.cct.CctTransportBackend`. The `doSend` method now immediately returns `null`, silently dropping all telemetry data packets intended for Google Play Services.
*   **Firebase Analytics Neutralization**: Stubbed core event logging methods in `FirebaseAnalytics.smali` and the GMS `zzdy.smali` worker to prevent behavioral tracking.

### 3. Native Runtime & Build Optimization
*   **16KB Page Alignment**: Rebuilt the APK using `zipalign -p 16` to ensure compatibility with Android 15, 16, and modern Samsung (One UI 8.5+) kernels.
*   **Stateless Execution**: Removed invasive providers and receivers from the manifest to prevent background auto-start of tracking services.

---

## 🏗️ Build Workflow
Since the project's resource structure is complex, we use a **Manual DEX Injection** workflow:
1.  Smali sources are compiled into `.dex` files via `apktool`.
2.  The resulting `classes.dex` files are injected into the stable base APK using `zip -j`.
3.  The APK is aligned with `zipalign -p 16`.
4.  The final artifact is signed with a new developer key.

## 📁 Repository Structure
*   `smali/`, `smali_classes2/`, `smali_classes3/`, `smali_classes4/`: Decompiled source code.
*   `res/`: Application resources and XML configurations.
*   `AndroidManifest.xml`: Cleaned and optimized manifest.

---

## ⚠️ Disclaimer
This is a research project for educational purposes in the field of Android reverse engineering. All original intellectual property belongs to the respective owners.
