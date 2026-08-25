package cn.yoozworld.watch.ui;

import android.bluetooth.le.ScanResult;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import androidx.core.app.NotificationCompat;
import cn.baos.watch.sdk.base.AppDataConfig;
import cn.baos.watch.sdk.bluetooth.BleService;
import cn.baos.watch.sdk.bluetooth.DataUtils;
import cn.baos.watch.sdk.bluetooth.entity.BleDeviceInfo;
import cn.baos.watch.sdk.bluetooth.reload.BleReloadManager;
import cn.baos.watch.sdk.code.GpsStateManager;
import cn.baos.watch.sdk.code.HttpHandler;
import cn.baos.watch.sdk.code.MainHandler;
import cn.baos.watch.sdk.code.callcontroller.CallStateManager;
import cn.baos.watch.sdk.code.volume.VolumeManager;
import cn.baos.watch.sdk.entitiy.DILanguageEntity;
import cn.baos.watch.sdk.interfac.ble.BtStatusEnum;
import cn.baos.watch.sdk.interfac.ble.ConnectConfig;
import cn.baos.watch.sdk.interfac.ble.HbBtClientManager;
import cn.baos.watch.sdk.interfac.ble.IBindAdapter;
import cn.baos.watch.sdk.interfac.ble.IBleClientSdkCallback;
import cn.baos.watch.sdk.interfac.ble.IBtStatusCallback;
import cn.baos.watch.sdk.manager.gps.GpsManager;
import cn.baos.watch.sdk.manager.message.IMessageCallback;
import cn.baos.watch.sdk.manager.message.MessageManager;
import cn.baos.watch.sdk.manager.musiccontroller.MusicControlManager;
import cn.baos.watch.sdk.manager.notification.NotificationHuabaoManager;
import cn.baos.watch.sdk.util.LocalAudioPlayManager;
import cn.baos.watch.sdk.util.LogUtil;
import cn.baos.watch.sdk.util.SharePreferenceUtils;
import cn.baos.watch.sdk.util.TimeUtils;
import cn.baos.watch.sdk.util.W100Utils;
import cn.baos.watch.w100.messages.Action_sync;
import cn.baos.watch.w100.messages.Device_resource_info;
import cn.baos.watch.w100.messages.Request_get_data;
import cn.baos.watch.w100.messages.User_info_config;
import cn.yoozworld.watch.utils.BtConstant;
import cn.yoozworld.watch.utils.track.SportTraceUtils;
import com.google.gson.Gson;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/** BLE host: starts BleService and forwards events to Flutter via BLfLst. */
public class SsManager {
    private static final SsManager ourInstance = new SsManager();
    private Context mContext;
    private IBleClientSdkCallback notifcation;
    private int mBtNumber = 0;
    private int sportTime = -1;
    private boolean isManualConnect = false;

    public static SsManager getInstance() {
        return ourInstance;
    }

    private SsManager() {}

    class BleEventNotification implements IBleClientSdkCallback {
        @Override
        public void onBleDeviceStateChanged(boolean z) {}

        BleEventNotification() {}

        @Override
        public void onGpsNotOpen() {
            BLfLst.isBleConnect = false;
            MainHandler.getInstance().post(() -> {
                BLfLst.getInstance().invokeFlutterMethod(BtConstant.gpsNotOpen, 0);
                BLfLst.getInstance().invokeFlutterMethodEventByJSON(BtConstant.bleStatus, 3);
            });
        }

        @Override
        public void onBLEStartScan() {
            BLfLst.isBleConnect = false;
            MainHandler.getInstance().post(
                    () -> BLfLst.getInstance().invokeFlutterMethodEventByJSON(BtConstant.bleStatus, 0));
        }

