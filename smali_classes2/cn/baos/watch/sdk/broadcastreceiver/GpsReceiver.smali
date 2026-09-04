.class public Lcn/baos/watch/sdk/broadcastreceiver/GpsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "GpsReceiver.java"


# instance fields
.field isFirstTime:Z

.field isGpsOpen:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    .line 20
    iput-boolean v0, p0, Lcn/baos/watch/sdk/broadcastreceiver/GpsReceiver;->isFirstTime:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 26
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.location.PROVIDERS_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 27
    invoke-static {}, Lcn/baos/watch/sdk/manager/gps/GpsManager;->getInstance()Lcn/baos/watch/sdk/manager/gps/GpsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/manager/gps/GpsManager;->checkGPSOpen()Z

    move-result p1

    iget-boolean p2, p0, Lcn/baos/watch/sdk/broadcastreceiver/GpsReceiver;->isGpsOpen:Z

    if-ne p1, p2, :cond_0

    iget-boolean p1, p0, Lcn/baos/watch/sdk/broadcastreceiver/GpsReceiver;->isFirstTime:Z

    if-eqz p1, :cond_2

    .line 28
    :cond_0
    invoke-static {}, Lcn/baos/watch/sdk/manager/gps/GpsManager;->getInstance()Lcn/baos/watch/sdk/manager/gps/GpsManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/manager/gps/GpsManager;->checkGPSOpen()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 29
    iput-boolean p1, p0, Lcn/baos/watch/sdk/broadcastreceiver/GpsReceiver;->isGpsOpen:Z

    const-string p1, "\u5b9a\u4f4d\u5df2\u6253\u5f00"

    .line 30
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_1
    iput-boolean p2, p0, Lcn/baos/watch/sdk/broadcastreceiver/GpsReceiver;->isGpsOpen:Z

    const-string p1, "\u5b9a\u4f4d\u5df2\u5173\u95ed"

    .line 33
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 34
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->getNotificationHandler()Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    move-result-object p1

    invoke-interface {p1}, Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;->onGpsNotOpen()V

    .line 36
    :goto_0
    iput-boolean p2, p0, Lcn/baos/watch/sdk/broadcastreceiver/GpsReceiver;->isFirstTime:Z

    :cond_2
    return-void
.end method
