<<<<<<< HEAD
# YOOZ World 1.2.0: Reverse Engineering & Optimization Showcase
=======
# Yoozworld 1.2.0: Deep Privacy Hardening & Android 16 Optimized Edition
>>>>>>> 962d59ad (Verified Privacy Hardening: Stubbed Analytics (Firebase/GMS/AWS), Anonymized IDs, Android 16 Page Alignment)

This repository contains the decompiled and surgically modified source code for the **Yoozworld v1.2.0** application. 

This project goes beyond simple bloatware removal. It implements a complete **Blackout of Telemetry** and **Zero-Knowledge Device Identity**, while maintaining 100% functionality for smartwatch communication and Flutter UI stability.

## 🛡️ Privacy Hardening (Core Mission)
- **Identity Anonymization**: Modified `DeviceIdUtil` and `FirebaseInstallations` to return a static identifier (`yooz_private_id`) instead of real **IMEI, Serial, or Android ID**.
- **Telemetry Neutralization**: Surgically stubbed the core logic of **Firebase Analytics**, **GMS AppMeasurement**, and **AWS Amplify Pinpoint**. Events are "swallowed" at the code level before reaching the network stack.
- **Transport Blackout**: Stubbed `CctTransportBackend` (Google's data transport) to return success without performing any network transmission.
- **Permission Sanitization**: Stripped invasive permissions from `AndroidManifest.xml` (Phone Identity, GPS Tracking, Telephony intercept).
- **Security Hardening**: Disabled system backups and enforced encrypted-only traffic.

**Proof of Work**: See the full [Privacy Ledger](reports/privacy_ledger.md) for detailed method stubs and manifest changes.

## ⚡ Technical Optimizations & Compatibility
- **Android 15/16 Support**: Implemented **16KB Page Alignment** (`zipalign -p 16`). Critical for modern Android kernels to load native libraries without crashes.
- **Zero-Extraction Architecture**: Native libraries run directly from the APK (`extractNativeLibs="false"`), improving startup speed and reducing footprint.
- **Modern Signature**: Signed with **V1, V2, and V3 schemes** for maximum compatibility.

## 🧹 Bloatware Removal
- **Religious Modules**: Completely disabled "Muslim features" (Prayer times, Hijri calendars) from JSON.
- **Fitness UI Cleanup**: Cleaned `device_config.json` to prevent unwanted fitness module initialization.
- **Size**: Optimized to **62MB** (down from 115MB) by stripping redundant architectures and assets.

## 📁 Repository Contents
- `/smali`, `/smali_classes2,3,4`: Patched source code with verified privacy stubs.
- `AndroidManifest.xml`: Hardened, security-focused manifest.
- `reports/`: Baseline and After telemetry inventories + Privacy Ledger.
- `patched.keystore`: Developer key (Password: `android`).

## 🛠 Build Instructions
1. **Rebuild**: `apktool b . -o yooz_rebuilt.apk`
2. **Align (16KB)**: `zipalign -v -p 16 yooz_rebuilt.apk yooz_aligned.apk`
3. **Sign**: `apksigner sign --ks patched.keystore yooz_aligned.apk`

## ⚠️ Disclaimer
This is a research project for educational purposes. It demonstrates advanced reverse engineering and privacy hardening. All original assets belong to their respective owners. Use at your own risk.