        @Override
        public void onBLEScanning(ScanResult scanResult) {
            BLfLst.isBleConnect = false;
            if (scanResult == null || scanResult.getDevice() == null) {
                return;
            }
            List<ConnectConfig> allListConfig = AppDataConfig.getInstance().getAllListConfig();
            StringBuilder sb = new StringBuilder();
            if (allListConfig != null) {
                Iterator<ConnectConfig> it = allListConfig.iterator();
                while (it.hasNext()) {
                    sb.append(it.next().macAddress);
                }
            }
            String bound = sb.toString();
            if (!TextUtils.isEmpty(bound) && bound.contains(scanResult.getDevice().getAddress())) {
                return;
            }
            final BleDeviceInfo info = new BleDeviceInfo();
            info.setBondState(scanResult.getDevice().getBondState());
            info.setDeviceAddress(scanResult.getDevice().getAddress());
            String name = scanResult.getDevice().getName();
            if (!TextUtils.isEmpty(name)) {
                if (name.contains("W200_G50_HB")) {
                    info.setDeviceName("W200" + DataUtils.changeMacAddressToFourNumber(scanResult.getDevice().getAddress()));
                } else {
                    info.setDeviceName(name);
                }
            }
            info.setRssi(scanResult.getRssi());
            info.setTimeStamp((int) (System.currentTimeMillis() / 1000));
            MainHandler.getInstance().post(
                    () -> BLfLst.getInstance().invokeFlutterMethodEventByJSONRes(
                            BtConstant.BleScanningInfo, new Gson().toJson(info)));
        }

        @Override
        public void onBLEStartConnect(String str) {
            BLfLst.isBleConnect = false;
            SsManager.this.isManualConnect = false;
            MainHandler.getInstance().post(
                    () -> BLfLst.getInstance().invokeFlutterMethodEventByJSON(BtConstant.bleStatus, 0));
        }

        @Override
        public void onBLEConnecting(String str) {
            BLfLst.isBleConnect = false;
            SsManager.this.isManualConnect = false;
            MainHandler.getInstance().post(
                    () -> BLfLst.getInstance().invokeFlutterMethodEventByJSON(BtConstant.bleStatus, 1));
        }

        @Override
        public void onBLEConnected() {
            SsManager.this.isManualConnect = false;
            BLfLst.isBleConnect = false;
            MainHandler.getInstance().post(
                    () -> BLfLst.getInstance().invokeFlutterMethodEventByJSON(BtConstant.bleStatus, 1));
        }

        @Override
        public void onBLEManualDisConnected() {
            SsManager.this.isManualConnect = true;
        }

        @Override
        public void onBLEConnectFail() {
            BLfLst.isBleConnect = true;
            ConnectConfig cfg = HbBtClientManager.getInstance().getCurrentConnectConfig();
            if (cfg != null && cfg.isActive) {
                MainHandler.getInstance().post(
                        () -> BLfLst.getInstance().invokeFlutterMethodEventByJSON(BtConstant.bleStatus, 3));
            }
        }

        @Override
        public void onBLEDisConnected() {
            ConnectConfig cfg = HbBtClientManager.getInstance().getCurrentConnectConfig();
            if (cfg == null || !cfg.isActive) {
                return;
            }
            MainHandler.getInstance().post(
                    () -> BLfLst.getInstance().invokeFlutterMethodEventByJSON(
                            BtConstant.bleStatus, 3, BtConstant.bleDisconnectInfo, NotificationCompat.CATEGORY_MESSAGE));
        }

        @Override
        public void onBLEConnectTimeOut() {
            SsManager.this.isManualConnect = false;
            BLfLst.isBleConnect = true;
            MainHandler.getInstance().post(
                    () -> BLfLst.getInstance().invokeFlutterMethodEventByJSON(BtConstant.bleStatus, 5));
        }

        @Override
        public void onBtNoDelDialog() {
            BLfLst.isBleConnect = true;
        }
    }

