.class public Lcn/yoozworld/watch/ui/SsManager;
.super Ljava/lang/Object;
.source "SsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/yoozworld/watch/ui/SsManager$BleEventNotification;
    }
.end annotation


# static fields
.field private static final ourInstance:Lcn/yoozworld/watch/ui/SsManager;


# instance fields
.field private isManualConnect:Z

.field private mBtNumber:I

.field private mContext:Landroid/content/Context;

.field private notifcation:Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

.field private sportTime:I


# direct methods
.method static bridge synthetic -$$Nest$fgetsportTime(Lcn/yoozworld/watch/ui/SsManager;)I
    .locals 0

    iget p0, p0, Lcn/yoozworld/watch/ui/SsManager;->sportTime:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputisManualConnect(Lcn/yoozworld/watch/ui/SsManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcn/yoozworld/watch/ui/SsManager;->isManualConnect:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputsportTime(Lcn/yoozworld/watch/ui/SsManager;I)V
    .locals 0

    iput p1, p0, Lcn/yoozworld/watch/ui/SsManager;->sportTime:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 56
    new-instance v0, Lcn/yoozworld/watch/ui/SsManager;

    invoke-direct {v0}, Lcn/yoozworld/watch/ui/SsManager;-><init>()V

    sput-object v0, Lcn/yoozworld/watch/ui/SsManager;->ourInstance:Lcn/yoozworld/watch/ui/SsManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput v0, p0, Lcn/yoozworld/watch/ui/SsManager;->mBtNumber:I

    const/4 v1, -0x1

    .line 71
    iput v1, p0, Lcn/yoozworld/watch/ui/SsManager;->sportTime:I

    .line 74
    iput-boolean v0, p0, Lcn/yoozworld/watch/ui/SsManager;->isManualConnect:Z

    return-void
.end method

.method public static getInstance()Lcn/yoozworld/watch/ui/SsManager;
    .locals 1

    .line 59
    sget-object v0, Lcn/yoozworld/watch/ui/SsManager;->ourInstance:Lcn/yoozworld/watch/ui/SsManager;

    return-object v0
.end method

.method static synthetic lambda$initBleServiceManager$0(Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;)V
    .locals 1

    .line 242
    sget-object v0, Lcn/yoozworld/watch/ui/SsManager$3;->$SwitchMap$cn$baos$watch$sdk$interfac$ble$BtStatusEnum:[I

    invoke-virtual {p0}, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    return-void
.end method

.method static synthetic lambda$initBleServiceManager$1()V
    .locals 1

    .line 447
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->startConnect()Z

    return-void
.end method


# virtual methods
.method public initBleServiceManager(Landroid/content/Context;)V
    .locals 3

    .line 214
    iput-object p1, p0, Lcn/yoozworld/watch/ui/SsManager;->mContext:Landroid/content/Context;

    .line 216
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcn/yoozworld/watch/ui/SsManager;->mContext:Landroid/content/Context;

    const-class v2, Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 218
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    iget-object v1, p0, Lcn/yoozworld/watch/ui/SsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/base/AppDataConfig;->initData(Landroid/content/Context;)V

    .line 220
    invoke-static {}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->getInstance()Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    move-result-object v0

    iget-object v1, p0, Lcn/yoozworld/watch/ui/SsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->setContext(Landroid/content/Context;)V

    .line 222
    invoke-static {}, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->getInstance()Lcn/baos/watch/sdk/util/LocalAudioPlayManager;

    move-result-object v0

    iget-object v1, p0, Lcn/yoozworld/watch/ui/SsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->setContext(Landroid/content/Context;)V

    .line 224
    invoke-static {}, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->getInstance()Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;

    move-result-object v0

    iget-object v1, p0, Lcn/yoozworld/watch/ui/SsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->setContext(Landroid/content/Context;)V

    .line 226
    invoke-static {}, Lcn/baos/watch/sdk/code/volume/VolumeManager;->getInstance()Lcn/baos/watch/sdk/code/volume/VolumeManager;

    move-result-object v0

    iget-object v1, p0, Lcn/yoozworld/watch/ui/SsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/volume/VolumeManager;->setContext(Landroid/content/Context;)V

    .line 227
    invoke-static {}, Lcn/baos/watch/sdk/code/volume/VolumeManager;->getInstance()Lcn/baos/watch/sdk/code/volume/VolumeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/code/volume/VolumeManager;->registerReceiver()V

    .line 228
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    iget-object v1, p0, Lcn/yoozworld/watch/ui/SsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->setContext(Landroid/content/Context;)V

    .line 229
    invoke-static {}, Lcn/baos/watch/sdk/code/HttpHandler;->getInstance()Lcn/baos/watch/sdk/code/HttpHandler;

    move-result-object v0

    iget-object v1, p0, Lcn/yoozworld/watch/ui/SsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/HttpHandler;->setContext(Landroid/content/Context;)V

    .line 231
    invoke-static {}, Lcn/baos/watch/sdk/manager/gps/GpsManager;->getInstance()Lcn/baos/watch/sdk/manager/gps/GpsManager;

    move-result-object v0

    iget-object v1, p0, Lcn/yoozworld/watch/ui/SsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/manager/gps/GpsManager;->setContext(Landroid/content/Context;)V

    .line 232
    invoke-static {}, Lcn/baos/watch/sdk/code/GpsStateManager;->getInstance()Lcn/baos/watch/sdk/code/GpsStateManager;

    move-result-object v0

    iget-object v1, p0, Lcn/yoozworld/watch/ui/SsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/GpsStateManager;->register(Landroid/content/Context;)V

    .line 236
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;

    move-result-object v0

    iget-object v1, p0, Lcn/yoozworld/watch/ui/SsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->setContext(Landroid/content/Context;)V

    .line 239
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    iget-object v1, p0, Lcn/yoozworld/watch/ui/SsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->init(Landroid/content/Context;)V

    .line 241
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcn/yoozworld/watch/ui/SsManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->setIBtBindSdkCallback(Lcn/baos/watch/sdk/interfac/ble/IBtStatusCallback;)V

    .line 266
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$1;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/SsManager$1;-><init>(Lcn/yoozworld/watch/ui/SsManager;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->setIBleBindSdkCallback(Lcn/baos/watch/sdk/interfac/ble/IBindAdapter;)V

    .line 295
    new-instance p1, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification;

    invoke-direct {p1, p0}, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification;-><init>(Lcn/yoozworld/watch/ui/SsManager;)V

    iput-object p1, p0, Lcn/yoozworld/watch/ui/SsManager;->notifcation:Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    .line 296
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    iget-object v0, p0, Lcn/yoozworld/watch/ui/SsManager;->notifcation:Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->setSdkNotifcation(Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;)V

    .line 298
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    iget-object v0, p0, Lcn/yoozworld/watch/ui/SsManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setContext(Landroid/content/Context;)V

    .line 299
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    new-instance v0, Lcn/yoozworld/watch/ui/SsManager$2;

    invoke-direct {v0, p0}, Lcn/yoozworld/watch/ui/SsManager$2;-><init>(Lcn/yoozworld/watch/ui/SsManager;)V

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setMessageCallback(Lcn/baos/watch/sdk/manager/message/IMessageCallback;)V

    .line 442
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/base/AppDataConfig;->isBindWatch()Z

    move-result p1

    .line 443
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->isBleOpen()Z

    move-result v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const-string p1, "----app-start-ble-service"

    .line 445
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 446
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object p1

    new-instance v0, Lcn/yoozworld/watch/ui/SsManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcn/yoozworld/watch/ui/SsManager$$ExternalSyntheticLambda1;-><init>()V

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Lcn/baos/watch/sdk/code/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p1, 0x1

    .line 449
    sput-boolean p1, Lcn/yoozworld/watch/ui/BLfLst;->mPhoneGet:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 453
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 454
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BleService \u6e90\u751fandroid \u4e3b\u9875\u9762\u52a0\u8f7d \u4e2d error"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
