.class public Lcn/baos/watch/sdk/manager/message/MessageManager;
.super Ljava/lang/Object;
.source "MessageManager.java"


# static fields
.field private static sInstance:Lcn/baos/watch/sdk/manager/message/MessageManager;


# instance fields
.field private customerCommandTimeSync:Lcn/baos/watch/w100/messages/CommandTimeSync;

.field private mContext:Landroid/content/Context;

.field private mCurrentIndex:I

.field private mIBtBindRequestCallback:Lcn/baos/watch/sdk/bluetooth/callback/IBtBindRequestCallback;

.field private mIBtWatchConfigInfoCallback:Lcn/baos/watch/sdk/bluetooth/callback/IBtWatchConfigInfoCallback;

.field private mIMessageCallback:Lcn/baos/watch/sdk/manager/message/IMessageCallback;

.field private mOnAppListener:Lcn/baos/watch/sdk/interfac/app/OnAppMarkListener;

.field private mOnCommandBleOTAEachPackageCallBack:Lcn/baos/watch/sdk/huabaoImpl/translate/OnCommandBleOTAEachPackageCallBack;

.field private mOnCommandBleOTAFileInfoCallBack:Lcn/baos/watch/sdk/huabaoImpl/translate/OnCommandBleOTAFileInfoCallBack;

.field private mOnContactListener:Lcn/baos/watch/sdk/interfac/contact/OnContactListener;

.field private mOnCrudClockDataListener:Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;

.field private mOnCrudReminderDataListener:Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;

.field private mOnFallInfoListener:Lcn/baos/watch/sdk/interfac/fall/OnFallListener;

.field private mOnGetClockDataListener:Lcn/baos/watch/sdk/interfac/clock/OnGetClockDataListener;

.field private mOnGetReminderDataListener:Lcn/baos/watch/sdk/interfac/reminder/OnGetReminderDataListener;

.field private mOnMoslemGpsListener:Lcn/baos/watch/sdk/interfac/moslem/OnMoslemGpsListener;

.field private mOnOilListener:Lcn/baos/watch/sdk/interfac/watchbattery/OnOilBatteryListener;

.field private mOnQrImageListener:Lcn/baos/watch/sdk/interfac/moslem/OnQrImageListener;

.field private mOnRemindListener:Lcn/baos/watch/sdk/interfac/app/OnRemindListener;

.field private mOnWatchBatteryListener:Lcn/baos/watch/sdk/interfac/watchbattery/OnWatchBatteryListener;

.field private mOnWatchInfoListener:Lcn/baos/watch/sdk/interfac/watchinfo/OnWatchInfoListener;

.field private mOnWorldListener:Lcn/baos/watch/sdk/interfac/world/OnWorldListener;

.field private mOnmoslemListener:Lcn/baos/watch/sdk/interfac/moslem/OnMoslemListener;

.field phoneStateResetRunnable:Ljava/lang/Runnable;

.field previous:I

