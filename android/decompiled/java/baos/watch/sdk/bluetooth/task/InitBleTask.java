package cn.baos.watch.sdk.bluetooth.task;

import cn.baos.watch.sdk.bluetooth.bledatahandler.BleDataNotificationCb;
import cn.baos.watch.sdk.manager.jni.BlueToothJniManager;
import cn.baos.watch.sdk.manager.jni.init.IDeviceStatusCallback;

/** JNI session: status 1=init, 0=ok, 2=error. handleBleWrite() blocks until death then System.exit. */
public class InitBleTask extends Thread {
    public static int blueToothStatus = 1;

    public InitBleTask() {
        super("bluetooth int task");
    }

    @Override
    public void run() {
        blueToothStatus = 1;
        BlueToothJniManager.bleInit(
                new IDeviceStatusCallback() {
                    @Override
                    public void onDeviceStatus(int status) {
                        if (status == 2) {
                            InitBleTask.blueToothStatus = 2;
                        }
                    }
                },
                new BleDataNotificationCb());
        blueToothStatus = 0;
        BlueToothJniManager.handleBleWrite();
        System.exit(-1);
    }
}
