package cn.yoozworld.watch;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.Context;

import io.flutter.plugin.common.BasicMessageChannel;
import io.flutter.plugin.common.BinaryMessenger;
import io.flutter.plugin.common.MethodCall;
import io.flutter.plugin.common.MethodChannel;
import io.flutter.plugin.common.StandardMessageCodec;

/**
 * Host side of the device bridge. Contract recovered from libapp.so
 * (see lib/native/baos_channel.dart):
 *
 *  - MethodChannel "com.baos.sdk/channel":
 *      startScan, stopScan, connectBle(mac, isScan), disconnectBle,
 *      unBindWatch, cigaretteLevel, deviceBattery, deviceInfo,
 *      isBleOpen, getBleConnectStatus
 *  - BasicMessageChannel "com.baos.sdk/messages" (JSON push, one-way):
 *      {"method":"bleStatus|cigaretteLevel|...","data":{...}}
 *      bleStatus: 0 scan, 1 connecting, 2 bound, 3 fail/disconnect,
 *      5 timeout, 8 bind fail
 *
 * The original SDK (cn.baos.*) is only partially recovered
 * (android/decompiled/) and includes a JNI core we do not have, so this
 * is a minimal working host for now: isBleOpen/getBleConnectStatus are
 * real, the rest return notImplemented until the clean-room BLE client
 * for the recovered protocol (lib/ble/yooz_protocol.dart) lands.
 */
public final class BaosBleHost implements MethodChannel.MethodCallHandler {

    private final Context appContext;
    private final BasicMessageChannel<Object> pushChannel;

    private BaosBleHost(Context context, BasicMessageChannel<Object> push) {
        this.appContext = context.getApplicationContext();
        this.pushChannel = push;
    }

    public static void attach(Context context, BinaryMessenger messenger) {
        BasicMessageChannel<Object> push = new BasicMessageChannel<>(
                messenger, "com.baos.sdk/messages", new StandardMessageCodec());
        // Flutter may acknowledge pushes; we do not use the reply.
        push.setMessageHandler((message, reply) -> reply.reply(null));
        new MethodChannel(messenger, "com.baos.sdk/channel")
                .setMethodCallHandler(new BaosBleHost(context, push));
    }

    private BluetoothAdapter adapter() {
        BluetoothManager bm =
                (BluetoothManager) appContext.getSystemService(Context.BLUETOOTH_SERVICE);
        return bm == null ? null : bm.getAdapter();
    }

    /** One-way JSON push to Dart, e.g. {"method":"bleStatus","data":{"status":2}}. */
    public void pushJson(String json) {
        pushChannel.send(json, null);
    }

    @Override
    public void onMethodCall(MethodCall call, MethodChannel.Result result) {
        switch (call.method) {
            case "isBleOpen": {
                BluetoothAdapter a = adapter();
                result.success(a != null && a.isEnabled());
                break;
            }
            case "getBleConnectStatus":
                // 3 = fail/disconnect; the host keeps no connection yet.
                result.success(3);
                break;
            // TODO: startScan/stopScan/connectBle/disconnectBle/unBindWatch/
            // cigaretteLevel/deviceBattery/deviceInfo — clean-room client for
            // the recovered protocol or the restored Baos SDK.
            default:
                result.notImplemented();
        }
    }
}
