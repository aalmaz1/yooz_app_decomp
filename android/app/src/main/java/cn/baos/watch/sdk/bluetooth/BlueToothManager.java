package cn.baos.watch.sdk.bluetooth;

import cn.baos.message.Serializable;
import cn.baos.watch.sdk.bluetooth.task.InitBleTask;
import cn.baos.watch.sdk.bluetooth.task.ReceiveBleTask;
import cn.baos.watch.sdk.bluetooth.task.SendBleTask;
import cn.baos.watch.sdk.bluetooth.task.WriteBleTask;
import cn.baos.watch.sdk.manager.message.IMessageSendCallback;

public class BlueToothManager {
    private static BlueToothManager instance;
    public InitBleTask mInitTask;
    public ReceiveBleTask mReceiveTask;
    public SendBleTask mSendTask;
    public WriteBleTask mWriteBleTask;

    public static BlueToothManager getInstance() {
        if (instance == null) {
            synchronized (BlueToothManager.class) {
                if (instance == null) {
                    instance = new BlueToothManager();
                }
            }
        }
        return instance;
    }

    private BlueToothManager() {
        startBleTask();
    }

    public boolean sendMessage(int type, Serializable msg) {
        return mSendTask != null && mSendTask.sendMessage(type, msg);
    }

    public boolean sendMessage(int type, Serializable msg, IMessageSendCallback cb) {
        return mSendTask != null && mSendTask.sendMessage(type, msg, cb);
    }

    public boolean receiveData(byte[] data) {
        return mReceiveTask.receiveData(data);
    }

    public boolean writeData(byte[] data) {
        return mWriteBleTask.writeData(data);
    }

    public void startBleTask() {
        if (mInitTask == null) {
            mInitTask = new InitBleTask();
            mInitTask.start();
        }
        if (mSendTask == null) {
            mSendTask = new SendBleTask();
            mSendTask.start();
        }
        if (mReceiveTask == null) {
            mReceiveTask = new ReceiveBleTask();
            mReceiveTask.start();
        }
        if (mWriteBleTask == null) {
            mWriteBleTask = new WriteBleTask();
            mWriteBleTask.start();
        }
    }

    public void cleanMessageQueue() {
        if (mSendTask != null) {
            mSendTask.clearData();
        }
        if (mReceiveTask != null) {
            mReceiveTask.clearData();
        }
        if (mWriteBleTask != null) {
            mWriteBleTask.clearData();
        }
    }
}