    public void initBleServiceManager(Context context) {
        this.mContext = context;
        context.startService(new Intent(this.mContext, BleService.class));
        AppDataConfig.getInstance().initData(this.mContext);
        MusicControlManager.getInstance().setContext(this.mContext);
        LocalAudioPlayManager.getInstance().setContext(this.mContext);
        CallStateManager.getInstance().setContext(this.mContext);
        VolumeManager.getInstance().setContext(this.mContext);
        VolumeManager.getInstance().registerReceiver();
        MainHandler.getInstance().setContext(this.mContext);
        HttpHandler.getInstance().setContext(this.mContext);
        GpsManager.getInstance().setContext(this.mContext);
        GpsStateManager.getInstance().register(this.mContext);
        BleReloadManager.getInstance().setContext(this.mContext);
        HbBtClientManager.getInstance().init(this.mContext);
        BleService.getInstance().setIBtBindSdkCallback((IBtStatusCallback) status -> {});
        BleService.getInstance().setIBleBindSdkCallback(new IBindAdapter() {
            @Override
            public void onBindStart(int code) {
                new Handler(Looper.getMainLooper()).post(
                        () -> BLfLst.getInstance().invokeFlutterMethodEventByJSON(BtConstant.bleBindCode, code));
            }

            @Override
            public void onBindSuccess() {
                SsManager.this.isManualConnect = false;
                new Handler(Looper.getMainLooper()).post(
                        () -> BLfLst.getInstance().invokeFlutterMethodEventByJSON(BtConstant.bleStatus, 2));
                NotificationHuabaoManager.getInstance().requestRebindNotificationService(context);
            }

            @Override
            public void onBindFail() {
                SsManager.this.isManualConnect = false;
                new Handler(Looper.getMainLooper()).post(
                        () -> BLfLst.getInstance().invokeFlutterMethodEventByJSON(BtConstant.bleStatus, 8));
            }
        });
        this.notifcation = new BleEventNotification();
        BleService.getInstance().setSdkNotifcation(this.notifcation);
        MessageManager.getInstance().setContext(this.mContext);
        MessageManager.getInstance().setMessageCallback(new IMessageCallback() {
            @Override
            public void onPhoneStatus(int i) {}

            @Override
            public void onRequestMeteorologicalData() {}

            @Override
            public void requestGetTime() {}

            @Override
            public void onBindRequestByPhone() {
                BleService.getInstance().bindDeviceBindRequestByPhone();
            }

            @Override
            public void onDeviceResourceInfo(Device_resource_info info) {
                if (info != null && info.resource_type == 2) {
                    AppDataConfig.getInstance().put(SharePreferenceUtils.KEY_WATCH_LUANGH, false);
                    if (info.active_res_location == 393216) {
                        AppDataConfig.getInstance().put(SharePreferenceUtils.KEY_WATCH_LUANGH, true);
                    }
                    ArrayList<DILanguageEntity> list = new ArrayList<>();
                    if (info.resource_array != null) {
                        for (Device_resource_info.Dev_res res : info.resource_array) {
                            DILanguageEntity e = new DILanguageEntity();
                            e.resourceId = res.resource_id / 65536;
                            e.locationIndex = res.location_index;
                            list.add(e);
                        }
                    }
                    AppDataConfig.getInstance().put(
                            SharePreferenceUtils.KEY_DEVICE_RESOURCE_LANGUAGE,
                            list.isEmpty() ? "" : new Gson().toJson(list));
                }
                MainHandler.getInstance().post(
                        () -> BLfLst.getInstance().invokeFlutterMethodEventByJSONRes(
                                BtConstant.syncDeviceResourceInfo, new Gson().toJson(info)));
            }

            @Override
            public void onRequestWeather() {}

            @Override
            public void onCollectWatchLoggerRequest(byte[] data) {
                MainHandler.getInstance().post(
                        () -> BLfLst.getInstance().invokeFlutterMethod(BtConstant.collectWatchLoggerRequest, data));
            }

            @Override
            public void onCollectWatchLoggerRequestData(String str) {}

            @Override
            public void onSyncMessageRequest(byte[] data) {
                MainHandler.getInstance().post(
                        () -> BLfLst.getInstance().invokeFlutterMethod(BtConstant.syncMessageRequest, data));
            }

            @Override
            public void onActionSync(Action_sync action) {
                if (action != null) {
                    if (action.action_type == 1) {
                        BleReloadManager.getInstance().startService();
                    } else if (action.action_type == 4) {
                        BleReloadManager.getInstance().stopService();
                    }
                }
                MainHandler.getInstance().post(
                        () -> BLfLst.getInstance().invokeFlutterMethod(
                                BtConstant.actionSync, new Gson().toJson(action)));
            }

            @Override
            public void onUserInfoConfig(User_info_config cfg) {
                MainHandler.getInstance().post(
                        () -> BLfLst.getInstance().invokeFlutterMethod(
                                BtConstant.userInfoConfig, new Gson().toJson(cfg)));
            }

            @Override
            public void onRequestGetData(Request_get_data req) {
                MainHandler.getInstance().post(
                        () -> BLfLst.getInstance().invokeFlutterMethod(
                                BtConstant.requestGetData, new Gson().toJson(req)));
            }

            @Override
            public void onRequestGpsData() {
                MainHandler.getInstance().post(
                        () -> BLfLst.getInstance().invokeFlutterMethod("getGPSBase", null));
            }
        });
        boolean bound = AppDataConfig.getInstance().isBindWatch();
        boolean bleOn = BleService.getInstance().isBleOpen();
        if (bound && bleOn) {
            MainHandler.getInstance().postDelayed(() -> BleService.getInstance().startConnect(), 5000L);
            BLfLst.mPhoneGet = true;
        }
    }
}
