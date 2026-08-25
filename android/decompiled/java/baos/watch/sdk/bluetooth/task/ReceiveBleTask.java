package cn.baos.watch.sdk.bluetooth.task;

import cn.baos.watch.sdk.manager.jni.BlueToothJniManager;
import java.util.concurrent.LinkedBlockingQueue;

/**
 * GATT notify bytes → queue → JNI bleFrameArrived (reassembly is in libJNIControl.so).
 */
public class ReceiveBleTask extends Thread {
    public static final LinkedBlockingQueue<byte[]> queue = new LinkedBlockingQueue<>();

    public ReceiveBleTask() {
        super("bluetooth receive task");
    }

    public boolean receiveData(byte[] data) {
        queue.offer(data);
        return true;
    }

    public boolean clearData() {
        queue.clear();
        return true;
    }

    @Override
    public void run() {
        while (true) {
            try {
                byte[] chunk = queue.take();
                BlueToothJniManager.bleFrameArrived(chunk, chunk.length);
                Thread.sleep(10L);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return;
            }
        }
    }
}
