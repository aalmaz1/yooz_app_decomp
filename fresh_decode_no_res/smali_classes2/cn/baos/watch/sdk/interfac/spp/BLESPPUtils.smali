.class public Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;
.super Ljava/lang/Object;
.source "BLESPPUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;,
        Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;
    }
.end annotation


# static fields
.field private static mEnableLogOut:Z = false


# instance fields
.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mConnectTask:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;

.field private mContext:Landroid/content/Context;

.field private final mFinishFoundReceiver:Landroid/content/BroadcastReceiver;

.field private mOnBluetoothAction:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmOnBluetoothAction(Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;)Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;
    .locals 0

    iget-object p0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mOnBluetoothAction:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$smlogD(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->logD(Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;)V
    .locals 2

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 31
    new-instance v0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;-><init>(Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask-IA;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mConnectTask:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;

    .line 36
    new-instance v0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$1;

    invoke-direct {v0, p0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$1;-><init>(Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 49
    new-instance v0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$2;

    invoke-direct {v0, p0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$2;-><init>(Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mFinishFoundReceiver:Landroid/content/BroadcastReceiver;

    .line 290
    iput-object p1, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mContext:Landroid/content/Context;

    .line 291
    iput-object p2, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mOnBluetoothAction:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;

    return-void
.end method

.method private static byte2Hex(B)Ljava/lang/String;
    .locals 3

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 430
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/4 v1, 0x2

    if-le p0, v1, :cond_0

    .line 431
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    .line 433
    :cond_0
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-ge p0, v1, :cond_1

    const/4 p0, 0x0

    const-string v2, "0"

    .line 434
    invoke-virtual {v0, p0, v2}, Ljava/lang/StringBuilder;->insert(ILjava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 436
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static byte2Hex([B)Ljava/lang/String;
    .locals 6

    .line 447
    new-instance v0, Ljava/util/Formatter;

    invoke-direct {v0}, Ljava/util/Formatter;-><init>()V

    .line 448
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v4, p0, v3

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    .line 449
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v5, v2

    const-string v4, "%02x"

    invoke-virtual {v0, v4, v5}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 451
    :cond_0
    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object p0

    .line 452
    invoke-virtual {v0}, Ljava/util/Formatter;->close()V

    return-object p0
.end method

.method private connectx(Ljava/lang/String;)V
    .locals 3

    .line 361
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mConnectTask:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mConnectTask:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;

    iget-boolean v0, v0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->isRunning:Z

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mOnBluetoothAction:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;

    if-eqz v0, :cond_0

    const-string v1, "\u6709\u6b63\u5728\u8fde\u63a5\u7684\u4efb\u52a1"

    .line 363
    invoke-interface {v0, v1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;->onConnectFailed(Ljava/lang/String;)V

    :cond_0
    const-string v0, "start-connect \u6709\u6b63\u5728\u8fde\u63a5\u7684\u4efb\u52a1"

    .line 364
    invoke-static {v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->logD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 368
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v0, "error"

    .line 369
    invoke-static {v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->logD(Ljava/lang/String;)V

    .line 371
    :cond_1
    new-instance v0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;-><init>(Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask-IA;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mConnectTask:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;

    const-string v0, "start-connect ing"

    .line 373
    invoke-static {v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->logD(Ljava/lang/String;)V

    .line 374
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mConnectTask:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;

    iget-object v1, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mOnBluetoothAction:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;

    iput-object v1, v0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->onBluetoothAction:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;

    .line 376
    :try_start_1
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mConnectTask:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 377
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static logD(Ljava/lang/String;)V
    .locals 2

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "xxx spp--> "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/baos/watch/sdk/utils/LogUtil;->e(Ljava/lang/String;)V

    return-void
.end method

.method static setEnableLogOut()V
    .locals 1

    const/4 v0, 0x1

    .line 461
    sput-boolean v0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mEnableLogOut:Z

    return-void
.end method


# virtual methods
.method public connect(Ljava/lang/String;)V
    .locals 2

    const-string v0, "start-connect"

    .line 345
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->logD(Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 347
    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->connectx(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 349
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public enableBluetooth()V
    .locals 1

    .line 416
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->enable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 418
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getConnectStatus()Z
    .locals 1

    .line 474
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mConnectTask:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;

    iget-boolean v0, v0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->isConnectStatus:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 476
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public isBluetoothEnable()Z
    .locals 1

    .line 404
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 406
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public onCancel()V
    .locals 2

    :try_start_0
    const-string v0, "onDestroy\uff0c\u5f00\u59cb\u91ca\u653e\u8d44\u6e90"

    .line 320
    invoke-static {v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->logD(Ljava/lang/String;)V

    .line 321
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mConnectTask:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->isRunning:Z

    .line 322
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mConnectTask:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->destory()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 323
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onCreate()V
    .locals 4

    .line 298
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 299
    iget-object v2, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 300
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 301
    iget-object v1, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mFinishFoundReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onDestroy()V
    .locals 2

    :try_start_0
    const-string v0, "onDestroy\uff0c\u5f00\u59cb\u91ca\u653e\u8d44\u6e90"

    .line 309
    invoke-static {v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->logD(Ljava/lang/String;)V

    .line 310
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mConnectTask:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->isRunning:Z

    .line 311
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mConnectTask:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->cancel(Z)Z

    .line 312
    new-instance v0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;-><init>(Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask-IA;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mConnectTask:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 315
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public send([B)V
    .locals 2

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "spp-send-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->byte2Hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->logD(Ljava/lang/String;)V

    .line 388
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mConnectTask:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->send([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :cond_0
    const-wide/16 v0, 0x1

    .line 390
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 392
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 395
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setStopString(Ljava/lang/String;)V
    .locals 1

    .line 238
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mConnectTask:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;

    iput-object p1, v0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->stopString:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startDiscovery()V
    .locals 1

    .line 331
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->cancelDiscovery()Z

    .line 332
    :cond_0
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 334
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