.field private sppTransLateData:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 271
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 261
    iput-boolean v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->sppTransLateData:Z

    const/4 v0, 0x4

    .line 1555
    iput v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->previous:I

    .line 1576
    new-instance v0, Lcn/baos/watch/sdk/manager/message/MessageManager$1;

    invoke-direct {v0, p0}, Lcn/baos/watch/sdk/manager/message/MessageManager$1;-><init>(Lcn/baos/watch/sdk/manager/message/MessageManager;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->phoneStateResetRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private static calcRank(Lcn/baos/watch/w100/messages/MessageBase;)I
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public static getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;
    .registers 1

    .line 277
    sget-object v0, Lcn/baos/watch/sdk/manager/message/MessageManager;->sInstance:Lcn/baos/watch/sdk/manager/message/MessageManager;

    if-nez v0, :cond_b

    .line 278
    new-instance v0, Lcn/baos/watch/sdk/manager/message/MessageManager;

    invoke-direct {v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;-><init>()V

    sput-object v0, Lcn/baos/watch/sdk/manager/message/MessageManager;->sInstance:Lcn/baos/watch/sdk/manager/message/MessageManager;

    .line 280
    :cond_b
    sget-object v0, Lcn/baos/watch/sdk/manager/message/MessageManager;->sInstance:Lcn/baos/watch/sdk/manager/message/MessageManager;

    return-object v0
.end method

.method public static makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V
    .registers 2

    .line 296
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/Murmur2;->hash32([B)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iput p1, p0, Lcn/baos/watch/w100/messages/MessageBase;->id:I

    const/4 p1, 0x0

    .line 298
    iput p1, p0, Lcn/baos/watch/w100/messages/MessageBase;->tag:I

    return-void
.end method

.method private otaResultHandle(Lcn/baos/watch/w100/messages/CommandBleOTAResult;)V
    .registers 4

    .line 1984
    iget v0, p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;->func:I

    if-eqz v0, :cond_26

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    goto :goto_43

    .line 1993
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6ota\u6bcf\u5305\u53cd\u9988:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    .line 1994
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnCommandBleOTAEachPackageCallBack:Lcn/baos/watch/sdk/huabaoImpl/translate/OnCommandBleOTAEachPackageCallBack;

    if-eqz v0, :cond_43

    .line 1995
    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/huabaoImpl/translate/OnCommandBleOTAEachPackageCallBack;->onCommandBleOTAEachPackageCallBack(Lcn/baos/watch/w100/messages/CommandBleOTAResult;)V

    goto :goto_43

    .line 1986
    :cond_26
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6otaFileInfo\u53cd\u9988:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    .line 1987
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnCommandBleOTAFileInfoCallBack:Lcn/baos/watch/sdk/huabaoImpl/translate/OnCommandBleOTAFileInfoCallBack;

    if-eqz v0, :cond_43

    .line 1988
    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/huabaoImpl/translate/OnCommandBleOTAFileInfoCallBack;->onCommandBleOTAFileInfoCallBack(Lcn/baos/watch/w100/messages/CommandBleOTAResult;)V

    :cond_43
    :goto_43
    return-void
.end method

.method public static packMessage(Lcn/baos/message/Serializable;)[B
    .registers 3

    if-nez p0, :cond_6

    const/4 p0, 0x0

    new-array p0, p0, [B

    return-object p0

    .line 319
    :cond_6
    invoke-static {}, Lorg/msgpack/core/MessagePack;->newDefaultBufferPacker()Lorg/msgpack/core/MessageBufferPacker;

    move-result-object v0

    .line 321
    :try_start_a
    invoke-virtual {p0, v0}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_d} :catch_e

    goto :goto_12

    :catch_e
    move-exception p0

    .line 323
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 325
    :goto_12
    invoke-virtual {v0}, Lorg/msgpack/core/MessageBufferPacker;->toByteArray()[B

    move-result-object p0

    .line 326
    array-length v0, p0

    add-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 327
    array-length v1, p0

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 328
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 329
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    return-object p0
.end method

.method private receiveSerializableFromDevice(Lcn/baos/message/Serializable;)V
    .registers 8

    if-nez p1, :cond_8

    const-string p1, "receiveSerializableFromDevice serializable received invalidate message, ignore"

    .line 403
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 406
    :cond_8
    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const/16 v1, 0x7594

    if-eq v0, v1, :cond_372

    const/16 v1, 0x7595

    if-eq v0, v1, :cond_35a

    const/16 v1, 0x7598

    if-eq v0, v1, :cond_33a

    const/16 v1, 0x759a

    if-eq v0, v1, :cond_2e8

    const/16 v1, 0x75f8

    if-eq v0, v1, :cond_2c3

    const v1, 0x16072

    if-eq v0, v1, :cond_2b8

    const v1, 0x16076

    if-eq v0, v1, :cond_2b8

    const v1, 0x222e0

    const/4 v2, 0x0

    if-eq v0, v1, :cond_269

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_3a0

    packed-switch v0, :pswitch_data_3ac

    packed-switch v0, :pswitch_data_3c2

    packed-switch v0, :pswitch_data_3ca

    packed-switch v0, :pswitch_data_3d4

    goto/16 :goto_39f

    .line 457
    :pswitch_40
    check-cast p1, Lcn/baos/watch/w100/messages/User_info_config;

    .line 458
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mIMessageCallback:Lcn/baos/watch/sdk/manager/message/IMessageCallback;

    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/manager/message/IMessageCallback;->onUserInfoConfig(Lcn/baos/watch/w100/messages/User_info_config;)V

    goto/16 :goto_39f

    .line 643
    :pswitch_49
    check-cast p1, Lcn/baos/watch/w100/messages/Sensor_data_battery;

    .line 644
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u8868\u8fd4\u56de\u624b\u8868\u7535\u91cf:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnWatchBatteryListener:Lcn/baos/watch/sdk/interfac/watchbattery/OnWatchBatteryListener;

    if-eqz v0, :cond_39f

    .line 646
    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/interfac/watchbattery/OnWatchBatteryListener;->onWatchBattery(Lcn/baos/watch/w100/messages/Sensor_data_battery;)V

    goto/16 :goto_39f

    .line 662
    :pswitch_6a
    check-cast p1, Lcn/baos/watch/w100/messages/Sensor_data_weather;

    .line 663
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mIMessageCallback:Lcn/baos/watch/sdk/manager/message/IMessageCallback;

    if-eqz v0, :cond_39f

    .line 664
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u8868\u8bf7\u6c42\u5929\u6c14\u6570\u636e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 665
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mIMessageCallback:Lcn/baos/watch/sdk/manager/message/IMessageCallback;

    invoke-interface {p1}, Lcn/baos/watch/sdk/manager/message/IMessageCallback;->onRequestWeather()V

    goto/16 :goto_39f

    .line 577
    :pswitch_8d
    check-cast p1, Lcn/baos/watch/w100/messages/Sport_plans;

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bad\u7ec3\u8ba1\u5212\u4fe1\u606f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_39f

    .line 634
    :pswitch_a7
    check-cast p1, Lcn/baos/watch/w100/messages/Common_remind_config;

    .line 635
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u8868\u8fd4\u56de\u63d0\u9192:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 636
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnRemindListener:Lcn/baos/watch/sdk/interfac/app/OnRemindListener;

    if-eqz v0, :cond_39f

    .line 637
    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/interfac/app/OnRemindListener;->onAppRemind(Lcn/baos/watch/w100/messages/Common_remind_config;)V

    goto/16 :goto_39f

    :pswitch_c8
    const-string v0, "332-6\u9879\u6570\u636e\u5c55\u793a"

    .line 521
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 522
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->onGetSyncDataFromWatchSix(Landroid/content/Context;Lcn/baos/message/Serializable;)V

    goto/16 :goto_39f

    .line 534
    :pswitch_d8
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->onGetSyncDataFromWatch(Landroid/content/Context;Lcn/baos/message/Serializable;)V

    goto/16 :goto_39f

    .line 651
    :pswitch_e3
    check-cast p1, Lcn/baos/watch/w100/messages/Config_items;

    .line 652
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u8868\u8fd4\u56de\u624b\u8868\u6cb9\u91cf:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 653
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnOilListener:Lcn/baos/watch/sdk/interfac/watchbattery/OnOilBatteryListener;

    if-eqz v0, :cond_39f

    .line 654
    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/interfac/watchbattery/OnOilBatteryListener;->onOilBattery(Lcn/baos/watch/w100/messages/Config_items;)V

    goto/16 :goto_39f

    .line 602
    :pswitch_104
    check-cast p1, Lcn/baos/watch/w100/messages/World_clock_config;

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u8868\u8fd4\u56de\u4e16\u754c\u65f6\u95f4:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 604
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnWorldListener:Lcn/baos/watch/sdk/interfac/world/OnWorldListener;

    if-eqz v0, :cond_39f

    .line 605
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 606
    iget-object v1, p1, Lcn/baos/watch/w100/messages/World_clock_config;->clocks:[Lcn/baos/watch/w100/messages/World_clock_config$World_clock;

    if-eqz v1, :cond_14c

    iget-object v1, p1, Lcn/baos/watch/w100/messages/World_clock_config;->clocks:[Lcn/baos/watch/w100/messages/World_clock_config$World_clock;

    array-length v1, v1

    if-lez v1, :cond_14c

    .line 607
    iget-object p1, p1, Lcn/baos/watch/w100/messages/World_clock_config;->clocks:[Lcn/baos/watch/w100/messages/World_clock_config$World_clock;

    array-length v1, p1

    :goto_131
    if-ge v2, v1, :cond_14c

    aget-object v3, p1, v2

    .line 608
    new-instance v4, Lcn/baos/watch/sdk/entitiy/WorldEntity;

    invoke-direct {v4}, Lcn/baos/watch/sdk/entitiy/WorldEntity;-><init>()V

    .line 609
    iget-object v5, v3, Lcn/baos/watch/w100/messages/World_clock_config$World_clock;->name:Ljava/lang/String;

    iput-object v5, v4, Lcn/baos/watch/sdk/entitiy/WorldEntity;->name:Ljava/lang/String;

    .line 610
    iget v5, v3, Lcn/baos/watch/w100/messages/World_clock_config$World_clock;->timezone:I

    iput v5, v4, Lcn/baos/watch/sdk/entitiy/WorldEntity;->timezone:I

    .line 611
    iget v3, v3, Lcn/baos/watch/w100/messages/World_clock_config$World_clock;->reserve:I

    iput v3, v4, Lcn/baos/watch/sdk/entitiy/WorldEntity;->reserve:I

    .line 612
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_131

    .line 615
    :cond_14c
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnWorldListener:Lcn/baos/watch/sdk/interfac/world/OnWorldListener;

    invoke-interface {p1, v0}, Lcn/baos/watch/sdk/interfac/world/OnWorldListener;->onWorld(Ljava/util/List;)V

    goto/16 :goto_39f

    .line 409
    :pswitch_153
    check-cast p1, Lcn/baos/watch/w100/messages/Action_sync;

    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u8fd0\u52a8\u63a7\u5236\uff0c\u76f8\u673a\u72b6\u6001:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 412
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mIMessageCallback:Lcn/baos/watch/sdk/manager/message/IMessageCallback;

    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/manager/message/IMessageCallback;->onActionSync(Lcn/baos/watch/w100/messages/Action_sync;)V

    .line 413
    iget v0, p1, Lcn/baos/watch/w100/messages/Action_sync;->action_type:I

    if-eq v0, v1, :cond_189

    const/4 v1, 0x2

    if-eq v0, v1, :cond_17f

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17f

    const/4 v1, 0x4

    if-eq v0, v1, :cond_17f

    goto/16 :goto_39f

    .line 425
    :cond_17f
    new-instance v0, Lcn/baos/watch/sdk/huabaoImpl/sportcontrol/SportControlManager;

    invoke-direct {v0}, Lcn/baos/watch/sdk/huabaoImpl/sportcontrol/SportControlManager;-><init>()V

    .line 426
    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/huabaoImpl/sportcontrol/SportControlManager;->responseActionSync(Lcn/baos/watch/w100/messages/Action_sync;)V

    goto/16 :goto_39f

    :cond_189
    const-string v0, "ACTION_SYNC\u5f00\u59cb\u8fd0\u52a8"

    .line 416
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 418
    new-instance v0, Lcn/baos/watch/sdk/huabaoImpl/sportcontrol/SportControlManager;

    invoke-direct {v0}, Lcn/baos/watch/sdk/huabaoImpl/sportcontrol/SportControlManager;-><init>()V

    .line 419
    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/huabaoImpl/sportcontrol/SportControlManager;->responseActionSync(Lcn/baos/watch/w100/messages/Action_sync;)V

    goto/16 :goto_39f

    .line 461
    :pswitch_198
    check-cast p1, Lcn/baos/watch/w100/messages/Response_msg;

    .line 462
    iget v0, p1, Lcn/baos/watch/w100/messages/Response_msg;->act_catagory:I

    sparse-switch v0, :sswitch_data_3de

    goto/16 :goto_39f

    .line 482
    :sswitch_1a1
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnmoslemListener:Lcn/baos/watch/sdk/interfac/moslem/OnMoslemListener;

    if-eqz v0, :cond_39f

    .line 483
    iget p1, p1, Lcn/baos/watch/w100/messages/Response_msg;->result:I

    if-ne p1, v1, :cond_1b0

    .line 484
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnmoslemListener:Lcn/baos/watch/sdk/interfac/moslem/OnMoslemListener;

    invoke-interface {p1, v1}, Lcn/baos/watch/sdk/interfac/moslem/OnMoslemListener;->onMoslem(Z)V

    goto/16 :goto_39f

    .line 486
    :cond_1b0
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnmoslemListener:Lcn/baos/watch/sdk/interfac/moslem/OnMoslemListener;

    invoke-interface {p1, v2}, Lcn/baos/watch/sdk/interfac/moslem/OnMoslemListener;->onMoslem(Z)V

    goto/16 :goto_39f

    .line 492
    :sswitch_1b7
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnMoslemGpsListener:Lcn/baos/watch/sdk/interfac/moslem/OnMoslemGpsListener;

    if-eqz v0, :cond_39f

    .line 493
    iget p1, p1, Lcn/baos/watch/w100/messages/Response_msg;->result:I

    if-ne p1, v1, :cond_1c6

    .line 494
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnMoslemGpsListener:Lcn/baos/watch/sdk/interfac/moslem/OnMoslemGpsListener;

    invoke-interface {p1, v1}, Lcn/baos/watch/sdk/interfac/moslem/OnMoslemGpsListener;->onMoslem(Z)V

    goto/16 :goto_39f

    .line 496
    :cond_1c6
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnMoslemGpsListener:Lcn/baos/watch/sdk/interfac/moslem/OnMoslemGpsListener;

    invoke-interface {p1, v2}, Lcn/baos/watch/sdk/interfac/moslem/OnMoslemGpsListener;->onMoslem(Z)V

    goto/16 :goto_39f

    .line 469
    :sswitch_1cd
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bad\u7ec3\u8ba1\u5212\u53cd\u9988:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_39f

    .line 510
    :sswitch_1ea
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "5\u9879\u63d0\u9192\u8bbe\u7f6e\u53cd\u9988:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_39f

    .line 473
    :sswitch_207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5973\u6027\u5065\u5eb7\u8bbe\u7f6e\u53cd\u9988:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_39f

    .line 477
    :sswitch_224
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u559d\u6c34\u63d0\u9192\u8bbe\u7f6e\u53cd\u9988:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_39f

    .line 465
    :sswitch_241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5e94\u7528\u5e02\u573a\u8bbe\u53cd\u9988:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_39f

    .line 502
    :sswitch_25e
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnQrImageListener:Lcn/baos/watch/sdk/interfac/moslem/OnQrImageListener;

    if-eqz v0, :cond_39f

    .line 503
    iget p1, p1, Lcn/baos/watch/w100/messages/Response_msg;->result:I

    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/interfac/moslem/OnQrImageListener;->onQrImage(I)V

    goto/16 :goto_39f

    .line 583
    :cond_269
    check-cast p1, Lcn/baos/watch/w100/messages/Common_contact_info;

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u8868\u8fd4\u56de\u901a\u8baf\u5f55\u4fe1\u606f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 585
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnContactListener:Lcn/baos/watch/sdk/interfac/contact/OnContactListener;

    if-eqz v0, :cond_39f

    .line 586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 587
    iget-object v1, p1, Lcn/baos/watch/w100/messages/Common_contact_info;->contacts:[Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;

    if-eqz v1, :cond_2b1

    iget-object v1, p1, Lcn/baos/watch/w100/messages/Common_contact_info;->contacts:[Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;

    array-length v1, v1

    if-lez v1, :cond_2b1

    .line 588
    iget-object p1, p1, Lcn/baos/watch/w100/messages/Common_contact_info;->contacts:[Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;

    array-length v1, p1

    :goto_296
    if-ge v2, v1, :cond_2b1

    aget-object v3, p1, v2

    .line 589
    new-instance v4, Lcn/baos/watch/sdk/entitiy/ContactInfoEntity;

    invoke-direct {v4}, Lcn/baos/watch/sdk/entitiy/ContactInfoEntity;-><init>()V

    .line 590
    iget v5, v3, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;->flag:I

    iput v5, v4, Lcn/baos/watch/sdk/entitiy/ContactInfoEntity;->flag:I

    .line 591
    iget-object v5, v3, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;->name:Ljava/lang/String;

    iput-object v5, v4, Lcn/baos/watch/sdk/entitiy/ContactInfoEntity;->name:Ljava/lang/String;

    .line 592
    iget-object v3, v3, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;->number:Ljava/lang/String;

    iput-object v3, v4, Lcn/baos/watch/sdk/entitiy/ContactInfoEntity;->number:Ljava/lang/String;

    .line 593
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_296

    .line 596
    :cond_2b1
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnContactListener:Lcn/baos/watch/sdk/interfac/contact/OnContactListener;

    invoke-interface {p1, v0}, Lcn/baos/watch/sdk/interfac/contact/OnContactListener;->onContact(Ljava/util/List;)V

    goto/16 :goto_39f

    .line 564
    :cond_2b8
    :pswitch_2b8
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->onGetSyncRightNowDataFromWatch(Landroid/content/Context;Lcn/baos/message/Serializable;)V

    goto/16 :goto_39f

    .line 672
    :cond_2c3
    check-cast p1, Lcn/baos/watch/w100/messages/SyncMessage;

    .line 675
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65->\u624b\u8868\u4f20\u8fc7\u6765\u7684data:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 677
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mIMessageCallback:Lcn/baos/watch/sdk/manager/message/IMessageCallback;

    if-eqz v0, :cond_39f

    .line 678
    invoke-static {p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->packMessage(Lcn/baos/message/Serializable;)[B

    move-result-object p1

    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/manager/message/IMessageCallback;->onSyncMessageRequest([B)V

    goto/16 :goto_39f

    .line 622
    :cond_2e8
    check-cast p1, Lcn/baos/watch/w100/messages/Device_app_config;

    .line 623
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u8868\u8fd4\u56de\u5e94\u7528\u5e02\u573a:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnAppListener:Lcn/baos/watch/sdk/interfac/app/OnAppMarkListener;

    if-eqz v0, :cond_39f

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-------"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Lcn/baos/watch/w100/messages/Device_app_config;->app_id_mask:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Lcn/baos/watch/w100/messages/Device_app_config;->app_id_mask:I

    invoke-static {v1}, Lcn/baos/watch/sdk/util/W100Utils;->bin10T2Dec(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 627
    iget p1, p1, Lcn/baos/watch/w100/messages/Device_app_config;->app_id_mask:I

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->getAppMark(I)Lcn/baos/watch/sdk/entitiy/AppMarekEntity;

    move-result-object p1

    .line 628
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnAppListener:Lcn/baos/watch/sdk/interfac/app/OnAppMarkListener;

    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/interfac/app/OnAppMarkListener;->onAppMark(Lcn/baos/watch/sdk/entitiy/AppMarekEntity;)V

    goto :goto_39f

    .line 568
    :cond_33a
    check-cast p1, Lcn/baos/watch/w100/messages/Device_base_info;

    .line 569
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u8868\u8fd4\u56de\u624b\u8868\u4fe1\u606f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 570
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnWatchInfoListener:Lcn/baos/watch/sdk/interfac/watchinfo/OnWatchInfoListener;

    if-eqz v0, :cond_39f

    .line 571
    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/interfac/watchinfo/OnWatchInfoListener;->onWatchInfo(Lcn/baos/watch/w100/messages/Device_base_info;)V

    goto :goto_39f

    .line 537
    :cond_35a
    move-object v0, p1

    check-cast v0, Lcn/baos/watch/w100/messages/Response_no_data;

    .line 538
    iget v0, v0, Lcn/baos/watch/w100/messages/Response_no_data;->data_catagary:I

    const v1, 0x1607b

    if-eq v0, v1, :cond_368

    packed-switch v0, :pswitch_data_400

    goto :goto_39f

    .line 556
    :cond_368
    :pswitch_368
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->onGetSyncDataFromWatch(Landroid/content/Context;Lcn/baos/message/Serializable;)V

    goto :goto_39f

    .line 435
    :cond_372
    check-cast p1, Lcn/baos/watch/w100/messages/Request_get_data;

    .line 436
    iget v0, p1, Lcn/baos/watch/w100/messages/Request_get_data;->data_catagary:I

    sparse-switch v0, :sswitch_data_416

    goto :goto_39f

    .line 450
    :sswitch_37a
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mIMessageCallback:Lcn/baos/watch/sdk/manager/message/IMessageCallback;

    invoke-interface {p1}, Lcn/baos/watch/sdk/manager/message/IMessageCallback;->onRequestMeteorologicalData()V

    goto :goto_39f

    :sswitch_380
    const-string p1, "\u624b\u8868\u7aef\u83b7\u53d6GPS\u57fa\u7840\u6570\u636e(\u4f8b\u5982\u7ecf\u7eac\u5ea6\u548c\u6d77\u62d4)"

    .line 445
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 447
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mIMessageCallback:Lcn/baos/watch/sdk/manager/message/IMessageCallback;

    invoke-interface {p1}, Lcn/baos/watch/sdk/manager/message/IMessageCallback;->onRequestGpsData()V

    goto :goto_39f

    :sswitch_38b
    const-string v0, "\u624b\u8868\u7aef\u83b7\u53d6\u536b\u661f"

    .line 438
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 440
    new-instance v0, Lcn/baos/watch/sdk/huabaoImpl/sportcontrol/SportControlManager;

    invoke-direct {v0}, Lcn/baos/watch/sdk/huabaoImpl/sportcontrol/SportControlManager;-><init>()V

    .line 441
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcn/baos/watch/sdk/huabaoImpl/sportcontrol/SportControlManager;->handleGpsRequestFromWatch(Landroid/content/Context;Lcn/baos/watch/w100/messages/Request_get_data;)V

    .line 442
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mIMessageCallback:Lcn/baos/watch/sdk/manager/message/IMessageCallback;

    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/manager/message/IMessageCallback;->onRequestGetData(Lcn/baos/watch/w100/messages/Request_get_data;)V

    :cond_39f
    :goto_39f
    return-void

    :pswitch_data_3a0
    .packed-switch 0x765c
        :pswitch_198
        :pswitch_153
        :pswitch_104
        :pswitch_e3
    .end packed-switch

    :pswitch_data_3ac
    .packed-switch 0x16062
        :pswitch_d8
        :pswitch_d8
        :pswitch_d8
        :pswitch_d8
        :pswitch_d8
        :pswitch_d8
        :pswitch_d8
        :pswitch_d8
        :pswitch_d8
    .end packed-switch

    :pswitch_data_3c2
    .packed-switch 0x1606f
        :pswitch_2b8
        :pswitch_2b8
    .end packed-switch

    :pswitch_data_3ca
    .packed-switch 0x1607b
        :pswitch_c8
        :pswitch_a7
        :pswitch_8d
    .end packed-switch

    :pswitch_data_3d4
    .packed-switch 0x1fbd3
        :pswitch_6a
        :pswitch_49
        :pswitch_40
    .end packed-switch

    :sswitch_data_3de
    .sparse-switch
        0x2ee7 -> :sswitch_25e
        0x759a -> :sswitch_241
        0x1605a -> :sswitch_224
        0x1605b -> :sswitch_207
        0x1607c -> :sswitch_1ea
        0x1607d -> :sswitch_1cd
        0x1fbd6 -> :sswitch_1b7
        0x249f0 -> :sswitch_1a1
    .end sparse-switch

    :pswitch_data_400
    .packed-switch 0x16062
        :pswitch_368
        :pswitch_368
        :pswitch_368
        :pswitch_368
        :pswitch_368
        :pswitch_368
        :pswitch_368
        :pswitch_368
        :pswitch_368
    .end packed-switch

    :sswitch_data_416
    .sparse-switch
        0x1fbd2 -> :sswitch_38b
        0x1fbd7 -> :sswitch_380
        0x1fbd8 -> :sswitch_37a
    .end sparse-switch
.end method

.method private sendMessage(ILcn/baos/message/Serializable;)Z
    .registers 7

    .line 1619
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1620
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendMessage--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1622
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2d

    const-string v1, "match_code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v2

    goto :goto_2e

    :cond_2d
    move v0, v3

    .line 1626
    :goto_2e
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_44

    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/base/AppDataConfig;->isBindWatch()Z

    move-result v1

    if-nez v1, :cond_44

    if-nez v0, :cond_44

    const-string p1, "ble \u672a\u7ed1\u5b9a\u524d-\u4e0d\u53ef\u53d1\u9001\u4e1a\u52a1\u4fe1\u606f)"

    .line 1627
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    return v3

    .line 1631
    :cond_44
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->isBleConnected(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 1632
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendMessage->isBleConnected=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1633
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendMessage->isDisconnectReal="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->isBleConnected(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1634
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/BlueToothManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->sendMessage(ILcn/baos/message/Serializable;)Z

    move-result p1

    if-nez p1, :cond_9b

    const-string p1, "send failed"

    .line 1636
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    return v3

    :cond_9b
    const-string p1, "send -> sendMessage-- success"

    .line 1641
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    return v2

    :cond_a1
    const-string p1, "ble is not ready(5s not reconnect)"

    .line 1645
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    return v3
.end method

.method private sendMessage(ILcn/baos/message/Serializable;Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;)Z
    .registers 8

    .line 1657
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1658
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "sendMessage--"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1660
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_2d

    const-string v1, "match_code"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2d

    move v0, v2

    goto :goto_2e

    :cond_2d
    move v0, v3

    .line 1664
    :goto_2e
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_44

    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/base/AppDataConfig;->isBindWatch()Z

    move-result v1

    if-nez v1, :cond_44

    if-nez v0, :cond_44

    const-string p1, "ble \u672a\u7ed1\u5b9a\u524d-\u4e0d\u53ef\u53d1\u9001\u4e1a\u52a1\u4fe1\u606f)"

    .line 1665
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    return v3

    .line 1669
    :cond_44
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->isBleConnected(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)Z

    move-result v0

    if-eqz v0, :cond_a1

    .line 1670
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendMessage->isBleConnected=="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1671
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendMessage->isDisconnectReal="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->isBleConnected(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1672
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/BlueToothManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->sendMessage(ILcn/baos/message/Serializable;Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;)Z

    move-result p1

    if-nez p1, :cond_9b

    const-string p1, "send failed"

    .line 1674
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    return v3

    :cond_9b
    const-string p1, "send -> sendMessage-- success"

    .line 1679
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    return v2

    :cond_a1
    const-string p1, "ble is not ready(5s not reconnect)"

    .line 1683
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    return v3
.end method

.method private sendNlpCommand(Lcn/baos/watch/sdk/entitiy/NlpEntity;)V
    .registers 7

    .line 1528
    new-instance v0, Lcn/baos/watch/w100/messages/CommandNlpResult;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/CommandNlpResult;-><init>()V

    .line 1529
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getTextShow()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/w100/messages/CommandNlpResult;->show_text:Ljava/lang/String;

    .line 1530
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getActionId()I

    move-result p1

    iput p1, v0, Lcn/baos/watch/w100/messages/CommandNlpResult;->action_id:I

    .line 1531
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 1532
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u5c0f\u7231\u53d1\u9001nlp:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    .line 1533
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    return-void
.end method

.method private timeFromLocal(I)V
    .registers 7

    .line 1181
    new-instance v0, Lcn/baos/watch/w100/messages/CommandTimeSync;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/CommandTimeSync;-><init>()V

    .line 1182
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 1183
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u5f53\u524d\u65f6\u95f4\u65f6\u95f4\u6233:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-wide/16 v3, 0x3e8

    .line 1184
    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lcn/baos/watch/w100/messages/CommandTimeSync;->timestamp:I

    const/4 v1, 0x0

    .line 1186
    iput v1, v0, Lcn/baos/watch/w100/messages/CommandTimeSync;->tv_nsec:I

    .line 1188
    iput p1, v0, Lcn/baos/watch/w100/messages/CommandTimeSync;->sync_id:I

    .line 1189
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/baos/watch/sdk/util/TimeUtils;->getTimezoneDifferenceInSecond(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcn/baos/watch/w100/messages/CommandTimeSync;->time_zone:Ljava/lang/String;

    .line 1191
    sget-object v2, Lcn/baos/message/CatagoryEnum;->classCatagoryMap:Ljava/util/Map;

    iget v3, v0, Lcn/baos/watch/w100/messages/CommandTimeSync;->catagory:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v0, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 1192
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u53d1\u9001\u540c\u6b65\u65f6\u95f4\u6233:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    .line 1193
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u624b\u673a\u65f6\u95f4:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcn/baos/watch/sdk/util/TimeUtils;->getTimeZoneTimeInt()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcn/baos/watch/sdk/util/TimeUtils;->getTimeZoneTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    .line 1194
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v2

    .line 1195
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "timeZone:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1, v1}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "timeZone id:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_b1

    .line 1197
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    goto :goto_c9

    .line 1199
    :cond_b1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u540c\u6b65\u65f6\u95f4syncId: ="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u4e3a0\uff0c\u4e0d\u540c\u6b65)"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    :goto_c9
    return-void
.end method

.method public static unpackMessage([B)Lcn/baos/message/Serializable;
    .registers 3

    .line 307
    :try_start_0
    invoke-static {p0}, Lcn/baos/message/MessagePackerUtils;->uppackObject([B)Lcn/baos/message/Serializable;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object p0

    :catch_5
    move-exception p0

    .line 309
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unpack \u5f02\u5e38"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/lang3/ArrayUtils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public findDevice(I)Z
    .registers 4

    .line 2343
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6e90\u751f->\u67e5\u627e\u8bbe\u5907:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2344
    new-instance v0, Lcn/baos/watch/w100/messages/CommandAction;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/CommandAction;-><init>()V

    .line 2345
    iput p1, v0, Lcn/baos/watch/w100/messages/CommandAction;->action_id:I

    .line 2346
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    move-result p1

    return p1
.end method

.method public getAppMarkInfo(Lcn/baos/watch/sdk/interfac/app/OnAppMarkListener;)Z
    .registers 5

    const-string v0, "\u6e90\u751f->\u83b7\u53d6\u5e94\u7528\u5e02\u573a:"

    .line 1913
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getGetContactInfoLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1914
    :try_start_b
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnAppListener:Lcn/baos/watch/sdk/interfac/app/OnAppMarkListener;

    .line 1915
    new-instance p1, Lcn/baos/watch/w100/messages/Request_get_data;

    invoke-direct {p1}, Lcn/baos/watch/w100/messages/Request_get_data;-><init>()V

    const/16 v2, 0x759a

    .line 1916
    iput v2, p1, Lcn/baos/watch/w100/messages/Request_get_data;->data_catagary:I

    const/4 v2, 0x2

    .line 1917
    iput v2, p1, Lcn/baos/watch/w100/messages/Request_get_data;->enum_param:I

    .line 1918
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p1

    monitor-exit v1

    return p1

    :catchall_33
    move-exception p1

    .line 1920
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_b .. :try_end_35} :catchall_33

    throw p1
.end method

.method public getCommonRemindConfig(ILcn/baos/watch/sdk/interfac/app/OnRemindListener;)Z
    .registers 6

    const-string v0, "\u6e90\u751f->\u83b7\u53d6\u6253\u5f00\u559d\u6c34/\u6d17\u624b\u63d0\u9192, :"

    .line 1884
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getGetContactInfoLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1885
    :try_start_b
    iput-object p2, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnRemindListener:Lcn/baos/watch/sdk/interfac/app/OnRemindListener;

    .line 1886
    new-instance p2, Lcn/baos/watch/w100/messages/Request_get_data;

    invoke-direct {p2}, Lcn/baos/watch/w100/messages/Request_get_data;-><init>()V

    const v2, 0x1607c

    .line 1887
    iput v2, p2, Lcn/baos/watch/w100/messages/Request_get_data;->data_catagary:I

    .line 1888
    iput p1, p2, Lcn/baos/watch/w100/messages/Request_get_data;->enum_param:I

    .line 1889
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1890
    invoke-virtual {p0, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p1

    monitor-exit v1

    return p1

    :catchall_33
    move-exception p1

    .line 1891
    monitor-exit v1
    :try_end_35
    .catchall {:try_start_b .. :try_end_35} :catchall_33

    throw p1
.end method

.method public getContactInfo(Lcn/baos/watch/sdk/interfac/contact/OnContactListener;)Z
    .registers 5

    const-string v0, "\u6e90\u751f->\u83b7\u53d6\u624b\u8868\u901a\u8baf\u5f55:"

    .line 2293
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getGetContactInfoLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2294
    :try_start_b
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnContactListener:Lcn/baos/watch/sdk/interfac/contact/OnContactListener;

    .line 2295
    new-instance p1, Lcn/baos/watch/w100/messages/Request_get_data;

    invoke-direct {p1}, Lcn/baos/watch/w100/messages/Request_get_data;-><init>()V

    const v2, 0x222e0

    .line 2296
    iput v2, p1, Lcn/baos/watch/w100/messages/Request_get_data;->data_catagary:I

    .line 2297
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2298
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p1

    monitor-exit v1

    return p1

    :catchall_31
    move-exception p1

    .line 2299
    monitor-exit v1
    :try_end_33
    .catchall {:try_start_b .. :try_end_33} :catchall_31

    throw p1
.end method

.method public getContactNameFromPhoneBook(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    .line 1398
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    const-string v3, "android.permission.READ_CONTACTS"

    const/4 v4, 0x0

    if-ge v0, v1, :cond_23

    .line 1399
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1400
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1399
    invoke-static {p1, v3, v0, v1, v5}, Landroidx/core/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    goto :goto_2b

    :cond_21
    move v2, v4

    goto :goto_2b

    .line 1404
    :cond_23
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Landroidx/core/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_21

    :goto_2b
    const-string v0, ""

    if-nez v2, :cond_30

    return-object v0

    :cond_30
    const-string v1, "number"

    const-string v2, "display_name"

    .line 1411
    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v5

    .line 1413
    sget-object v1, Landroid/provider/ContactsContract$PhoneLookup;->CONTENT_FILTER_URI:Landroid/net/Uri;

    .line 1415
    invoke-static {p2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 1413
    invoke-static {v1, p2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1416
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1

    .line 1417
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_5f

    .line 1418
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    invoke-interface {p1, p2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 1419
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    return-object p2

    :cond_5f
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .line 292
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getFallInfo(Lcn/baos/watch/sdk/interfac/fall/OnFallListener;)Z
    .registers 5

    const-string v0, "\u6e90\u751f->\u8dcc\u5012\u68c0\u6d4b:"

    .line 2077
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getGetFallLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2078
    :try_start_b
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnFallInfoListener:Lcn/baos/watch/sdk/interfac/fall/OnFallListener;

    .line 2079
    new-instance p1, Lcn/baos/watch/w100/messages/Request_get_data;

    invoke-direct {p1}, Lcn/baos/watch/w100/messages/Request_get_data;-><init>()V

    const/16 v2, 0x7598

    .line 2080
    iput v2, p1, Lcn/baos/watch/w100/messages/Request_get_data;->data_catagary:I

    .line 2081
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2082
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p1

    monitor-exit v1

    return p1

    :catchall_30
    move-exception p1

    .line 2083
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_30

    throw p1
.end method

.method public getOilBattery(Lcn/baos/watch/sdk/interfac/watchbattery/OnOilBatteryListener;)Z
    .registers 4

    .line 2100
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnOilListener:Lcn/baos/watch/sdk/interfac/watchbattery/OnOilBatteryListener;

    .line 2101
    new-instance p1, Lcn/baos/watch/w100/messages/Request_get_data;

    invoke-direct {p1}, Lcn/baos/watch/w100/messages/Request_get_data;-><init>()V

    const/16 v0, 0x765f

    .line 2102
    iput v0, p1, Lcn/baos/watch/w100/messages/Request_get_data;->data_catagary:I

    .line 2103
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6e90\u751f->\u83b7\u53d6\u624b\u8868\u6cb9\u91cf:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2104
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p1

    return p1
.end method

.method public getWatchBattery(Lcn/baos/watch/sdk/interfac/watchbattery/OnWatchBatteryListener;)Z
    .registers 4

    .line 2091
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnWatchBatteryListener:Lcn/baos/watch/sdk/interfac/watchbattery/OnWatchBatteryListener;

    .line 2092
    new-instance p1, Lcn/baos/watch/w100/messages/Request_get_data;

    invoke-direct {p1}, Lcn/baos/watch/w100/messages/Request_get_data;-><init>()V

    const v0, 0x1fbd4

    .line 2093
    iput v0, p1, Lcn/baos/watch/w100/messages/Request_get_data;->data_catagary:I

    .line 2094
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6e90\u751f->\u83b7\u53d6\u624b\u8868\u7535\u91cf:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2095
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p1

    return p1
.end method

.method public getWatchInfo(Lcn/baos/watch/sdk/interfac/watchinfo/OnWatchInfoListener;)Z
    .registers 5

    const-string v0, "\u6e90\u751f->\u83b7\u53d6\u624b\u8868\u4fe1\u606f:"

    .line 2064
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getGetWatchInfoLocker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2065
    :try_start_b
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnWatchInfoListener:Lcn/baos/watch/sdk/interfac/watchinfo/OnWatchInfoListener;

    .line 2066
    new-instance p1, Lcn/baos/watch/w100/messages/Request_get_data;

    invoke-direct {p1}, Lcn/baos/watch/w100/messages/Request_get_data;-><init>()V

    const/16 v2, 0x7598

    .line 2067
    iput v2, p1, Lcn/baos/watch/w100/messages/Request_get_data;->data_catagary:I

    .line 2068
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2069
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p1

    monitor-exit v1

    return p1

    :catchall_30
    move-exception p1

    .line 2070
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_30

    throw p1
.end method

.method public getWorldTimeInfo(Lcn/baos/watch/sdk/interfac/world/OnWorldListener;)Z
    .registers 5

    const-string v0, "\u6e90\u751f->\u83b7\u53d6\u624b\u8868\u83b7\u53d6\u4e16\u754c\u65f6\u95f4:"

    .line 2272
    invoke-static {}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getInstance()Lcn/baos/watch/sdk/manager/locker/LockerManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/manager/locker/LockerManager;->getGetWorldLocaker()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2273
    :try_start_b
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnWorldListener:Lcn/baos/watch/sdk/interfac/world/OnWorldListener;

    .line 2274
    new-instance p1, Lcn/baos/watch/w100/messages/Request_get_data;

    invoke-direct {p1}, Lcn/baos/watch/w100/messages/Request_get_data;-><init>()V

    const/16 v2, 0x765e

    .line 2275
    iput v2, p1, Lcn/baos/watch/w100/messages/Request_get_data;->data_catagary:I

    .line 2276
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2277
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p1

    monitor-exit v1

    return p1

    :catchall_30
    move-exception p1

    .line 2278
    monitor-exit v1
    :try_end_32
    .catchall {:try_start_b .. :try_end_32} :catchall_30

    throw p1
.end method

.method public handleXiaoAiToWatch(Lcn/baos/watch/sdk/entitiy/NlpEntity;)V
    .registers 9

    .line 1433
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_14e

    goto :goto_30

    :sswitch_10
    const-string v1, "toast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto :goto_30

    :cond_19
    const/4 v2, 0x2

    goto :goto_30

    :sswitch_1b
    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_30

    :cond_24
    const/4 v2, 0x1

    goto :goto_30

    :sswitch_26
    const-string v1, "reminder"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    const-wide/16 v0, 0x1

    const-wide/16 v3, 0x3e8

    packed-switch v2, :pswitch_data_15c

    goto/16 :goto_14c

    .line 1490
    :pswitch_39
    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendNlpCommand(Lcn/baos/watch/sdk/entitiy/NlpEntity;)V

    goto/16 :goto_14c

    .line 1454
    :pswitch_3e
    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendNlpCommand(Lcn/baos/watch/sdk/entitiy/NlpEntity;)V

    .line 1455
    new-instance v2, Lcn/baos/watch/w100/messages/AddAlarm;

    invoke-direct {v2}, Lcn/baos/watch/w100/messages/AddAlarm;-><init>()V

    .line 1456
    sget v5, Lcn/baos/watch/sdk/entitiy/Constant;->alarm_version:I

    iput v5, v2, Lcn/baos/watch/w100/messages/AddAlarm;->verison:I

    .line 1457
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getCircleModel()Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getCircleType()I

    move-result v5

    iput v5, v2, Lcn/baos/watch/w100/messages/AddAlarm;->circle_type:I

    .line 1458
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getCircleModel()Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getCircleExtra()I

    move-result v5

    iput v5, v2, Lcn/baos/watch/w100/messages/AddAlarm;->circle_extra:I

    .line 1459
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getCircleModel()Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getDayOfWeek()I

    move-result v5

    iput v5, v2, Lcn/baos/watch/w100/messages/AddAlarm;->mask_wday:I

    .line 1460
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getCircleModel()Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getDayOfMouth()I

    move-result v5

    iput v5, v2, Lcn/baos/watch/w100/messages/AddAlarm;->mask_mday:I

    .line 1461
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getCircleModel()Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getWeekOfMouth()I

    move-result v5

    iput v5, v2, Lcn/baos/watch/w100/messages/AddAlarm;->mask_mweek:I

    .line 1462
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getCircleModel()Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getMouthOfYear()I

    move-result v5

    iput v5, v2, Lcn/baos/watch/w100/messages/AddAlarm;->mask_ymonth:I

    .line 1463
    invoke-static {}, Lcn/baos/watch/sdk/util/TimeUtils;->getTimeZoneChange()I

    move-result v5

    iput v5, v2, Lcn/baos/watch/w100/messages/AddAlarm;->time_zone:I

    .line 1464
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getValue()I

    move-result v5

    iput v5, v2, Lcn/baos/watch/w100/messages/AddAlarm;->start_time:I

    .line 1465
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getReminder()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcn/baos/watch/w100/messages/AddAlarm;->reminder:Ljava/lang/String;

    .line 1466
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getEvent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcn/baos/watch/w100/messages/AddAlarm;->event:Ljava/lang/String;

    .line 1467
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v3

    add-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 1468
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5c0f\u7231\u53d1\u9001alarm:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    .line 1469
    invoke-virtual {p0, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    goto/16 :goto_14c

    .line 1472
    :pswitch_c6
    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendNlpCommand(Lcn/baos/watch/sdk/entitiy/NlpEntity;)V

    .line 1473
    new-instance v2, Lcn/baos/watch/w100/messages/AddReminder;

    invoke-direct {v2}, Lcn/baos/watch/w100/messages/AddReminder;-><init>()V

    .line 1474
    sget v5, Lcn/baos/watch/sdk/entitiy/Constant;->reminder_version:I

    iput v5, v2, Lcn/baos/watch/w100/messages/AddReminder;->verison:I

    .line 1475
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getCircleModel()Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getCircleType()I

    move-result v5

    iput v5, v2, Lcn/baos/watch/w100/messages/AddReminder;->circle_type:I

    .line 1476
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getCircleModel()Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getCircleExtra()I

    move-result v5

    iput v5, v2, Lcn/baos/watch/w100/messages/AddReminder;->circle_extra:I

    .line 1477
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getCircleModel()Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getDayOfWeek()I

    move-result v5

    iput v5, v2, Lcn/baos/watch/w100/messages/AddReminder;->mask_wday:I

    .line 1478
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getCircleModel()Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getDayOfMouth()I

    move-result v5

    iput v5, v2, Lcn/baos/watch/w100/messages/AddReminder;->mask_mday:I

    .line 1479
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getCircleModel()Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getWeekOfMouth()I

    move-result v5

    iput v5, v2, Lcn/baos/watch/w100/messages/AddReminder;->mask_mweek:I

    .line 1480
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getCircleModel()Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;

    move-result-object v5

    invoke-virtual {v5}, Lcn/baos/watch/sdk/entitiy/NlpEntity$CircleModel;->getMouthOfYear()I

    move-result v5

    iput v5, v2, Lcn/baos/watch/w100/messages/AddReminder;->mask_ymonth:I

    .line 1481
    invoke-static {}, Lcn/baos/watch/sdk/util/TimeUtils;->getTimeZoneChange()I

    move-result v5

    iput v5, v2, Lcn/baos/watch/w100/messages/AddReminder;->time_zone:I

    .line 1482
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getValue()I

    move-result v5

    iput v5, v2, Lcn/baos/watch/w100/messages/AddReminder;->start_time:I

    .line 1483
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getReminder()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcn/baos/watch/w100/messages/AddReminder;->reminder:Ljava/lang/String;

    .line 1484
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/NlpEntity;->getEvent()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v2, Lcn/baos/watch/w100/messages/AddReminder;->event:Ljava/lang/String;

    .line 1485
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    div-long/2addr v5, v3

    add-long/2addr v5, v0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 1486
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u5c0f\u7231\u53d1\u9001reminder:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    .line 1487
    invoke-virtual {p0, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    :goto_14c
    return-void

    nop

    :sswitch_data_14e
    .sparse-switch
        -0x1ee93f8e -> :sswitch_26
        0x5897a51 -> :sswitch_1b
        0x6969627 -> :sswitch_10
    .end sparse-switch

    :pswitch_data_15c
    .packed-switch 0x0
        :pswitch_c6
        :pswitch_3e
        :pswitch_39
    .end packed-switch
.end method

.method public isSppTransLateData()Z
    .registers 2

    .line 264
    iget-boolean v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->sppTransLateData:Z

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .registers 2

    .line 2231
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public pushNotification(Landroid/service/notification/StatusBarNotification;)V
    .registers 11

    const-string v0, "push to watch"

    .line 1245
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1246
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->isBindWatch()Z

    move-result v0

    if-nez v0, :cond_15

    const-string p1, "watch has not bind,not push message!"

    .line 1248
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void

    .line 1251
    :cond_15
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v2, "phone \u54cd\u94c3\u6765\u6e90\uff0c\u6709\u6570\u636e"

    const-string v3, ""

    const-string v4, "\u9700\u8981\u901a\u8baf\u5f55\u6743\u9650\u624d\u80fd\u67e5\u8be2\u624b\u673a\u53f7\u5bf9\u5e94\u540d\u79f0"

    const-string v5, "android.title"

    const/16 v6, 0x65

    const-string v7, "android.text"

    const/4 v8, 0x0

    if-nez v1, :cond_100

    const-string v1, "com.android.server.telecom"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c0

    .line 1338
    new-instance v0, Lcn/baos/watch/w100/messages/AppSystemNotification;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/AppSystemNotification;-><init>()V

    .line 1339
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5a

    .line 1340
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_5a

    .line 1341
    invoke-virtual {v1, v8, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1343
    :cond_5a
    iput-object v1, v0, Lcn/baos/watch/w100/messages/AppSystemNotification;->title:Ljava/lang/String;

    .line 1344
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1345
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0xfb

    if-le v2, v3, :cond_7b

    const/16 v2, 0xfa

    .line 1346
    invoke-virtual {v1, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/w100/messages/AppSystemNotification;->content:Ljava/lang/String;

    goto :goto_7d

    .line 1348
    :cond_7b
    iput-object v1, v0, Lcn/baos/watch/w100/messages/AppSystemNotification;->content:Ljava/lang/String;

    .line 1350
    :goto_7d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lcn/baos/watch/w100/messages/AppSystemNotification;->start_time_s:I

    .line 1351
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/w100/messages/AppSystemNotification;->package_name:Ljava/lang/String;

    const/4 v1, 0x1

    .line 1352
    iput v1, v0, Lcn/baos/watch/w100/messages/AppSystemNotification;->highlight:I

    .line 1353
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 1355
    iget-object p1, v0, Lcn/baos/watch/w100/messages/AppSystemNotification;->content:Ljava/lang/String;

    if-eqz p1, :cond_1e5

    iget-object p1, v0, Lcn/baos/watch/w100/messages/AppSystemNotification;->content:Ljava/lang/String;

    const-string v1, "\u72ec\u7acb\u8fd0\u52a8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1e5

    .line 1356
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u53d1\u9001\u7cfb\u7edf\u901a\u77e5:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1357
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    goto/16 :goto_1e5

    .line 1320
    :cond_c0
    new-instance v0, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;

    invoke-direct {v0}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;-><init>()V

    .line 1321
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1324
    :try_start_d3
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getContactNameFromPhoneBook(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_d9
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d9} :catch_da

    goto :goto_dd

    .line 1326
    :catch_da
    invoke-static {v4}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1329
    :goto_dd
    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->setIncomingNum(Ljava/lang/String;)V

    .line 1330
    invoke-virtual {v0, v8}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->setPhoneState(I)V

    .line 1331
    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->setGetIncomingNumName(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->getIncomingNum()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1e5

    .line 1333
    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1334
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object p1

    invoke-virtual {p1, v6, v0}, Lcn/baos/watch/sdk/code/MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1e5

    .line 1282
    :cond_100
    new-instance v0, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;

    invoke-direct {v0}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;-><init>()V

    .line 1283
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {v1, v5}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1286
    :try_start_113
    iget-object v5, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v5, v1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getContactNameFromPhoneBook(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_119
    .catch Ljava/lang/Exception; {:try_start_113 .. :try_end_119} :catch_11a

    goto :goto_11d

    .line 1288
    :catch_11a
    invoke-static {v4}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1291
    :goto_11d
    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->setIncomingNum(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {v0, v8}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->setPhoneState(I)V

    .line 1293
    invoke-virtual {v0, v3}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->setGetIncomingNumName(Ljava/lang/String;)V

    .line 1294
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "phone \u54cd\u94c3\u6765\u6e90\u901a\u77e5\u680f"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1296
    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->getIncomingNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_156

    .line 1297
    invoke-static {v2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1298
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object p1

    invoke-virtual {p1, v6, v0}, Lcn/baos/watch/sdk/code/MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_1e5

    .line 1299
    :cond_156
    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->getGetIncomingNumName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1e0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->getIncomingNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1e0

    .line 1300
    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->getIncomingNum()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/W100Utils;->isNumeric(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1da

    const-string v1, "phone \u7535\u8bdd\u53f7\u7801\u53d6\u51fa\u6765\u662f\u6570\u5b57\uff0c\u8be5\u6761\u5904\u7406\u4e0b..."

    .line 1301
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1302
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "phone \u6765\u7535\u7535\u8bdd"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->getIncomingNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\uff0c\u540d\u5b57\u4e3a\u7a7a\u6570\u636e\u5b58\u5728\u7a7a\u503c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1303
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->setGetIncomingNumName(Ljava/lang/String;)V

    .line 1304
    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->getGetIncomingNumName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "\u5f53\u524d\u901a\u8bdd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1d4

    .line 1305
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "phone \u540d\u5b57\u4e0d\u4e3a\u9ed8\u8ba4\uff1a\u6765\u7535\uff0c\u8be5\u6761\u901a\u77e5\u53d1\u9001\uff0c\u901a\u8fc71s\u8fc7\u6ee4\u673a\u5236\u4fdd\u8bc1\u4e0d\u91cd\u590d:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1306
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object p1

    invoke-virtual {p1, v6, v0}, Lcn/baos/watch/sdk/code/MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1e5

    :cond_1d4
    const-string p1, "phone \u540d\u5b57\u4e3a\u9ed8\u8ba4\uff1a\u5f53\u524d\u901a\u8bdd\uff0c\u8be5\u6761\u901a\u77e5\u4e0d\u53d1\u9001\uff0c\u64ad\u51fa\u7535\u8bdd\uff0coppo\u6709\u65f6\u4f1a\u6709\u8fd9\u4e2a\u901a\u77e5"

    .line 1308
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_1e5

    :cond_1da
    const-string p1, "phone \u7535\u8bdd\u53f7\u7801\u53d6\u51fa\u6765\u4e3a\u540d\u5b57\uff0c\u4e0d\u662f\u6570\u5b57\uff0c\u8be5\u6761\u5ffd\u7565"

    .line 1311
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_1e5

    :cond_1e0
    const-string p1, "phone \u54cd\u94c3\u6765\u6e90\u901a\u77e5\u680f\uff0c\u53d6\u51fa\u6570\u636e\u5b58\u5728\u7a7a\u503c"

    .line 1314
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_1e5
    :goto_1e5
    return-void
.end method

.method public pushNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-string v0, "push to watch content"

    .line 1365
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1366
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "com.android.incallui"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_70

    .line 1370
    new-instance v0, Lcn/baos/watch/w100/messages/AppSystemNotification;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/AppSystemNotification;-><init>()V

    const/4 v1, 0x0

    if-eqz p2, :cond_24

    .line 1372
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x40

    if-le v2, v3, :cond_24

    .line 1373
    invoke-virtual {p2, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 1375
    :cond_24
    iput-object p2, v0, Lcn/baos/watch/w100/messages/AppSystemNotification;->title:Ljava/lang/String;

    .line 1377
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 1378
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p3

    const/16 v2, 0xfb

    if-le p3, v2, :cond_3b

    const/16 p3, 0xfa

    .line 1379
    invoke-virtual {p2, v1, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    iput-object p2, v0, Lcn/baos/watch/w100/messages/AppSystemNotification;->content:Ljava/lang/String;

    goto :goto_3d

    .line 1381
    :cond_3b
    iput-object p2, v0, Lcn/baos/watch/w100/messages/AppSystemNotification;->content:Ljava/lang/String;

    .line 1383
    :goto_3d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    const-wide/16 v1, 0x3e8

    div-long/2addr p2, v1

    long-to-int p2, p2

    iput p2, v0, Lcn/baos/watch/w100/messages/AppSystemNotification;->start_time_s:I

    .line 1384
    iput-object p1, v0, Lcn/baos/watch/w100/messages/AppSystemNotification;->package_name:Ljava/lang/String;

    const/4 p1, 0x1

    .line 1385
    iput p1, v0, Lcn/baos/watch/w100/messages/AppSystemNotification;->highlight:I

    .line 1386
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 1388
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u53d1\u9001\u77ed\u4fe1\u901a\u77e5:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1389
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    :cond_70
    return-void
.end method

.method public receiveMessageFromDevice(Lcn/baos/watch/w100/messages/MessageBase;)V
    .registers 5

    if-nez p1, :cond_8

    const-string p1, "receiveMessageFromDevice received invalidate message, ignore"

    .line 691
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    return-void

    .line 694
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u84dd\u7259\u6536\u5230\u6d88\u606f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 695
    iget v0, p1, Lcn/baos/watch/w100/messages/MessageBase;->catagory:I

    const/4 v1, 0x1

    sparse-switch v0, :sswitch_data_212

    goto/16 :goto_211

    .line 821
    :sswitch_26
    check-cast p1, Lcn/baos/watch/w100/messages/PhoneControlRequest;

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u8868\u7535\u8bdd\u63a7\u5236:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 823
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mIMessageCallback:Lcn/baos/watch/sdk/manager/message/IMessageCallback;

    if-eqz v0, :cond_4c

    .line 824
    iget v1, p1, Lcn/baos/watch/w100/messages/PhoneControlRequest;->action:I

    invoke-interface {v0, v1}, Lcn/baos/watch/sdk/manager/message/IMessageCallback;->onPhoneStatus(I)V

    .line 826
    :cond_4c
    iget v0, p1, Lcn/baos/watch/w100/messages/PhoneControlRequest;->action:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_5a

    .line 827
    invoke-static {}, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->getInstance()Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->quietCallOn()V

    goto/16 :goto_211

    .line 828
    :cond_5a
    iget p1, p1, Lcn/baos/watch/w100/messages/PhoneControlRequest;->action:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_211

    .line 829
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object p1

    const/16 v0, 0x68

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/code/MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 830
    invoke-static {}, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->getInstance()Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/code/callcontroller/CallStateManager;->quietCallOff()V

    goto/16 :goto_211

    .line 988
    :sswitch_75
    check-cast p1, Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;

    .line 989
    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    .line 993
    invoke-static {}, Lcn/baos/watch/sdk/manager/ota/OtaManager;->getInstance()Lcn/baos/watch/sdk/manager/ota/OtaManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/manager/ota/OtaManager;->handleWatchVersion(Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;)V

    goto/16 :goto_211

    .line 983
    :sswitch_87
    check-cast p1, Lcn/baos/watch/w100/messages/CommandBleOTAResult;

    .line 984
    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->otaResultHandle(Lcn/baos/watch/w100/messages/CommandBleOTAResult;)V

    goto/16 :goto_211

    .line 1105
    :sswitch_8e
    move-object v0, p1

    check-cast v0, Lcn/baos/watch/w100/messages/CommandJournalResponse;

    .line 1108
    iget-object v1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mIMessageCallback:Lcn/baos/watch/sdk/manager/message/IMessageCallback;

    if-eqz v1, :cond_211

    .line 1109
    invoke-static {p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->packMessage(Lcn/baos/message/Serializable;)[B

    move-result-object p1

    invoke-interface {v1, p1}, Lcn/baos/watch/sdk/manager/message/IMessageCallback;->onCollectWatchLoggerRequest([B)V

    .line 1110
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mIMessageCallback:Lcn/baos/watch/sdk/manager/message/IMessageCallback;

    iget-object v0, v0, Lcn/baos/watch/w100/messages/CommandJournalResponse;->response:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcn/baos/watch/sdk/manager/message/IMessageCallback;->onCollectWatchLoggerRequestData(Ljava/lang/String;)V

    goto/16 :goto_211

    .line 1086
    :sswitch_a5
    check-cast p1, Lcn/baos/watch/w100/messages/CommandTestResponse;

    .line 1087
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u8868\u6d4b\u8bd5\u7ed3\u679c-\u624b\u673a\u63a5\u6536\u5230commandTestResponse:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1089
    iget v0, p1, Lcn/baos/watch/w100/messages/CommandTestResponse;->result:I

    const/4 v1, 0x6

    if-lt v0, v1, :cond_f1

    const-string v0, "\u624b\u8868\u6d4b\u8bd5\u7ed3\u679c-type\u5927\u4e8e\u7b49\u4e8e6,\u624b\u673a\u5199\u5165\u672c\u5730\u6587\u4ef6,\u4ee5\u53ca\u751f\u6210zpl\u6587\u4ef6"

    .line 1090
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1092
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v2

    iget-object v2, v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  \u72b6\u6001:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Lcn/baos/watch/w100/messages/CommandTestResponse;->result:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/util/FileUtils;->writeValueToLocal(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_211

    .line 1097
    :cond_f1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u8868\u6d4b\u8bd5\u7ed3\u679c-type\u4e3a"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Lcn/baos/watch/w100/messages/CommandTestResponse;->result:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ",\u624b\u673a\u4e0d\u4f1a\u5199\u5165\u672c\u5730\u6587\u4ef6"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto/16 :goto_211

    .line 1016
    :sswitch_10d
    check-cast p1, Lcn/baos/watch/w100/messages/CommandAutoTest;

    .line 1017
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u65e5\u5fd7:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p1, p1, Lcn/baos/watch/w100/messages/CommandAutoTest;->test_result:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1018
    sput-boolean v1, Lcn/baos/watch/sdk/entitiy/Constant;->isIntegrationMode:Z

    goto/16 :goto_211

    .line 835
    :sswitch_127
    check-cast p1, Lcn/baos/watch/w100/messages/CommandContentReturnRequest;

    .line 836
    iget-object v0, p1, Lcn/baos/watch/w100/messages/CommandContentReturnRequest;->content:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf0

    if-gt v0, v1, :cond_142

    .line 837
    invoke-static {}, Lcn/baos/watch/sdk/code/test/TestHandler;->getInstance()Lcn/baos/watch/sdk/code/test/TestHandler;

    move-result-object v0

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1, p1}, Lcn/baos/watch/sdk/code/test/TestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_211

    .line 839
    :cond_142
    invoke-static {}, Lcn/baos/watch/sdk/code/test/TestHandler;->getInstance()Lcn/baos/watch/sdk/code/test/TestHandler;

    move-result-object v0

    const/16 v1, 0x3fb

    invoke-virtual {v0, v1, p1}, Lcn/baos/watch/sdk/code/test/TestHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_211

    .line 731
    :sswitch_151
    check-cast p1, Lcn/baos/watch/w100/messages/CommandTimeSync;

    .line 732
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u8868\u4e3b\u52a8\u83b7\u53d6\u65f6\u95f4:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 733
    iget p1, p1, Lcn/baos/watch/w100/messages/CommandTimeSync;->sync_id:I

    .line 734
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->timeSyncToWatch(I)V

    .line 735
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcn/baos/watch/sdk/bluetooth/DataUtils;->setTimeFormat(Landroid/content/Context;)V

    goto/16 :goto_211

    .line 703
    :sswitch_175
    check-cast p1, Lcn/baos/watch/w100/messages/Device_resource_info;

    .line 704
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mIMessageCallback:Lcn/baos/watch/sdk/manager/message/IMessageCallback;

    if-eqz v0, :cond_211

    .line 705
    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/manager/message/IMessageCallback;->onDeviceResourceInfo(Lcn/baos/watch/w100/messages/Device_resource_info;)V

    goto/16 :goto_211

    .line 758
    :sswitch_180
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->isFindPhone()Z

    move-result v0

    if-eqz v0, :cond_211

    .line 760
    new-instance v0, Lcn/baos/watch/w100/messages/FindMobileResponse;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/FindMobileResponse;-><init>()V

    .line 761
    check-cast p1, Lcn/baos/watch/w100/messages/FindMobileRequest;

    .line 762
    iget v2, p1, Lcn/baos/watch/w100/messages/FindMobileRequest;->is_find:I

    if-ne v2, v1, :cond_19f

    .line 763
    invoke-static {}, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->getInstance()Lcn/baos/watch/sdk/util/LocalAudioPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->playAudio()V

    .line 764
    iput v1, v0, Lcn/baos/watch/w100/messages/FindMobileResponse;->status:I

    goto :goto_1ad

    .line 765
    :cond_19f
    iget p1, p1, Lcn/baos/watch/w100/messages/FindMobileRequest;->is_find:I

    if-nez p1, :cond_1ad

    .line 766
    invoke-static {}, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->getInstance()Lcn/baos/watch/sdk/util/LocalAudioPlayManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->stopAudio()V

    const/4 p1, 0x0

    .line 767
    iput p1, v0, Lcn/baos/watch/w100/messages/FindMobileResponse;->status:I

    .line 769
    :cond_1ad
    :goto_1ad
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    goto :goto_211

    .line 846
    :sswitch_1b1
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->isMusicSwatch()Z

    .line 848
    check-cast p1, Lcn/baos/watch/w100/messages/MusicControlRequest;

    .line 849
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u8868\u97f3\u4e50\u63a7\u5236\u6307\u4ee4"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 850
    invoke-static {}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->getInstance()Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->handleCommandFromWatchToControlMusic(Lcn/baos/watch/w100/messages/MusicControlRequest;)V

    goto :goto_211

    .line 709
    :sswitch_1dd
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mIMessageCallback:Lcn/baos/watch/sdk/manager/message/IMessageCallback;

    if-eqz p1, :cond_1e4

    .line 710
    invoke-interface {p1}, Lcn/baos/watch/sdk/manager/message/IMessageCallback;->onBindRequestByPhone()V

    :cond_1e4
    const-string p1, "\u624b\u8868\u7aef\u4e3b\u52a8\u53d1\u8d77\u914d\u5bf9\u8bf7\u6c42"

    .line 712
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_211

    .line 715
    :sswitch_1ea
    invoke-static {}, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;->getInstance()Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/timer/PhoneBind888Timer;->endWaitTimeOut()V

    .line 717
    check-cast p1, Lcn/baos/watch/w100/messages/CommandPhonePairResult;

    .line 718
    iget v0, p1, Lcn/baos/watch/w100/messages/CommandPhonePairResult;->pair_result:I

    if-ne v0, v1, :cond_20a

    .line 720
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    sget-object v1, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_PAIR_CODE:Ljava/lang/String;

    iget p1, p1, Lcn/baos/watch/w100/messages/CommandPhonePairResult;->rank:I

    invoke-virtual {v0, v1, p1}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;I)V

    .line 721
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mIBtBindRequestCallback:Lcn/baos/watch/sdk/bluetooth/callback/IBtBindRequestCallback;

    if-eqz p1, :cond_211

    .line 722
    invoke-interface {p1}, Lcn/baos/watch/sdk/bluetooth/callback/IBtBindRequestCallback;->onBindSuccess()V

    goto :goto_211

    .line 725
    :cond_20a
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mIBtBindRequestCallback:Lcn/baos/watch/sdk/bluetooth/callback/IBtBindRequestCallback;

    if-eqz p1, :cond_211

    .line 726
    invoke-interface {p1}, Lcn/baos/watch/sdk/bluetooth/callback/IBtBindRequestCallback;->onUnbindSuccess()V

    :cond_211
    :goto_211
    return-void

    :sswitch_data_212
    .sparse-switch
        0x2724 -> :sswitch_1ea
        0x2725 -> :sswitch_1dd
        0x2a34 -> :sswitch_1b1
        0x2db5 -> :sswitch_180
        0x2ee3 -> :sswitch_175
        0x7537 -> :sswitch_151
        0xc350 -> :sswitch_127
        0xc352 -> :sswitch_10d
        0xc354 -> :sswitch_a5
        0xc356 -> :sswitch_8e
        0xea62 -> :sswitch_87
        0xea64 -> :sswitch_75
        0x13966 -> :sswitch_26
    .end sparse-switch
.end method

.method public receiveMessageFromDevice([B)V
    .registers 4

    .line 334
    invoke-static {p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->unpackMessage([B)Lcn/baos/message/Serializable;

    move-result-object p1

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u84dd\u7259\u539f\u59cb\u6536\u5230\u6d88\u606f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    if-nez p1, :cond_22

    const-string p1, "receiveMessageFromDevice serializable received invalidate message, ignore"

    .line 337
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    return-void

    .line 342
    :cond_22
    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x16062

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x16063

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x16064

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x16065

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x16066

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x16067

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x16068

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x16069

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x1606a

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const/16 v1, 0x7595

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x16076

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x1606f

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x16070

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x16072

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const/16 v1, 0x7598

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x1fbd4

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const/16 v1, 0x765f

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x1fbd3

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const/16 v1, 0x765d

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const/16 v1, 0x75f8

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const/16 v1, 0x7594

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const/16 v1, 0x765c

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x1fbd5

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x222e0

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const/16 v1, 0x765e

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x249f0

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x1fbd6

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x1607b

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x1607d

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const/16 v1, 0x759a

    if-eq v0, v1, :cond_f9

    iget v0, p1, Lcn/baos/message/Serializable;->catagory:I

    const v1, 0x1607c

    if-ne v0, v1, :cond_f3

    goto :goto_f9

    .line 397
    :cond_f3
    check-cast p1, Lcn/baos/watch/w100/messages/MessageBase;

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->receiveMessageFromDevice(Lcn/baos/watch/w100/messages/MessageBase;)V

    goto :goto_fc

    .line 395
    :cond_f9
    :goto_f9
    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->receiveSerializableFromDevice(Lcn/baos/message/Serializable;)V

    :goto_fc
    return-void
.end method

.method public requestClockListToWatch(Lcn/baos/watch/sdk/interfac/clock/OnGetClockDataListener;)V
    .registers 6

    .line 1692
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnGetClockDataListener:Lcn/baos/watch/sdk/interfac/clock/OnGetClockDataListener;

    .line 1693
    new-instance p1, Lcn/baos/watch/w100/messages/QueryAlarm;

    invoke-direct {p1}, Lcn/baos/watch/w100/messages/QueryAlarm;-><init>()V

    const/4 v0, 0x1

    .line 1695
    iput v0, p1, Lcn/baos/watch/w100/messages/QueryAlarm;->query_mode:I

    .line 1696
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 1697
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u95f9\u949f\u7ba1\u7406\u8bf7\u6c42\u95f9\u949f\u5217\u8868:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1698
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    return-void
.end method

.method public requestReminderListToWatch(Lcn/baos/watch/w100/messages/QueryReminder;Lcn/baos/watch/sdk/interfac/reminder/OnGetReminderDataListener;)V
    .registers 7

    .line 1728
    iput-object p2, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnGetReminderDataListener:Lcn/baos/watch/sdk/interfac/reminder/OnGetReminderDataListener;

    .line 1730
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 1731
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "\u95f9\u949f\u7ba1\u7406\u8bf7\u6c42\u63d0\u9192\u5217\u8868:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1732
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    return-void
.end method

.method public requestStJournal()V
    .registers 4

    .line 2145
    new-instance v0, Lcn/baos/watch/w100/messages/CommandJournalRequest;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/CommandJournalRequest;-><init>()V

    .line 2146
    sget-object v1, Lcn/baos/message/CatagoryEnum;->classCatagoryMap:Ljava/util/Map;

    iget v2, v0, Lcn/baos/watch/w100/messages/CommandJournalRequest;->catagory:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 2147
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    return-void
.end method

.method public requestSyncDataFromWatch(I)V
    .registers 4

    .line 2195
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->setSyncDataCurrentCategoryId(I)V

    .line 2196
    new-instance v0, Lcn/baos/watch/w100/messages/Request_get_data;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Request_get_data;-><init>()V

    .line 2197
    iput p1, v0, Lcn/baos/watch/w100/messages/Request_get_data;->data_catagary:I

    .line 2198
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->queryLastedTime(I)I

    move-result p1

    iput p1, v0, Lcn/baos/watch/w100/messages/Request_get_data;->last_data_timestamp:I

    .line 2199
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65\u8bf7\u6c42\u6570\u636e\u5217\u8868:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2200
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    return-void
.end method

.method public requestSyncDataFromWatchSix(I)V
    .registers 4

    .line 2204
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->setSyncDataCurrentCategoryId(I)V

    .line 2205
    new-instance v0, Lcn/baos/watch/w100/messages/Request_get_data;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Request_get_data;-><init>()V

    const v1, 0x1607b

    .line 2206
    iput v1, v0, Lcn/baos/watch/w100/messages/Request_get_data;->data_catagary:I

    .line 2207
    iput p1, v0, Lcn/baos/watch/w100/messages/Request_get_data;->enum_param:I

    .line 2208
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->queryLastedTime(I)I

    move-result p1

    iput p1, v0, Lcn/baos/watch/w100/messages/Request_get_data;->last_data_timestamp:I

    .line 2209
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65\u8bf7\u6c42\u6570\u636e\u5217\u8868:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2210
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    return-void
.end method

.method public requestSyncRightNowDataFromWatch(ILcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;)V
    .registers 4

    .line 2218
    new-instance v0, Lcn/baos/watch/w100/messages/Request_get_data;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Request_get_data;-><init>()V

    .line 2219
    iput p1, v0, Lcn/baos/watch/w100/messages/Request_get_data;->data_catagary:I

    .line 2221
    sget-object p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->OPEN:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    if-ne p2, p1, :cond_11

    const p1, 0x7fffffff

    .line 2222
    iput p1, v0, Lcn/baos/watch/w100/messages/Request_get_data;->last_data_timestamp:I

    goto :goto_18

    .line 2223
    :cond_11
    sget-object p1, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->CLOSE:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    if-ne p2, p1, :cond_18

    const/4 p1, 0x0

    .line 2224
    iput p1, v0, Lcn/baos/watch/w100/messages/Request_get_data;->last_data_timestamp:I

    .line 2226
    :cond_18
    :goto_18
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u5b9e\u65f6\u6570\u636e\u8bf7\u6c42\u6570\u636e\u5217\u8868:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2227
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    return-void
.end method

.method public requestWatchVersion()V
    .registers 6

    .line 2054
    new-instance v0, Lcn/baos/watch/w100/messages/CommandGetWatchVersion;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/CommandGetWatchVersion;-><init>()V

    .line 2055
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 2056
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8bf7\u6c42\u8f6f\u4ef6\u7248\u672c\u53f7:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2057
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    return-void
.end method

.method public sendAppMarkeToWatch(Lcn/baos/watch/sdk/entitiy/AppMarekEntity;)Z
    .registers 6

    if-nez p1, :cond_4

    const/4 p1, 0x0

    return p1

    .line 1870
    :cond_4
    new-instance v0, Lcn/baos/watch/w100/messages/Device_app_config;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Device_app_config;-><init>()V

    .line 1871
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcn/baos/watch/sdk/entitiy/AppMarekEntity;->isMyFriends:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcn/baos/watch/sdk/entitiy/AppMarekEntity;->isBreathingRate:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcn/baos/watch/sdk/entitiy/AppMarekEntity;->isBodyTemperature:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcn/baos/watch/sdk/entitiy/AppMarekEntity;->isBloodSugar:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcn/baos/watch/sdk/entitiy/AppMarekEntity;->isMeteorological:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Lcn/baos/watch/sdk/entitiy/AppMarekEntity;->isVideoCtrl:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1872
    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->bin2Dec(Ljava/lang/String;)I

    move-result v1

    .line 1873
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "-----by="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "-----"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1874
    iput v1, v0, Lcn/baos/watch/w100/messages/Device_app_config;->app_id_mask:I

    const/4 p1, 0x2

    .line 1875
    iput p1, v0, Lcn/baos/watch/w100/messages/Device_app_config;->type:I

    .line 1876
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "device_app_config:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1877
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p1

    return p1
.end method

.method public sendAppSystemPhone(Lcn/baos/watch/sdk/entitiy/CallInfoEntity;)V
    .registers 7

    .line 1558
    new-instance v0, Lcn/baos/watch/w100/messages/AppSystemPhone;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/AppSystemPhone;-><init>()V

    .line 1559
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->getIncomingNum()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/w100/messages/AppSystemPhone;->phone_num:Ljava/lang/String;

    .line 1560
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->getGetIncomingNumName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/w100/messages/AppSystemPhone;->contacter:Ljava/lang/String;

    .line 1561
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/CallInfoEntity;->getPhoneState()I

    move-result p1

    iput p1, v0, Lcn/baos/watch/w100/messages/AppSystemPhone;->phone_state:I

    .line 1562
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p1, v1

    iput p1, v0, Lcn/baos/watch/w100/messages/AppSystemPhone;->start_time_s:I

    .line 1563
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 1564
    iget p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->previous:I

    iget v1, v0, Lcn/baos/watch/w100/messages/AppSystemPhone;->phone_state:I

    if-ne p1, v1, :cond_39

    const-string p1, "phone \u6765\u7535\u72b6\u6001\u91cd\u590d\u53d1\u9001\u8fc7\u6ee4"

    .line 1565
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    goto :goto_56

    .line 1567
    :cond_39
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "phone \u53d1\u9001:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1568
    iget p1, v0, Lcn/baos/watch/w100/messages/AppSystemPhone;->phone_state:I

    iput p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->previous:I

    .line 1569
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    :goto_56
    return-void
.end method

.method public sendAutoTestResultToWatch(ILjava/lang/String;)V
    .registers 3

    return-void
.end method

.method public sendComomnRemindToWatch(Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;)Z
    .registers 6

    .line 1761
    iget v0, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->type:I

    const/16 v1, 0x62

    if-eq v0, v1, :cond_7d

    iget v0, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->type:I

    const/16 v2, 0x63

    if-ne v0, v2, :cond_d

    goto :goto_7d

    .line 1803
    :cond_d
    new-instance v0, Lcn/baos/watch/w100/messages/Common_remind_config;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Common_remind_config;-><init>()V

    .line 1807
    iget v1, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->type:I

    const/16 v2, 0x67

    if-eq v1, v2, :cond_2e

    iget v1, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->type:I

    const/16 v2, 0x68

    if-eq v1, v2, :cond_2e

    iget v1, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->type:I

    const/16 v2, 0x69

    if-ne v1, v2, :cond_25

    goto :goto_2e

    .line 1813
    :cond_25
    iget v1, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->interval_sec:I

    iput v1, v0, Lcn/baos/watch/w100/messages/Common_remind_config;->interval_sec:I

    const/16 v1, 0x7f

    .line 1815
    iput v1, v0, Lcn/baos/watch/w100/messages/Common_remind_config;->week_day_mask:I

    goto :goto_3b

    :cond_2e
    :goto_2e
    const v1, 0x7fffffff

    .line 1809
    iput v1, v0, Lcn/baos/watch/w100/messages/Common_remind_config;->interval_sec:I

    .line 1811
    iget-object v1, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->weekDayMaskValue:Ljava/lang/String;

    invoke-static {v1}, Lcn/baos/watch/sdk/util/W100Utils;->bin2Dec(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcn/baos/watch/w100/messages/Common_remind_config;->week_day_mask:I

    .line 1821
    :goto_3b
    iget v1, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->type:I

    iput v1, v0, Lcn/baos/watch/w100/messages/Common_remind_config;->type:I

    .line 1822
    iget v1, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->enable:I

    iput v1, v0, Lcn/baos/watch/w100/messages/Common_remind_config;->enable:I

    .line 1825
    new-instance v1, Lcn/baos/watch/w100/messages/Common_remind_config$CRC_timespan;

    invoke-direct {v1}, Lcn/baos/watch/w100/messages/Common_remind_config$CRC_timespan;-><init>()V

    .line 1826
    iget-object v2, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->timespan:Lcn/baos/watch/sdk/entitiy/CrcTimespan;

    iget v2, v2, Lcn/baos/watch/sdk/entitiy/CrcTimespan;->begin_hour:I

    iput v2, v1, Lcn/baos/watch/w100/messages/Common_remind_config$CRC_timespan;->begin_hour:I

    .line 1827
    iget-object v2, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->timespan:Lcn/baos/watch/sdk/entitiy/CrcTimespan;

    iget v2, v2, Lcn/baos/watch/sdk/entitiy/CrcTimespan;->begin_min:I

    iput v2, v1, Lcn/baos/watch/w100/messages/Common_remind_config$CRC_timespan;->begin_min:I

    .line 1828
    iget-object v2, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->timespan:Lcn/baos/watch/sdk/entitiy/CrcTimespan;

    iget v2, v2, Lcn/baos/watch/sdk/entitiy/CrcTimespan;->end_hour:I

    iput v2, v1, Lcn/baos/watch/w100/messages/Common_remind_config$CRC_timespan;->end_hour:I

    .line 1829
    iget-object p1, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->timespan:Lcn/baos/watch/sdk/entitiy/CrcTimespan;

    iget p1, p1, Lcn/baos/watch/sdk/entitiy/CrcTimespan;->end_min:I

    iput p1, v1, Lcn/baos/watch/w100/messages/Common_remind_config$CRC_timespan;->end_min:I

    .line 1830
    iput-object v1, v0, Lcn/baos/watch/w100/messages/Common_remind_config;->timespan:Lcn/baos/watch/w100/messages/Common_remind_config$CRC_timespan;

    .line 1832
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "common_remind_config:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1833
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p1

    return p1

    .line 1762
    :cond_7d
    :goto_7d
    iget v0, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->type:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_e2

    .line 1763
    new-instance v0, Lcn/baos/watch/w100/messages/Sedentary_monitor_config;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Sedentary_monitor_config;-><init>()V

    .line 1764
    iget v1, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->enable:I

    iput v1, v0, Lcn/baos/watch/w100/messages/Sedentary_monitor_config;->is_enable:I

    .line 1765
    new-instance v1, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_rule;

    invoke-direct {v1}, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_rule;-><init>()V

    .line 1770
    iput v2, v1, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_rule;->remind_count:I

    const/4 v2, 0x0

    .line 1771
    iput v2, v1, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_rule;->remind_interval_min:I

    .line 1772
    iget v2, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->interval_sec:I

    iput v2, v1, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_rule;->sedentary_min:I

    const/16 v2, 0x32

    .line 1773
    iput v2, v1, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_rule;->target_steps:I

    .line 1776
    new-instance v2, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_timespan;

    invoke-direct {v2}, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_timespan;-><init>()V

    .line 1777
    iget-object v3, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->timespan:Lcn/baos/watch/sdk/entitiy/CrcTimespan;

    iget v3, v3, Lcn/baos/watch/sdk/entitiy/CrcTimespan;->begin_hour:I

    iput v3, v2, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_timespan;->begin_hour:I

    .line 1778
    iget-object v3, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->timespan:Lcn/baos/watch/sdk/entitiy/CrcTimespan;

    iget v3, v3, Lcn/baos/watch/sdk/entitiy/CrcTimespan;->begin_min:I

    iput v3, v2, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_timespan;->begin_min:I

    .line 1779
    iget-object v3, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->timespan:Lcn/baos/watch/sdk/entitiy/CrcTimespan;

    iget v3, v3, Lcn/baos/watch/sdk/entitiy/CrcTimespan;->end_hour:I

    iput v3, v2, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_timespan;->end_hour:I

    .line 1780
    iget-object p1, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->timespan:Lcn/baos/watch/sdk/entitiy/CrcTimespan;

    iget p1, p1, Lcn/baos/watch/sdk/entitiy/CrcTimespan;->end_min:I

    iput p1, v2, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_timespan;->end_min:I

    .line 1781
    iput-object v2, v0, Lcn/baos/watch/w100/messages/Sedentary_monitor_config;->timespan:Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_timespan;

    .line 1782
    iput-object v1, v0, Lcn/baos/watch/w100/messages/Sedentary_monitor_config;->rule:Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_rule;

    .line 1783
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u4e45\u5750\u63d0\u9192:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1784
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p1

    return p1

    .line 1787
    :cond_e2
    new-instance v0, Lcn/baos/watch/w100/messages/Regular_remind_config;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Regular_remind_config;-><init>()V

    .line 1788
    iput v2, v0, Lcn/baos/watch/w100/messages/Regular_remind_config;->remind_item:I

    .line 1789
    iget v1, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->enable:I

    iput v1, v0, Lcn/baos/watch/w100/messages/Regular_remind_config;->is_enable:I

    .line 1790
    new-instance v1, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;

    invoke-direct {v1}, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;-><init>()V

    .line 1791
    iget v2, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->interval_sec:I

    iput v2, v1, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;->interval_sec:I

    .line 1792
    new-instance v2, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg$Regular_timespan;

    invoke-direct {v2}, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg$Regular_timespan;-><init>()V

    .line 1793
    iget-object v3, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->timespan:Lcn/baos/watch/sdk/entitiy/CrcTimespan;

    iget v3, v3, Lcn/baos/watch/sdk/entitiy/CrcTimespan;->begin_hour:I

    iput v3, v2, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg$Regular_timespan;->begin_hour:I

    .line 1794
    iget-object v3, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->timespan:Lcn/baos/watch/sdk/entitiy/CrcTimespan;

    iget v3, v3, Lcn/baos/watch/sdk/entitiy/CrcTimespan;->begin_min:I

    iput v3, v2, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg$Regular_timespan;->begin_min:I

    .line 1795
    iget-object v3, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->timespan:Lcn/baos/watch/sdk/entitiy/CrcTimespan;

    iget v3, v3, Lcn/baos/watch/sdk/entitiy/CrcTimespan;->end_hour:I

    iput v3, v2, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg$Regular_timespan;->end_hour:I

    .line 1796
    iget-object p1, p1, Lcn/baos/watch/sdk/entitiy/CommonRemindEntity;->timespan:Lcn/baos/watch/sdk/entitiy/CrcTimespan;

    iget p1, p1, Lcn/baos/watch/sdk/entitiy/CrcTimespan;->end_min:I

    iput p1, v2, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg$Regular_timespan;->end_min:I

    .line 1797
    iput-object v2, v1, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;->timespan:Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg$Regular_timespan;

    .line 1798
    iput-object v1, v0, Lcn/baos/watch/w100/messages/Regular_remind_config;->cfg:Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;

    .line 1799
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u5e38\u89c4\u63d0\u9192:\u559d\u6c34\u3001\u6d17\u624b:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1800
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p1

    return p1
.end method

.method public sendFingerCoordinateToWatch(III)V
    .registers 7

    .line 1593
    new-instance v0, Lcn/baos/watch/w100/messages/CommandTouchEvent;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/CommandTouchEvent;-><init>()V

    .line 1594
    iput p1, v0, Lcn/baos/watch/w100/messages/CommandTouchEvent;->state:I

    .line 1595
    iput p2, v0, Lcn/baos/watch/w100/messages/CommandTouchEvent;->touch_x:I

    .line 1596
    iput p3, v0, Lcn/baos/watch/w100/messages/CommandTouchEvent;->touch_y:I

    .line 1597
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/16 v1, 0x3e8

    div-long/2addr p1, v1

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 1598
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u53d1\u9001\u624b\u6307\u5750\u6807\u7ed9\u624b\u8868:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1599
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    return-void
.end method

.method public sendGpsBaseToWatch(Lcn/baos/watch/sdk/entitiy/GpsBsseEntity;)Z
    .registers 7

    .line 1748
    new-instance v0, Lcn/baos/watch/w100/messages/Sensor_data_gps_base;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Sensor_data_gps_base;-><init>()V

    .line 1749
    iget v1, p1, Lcn/baos/watch/sdk/entitiy/GpsBsseEntity;->lat:F

    const v2, 0x4b189680    # 1.0E7f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_gps_base;->latitude:I

    .line 1750
    iget v1, p1, Lcn/baos/watch/sdk/entitiy/GpsBsseEntity;->lng:F

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_gps_base;->longitude:I

    .line 1751
    iget p1, p1, Lcn/baos/watch/sdk/entitiy/GpsBsseEntity;->altitude:F

    float-to-int p1, p1

    iput p1, v0, Lcn/baos/watch/w100/messages/Sensor_data_gps_base;->height:I

    .line 1752
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 1753
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "sensor_data_gps_base:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1754
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    move-result p1

    return p1
.end method

.method public sendIntegrationTestResultToWatch(ILjava/lang/String;)V
    .registers 8

    .line 2183
    new-instance v0, Lcn/baos/watch/w100/messages/CommandAutoTest;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/CommandAutoTest;-><init>()V

    .line 2184
    iput p1, v0, Lcn/baos/watch/w100/messages/CommandAutoTest;->state:I

    .line 2185
    iput-object p2, v0, Lcn/baos/watch/w100/messages/CommandAutoTest;->test_result:Ljava/lang/String;

    .line 2186
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 2187
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "sendIntegrationTestResultToWatch:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    .line 2188
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6574\u5408\u6d4b\u8bd5\u7ed3\u679c:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    .line 2189
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    return-void
.end method

.method public sendMessage(Lcn/baos/message/Serializable;)Z
    .registers 3

    const/4 v0, 0x2

    .line 1615
    invoke-direct {p0, v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(ILcn/baos/message/Serializable;)Z

    move-result p1

    return p1
.end method

.method public sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z
    .registers 6

    .line 1610
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcn/baos/watch/w100/messages/MessageBase;->addtime:I

    const/4 v0, 0x2

    .line 1611
    invoke-direct {p0, v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(ILcn/baos/message/Serializable;)Z

    move-result p1

    return p1
.end method

.method public sendMessage(Lcn/baos/watch/w100/messages/MessageBase;Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;)Z
    .registers 7

    .line 1652
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    iput v0, p1, Lcn/baos/watch/w100/messages/MessageBase;->addtime:I

    const/4 v0, 0x2

    .line 1653
    invoke-direct {p0, v0, p1, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(ILcn/baos/message/Serializable;Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;)Z

    move-result p1

    return p1
.end method

.method public sendMusicStatusAndVolume(Lcn/baos/watch/w100/messages/MusicControlResponse;)V
    .registers 6

    .line 1234
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 1235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u84dd\u7259\u53d1\u9001\u6b4c\u66f2\u72b6\u6001\u548c\u97f3\u91cf:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1236
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    return-void
.end method

.method public sendOtaUpdateDataEachPackage([BILcn/baos/watch/sdk/huabaoImpl/translate/OnCommandBleOTAEachPackageCallBack;)V
    .registers 5

    .line 2019
    iput-object p3, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnCommandBleOTAEachPackageCallBack:Lcn/baos/watch/sdk/huabaoImpl/translate/OnCommandBleOTAEachPackageCallBack;

    .line 2020
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "sendOtaUpdateData--ota\u5355\u4e2a\u5305\u5f00\u59cb\u53d1\u9001,\u5f00\u59cb\u53d1\u9001\u89d2\u6807\u4f4d\u7f6e:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    .line 2021
    iput p2, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mCurrentIndex:I

    .line 2022
    new-instance p3, Lcn/baos/watch/w100/messages/CommandBleOTAFileData;

    invoke-direct {p3}, Lcn/baos/watch/w100/messages/CommandBleOTAFileData;-><init>()V

    .line 2023
    iput p2, p3, Lcn/baos/watch/w100/messages/CommandBleOTAFileData;->index:I

    .line 2024
    iput-object p1, p3, Lcn/baos/watch/w100/messages/CommandBleOTAFileData;->file_data:[B

    .line 2025
    invoke-static {p1}, Lcn/baos/watch/sdk/util/EncryptionUtils;->getFileMD5Byte([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcn/baos/watch/w100/messages/CommandBleOTAFileData;->md5:Ljava/lang/String;

    .line 2026
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u53d1\u9001ota\u5355\u4e2a\u5305\u5750\u6807:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " \u5355\u4e2a\u5305\u5185\u5bb9\u5927\u5c0f"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p3, Lcn/baos/watch/w100/messages/CommandBleOTAFileData;->file_data:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    .line 2028
    invoke-virtual {p0, p3}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    return-void
.end method

.method public sendOtaUpdateDataEachPackage([BILcn/baos/watch/sdk/huabaoImpl/translate/OnCommandBleOTAEachPackageCallBack;Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;)V
    .registers 6

    .line 2037
    iput-object p3, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnCommandBleOTAEachPackageCallBack:Lcn/baos/watch/sdk/huabaoImpl/translate/OnCommandBleOTAEachPackageCallBack;

    .line 2038
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "sendOtaUpdateData--ota\u5355\u4e2a\u5305\u5f00\u59cb\u53d1\u9001,\u5f00\u59cb\u53d1\u9001\u89d2\u6807\u4f4d\u7f6e:"

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    .line 2039
    iput p2, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mCurrentIndex:I

    .line 2040
    new-instance p3, Lcn/baos/watch/w100/messages/CommandBleOTAFileData;

    invoke-direct {p3}, Lcn/baos/watch/w100/messages/CommandBleOTAFileData;-><init>()V

    .line 2041
    iput p2, p3, Lcn/baos/watch/w100/messages/CommandBleOTAFileData;->index:I

    .line 2042
    iput-object p1, p3, Lcn/baos/watch/w100/messages/CommandBleOTAFileData;->file_data:[B

    .line 2043
    invoke-static {p1}, Lcn/baos/watch/sdk/util/EncryptionUtils;->getFileMD5Byte([B)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcn/baos/watch/w100/messages/CommandBleOTAFileData;->md5:Ljava/lang/String;

    .line 2044
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u53d1\u9001ota\u5355\u4e2a\u5305\u5750\u6807:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " \u5355\u4e2a\u5305\u5185\u5bb9\u5927\u5c0f"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p3, Lcn/baos/watch/w100/messages/CommandBleOTAFileData;->file_data:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    .line 2046
    invoke-virtual {p0, p3, p4}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;Lcn/baos/watch/sdk/manager/message/IMessageSendCallback;)Z

    return-void
.end method

.method public sendOtaUpdateStartInfo(Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;Lcn/baos/watch/sdk/huabaoImpl/translate/OnCommandBleOTAFileInfoCallBack;)V
    .registers 5

    .line 2009
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sendOtaUpdateData--ota\u786e\u8ba4\u662f\u5426\u53ef\u5347\u7ea7\u5f00\u59cb\u53d1\u9001:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    .line 2010
    iput-object p2, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnCommandBleOTAFileInfoCallBack:Lcn/baos/watch/sdk/huabaoImpl/translate/OnCommandBleOTAFileInfoCallBack;

    .line 2011
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    return-void
.end method

.method public sendPhoneBindRequest(ILjava/lang/String;Lcn/baos/watch/sdk/bluetooth/callback/IBtBindRequestCallback;)Z
    .registers 4

    .line 1502
    iput-object p3, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mIBtBindRequestCallback:Lcn/baos/watch/sdk/bluetooth/callback/IBtBindRequestCallback;

    .line 1503
    new-instance p3, Lcn/baos/watch/w100/messages/CommandPhoneAskPair;

    invoke-direct {p3}, Lcn/baos/watch/w100/messages/CommandPhoneAskPair;-><init>()V

    .line 1504
    iput p1, p3, Lcn/baos/watch/w100/messages/CommandPhoneAskPair;->match_code:I

    .line 1505
    iput-object p2, p3, Lcn/baos/watch/w100/messages/CommandPhoneAskPair;->phone_type:Ljava/lang/String;

    const/16 p1, 0x14

    .line 1507
    iput p1, p3, Lcn/baos/watch/w100/messages/CommandPhoneAskPair;->rank:I

    .line 1508
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u624b\u673a\u53d1\u8d77\u7ed1\u5b9a\u8bf7\u6c42:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p3}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p0, p3}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    move-result p1

    return p1
.end method

.method public sendPhoneBindRequest111(ILjava/lang/String;)Z
    .registers 4

    .line 1513
    new-instance v0, Lcn/baos/watch/w100/messages/CommandPhoneAskPair;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/CommandPhoneAskPair;-><init>()V

    .line 1514
    iput p1, v0, Lcn/baos/watch/w100/messages/CommandPhoneAskPair;->match_code:I

    .line 1515
    iput-object p2, v0, Lcn/baos/watch/w100/messages/CommandPhoneAskPair;->phone_type:Ljava/lang/String;

    const/16 p1, 0x14

    .line 1517
    iput p1, v0, Lcn/baos/watch/w100/messages/CommandPhoneAskPair;->rank:I

    .line 1518
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "\u624b\u673a\u53d1\u8d77\u7ed1\u5b9a\u8bf7\u6c42:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->log(Ljava/lang/String;)V

    .line 1519
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    move-result p1

    return p1
.end method

.method public sendSportsPlanToWatch(Lcn/baos/watch/sdk/entitiy/SportPlansEntity;)Z
    .registers 8

    .line 1844
    new-instance v0, Lcn/baos/watch/w100/messages/Sport_plans;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Sport_plans;-><init>()V

    .line 1845
    iget v1, p1, Lcn/baos/watch/sdk/entitiy/SportPlansEntity;->enable:I

    iput v1, v0, Lcn/baos/watch/w100/messages/Sport_plans;->enable:I

    .line 1846
    iget-object v1, p1, Lcn/baos/watch/sdk/entitiy/SportPlansEntity;->plans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_42

    .line 1847
    iget-object v1, p1, Lcn/baos/watch/sdk/entitiy/SportPlansEntity;->plans:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;

    const/4 v2, 0x0

    .line 1848
    :goto_1a
    iget-object v3, p1, Lcn/baos/watch/sdk/entitiy/SportPlansEntity;->plans:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_40

    .line 1849
    iget-object v3, p1, Lcn/baos/watch/sdk/entitiy/SportPlansEntity;->plans:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/baos/watch/sdk/entitiy/SportPlansEntity$Plans;

    .line 1850
    new-instance v4, Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;

    invoke-direct {v4}, Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;-><init>()V

    .line 1851
    iget v5, v3, Lcn/baos/watch/sdk/entitiy/SportPlansEntity$Plans;->dayOfWeek:I

    iput v5, v4, Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;->day_of_week:I

    .line 1852
    iget v5, v3, Lcn/baos/watch/sdk/entitiy/SportPlansEntity$Plans;->mode:I

    iput v5, v4, Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;->mode:I

    .line 1853
    iget v3, v3, Lcn/baos/watch/sdk/entitiy/SportPlansEntity$Plans;->targetType:I

    iput v3, v4, Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;->target_type:I

    .line 1855
    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1a

    .line 1857
    :cond_40
    iput-object v1, v0, Lcn/baos/watch/w100/messages/Sport_plans;->plans:[Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;

    .line 1859
    :cond_42
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Sport_plans:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1860
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p1

    return p1
.end method

.method public sendTestRequestCommand(I)V
    .registers 7

    .line 1540
    new-instance v0, Lcn/baos/watch/w100/messages/CommandTestRequest;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/CommandTestRequest;-><init>()V

    .line 1541
    iput p1, v0, Lcn/baos/watch/w100/messages/CommandTestRequest;->test_function:I

    .line 1542
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 1544
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    return-void
.end method

.method public sendWeatherInfoToWatch(Lcn/baos/watch/sdk/entitiy/WeatherEntity;)Z
    .registers 8

    .line 1928
    new-instance v0, Lcn/baos/watch/w100/messages/Sensor_data_weather;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Sensor_data_weather;-><init>()V

    const-string v1, "\u82b1\u8c79\u63d0\u4f9b"

    .line 1929
    iput-object v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->provider:Ljava/lang/String;

    .line 1931
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getData()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;->getTodayWeather()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->getArea()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->location:Ljava/lang/String;

    .line 1932
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getData()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;->getTodayWeather()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->getWeatherType()I

    move-result v1

    iput v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->current_weather_type:I

    .line 1933
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getData()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;->getTodayWeather()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->getCurrentTemperature()I

    move-result v1

    iput v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->current_temperature:I

    .line 1934
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getData()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;->getTodayWeather()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->getMaxTemperature()I

    move-result v1

    iput v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->today_high_temperature:I

    .line 1935
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getData()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;->getTodayWeather()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->getMinTemperature()I

    move-result v1

    iput v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->today_low_temperature:I

    .line 1936
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getData()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;->getFutureWeather()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;

    iput-object v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->daily_Weathers:[Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;

    .line 1937
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int v1, v1

    iput v1, v0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->update_timestamp:I

    const/4 v1, 0x0

    .line 1938
    :goto_6a
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getData()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;

    move-result-object v2

    invoke-virtual {v2}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;->getFutureWeather()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_c0

    .line 1939
    new-instance v2, Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;

    invoke-direct {v2}, Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;-><init>()V

    .line 1940
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getData()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;->getFutureWeather()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;

    invoke-virtual {v5}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;->getWeatherType()I

    move-result v5

    iput v5, v2, Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;->weather_type:I

    .line 1941
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getData()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;->getFutureWeather()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;

    invoke-virtual {v5}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;->getMinTemperature()I

    move-result v5

    iput v5, v2, Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;->low_temperature:I

    .line 1942
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getData()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;

    move-result-object v5

    invoke-virtual {v5}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;->getFutureWeather()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;

    invoke-virtual {v5}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$FutureWeatherBean;->getMaxTemperature()I

    move-result v5

    iput v5, v2, Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;->high_temperature:I

    .line 1943
    iget-object v5, v0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->daily_Weathers:[Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;

    aput-object v2, v5, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_6a

    .line 1945
    :cond_c0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    div-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    .line 1946
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "sensor_data_weather:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1947
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    move-result p1

    return p1
.end method

.method public sendWeatherMeteorological(Lcn/baos/watch/sdk/entitiy/WeatherEntity;)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_59

    .line 1955
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getData()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;

    move-result-object v1

    if-eqz v1, :cond_59

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getData()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;->getTodayWeather()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;

    move-result-object v1

    if-eqz v1, :cond_59

    .line 1956
    new-instance v1, Lcn/baos/watch/w100/messages/Sensor_data_meteorological;

    invoke-direct {v1}, Lcn/baos/watch/w100/messages/Sensor_data_meteorological;-><init>()V

    .line 1957
    new-instance v2, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;

    invoke-direct {v2}, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;-><init>()V

    .line 1959
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getData()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;->getTodayWeather()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;

    move-result-object v3

    iget v3, v3, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->pressure:I

    mul-int/lit8 v3, v3, 0xa

    iput v3, v2, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->air_pressure:I

    .line 1963
    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getData()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean;->getTodayWeather()Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;

    move-result-object p1

    iget p1, p1, Lcn/baos/watch/sdk/entitiy/WeatherEntity$DataBean$TodayWeatherBean;->uvIndex:I

    iput p1, v2, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->UVI:I

    const/4 p1, 0x1

    new-array p1, p1, [Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;

    aput-object v2, p1, v0

    .line 1974
    iput-object p1, v1, Lcn/baos/watch/w100/messages/Sensor_data_meteorological;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;

    .line 1975
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "sendWeatherMeteorological:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1976
    invoke-virtual {p0, v1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    move-result p1

    return p1

    :cond_59
    return v0
.end method

.method public setContactInfo(Lcn/baos/watch/w100/messages/Common_contact_info;)Z
    .registers 4

    .line 2309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6e90\u751f->\u624b\u8868\u901a\u8baf\u5f55:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2310
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p1

    return p1
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 284
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setCrudClockListener(ILcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V
    .registers 3

    const/4 p1, 0x0

    .line 1720
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnCrudReminderDataListener:Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;

    .line 1721
    iput-object p2, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnCrudClockDataListener:Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;

    return-void
.end method

.method public setCrudReminderListener(ILcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V
    .registers 3

    .line 1740
    iput-object p2, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnCrudReminderDataListener:Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;

    return-void
.end method

.method public setDeviceLangeuage(II)Z
    .registers 4

    .line 1899
    new-instance p2, Lcn/baos/watch/w100/messages/Update_device_resource;

    invoke-direct {p2}, Lcn/baos/watch/w100/messages/Update_device_resource;-><init>()V

    const/high16 v0, 0x10000

    mul-int/2addr v0, p1

    .line 1900
    iput v0, p2, Lcn/baos/watch/w100/messages/Update_device_resource;->resource_id:I

    .line 1901
    iput p1, p2, Lcn/baos/watch/w100/messages/Update_device_resource;->location_index:I

    const/4 p1, 0x2

    .line 1902
    iput p1, p2, Lcn/baos/watch/w100/messages/Update_device_resource;->update_type:I

    .line 1903
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u6e90\u751f->\u8bbe\u7f6e\u8bed\u8a00:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1904
    invoke-virtual {p0, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    move-result p1

    return p1
.end method

.method public setMapTrace(Lcn/baos/watch/w100/messages/Sport_trace;)Z
    .registers 4

    .line 2334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6e90\u751f->\u8bbe\u7f6e\u5730\u56fe\u8f68\u8ff9:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2335
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    move-result p1

    return p1
.end method

.method public setMessageCallback(Lcn/baos/watch/sdk/manager/message/IMessageCallback;)V
    .registers 2

    .line 288
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mIMessageCallback:Lcn/baos/watch/sdk/manager/message/IMessageCallback;

    return-void
.end method

.method public setPrayerTime(Lcn/baos/watch/sdk/entitiy/PrayerTimeEntity;Lcn/baos/watch/sdk/interfac/moslem/OnMoslemListener;)Z
    .registers 4

    .line 2239
    iput-object p2, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnmoslemListener:Lcn/baos/watch/sdk/interfac/moslem/OnMoslemListener;

    .line 2240
    new-instance p2, Lcn/baos/watch/w100/messages/Prayer_time_params;

    invoke-direct {p2}, Lcn/baos/watch/w100/messages/Prayer_time_params;-><init>()V

    .line 2241
    iget v0, p1, Lcn/baos/watch/sdk/entitiy/PrayerTimeEntity;->calc_method:I

    iput v0, p2, Lcn/baos/watch/w100/messages/Prayer_time_params;->calc_method:I

    .line 2242
    iget v0, p1, Lcn/baos/watch/sdk/entitiy/PrayerTimeEntity;->asr_juristic:I

    iput v0, p2, Lcn/baos/watch/w100/messages/Prayer_time_params;->asr_juristic:I

    .line 2243
    iget v0, p1, Lcn/baos/watch/sdk/entitiy/PrayerTimeEntity;->adjust_high_lats:I

    iput v0, p2, Lcn/baos/watch/w100/messages/Prayer_time_params;->adjust_high_lats:I

    .line 2244
    iget v0, p1, Lcn/baos/watch/sdk/entitiy/PrayerTimeEntity;->reserve1:I

    iput v0, p2, Lcn/baos/watch/w100/messages/Prayer_time_params;->reserve1:I

    .line 2245
    iget v0, p1, Lcn/baos/watch/sdk/entitiy/PrayerTimeEntity;->fajr_angle:I

    iput v0, p2, Lcn/baos/watch/w100/messages/Prayer_time_params;->fajr_angle:I

    .line 2246
    iget v0, p1, Lcn/baos/watch/sdk/entitiy/PrayerTimeEntity;->maghrib_value:I

    iput v0, p2, Lcn/baos/watch/w100/messages/Prayer_time_params;->maghrib_value:I

    .line 2247
    iget v0, p1, Lcn/baos/watch/sdk/entitiy/PrayerTimeEntity;->isha_value:I

    iput v0, p2, Lcn/baos/watch/w100/messages/Prayer_time_params;->isha_value:I

    .line 2248
    iget v0, p1, Lcn/baos/watch/sdk/entitiy/PrayerTimeEntity;->maghrib_is_minutes:I

    iput v0, p2, Lcn/baos/watch/w100/messages/Prayer_time_params;->maghrib_is_minutes:I

    .line 2249
    iget v0, p1, Lcn/baos/watch/sdk/entitiy/PrayerTimeEntity;->reserve2:I

    iput v0, p2, Lcn/baos/watch/w100/messages/Prayer_time_params;->reserve2:I

    .line 2250
    iget p1, p1, Lcn/baos/watch/sdk/entitiy/PrayerTimeEntity;->isha_is_minutes:I

    iput p1, p2, Lcn/baos/watch/w100/messages/Prayer_time_params;->isha_is_minutes:I

    .line 2251
    invoke-virtual {p0, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p1

    return p1
.end method

.method public setQrImages(Lcn/baos/watch/sdk/entitiy/QrEntity;Lcn/baos/watch/sdk/interfac/moslem/OnQrImageListener;)Z
    .registers 4

    .line 2318
    iput-object p2, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnQrImageListener:Lcn/baos/watch/sdk/interfac/moslem/OnQrImageListener;

    .line 2320
    new-instance p2, Lcn/baos/watch/w100/messages/Set_qrcode;

    invoke-direct {p2}, Lcn/baos/watch/w100/messages/Set_qrcode;-><init>()V

    .line 2321
    iget v0, p1, Lcn/baos/watch/sdk/entitiy/QrEntity;->type:I

    iput v0, p2, Lcn/baos/watch/w100/messages/Set_qrcode;->type:I

    .line 2322
    iget-object p1, p1, Lcn/baos/watch/sdk/entitiy/QrEntity;->url:Ljava/lang/String;

    iput-object p1, p2, Lcn/baos/watch/w100/messages/Set_qrcode;->text:Ljava/lang/String;

    .line 2327
    invoke-virtual {p0, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p1

    return p1
.end method

.method public setSensorDataGps(Lcn/baos/watch/sdk/entitiy/PrayerGpsEntity;Lcn/baos/watch/sdk/interfac/moslem/OnMoslemGpsListener;)Z
    .registers 4

    .line 2259
    iput-object p2, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->mOnMoslemGpsListener:Lcn/baos/watch/sdk/interfac/moslem/OnMoslemGpsListener;

    .line 2260
    new-instance p2, Lcn/baos/watch/w100/messages/Sensor_data_gps1;

    invoke-direct {p2}, Lcn/baos/watch/w100/messages/Sensor_data_gps1;-><init>()V

    .line 2261
    iget v0, p1, Lcn/baos/watch/sdk/entitiy/PrayerGpsEntity;->latitude:I

    iput v0, p2, Lcn/baos/watch/w100/messages/Sensor_data_gps1;->latitude:I

    .line 2262
    iget v0, p1, Lcn/baos/watch/sdk/entitiy/PrayerGpsEntity;->longitude:I

    iput v0, p2, Lcn/baos/watch/w100/messages/Sensor_data_gps1;->longitude:I

    .line 2263
    iget v0, p1, Lcn/baos/watch/sdk/entitiy/PrayerGpsEntity;->satellite_count:I

    iput v0, p2, Lcn/baos/watch/w100/messages/Sensor_data_gps1;->satellite_count:I

    .line 2264
    iget p1, p1, Lcn/baos/watch/sdk/entitiy/PrayerGpsEntity;->reserve:I

    iput p1, p2, Lcn/baos/watch/w100/messages/Sensor_data_gps1;->reserve:I

    .line 2265
    invoke-virtual {p0, p2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    move-result p1

    return p1
.end method

.method public setSppTransLateData(Z)V
    .registers 2

    .line 268
    iput-boolean p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->sppTransLateData:Z

    return-void
.end method

.method public setSwitchRaiseWristLightUp(Z)Z
    .registers 4

    .line 1705
    new-instance v0, Lcn/baos/watch/w100/messages/Wrist_lightup_config;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Wrist_lightup_config;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_c

    const/4 p1, 0x1

    .line 1707
    iput p1, v0, Lcn/baos/watch/w100/messages/Wrist_lightup_config;->is_enable:I

    goto :goto_e

    .line 1709
    :cond_c
    iput v1, v0, Lcn/baos/watch/w100/messages/Wrist_lightup_config;->is_enable:I

    .line 1711
    :goto_e
    iput v1, v0, Lcn/baos/watch/w100/messages/Wrist_lightup_config;->begin_hour:I

    const/16 p1, 0x18

    .line 1712
    iput p1, v0, Lcn/baos/watch/w100/messages/Wrist_lightup_config;->duration_hours:I

    .line 1713
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p1

    return p1
.end method

.method public setWorldTimeInfo(Lcn/baos/watch/w100/messages/World_clock_config;)Z
    .registers 4

    .line 2285
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6e90\u751f->\u4e16\u754c\u65f6\u95f4:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 2286
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p1

    return p1
.end method

.method public timeSyncToWatch(I)V
    .registers 2

    .line 1133
    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->timeFromLocal(I)V

    return-void
.end method

.method public timeSyncToWatch(IJI)V
    .registers 8

    .line 1144
    new-instance v0, Lcn/baos/watch/w100/messages/CommandTimeSync;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/CommandTimeSync;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->customerCommandTimeSync:Lcn/baos/watch/w100/messages/CommandTimeSync;

    .line 1145
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u81ea\u5b9a\u4e49\u540c\u6b65\u65f6\u95f4\u6233:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",syncId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1146
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->customerCommandTimeSync:Lcn/baos/watch/w100/messages/CommandTimeSync;

    const-wide/16 v1, 0x3e8

    div-long/2addr p2, v1

    long-to-int p2, p2

    iput p2, v0, Lcn/baos/watch/w100/messages/CommandTimeSync;->timestamp:I

    .line 1147
    iget-object p2, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->customerCommandTimeSync:Lcn/baos/watch/w100/messages/CommandTimeSync;

    const/4 p3, 0x1

    iput p3, p2, Lcn/baos/watch/w100/messages/CommandTimeSync;->tv_nsec:I

    .line 1148
    iget-object p2, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->customerCommandTimeSync:Lcn/baos/watch/w100/messages/CommandTimeSync;

    iput p1, p2, Lcn/baos/watch/w100/messages/CommandTimeSync;->sync_id:I

    .line 1149
    iget-object p2, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->customerCommandTimeSync:Lcn/baos/watch/w100/messages/CommandTimeSync;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcn/baos/watch/w100/messages/CommandTimeSync;->time_zone:Ljava/lang/String;

    .line 1150
    iget-object p2, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->customerCommandTimeSync:Lcn/baos/watch/w100/messages/CommandTimeSync;

    sget-object p3, Lcn/baos/message/CatagoryEnum;->classCatagoryMap:Ljava/util/Map;

    iget-object p4, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->customerCommandTimeSync:Lcn/baos/watch/w100/messages/CommandTimeSync;

    iget p4, p4, Lcn/baos/watch/w100/messages/CommandTimeSync;->catagory:I

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-static {p2, p3}, Lcn/baos/watch/sdk/manager/message/MessageManager;->makeMessageToSend(Lcn/baos/watch/w100/messages/MessageBase;Ljava/lang/String;)V

    if-eqz p1, :cond_59

    .line 1152
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/message/MessageManager;->customerCommandTimeSync:Lcn/baos/watch/w100/messages/CommandTimeSync;

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    goto :goto_5e

    :cond_59
    const-string p1, "syncId\u4e0d\u80fd\u4e3a0"

    .line 1154
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    :goto_5e
    return-void
.end method
