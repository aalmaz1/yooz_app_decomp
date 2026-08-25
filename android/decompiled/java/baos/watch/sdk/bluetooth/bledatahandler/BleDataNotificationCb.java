package cn.baos.watch.sdk.bluetooth.bledatahandler;

import cn.baos.watch.sdk.manager.jni.init.IBleDataNotificationCallBack;

public class BleDataNotificationCb implements IBleDataNotificationCallBack {
    private final StDateHandler handler = new StDateHandler();

    @Override
    public boolean onBleDataNotification(int session, int len) {
        handler.handleStBleDate(session, len);
        return true;
    }
}
