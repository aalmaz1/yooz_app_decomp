# YOOZ World 1.2.0: Reverse Engineering & Optimization Showcase

This repository contains the decompiled, analyzed, and optimized source code for the **Yoozworld v1.2.0** application.

The primary objective of this project was to transform a bloated **115MB** IoT-connected application into a lean, stable **62MB "Legendary Edition."**

## 🚀 Key Achievements
- **50% Footprint Reduction**: Stripped the app from 115 MB to **62 MB**.
- **Privacy Hardening**: Identified and neutralized data-leaking telemetry and background logging via Smali method stubbing.
- **100% Feature Parity**: Verified working state for the "Open" menu, wallpaper installation, and vape game synchronization.

## 🛠 Advanced Toolchain
- **JADX & Strings**: High-level logic reconstruction and endpoint discovery.
- **Ghidra**: Deep static analysis of native `.so` libraries to map JNI communication.
- **ImHex**: Binary validation to ensure structural integrity.
- **FFmpeg**: Media pipeline optimization (WAV ➡️ MP3).
- **apksigner**: Final V2/V3 signature deployment for modern Android compatibility.

## 📜 The Engineering Journey
This project was a deep dive into the "black box" of a modern IoT-connected Flutter app.

1.  **Bloat Analysis**: Identified that ~45MB was occupied by redundant CPU architectures (`x86`, `x86_64`, `v7a`).
2.  **Logic Mapping**: Used **JADX** to trace the flow of user data within the `cn.baos.watch.sdk` package.
3.  **The Stability Breakthrough**: Initial attempts to delete entire library packages caused DEX linkage errors. Shifted strategy to **Method Stubbing**—replacing implementation bodies with `return-void` in Smali to preserve integrity.
4.  **Final Polish**: Rebuilt the app with a modern `arm64-v8a` target, resulting in a significantly faster and more private experience.

## 📁 Project Structure
- `/smali`: Decompiled source code with privacy stubs applied.
- `/lib`: Optimized native libraries (arm64-v8a only).
- `/assets` & `/res`: Cleaned and media-optimized resources.
- `AndroidManifest.xml`: Hardened configuration.
- `yooz_LITE_LEGEND_62MB.apk`: The verified "Legendary" stable build.

## 🛠 Build Instructions
1.  **Build**: `apktool b . -o yooz_rebuilt.apk`
2.  **Align**: `zipalign -v 4 yooz_rebuilt.apk yooz_final.apk`
3.  **Sign**: `apksigner sign --ks your_key.jks yooz_final.apk`

## ⚠️ Disclaimer
This project is for educational and research purposes only. All rights to the original software remain with the respective copyright holders.
