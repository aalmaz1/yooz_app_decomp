.class public Lcn/baos/watch/sdk/code/test/TestHandler;
.super Landroid/os/Handler;
.source "TestHandler.java"


# static fields
.field public static circleMaxTime:I = 0xbb8

.field private static instance:Lcn/baos/watch/sdk/code/test/TestHandler;


# instance fields
.field asrTestPlayAudioRunnable:Ljava/lang/Runnable;

.field asrTestTimeOutStartRunnable:Ljava/lang/Runnable;

.field private audioCycleMaxNum:I

.field private audioCycleNoAsrResult:I

.field private audioCycleNoPassNum:I

.field private audioCycleNum:I

.field private audioCyclePassNum:I

.field private delayTimeNum:I

.field private isTransmissionTesting:Z

.field private mAutoBigTimeEnd:J

.field private mAutoBigTimeStart:J

.field private mAutoSmallTimeEnd:J

.field private mAutoSmallTimeStart:J

.field private mAutoTimeDial:J

.field private mBigPackageTime:I

.field private mBlueConnectTestCurrentTakeTime:J

.field private mBlueConnectTestMaxNum:J

.field private mBlueConnectTestNum:J

.field private mContext:Landroid/content/Context;

.field private mIsBigPackageSame:Z

.field private mIsSmallPackageSame:Z

.field private mOtaFile1:Ljava/lang/String;

.field private mOtaFile2:Ljava/lang/String;

.field private mSmallPackageCurrentTakeTime:J

.field private mSmallPackageTestCycleMaxNum:I

.field private mSmallPackageTestCycleNum:I

.field private mSmallPackageTestFailNum:I

.field private mSmallPackageTestSameNum:I

.field private mSmallPackageTestSuccessNum:I

.field private mTargetId:I

.field private mTimeBigPackageEnd:J

.field private mTimeBigPackageStart:J

.field private mTimeBlueBreakOff:J

.field private mTimeBlueConnectSuccess:J

.field private mTimeBlueScanDevicesStartConnect:J

.field private mTimeBlueStartScan:J

.field private mTimeSmallPackageEnd:J

.field private mTimeSmallPackageStart:J

.field public monkeyMaxTime:I

.field monkeyTestRunnable:Ljava/lang/Runnable;

.field public monkeyTestTime:I

.field private number_fail:I

.field private number_success:I

.field progress:I

.field public randomCommandMaxTime:I

.field randomCommandTestRunnable:Ljava/lang/Runnable;

.field public randomCommandTestTime:I

.field smallPackageTimeOutRunnable:Ljava/lang/Runnable;

