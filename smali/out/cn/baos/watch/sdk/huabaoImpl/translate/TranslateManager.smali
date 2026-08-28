.class public Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;
.super Ljava/lang/Object;
.source "TranslateManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/huabaoImpl/translate/ITranslateManager;
.implements Lcn/baos/watch/sdk/huabaoImpl/translate/OnCommandBleOTAFileInfoCallBack;
.implements Lcn/baos/watch/sdk/huabaoImpl/translate/OnCommandBleOTAEachPackageCallBack;


# static fields
.field public static instance:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;


# instance fields
.field executor:Ljava/util/concurrent/ScheduledExecutorService;

.field public isSend:Z

.field private isTransFinish:Z

.field private mEchoTimeOutRunnable:Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutRunnable;

.field public mFileSizeLength:J

.field public mInAdvanceIndex:I

.field public mNowIndex:I

.field private mOtaByteArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation
.end field

.field private mOtaFile:Ljava/io/File;

.field private mTranslateCallback:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;

.field public normalSendNum:I

.field private stopTransmission:Z

.field private timer:Ljava/util/Timer;


# direct methods
.method public static synthetic $r8$lambda$W1f7MjColt40qbfEYKWhUfoGYcg(Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->lambda$startEchoTimeOutTimer$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 35
    iput-boolean v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->stopTransmission:Z

    const/4 v1, 0x0

    .line 37
    iput-boolean v1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->isTransFinish:Z

    const/4 v2, -0x1

    .line 39
    iput v2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mNowIndex:I

    .line 43
    iput v2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mInAdvanceIndex:I

    .line 45
    iput-boolean v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->isSend:Z

    const-wide/16 v2, 0x0

    .line 49
    iput-wide v2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mFileSizeLength:J

    .line 50
    iput v1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->normalSendNum:I

    .line 70
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->timer:Ljava/util/Timer;

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;
    .registers 2

    .line 59
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    if-nez v0, :cond_17

    .line 60
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    monitor-enter v0

    .line 61
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    if-nez v1, :cond_12

    .line 62
    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    .line 64
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 66
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->instance:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    return-object v0
.end method

.method private synthetic lambda$startEchoTimeOutTimer$0(Ljava/lang/String;)V
    .registers 3

    .line 490
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 491
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mTranslateCallback:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;

    const/16 v0, 0xb

    invoke-interface {p1, v0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;->onTransferFail(I)V

    return-void
.end method

.method private startEchoTimeOutTimer(Ljava/lang/String;)V
    .registers 6

    .line 489
    new-instance v0, Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutRunnable;

    new-instance v1, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$$ExternalSyntheticLambda0;-><init>(Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutRunnable;-><init>(Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutCallback;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mEchoTimeOutRunnable:Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutRunnable;

    .line 493
    iget-object v1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->timer:Ljava/util/Timer;

    const-wide/16 v2, 0x7530

    invoke-virtual {v1, v0, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 494
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",\u542f\u52a8\u8d85\u65f6\u8ba1\u65f6\u5668:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mEchoTimeOutRunnable:Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutRunnable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method private stopEchoTimeOutTimer()V
    .registers 3

    .line 498
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mEchoTimeOutRunnable:Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutRunnable;

    if-eqz v0, :cond_1f

    .line 499
    invoke-virtual {v0}, Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutRunnable;->stop()V

    .line 500
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u53cd\u9988\u6210\u529f,\u53d6\u6d88\u8d85\u65f6\u8ba1\u65f6\u5668:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mEchoTimeOutRunnable:Lcn/baos/watch/sdk/huabaoImpl/translate/EchoTimeOutRunnable;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public getFileSizeLength()J
    .registers 3

    .line 505
    iget-wide v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mFileSizeLength:J

    return-wide v0
.end method

.method public isInTransmission()Z
    .registers 2

    .line 258
    iget-boolean v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->stopTransmission:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isReceiveIndex(I)Z
    .registers 4

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u5305\u9700\u8981\u5305\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mNowIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "----\u91cd\u53d1\u5305\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 482
    iget v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mNowIndex:I

    if-le v0, p1, :cond_24

    const/4 p1, 0x1

    return p1

    :cond_24
    const/4 p1, 0x0

    return p1
.end method

.method public isStopTransmission()Z
    .registers 2

    .line 509
    iget-boolean v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->stopTransmission:Z

    return v0
.end method

.method public onCommandBleOTAEachPackageCallBack(Lcn/baos/watch/w100/messages/CommandBleOTAResult;)V
    .registers 9

    .line 359
    invoke-direct {p0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->stopEchoTimeOutTimer()V

    .line 360
    iget v0, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_26

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5355\u5305\u4e0d\u53ef\u5347\u7ea7,result\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 364
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mTranslateCallback:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;

    if-eqz v0, :cond_25

    .line 365
    iget p1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->result:I

    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;->onTransferFail(I)V

    :cond_25
    return-void

    .line 370
    :cond_26
    iget-boolean v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->stopTransmission:Z

    const/16 v2, 0x64

    if-eqz v0, :cond_3d

    iget-boolean v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->isTransFinish:Z

    if-nez v0, :cond_3d

    const-string p1, "\u672c\u6b21\u4f20\u8f93\u5df2\u88ab\u505c\u6b62\uff0c\u4e0d\u7ee7\u7eed\u4f20\u8f93"

    .line 371
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 372
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mTranslateCallback:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;

    if-eqz p1, :cond_3c

    .line 373
    invoke-interface {p1, v2}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;->onTransferFail(I)V

    :cond_3c
    return-void

    .line 378
    :cond_3d
    iget v0, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    iput v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mNowIndex:I

    .line 381
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "\u5f53\u524d\u5305\u7684\u53cd\u9988:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 382
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_ab

    .line 383
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "\u5f53\u524d\u5305\u8fdb\u5ea6\uff1a---index=="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "----mOtaByteArray.Size=="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 384
    iget v0, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    int-to-float v0, v0

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v0, v4

    iget-object v4, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v0, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v0, v4

    float-to-int v0, v0

    .line 385
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "\u5f53\u524d\u8fdb\u5ea6:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_ac

    :cond_ab
    move v0, v3

    .line 387
    :goto_ac
    iget-object v4, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mTranslateCallback:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;

    if-eqz v4, :cond_b3

    .line 388
    invoke-interface {v4, v0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;->onTransferProgress(I)V

    :cond_b3
    const/4 v4, 0x1

    if-ge v0, v2, :cond_171

    .line 390
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_171

    .line 392
    iget v0, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    if-eq v0, v1, :cond_1b4

    iget v0, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    iget-object v1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b4

    const-string v0, "\u5347\u7ea7\u6570\u636e\u5305echo\u8d85\u65f6"

    .line 394
    invoke-direct {p0, v0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->startEchoTimeOutTimer(Ljava/lang/String;)V

    .line 395
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5355\u5305\u5f00\u59cb\u4f20\u8f93\u89d2\u6807:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v5, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " \u603b\u5305\u4e2a\u6570:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 396
    iget v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mNowIndex:I

    iget v5, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mInAdvanceIndex:I

    const-string v6, "____mInAdvanceIndex = "

    if-ne v0, v5, :cond_11a

    .line 397
    iput-boolean v4, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->isSend:Z

    .line 399
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "OTA- \u53d1\u9001\u4e2d mNowIndex="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mNowIndex:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mInAdvanceIndex:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_152

    .line 401
    :cond_11a
    iput-boolean v3, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->isSend:Z

    .line 402
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "OTA- \u91cd\u7f6e\u53d1\u9001 mNowIndex="

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mNowIndex:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v3, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mInAdvanceIndex:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 404
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    iget-object v3, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    iget v5, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    .line 405
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    iget v5, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    new-instance v6, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$2;

    invoke-direct {v6, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$2;-><init>(Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;Lcn/baos/watch/w100/messages/CommandBleOTAResult;)V

    .line 404
    invoke-virtual {v0, v3, v5, p0, v6}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendOtaUpdateDataEachPackage([BILcn/baos/watch/sdk/huabaoImpl/translate/OnCommandBleOTAEachPackageCallBack;Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;)V

    .line 420
    :goto_152
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    iget p1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    array-length p1, p1

    const/16 v0, 0x400

    if-ge p1, v0, :cond_1b4

    .line 421
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 422
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mTranslateCallback:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;

    if-eqz p1, :cond_1b4

    .line 423
    iput-boolean v4, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->isTransFinish:Z

    .line 424
    invoke-interface {p1, v2}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;->onTransferProgress(I)V

    .line 426
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->stopTransmission()V

    goto :goto_1b4

    .line 433
    :cond_171
    iput-boolean v4, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->stopTransmission:Z

    .line 434
    iput-boolean v4, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->isTransFinish:Z

    const-string p1, "\u4f20\u8f93\u5b8c\u6210,\u5f00\u59cb\u8fdb\u5165ota\u7b49\u5f85\u7ed3\u679c\u72b6\u6001"

    .line 435
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 436
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mTranslateCallback:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;

    if-eqz p1, :cond_184

    .line 437
    invoke-interface {p1}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;->onTransferFinish()V

    .line 438
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->stopTransmission()V

    .line 442
    :cond_184
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    if-eqz p1, :cond_1b4

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1b4

    .line 443
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u6e05\u7a7a\u7f13\u5b58\u5927\u5c0f:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "\u4e0d\u5220\u9664\u672c\u5730\u6587\u4ef6"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 444
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    const/4 p1, 0x0

    .line 445
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    :cond_1b4
    :goto_1b4
    return-void
.end method

.method public onCommandBleOTAFileInfoCallBack(Lcn/baos/watch/w100/messages/CommandBleOTAResult;)V
    .registers 6

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onCommandBleOTAFileInfoCallBack\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 279
    invoke-direct {p0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->stopEchoTimeOutTimer()V

    .line 282
    iget v0, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3a

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4e0d\u53ef\u5347\u7ea7,result\uff1a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->result:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 286
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mTranslateCallback:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;

    if-eqz v0, :cond_39

    .line 287
    iget p1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->result:I

    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;->onTransferFail(I)V

    :cond_39
    return-void

    .line 291
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u53ef\u5347\u7ea7,\u51c6\u5907\u5f00\u59cb\u4f20\u8f93\u6570\u636e,result\uff1a"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 296
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mTranslateCallback:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;

    if-eqz v0, :cond_53

    .line 297
    invoke-interface {v0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;->onTranslateStart()V

    .line 300
    :cond_53
    iget-boolean v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->stopTransmission:Z

    if-eqz v0, :cond_6a

    iget-boolean v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->isTransFinish:Z

    if-nez v0, :cond_6a

    const-string p1, "\u672c\u6b21\u4f20\u8f93\u5df2\u88ab\u505c\u6b62\uff0c\u4e0d\u7ee7\u7eed\u4f20\u8f93"

    .line 301
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 302
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mTranslateCallback:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;

    if-eqz p1, :cond_69

    const/16 v0, 0x64

    .line 303
    invoke-interface {p1, v0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;->onTransferFail(I)V

    :cond_69
    return-void

    .line 308
    :cond_6a
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    if-nez v0, :cond_6f

    return-void

    .line 311
    :cond_6f
    iget v0, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lt v0, v2, :cond_98

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u9996\u6b21\u8be2\u95ee\u89d2\u6807\u76f4\u63a5\u8d8a\u754c,\u4e0d\u9700\u8981\u6570\u636e\u4f20\u8f93,\u7b49\u5f85\u624b\u8868\u5347\u7ea7\u4e2d..:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 313
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mTranslateCallback:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;

    if-eqz p1, :cond_97

    .line 314
    invoke-interface {p1}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;->onTransferFinish()V

    .line 315
    invoke-virtual {p0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->stopTransmission()V

    :cond_97
    return-void

    .line 321
    :cond_98
    iget v0, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    iput v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mNowIndex:I

    .line 324
    iget v0, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    if-eq v0, v1, :cond_eb

    iget v0, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    iget-object v1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_eb

    const-string v0, "\u5347\u7ea7\u6570\u636e\u5305echo\u8d85\u65f6"

    .line 326
    invoke-direct {p0, v0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->startEchoTimeOutTimer(Ljava/lang/String;)V

    .line 327
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5355\u5305\u5f00\u59cb\u4f20\u8f93\u89d2\u6807:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u603b\u5305\u4e2a\u6570:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 336
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    iget v2, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    .line 337
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    iget v2, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->index:I

    new-instance v3, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$1;

    invoke-direct {v3, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$1;-><init>(Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;Lcn/baos/watch/w100/messages/CommandBleOTAResult;)V

    .line 336
    invoke-virtual {v0, v1, v2, p0, v3}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendOtaUpdateDataEachPackage([BILcn/baos/watch/sdk/huabaoImpl/translate/OnCommandBleOTAEachPackageCallBack;Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;)V

    :cond_eb
    return-void
.end method

.method public sendInAdvanceData(I)V
    .registers 5

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OTA-sendInAdvanceData:  "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 452
    iput p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mInAdvanceIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2c

    .line 454
    :try_start_17
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2c

    iget v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mInAdvanceIndex:I

    iget-object v1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt v0, v1, :cond_2c

    return-void

    .line 457
    :cond_2c
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    .line 458
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    new-instance v2, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$3;

    invoke-direct {v2, p0}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager$3;-><init>(Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;)V

    .line 457
    invoke-virtual {v0, v1, p1, p0, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendOtaUpdateDataEachPackage([BILcn/baos/watch/sdk/huabaoImpl/translate/OnCommandBleOTAEachPackageCallBack;Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;)V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_40} :catch_41

    goto :goto_45

    :catch_41
    move-exception p1

    .line 470
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_45
    return-void
.end method

.method public stopTransmission()V
    .registers 2

    const/4 v0, 0x1

    .line 250
    iput-boolean v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->stopTransmission:Z

    .line 251
    iget-object v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->executor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_a

    .line 252
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    :cond_a
    return-void
.end method

.method public transferFile(Ljava/io/File;ILcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;)V
    .registers 12

    const-string p2, "mOtaFile\u6587\u4ef6\u8def\u5f84:"

    const/4 v0, -0x1

    .line 83
    iput v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mNowIndex:I

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->stopTransmission:Z

    .line 97
    iput-boolean v0, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->isTransFinish:Z

    .line 98
    iput-object p3, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mTranslateCallback:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;

    .line 99
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaFile:Ljava/io/File;

    .line 100
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_37

    .line 101
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaFile:Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\u6587\u4ef6\u4e0d\u5b58\u5728,\u8def\u5f84:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 106
    :cond_37
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p1, v1

    new-array v1, p1, [B

    int-to-long v2, p1

    .line 107
    iput-wide v2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mFileSizeLength:J

    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ota\u6587\u4ef6\u5927\u5c0f:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 111
    :try_start_55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 112
    new-instance p2, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaFile:Ljava/io/File;

    invoke-direct {p2, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move v2, v0

    :goto_73
    if-ge v2, p1, :cond_7f

    sub-int v3, p1, v2

    .line 116
    invoke-virtual {p2, v1, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_7f

    add-int/2addr v2, v3

    goto :goto_73

    :cond_7f
    if-eq v2, p1, :cond_86

    if-eqz p3, :cond_86

    .line 122
    invoke-interface {p3}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;->onLoadFileFail()V

    .line 125
    :cond_86
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_55 .. :try_end_89} :catch_8a

    goto :goto_8e

    :catch_8a
    move-exception p1

    .line 128
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 131
    :goto_8e
    invoke-static {v1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->unpackMessage([B)Lcn/baos/message/Serializable;

    move-result-object p1

    check-cast p1, Lcn/baos/watch/w100/messages/CommandBleOTAFile;

    if-nez p1, :cond_a1

    const-string p1, "\u5347\u7ea7\u6587\u4ef6unpack\u5f02\u5e38"

    .line 133
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 135
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mTranslateCallback:Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;

    invoke-interface {p1}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;->onLoadFileFail()V

    return-void

    .line 138
    :cond_a1
    new-instance p2, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;

    invoke-direct {p2}, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;-><init>()V

    .line 139
    iget v1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->file_type:I

    iput v1, p2, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->file_type:I

    .line 140
    iget v1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->file_size:I

    iput v1, p2, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->file_size:I

    .line 141
    iget-object v1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->file_md5:Ljava/lang/String;

    iput-object v1, p2, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->file_md5:Ljava/lang/String;

    .line 142
    iget-object v1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->old_version:Ljava/lang/String;

    iput-object v1, p2, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->old_version:Ljava/lang/String;

    .line 143
    iget-object v1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->new_version:Ljava/lang/String;

    iput-object v1, p2, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->new_version:Ljava/lang/String;

    .line 144
    iget-object v1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->hardware_id:Ljava/lang/String;

    iput-object v1, p2, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->hardware_id:Ljava/lang/String;

    .line 145
    iget-object v1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->name:Ljava/lang/String;

    iput-object v1, p2, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->name:Ljava/lang/String;

    .line 146
    iget-object v1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->desc:Ljava/lang/String;

    iput-object v1, p2, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->desc:Ljava/lang/String;

    .line 147
    iget v1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->file_id:I

    iput v1, p2, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->file_id:I

    .line 148
    iget v1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->old_addr:I

    iput v1, p2, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->old_addr:I

    .line 149
    iget v1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->dest_addr:I

    iput v1, p2, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->dest_addr:I

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ota \u5347\u7ea7\u53c2\u6570\u5bf9\u5e94\u6570\u7ec4\u5927\u5c0f CommandBleOTAFile->data:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->data:[B

    array-length v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ota \u5347\u7ea7\u53c2\u6570\u786e\u8ba4\u5bf9\u8c61 commandBleOTAFileInfo:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 155
    iget-object v1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->data:[B

    .line 156
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    move v2, v0

    .line 160
    :cond_103
    :goto_103
    array-length v3, v1

    if-ge v2, v3, :cond_1c6

    .line 161
    array-length v3, v1

    sub-int/2addr v3, v2

    const/16 v4, 0x400

    if-lt v3, v4, :cond_137

    new-array v3, v4, [B

    .line 165
    :try_start_10e
    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_10e .. :try_end_111} :catch_112

    goto :goto_12c

    :catch_112
    move-exception v5

    .line 167
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ota\u8bfb\u53d6-\u5d29\u6e83\u4e86:1024---e"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 170
    :goto_12c
    iget-object v5, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v3, "ota\u8bfb\u53d6\u6570\u636e\u591f1024\u65f6,\u8bfb\u53d6\u957f\u5ea6:1024"

    .line 171
    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_17b

    .line 173
    :cond_137
    array-length v3, v1

    sub-int v4, v3, v2

    .line 174
    new-array v3, v4, [B

    .line 175
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ota\u8bfb\u53d6\u6570\u636e\u4e0d\u591f1024\u65f6,\u8bfb\u53d6\u957f\u5ea6=\u5269\u4f59\u957f\u5ea6:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 177
    :try_start_14e
    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_151
    .catch Ljava/lang/Exception; {:try_start_14e .. :try_end_151} :catch_152

    goto :goto_176

    :catch_152
    move-exception v5

    .line 179
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 180
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ota\u8bfb\u53d6-\u5d29\u6e83\u4e86<1024----:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "---e"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 182
    :goto_176
    iget-object v5, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_17b
    add-int/2addr v2, v4

    int-to-float v3, v2

    const/high16 v5, 0x3f800000    # 1.0f

    mul-float/2addr v3, v5

    .line 185
    array-length v5, v1

    int-to-float v5, v5

    div-float/2addr v3, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v3, v5

    float-to-int v3, v3

    .line 186
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ota\u8bfb\u53d6\u6570\u636e\u8fdb\u5ea6:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 187
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OTA  offset="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "------numRead="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "---progressLoad="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-eqz p3, :cond_103

    .line 189
    invoke-interface {p3, v3}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;->onLoadFile(I)V

    goto/16 :goto_103

    :cond_1c6
    if-eqz p3, :cond_1cb

    .line 194
    invoke-interface {p3}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;->onWaitWatchStartTranslate()V

    .line 197
    :cond_1cb
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "ota\u6587\u4ef6\u5185\u90e8\u4f20\u8f93\u5305\u7684\u957f\u5ea6:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->data:[B

    array-length p1, p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 198
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    if-eqz p1, :cond_202

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_202

    .line 199
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "ota\u6587\u4ef6\u5185\u90e8\u4f20\u8f93\u5305\u96c6\u5408\u957f\u5ea6:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p3, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaByteArray:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_202
    const-string p1, "\u662f\u5426\u53ef\u5347\u7ea7echo\u8d85\u65f6"

    .line 201
    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->startEchoTimeOutTimer(Ljava/lang/String;)V

    .line 202
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    .line 203
    invoke-virtual {p1, p2, p0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendOtaUpdateStartInfo(Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;Lcn/baos/watch/sdk/huabaoImpl/translate/OnCommandBleOTAFileInfoCallBack;)V

    return-void
.end method

.method public transferFileUnpackCheck(Ljava/io/File;ILcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;)V
    .registers 8

    const-string p2, "mOtaFile\u6587\u4ef6\u8def\u5f84:"

    .line 207
    iput-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaFile:Ljava/io/File;

    .line 208
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_2d

    .line 209
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaFile:Ljava/io/File;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "\u6587\u4ef6\u4e0d\u5b58\u5728,\u8def\u5f84:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 214
    :cond_2d
    iget-object p1, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaFile:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int p1, v0

    new-array v0, p1, [B

    .line 215
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ota\u6587\u4ef6\u5927\u5c0f:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 217
    :try_start_49
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaFile:Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 218
    new-instance p2, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->mOtaFile:Ljava/io/File;

    invoke-direct {p2, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move v2, v1

    :goto_67
    if-ge v2, p1, :cond_73

    sub-int v3, p1, v2

    .line 222
    invoke-virtual {p2, v0, v2, v3}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    if-ltz v3, :cond_73

    add-int/2addr v2, v3

    goto :goto_67

    :cond_73
    if-eq v2, p1, :cond_7a

    if-eqz p3, :cond_7a

    .line 228
    invoke-interface {p3}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;->onLoadFileFail()V

    .line 231
    :cond_7a
    invoke-virtual {p2}, Ljava/io/FileInputStream;->close()V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_7d} :catch_7e

    goto :goto_82

    :catch_7e
    move-exception p1

    .line 234
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 237
    :goto_82
    invoke-static {v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->unpackMessage([B)Lcn/baos/message/Serializable;

    move-result-object p1

    check-cast p1, Lcn/baos/watch/w100/messages/CommandBleOTAFile;

    if-nez p1, :cond_93

    const-string p1, "\u5347\u7ea7\u6587\u4ef6unpack\u5f02\u5e38"

    .line 239
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 240
    invoke-interface {p3, v1}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;->onTransferFail(I)V

    return-void

    :cond_93
    const/4 p1, 0x1

    .line 243
    invoke-interface {p3, p1}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;->onTransferFail(I)V

    const-string p1, "\u5347\u7ea7\u6587\u4ef6unpack\u6210\u529f"

    .line 244
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    return-void
.end method
