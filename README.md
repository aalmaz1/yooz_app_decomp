# Yoozworld 1.2.0 (Legendary Optimized Edition)

This repository contains the decompiled and optimized source code for the **Yoozworld v1.2.0** application.
The goal of this project was to create the most lightweight and stable version of the app while preserving all original features (including vape games and wallpaper installation).

## 🚀 Key Highlights
The application size has been reduced from **115 MB** to **62 MB** without any loss in functionality.

### Optimizations Performed:
1.  **Architecture Optimization**: Removed native libraries for obsolete and unused architectures (`x86`, `x86_64`, `armeabi-v7a`). Only the modern `arm64-v8a` architecture is retained, saving ~45 MB.
2.  **Asset Compression**: Heavy sound files were converted from WAV to MP3 format. Large images were optimized to reduce size while maintaining visual quality.
3.  **Privacy Enhancements**:
    *   Stubbed out report-sending methods in `javax.mail` (email).
    *   Disabled main loggers in the native SDK (`LogUtil`).
    *   Stubbed `sendMessage` methods in `MessageManager` to prevent unauthorized data leaks to developer servers.
4.  **Stability**: Maintained the original MultiDex structure to ensure 100% stability, including the "Open" menu item and all hardware interactions.

## 📁 Project Structure
*   `/smali` — Application source code in Smali format (including privacy patches).
*   `/res` — UI resources (icons, layouts, strings).
*   `/assets` — Additional assets (fonts, Flutter files, optimized sounds).
*   `/lib` — Optimized set of native libraries (arm64-v8a only).
*   `AndroidManifest.xml` — Application configuration file.
*   `apktool.yml` — Apktool build configuration.

## 🛠 Build Instructions
To build the APK from this repository:

1.  Ensure you have [Apktool](https://apktool.org/) installed.
2.  Run the build command:
    ```bash
    apktool b . -o yoozworld_rebuilt.apk
    ```
3.  Align and sign the resulting file with your own key:
    ```bash
    zipalign -v 4 yoozworld_rebuilt.apk yoozworld_aligned.apk
    apksigner sign --ks your_keystore.jks yoozworld_aligned.apk
    ```

## ⚠️ Disclaimer
This project is for educational purposes only, demonstrating mobile app optimization techniques. All rights to the original code belong to their respective owners.