.field private textAudioContent:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutoTimeDial(Lcn/baos/watch/sdk/code/test/TestHandler;)J
    .locals 2

    iget-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mAutoTimeDial:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetnumber_fail(Lcn/baos/watch/sdk/code/test/TestHandler;)I
    .locals 0

    iget p0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->number_fail:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetnumber_success(Lcn/baos/watch/sdk/code/test/TestHandler;)I
    .locals 0

    iget p0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->number_success:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputnumber_fail(Lcn/baos/watch/sdk/code/test/TestHandler;I)V
    .locals 0

    iput p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->number_fail:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputnumber_success(Lcn/baos/watch/sdk/code/test/TestHandler;I)V
    .locals 0

    iput p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->number_success:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcopyAssets(Lcn/baos/watch/sdk/code/test/TestHandler;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcn/baos/watch/sdk/code/test/TestHandler;->copyAssets(Ljava/lang/String;I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 4

    .line 110
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->delayTimeNum:I

    const-string v1, "\u5b9a\u4e00\u4e2a\u516b\u70b9\u7684\u95f9\u949f"

    .line 41
    iput-object v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->textAudioContent:Ljava/lang/String;

    .line 42
    sget v1, Lcn/baos/watch/sdk/code/test/TestHandler;->circleMaxTime:I

    iput v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->audioCycleMaxNum:I

    .line 43
    iput v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->audioCycleNum:I

    .line 44
    iput v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->audioCyclePassNum:I

    .line 45
    iput v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->audioCycleNoPassNum:I

    .line 46
    iput v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->audioCycleNoAsrResult:I

    int-to-long v2, v1

    .line 52
    iput-wide v2, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mBlueConnectTestMaxNum:J

    .line 60
    iput v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestCycleMaxNum:I

    .line 62
    iput v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestCycleNum:I

    .line 63
    iput v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestSameNum:I

    .line 64
    iput v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestSuccessNum:I

    .line 65
    iput v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestFailNum:I

    .line 68
    iput v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->monkeyTestTime:I

    .line 69
    iput v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->monkeyMaxTime:I

    .line 72
    iput v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->randomCommandTestTime:I

    .line 73
    iput v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->randomCommandMaxTime:I

    .line 79
    iput-boolean v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->isTransmissionTesting:Z

    .line 83
    iput v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mBigPackageTime:I

    const-wide/16 v1, -0x1

    .line 87
    iput-wide v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mAutoBigTimeStart:J

    .line 88
    iput-wide v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mAutoBigTimeEnd:J

    .line 89
    iput-wide v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mAutoSmallTimeStart:J

    .line 90
    iput-wide v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mAutoSmallTimeEnd:J

    .line 92
    iput-wide v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mAutoTimeDial:J

    .line 96
    iput v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->number_success:I

    .line 97
    iput v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->number_fail:I

    .line 118
    new-instance v1, Lcn/baos/watch/sdk/code/test/TestHandler$1;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/code/test/TestHandler$1;-><init>(Lcn/baos/watch/sdk/code/test/TestHandler;)V

    iput-object v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->smallPackageTimeOutRunnable:Ljava/lang/Runnable;

    .line 131
    new-instance v1, Lcn/baos/watch/sdk/code/test/TestHandler$2;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/code/test/TestHandler$2;-><init>(Lcn/baos/watch/sdk/code/test/TestHandler;)V

    iput-object v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->monkeyTestRunnable:Ljava/lang/Runnable;

    .line 144
    new-instance v1, Lcn/baos/watch/sdk/code/test/TestHandler$3;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/code/test/TestHandler$3;-><init>(Lcn/baos/watch/sdk/code/test/TestHandler;)V

    iput-object v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->randomCommandTestRunnable:Ljava/lang/Runnable;

    .line 157
    new-instance v1, Lcn/baos/watch/sdk/code/test/TestHandler$4;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/code/test/TestHandler$4;-><init>(Lcn/baos/watch/sdk/code/test/TestHandler;)V

    iput-object v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->asrTestTimeOutStartRunnable:Ljava/lang/Runnable;

    .line 170
    new-instance v1, Lcn/baos/watch/sdk/code/test/TestHandler$5;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/code/test/TestHandler$5;-><init>(Lcn/baos/watch/sdk/code/test/TestHandler;)V

    iput-object v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->asrTestPlayAudioRunnable:Ljava/lang/Runnable;

    .line 559
    iput v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->progress:I

    return-void
.end method

.method private copyAssets(Ljava/lang/String;I)V
    .locals 5

    const-string v0, "-----<<<>>>>"

    .line 519
    :try_start_0
    iget-object v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 523
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/test"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 524
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 525
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 526
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 528
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 529
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 530
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "file do not exists"

    .line 531
    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 532
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 536
    :cond_1
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 540
    :goto_0
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_2

    const/4 v4, 0x0

    .line 541
    invoke-virtual {v3, p1, v4, v0}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 543
    :cond_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 544
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 546
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5927\u5c0f\u5305\u8868\u76d8-\u8868\u76d8-FILE="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez p2, :cond_3

    .line 549
    iput-object v2, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mOtaFile1:Ljava/lang/String;

    goto :goto_1

    .line 551
    :cond_3
    iput-object v2, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mOtaFile2:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 555
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/code/test/TestHandler;
    .locals 2

    .line 100
    sget-object v0, Lcn/baos/watch/sdk/code/test/TestHandler;->instance:Lcn/baos/watch/sdk/code/test/TestHandler;

    if-nez v0, :cond_1

    .line 101
    const-class v0, Lcn/baos/watch/sdk/code/test/TestHandler;

    monitor-enter v0

    .line 102
    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/code/test/TestHandler;->instance:Lcn/baos/watch/sdk/code/test/TestHandler;

    if-nez v1, :cond_0

    .line 103
    new-instance v1, Lcn/baos/watch/sdk/code/test/TestHandler;

    invoke-direct {v1}, Lcn/baos/watch/sdk/code/test/TestHandler;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/code/test/TestHandler;->instance:Lcn/baos/watch/sdk/code/test/TestHandler;

    .line 105
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 107
    :cond_1
    :goto_0
    sget-object v0, Lcn/baos/watch/sdk/code/test/TestHandler;->instance:Lcn/baos/watch/sdk/code/test/TestHandler;

    return-object v0
.end method

.method private startMonkeyTestNowSendResultToWatch(ILjava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public getTime()Ljava/lang/String;
    .locals 3

    .line 498
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 13

    .line 184
    sget-boolean v0, Lcn/baos/watch/sdk/constant/Constant;->isTestMode:Z

    if-nez v0, :cond_0

    return-void

    .line 187
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x3ea

    if-eq v0, v1, :cond_c

    const/16 v2, 0x3eb

    if-eq v0, v2, :cond_b

    const/4 v2, 0x2

    const/16 v3, 0x3fa

    if-eq v0, v3, :cond_a

    const/16 v4, 0x3fb

    const-string v5, "\u5927\u5c0f\u5305\u95f4\u9694\u65f6\u95f4:"

    const-wide/32 v6, 0xea60

    const/16 v8, 0x2710

    const/16 v9, 0x3f0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    if-eq v0, v4, :cond_6

    const/16 v4, 0x406

    if-eq v0, v4, :cond_5

    const/16 v2, 0x2711

    if-eq v0, v2, :cond_4

    const-string v2, " \u6d4b\u8bd5\u6b21\u6570:"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string p1, "\u5c0f\u5305\u8d85\u65f6"

    .line 280
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 282
    iget p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestFailNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestFailNum:I

    .line 284
    iget p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestCycleNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestCycleNum:I

    const-string p1, "\u5c0f\u5305small package test fail,time out"

    .line 285
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    sget v1, Lcn/baos/watch/sdk/constant/Constant;->INTEGRATION_RESULT_FAIL:I

    invoke-virtual {v0, v1, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendIntegrationTestResultToWatch(ILjava/lang/String;)V

    .line 288
    iput-boolean v12, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mIsSmallPackageSame:Z

    .line 289
    iput v12, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestSameNum:I

    .line 290
    iput v12, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestCycleNum:I

    .line 291
    iput-wide v10, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageCurrentTakeTime:J

    .line 292
    iput v12, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestSuccessNum:I

    .line 293
    iput v12, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestFailNum:I

    goto/16 :goto_0

    .line 218
    :pswitch_1
    iget-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mAutoSmallTimeStart:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_1

    .line 219
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 220
    iget-wide v3, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mAutoSmallTimeStart:J

    sub-long/2addr v0, v3

    cmp-long v0, v0, v6

    if-ltz v0, :cond_1

    .line 221
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5927\u5c0f\u5305\u8868\u76d8-\u5c0f\u5305-end\uff1atime="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/baos/watch/sdk/code/test/TestHandler;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    .line 222
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mAutoSmallTimeEnd:J

    .line 223
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5927\u5c0f\u5305\u8868\u76d8-\u8868\u76d8-start\uff1atime="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/baos/watch/sdk/code/test/TestHandler;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mAutoTimeDial:J

    .line 226
    iput v12, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->progress:I

    .line 228
    iget-object p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mOtaFile1:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcn/baos/watch/sdk/code/test/TestHandler;->transferFile(Ljava/lang/String;I)V

    return-void

    .line 233
    :cond_1
    iget v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->delayTimeNum:I

    mul-int/lit8 v0, v0, 0x64

    if-lt v0, v8, :cond_2

    .line 234
    iput v12, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->delayTimeNum:I

    .line 236
    :cond_2
    iget v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->delayTimeNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->delayTimeNum:I

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->delayTimeNum:I

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeSmallPackageEnd:J

    .line 239
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/baos/watch/w100/messages/CommandContentReturnRequest;

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5c0f\u5305\u63a5\u6536\u6587\u672c:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcn/baos/watch/w100/messages/CommandContentReturnRequest;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    .line 241
    iget-object p1, p1, Lcn/baos/watch/w100/messages/CommandContentReturnRequest;->content:Ljava/lang/String;

    invoke-static {}, Lcn/baos/watch/sdk/code/test/TestMessageManager;->getInstance()Lcn/baos/watch/sdk/code/test/TestMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/code/test/TestMessageManager;->getCurrentSmallPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mIsSmallPackageSame:Z

    if-eqz p1, :cond_3

    .line 243
    iget p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestSameNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestSameNum:I

    .line 246
    :cond_3
    iget p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestSuccessNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestSuccessNum:I

    .line 248
    iget p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestCycleNum:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestCycleNum:I

    .line 249
    iget-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageCurrentTakeTime:J

    iget-wide v3, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeSmallPackageEnd:J

    iget-wide v5, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeSmallPackageStart:J

    sub-long/2addr v3, v5

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageCurrentTakeTime:J

    .line 251
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5c0f\u5305smallPackageTest\u8017\u65f6:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeSmallPackageEnd:J

    iget-wide v3, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeSmallPackageStart:J

    sub-long/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestCycleNum:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " echo\u6210\u529f\u6b21\u6570:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestSuccessNum:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " echo test fail time:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mSmallPackageTestFailNum:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 254
    invoke-static {}, Lcn/baos/watch/sdk/code/test/TestHandler;->getInstance()Lcn/baos/watch/sdk/code/test/TestHandler;

    move-result-object p1

    iget v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->delayTimeNum:I

    mul-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    invoke-virtual {p1, v9, v0, v1}, Lcn/baos/watch/sdk/code/test/TestHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 207
    :pswitch_2
    iput v12, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTargetId:I

    .line 208
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeSmallPackageStart:J

    .line 209
    invoke-static {}, Lcn/baos/watch/sdk/code/test/TestMessageManager;->getInstance()Lcn/baos/watch/sdk/code/test/TestMessageManager;

    move-result-object p1

    iget v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTargetId:I

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/code/test/TestMessageManager;->startSmallPackageTest(I)Ljava/lang/String;

    .line 210
    sget-boolean p1, Lcn/baos/watch/sdk/constant/Constant;->isShutDownWhenNoEcho:Z

    goto/16 :goto_0

    .line 410
    :pswitch_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeBlueScanDevicesStartConnect:J

    .line 411
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u84dd\u7259\u6d4b\u8bd5:\u641c\u7d22\u5230\u84dd\u7259\u8bbe\u5907\u5f00\u59cb\u8fde\u63a5:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeBlueScanDevicesStartConnect:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_4
    const-string p1, "\u84dd\u7259\u6d4b\u8bd5:\u89c4\u5b9a\u65f6\u95f4\u5185\u672a\u626b\u63cf\u5230\u84dd\u7259\u8bbe\u5907"

    .line 414
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 417
    :pswitch_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeBlueConnectSuccess:J

    .line 418
    iget-wide v5, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mBlueConnectTestNum:J

    const-wide/16 v7, 0x1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mBlueConnectTestNum:J

    .line 419
    iget-wide v5, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mBlueConnectTestCurrentTakeTime:J

    iget-wide v7, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeBlueStartScan:J

    sub-long/2addr v3, v7

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mBlueConnectTestCurrentTakeTime:J

    .line 421
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u84dd\u7259\u6d4b\u8bd5:\u84dd\u7259\u8fde\u63a5\u6210\u529f,\u8017\u65f6:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeBlueConnectSuccess:J

    iget-wide v5, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeBlueStartScan:J

    sub-long/2addr v3, v5

    invoke-virtual {p1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v2, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mBlueConnectTestNum:J

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "---\u5e73\u5747\u8017\u65f6:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v2, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mBlueConnectTestCurrentTakeTime:J

    iget-wide v4, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mBlueConnectTestNum:J

    div-long/2addr v2, v4

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    .line 423
    invoke-static {p0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x1770

    invoke-virtual {p0, p1, v0, v1}, Lcn/baos/watch/sdk/code/test/TestHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 189
    :cond_4
    iput v12, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->number_success:I

    .line 190
    iput v12, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->number_fail:I

    .line 191
    invoke-virtual {p0}, Lcn/baos/watch/sdk/code/test/TestHandler;->openAssets()V

    .line 192
    invoke-static {}, Lcn/baos/watch/sdk/code/test/TestHandler;->getInstance()Lcn/baos/watch/sdk/code/test/TestHandler;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcn/baos/watch/sdk/code/test/TestHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const-string p1, "\u5927\u5c0f\u5305\u8868\u76d8-\u5927\u5305-\u5f00\u59cb"

    .line 193
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    .line 194
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mAutoBigTimeStart:J

    .line 195
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5927\u5c0f\u5305\u8868\u76d8-\u5927\u5305-\u5f00\u59cb\uff1atime="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/baos/watch/sdk/code/test/TestHandler;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 199
    :cond_5
    invoke-static {}, Lcn/baos/watch/sdk/code/test/TestHandler;->getInstance()Lcn/baos/watch/sdk/code/test/TestHandler;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Lcn/baos/watch/sdk/code/test/TestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const-string p1, "\u7a33\u5b9a\u6027\u6d4b\u8bd5\u5f00\u59cb"

    .line 200
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 447
    :cond_6
    iget-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mAutoBigTimeStart:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_7

    .line 448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 449
    iget-wide v10, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mAutoBigTimeStart:J

    sub-long/2addr v0, v10

    cmp-long v0, v0, v6

    if-ltz v0, :cond_7

    .line 450
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5927\u5c0f\u5305\u8868\u76d8-\u5927\u5305-end\uff1atime="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/baos/watch/sdk/code/test/TestHandler;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    .line 451
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mAutoSmallTimeStart:J

    .line 452
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5927\u5c0f\u5305\u8868\u76d8-\u5c0f\u5305-start\uff1atime="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcn/baos/watch/sdk/code/test/TestHandler;->getTime()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    .line 453
    invoke-static {}, Lcn/baos/watch/sdk/code/test/TestHandler;->getInstance()Lcn/baos/watch/sdk/code/test/TestHandler;

    move-result-object p1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v9, v0}, Lcn/baos/watch/sdk/code/test/TestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 458
    :cond_7
    iget v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->delayTimeNum:I

    mul-int/lit8 v0, v0, 0x64

    if-lt v0, v8, :cond_8

    .line 459
    iput v12, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->delayTimeNum:I

    .line 461
    :cond_8
    iget v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->delayTimeNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->delayTimeNum:I

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->delayTimeNum:I

    mul-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    .line 463
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeBigPackageEnd:J

    .line 464
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcn/baos/watch/w100/messages/CommandContentReturnRequest;

    .line 465
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "st:\u63a5\u6536\u5927\u5305\u6587\u672c\u957f\u5ea6:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p1, Lcn/baos/watch/w100/messages/CommandContentReturnRequest;->content:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "st:\u53d1\u9001\u5927\u5305\u6587\u672c\u957f\u5ea6:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/baos/watch/sdk/code/test/TestMessageManager;->getInstance()Lcn/baos/watch/sdk/code/test/TestMessageManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/code/test/TestMessageManager;->getCurrentBigPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    .line 467
    iget-object p1, p1, Lcn/baos/watch/w100/messages/CommandContentReturnRequest;->content:Ljava/lang/String;

    invoke-static {}, Lcn/baos/watch/sdk/code/test/TestMessageManager;->getInstance()Lcn/baos/watch/sdk/code/test/TestMessageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/code/test/TestMessageManager;->getCurrentBigPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mIsBigPackageSame:Z

    const-string v0, " \u6570\u636e\u662f\u5426\u76f8\u540c:"

    if-eqz p1, :cond_9

    .line 469
    iget p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mBigPackageTime:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mBigPackageTime:I

    .line 470
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "st:\u5927\u5305\u6d4b\u8bd5bigPackageTest\u6210\u529f,\u6210\u529f\u6b21\u6570:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mBigPackageTime:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "\u4f20\u8f93\u8017\u65f6:"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-wide v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeBigPackageEnd:J

    iget-wide v4, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeBigPackageStart:J

    sub-long/2addr v1, v4

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mIsBigPackageSame:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 471
    invoke-static {}, Lcn/baos/watch/sdk/code/test/TestHandler;->getInstance()Lcn/baos/watch/sdk/code/test/TestHandler;

    move-result-object p1

    iget v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->delayTimeNum:I

    mul-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    invoke-virtual {p1, v3, v0, v1}, Lcn/baos/watch/sdk/code/test/TestHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 473
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "st:\u5927\u5305\u6d4b\u8bd5bigPackageTest\u5931\u8d25,\u4f20\u8f93\u8017\u65f6:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeBigPackageEnd:J

    iget-wide v3, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeBigPackageStart:J

    sub-long/2addr v1, v3

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mIsBigPackageSame:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_a
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeBigPackageStart:J

    .line 442
    invoke-static {}, Lcn/baos/watch/sdk/code/test/TestMessageManager;->getInstance()Lcn/baos/watch/sdk/code/test/TestMessageManager;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/baos/watch/sdk/code/test/TestMessageManager;->startBigPackageTest(I)Ljava/lang/String;

    goto :goto_0

    .line 406
    :cond_b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeBlueStartScan:J

    .line 407
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u84dd\u7259\u6d4b\u8bd5:\u5f00\u59cb\u641c\u7d22\u84dd\u7259\u8bbe\u5907:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeBlueStartScan:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    const-string p1, "\u84dd\u7259\u6d4b\u8bd5:\u624b\u673a\u5173\u95ed\u84dd\u7259"

    .line 398
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    .line 400
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->disconnect()V

    .line 401
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeBlueBreakOff:J

    .line 402
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u84dd\u7259\u6d4b\u8bd5:\u84dd\u7259\u65ad\u5f00,3s\u540e\u5f00\u59cb\u91cd\u65b0\u641c\u7d22\u8bbe\u5907\u8fde\u63a5:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mTimeBlueBreakOff:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/code/test/TestHandler;->log(Ljava/lang/String;)V

    .line 403
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object p1

    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    const/16 v1, 0x1f

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0xfa0

    invoke-virtual {p1, v0, v1, v2}, Lcn/baos/watch/sdk/code/MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ed
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public log(Ljava/lang/String;)V
    .locals 0

    .line 493
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public openAssets()V
    .locals 4

    :try_start_0
    const-string v0, "Dragon_v0.0.1.dial.pkg"

    const/4 v1, 0x0

    .line 504
    invoke-direct {p0, v0, v1}, Lcn/baos/watch/sdk/code/test/TestHandler;->copyAssets(Ljava/lang/String;I)V

    .line 505
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/baos/watch/sdk/code/test/TestHandler$6;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/code/test/TestHandler$6;-><init>(Lcn/baos/watch/sdk/code/test/TestHandler;)V

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Lcn/baos/watch/sdk/code/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 512
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mContext:Landroid/content/Context;

    return-void
.end method

.method public transferFile(Ljava/lang/String;I)V
    .locals 3

    .line 562
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "transferFile--->"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  fileType--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 564
    iget-object v0, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mOtaFile1:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 565
    iget-object p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mOtaFile2:Ljava/lang/String;

    goto :goto_0

    .line 567
    :cond_0
    iget-object p1, p0, Lcn/baos/watch/sdk/code/test/TestHandler;->mOtaFile1:Ljava/lang/String;

    .line 572
    :goto_0
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcn/baos/watch/sdk/code/test/TestHandler$7;

    invoke-direct {v2, p0, p1, p1}, Lcn/baos/watch/sdk/code/test/TestHandler$7;-><init>(Lcn/baos/watch/sdk/code/test/TestHandler;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, p2, v2}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->transferFile(Ljava/io/File;ILcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;)V

    return-void
.end method
