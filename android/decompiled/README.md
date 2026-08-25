# Decompiled reference (NOT compiled)

Decompiled Java from the original YOOZ World 1.2.0 APK:

- `java/baos/` — Baos/Huabao watch BLE SDK (partial: message packers,
  W100 protocol messages, a slice of the bluetooth manager). The full
  SDK is much larger — classes referenced but missing here include
  `BleService`, `HbBtClientManager`, `MessageManager`,
  `manager.jni.BlueToothJniManager` (JNI core — the native .so is not
  in this repo), `util.*`, `manager.gps.*`, `code.*`, `entitiy.*`.
- `java/yoozworld/` — host app glue: `APP` (Application), `SsManager`
  (BLE lifecycle/notifications), utils.

These files do not compile as a unit (missing dependencies). They are
kept as ground truth for:

1. restoring the missing Baos SDK classes, and
2. the clean-room Dart/Java BLE client that implements the recovered
   protocol (`lib/ble/yooz_protocol.dart`, channels documented in
   `lib/native/baos_channel.dart` and
   `android/app/src/main/java/cn/yoozworld/watch/BaosBleHost.java`).
