package cn.baos.watch.sdk.bluetooth.task;

import cn.baos.message.Serializable;
import cn.baos.watch.sdk.entitiy.MessageAndTargetId;
import cn.baos.watch.sdk.manager.jni.BlueToothJniManager;
import cn.baos.watch.sdk.manager.jni.write.IWriteAckedAsyncCallback;
import cn.baos.watch.sdk.manager.message.IMessageSendCallback;
import java.util.concurrent.LinkedBlockingDeque;

/**
 * Queue + JNI write. jadx skipped run() — need smali / "inconsistent code".
 * writeBleData → JNIControl.bleWriteData when InitBleTask.blueToothStatus == 0
 * 10 failed ACKs → BleService.disconnect()
 */
public class SendBleTask extends Thread implements IWriteAckedAsyncCallback {
    private final LinkedBlockingDeque<MessageAndTargetId> queue = new LinkedBlockingDeque<>();

    public SendBleTask() {
        super("bluetooth send task");
    }

    public boolean sendMessage(int targetId, Serializable msg) {
        if (msg == null) {
            return false;
        }
        queue.add(new MessageAndTargetId(targetId, System.currentTimeMillis(), msg));
        return true;
    }

    public boolean sendMessage(int targetId, Serializable msg, IMessageSendCallback cb) {
        return sendMessage(targetId, msg);
    }

    public boolean clearData() {
        queue.clear();
        return true;
    }

    public int writeBleData(int session, byte[] data, int len, IWriteAckedAsyncCallback cb) {
        if (InitBleTask.blueToothStatus == 0) {
            return BlueToothJniManager.bleWriteData(session, data, len, cb);
        }
        return 0;
    }

    @Override
    public void onWriteAckedAsyncCallback(int session, boolean ok) {}
}
