package cn.yoozworld.watch;

import android.app.Application;
import android.app.NotificationManager;
import android.content.Context;
import androidx.core.app.NotificationCompat;
import androidx.multidex.MultiDex;
import cn.baos.watch.sdk.bluetooth.BleService;
import cn.baos.watch.sdk.code.CrashHandler;
import cn.baos.watch.sdk.code.MainHandler;
import cn.baos.watch.sdk.util.AppUtils;
import cn.baos.watch.sdk.util.LogUtil;
import cn.baos.watch.sdk.util.W100Utils;
import cn.yoozworld.watch.ui.AppLifecycle;
import cn.yoozworld.watch.ui.SsManager;

/** Host Application (from APP.kt). Flutter + BLE reconnect. */
public final class APP extends Application {
    private AppLifecycle appLifecycleTracker;
    private NotificationCompat.Builder builder;
    private boolean isAppSysTimeBle;
    private APP mApp;
    private long mNowTrackId = -1;
    private NotificationManager notificationManager;

    public APP getMApp() {
        return this.mApp;
    }

    public void setMApp(APP app) {
        this.mApp = app;
    }

    public AppLifecycle getAppLifecycleTracker() {
        return this.appLifecycleTracker;
    }

    public void setAppLifecycleTracker(AppLifecycle appLifecycle) {
        this.appLifecycleTracker = appLifecycle;
    }

    public boolean getIsAppSysTimeBle() {
        return this.isAppSysTimeBle;
    }

    public void setAppSysTimeBle(boolean value) {
        this.isAppSysTimeBle = value;
    }

    public long getMNowTrackId() {
        return this.mNowTrackId;
    }

    public void setMNowTrackId(long id) {
        this.mNowTrackId = id;
    }

    public NotificationCompat.Builder getBuilder() {
        return this.builder;
    }

    public void setBuilder(NotificationCompat.Builder builder) {
        this.builder = builder;
    }

    public NotificationManager getNotificationManager() {
        return this.notificationManager;
    }

    public void setNotificationManager(NotificationManager notificationManager) {
        this.notificationManager = notificationManager;
    }

    @Override
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        MultiDex.install(this);
    }

    @Override
    public void onCreate() {
        super.onCreate();
        this.mApp = this;
        AppLifecycle appLifecycle = new AppLifecycle();
        this.appLifecycleTracker = appLifecycle;
        appLifecycle.AppLifecycles(this);
        registerActivityLifecycleCallbacks(this.appLifecycleTracker);
        new AppUtils().registerKeepLive(false, this);
        if (W100Utils.getAppProcessName(this).equalsIgnoreCase(getPackageName())) {
            SsManager.getInstance().initBleServiceManager(this);
            MainHandler.getInstance().postDelayed(() -> BleService.getInstance().startReConnect(), 1500L);
        }
        Thread.setDefaultUncaughtExceptionHandler(new CrashHandler());
    }
}
