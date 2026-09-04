.class public Lcn/baos/watch/sdk/bluetooth/reload/BleReloadService;
.super Landroid/app/Service;
.source "BleReloadService.java"


# instance fields
.field wakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method private acquireWakeLock()V
    .locals 3

    .line 34
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    const-string v0, "power"

    .line 35
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 38
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x20000001

    .line 36
    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    return-void
.end method

.method private releaseWakeLock()V
    .locals 1

    .line 46
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadService;->wakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 54
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    const-string v0, "BleReloadService->>onCreate"

    .line 55
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadService;->acquireWakeLock()V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 62
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 63
    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadService;->releaseWakeLock()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 23
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
