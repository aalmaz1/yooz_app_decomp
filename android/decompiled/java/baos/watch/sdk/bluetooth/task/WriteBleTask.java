package cn.baos.watch.sdk.bluetooth.task;

import cn.baos.watch.sdk.bluetooth.BleService;
import cn.baos.watch.sdk.bluetooth.utils.TimeManager;

public class WriteBleTask extends Thread {
    public WriteBleTask() {
        super("bluetooth write task");
    }

    public boolean clearData() {
        return true;
    }

    public boolean writeData(byte[] data) {
        try {
            long now = System.currentTimeMillis();
            long last = BleService.getInstance().getSendDataTime();
            int def = TimeManager.getInstance().getDefTime();
            long gap = now - last;
            if (gap < def) {
                Thread.sleep(def - gap);
            }
            BleService.getInstance().setSendDataTime(System.currentTimeMillis());
            BleService.getInstance().writeCharacteristic(data);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    @Override
    public void run() {}
}
