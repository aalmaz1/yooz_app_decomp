.class public Lcn/baos/watch/sdk/BasSdk;
.super Ljava/lang/Object;
.source "BasSdk.java"


# static fields
.field private static iBleClientSdkCallback:Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

.field private static iMessageCallback:Lcn/baos/watch/sdk/manager/message/IMessageCallback;

.field private static mConnectListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/baos/watch/sdk/manager/api/ConnectListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mCtx:Landroid/content/Context;

.field private static mDeviceCallBacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/baos/watch/sdk/manager/api/DeviceCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private static mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

.field private static mScannerListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/baos/watch/sdk/manager/api/ScannerListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mSensor_data_daily_active_sum:Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

.field private static mSensor_data_daily_hrate:Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;

.field private static mSensor_data_daily_spo:Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmConnectListeners()Ljava/util/List;
    .registers 1

    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mConnectListeners:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmDeviceCallBacks()Ljava/util/List;
    .registers 1

    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mDeviceCallBacks:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmScannerListeners()Ljava/util/List;
    .registers 1

    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mScannerListeners:Ljava/util/List;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfputmSensor_data_daily_active_sum(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;)V
    .registers 1

    sput-object p0, Lcn/baos/watch/sdk/BasSdk;->mSensor_data_daily_active_sum:Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmSensor_data_daily_hrate(Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;)V
    .registers 1

    sput-object p0, Lcn/baos/watch/sdk/BasSdk;->mSensor_data_daily_hrate:Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmSensor_data_daily_spo(Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;)V
    .registers 1

    sput-object p0, Lcn/baos/watch/sdk/BasSdk;->mSensor_data_daily_spo:Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/baos/watch/sdk/BasSdk;->mConnectListeners:Ljava/util/List;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/baos/watch/sdk/BasSdk;->mScannerListeners:Ljava/util/List;

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/baos/watch/sdk/BasSdk;->mDeviceCallBacks:Ljava/util/List;

    .line 132
    new-instance v0, Lcn/baos/watch/sdk/BasSdk$1;

    invoke-direct {v0}, Lcn/baos/watch/sdk/BasSdk$1;-><init>()V

    sput-object v0, Lcn/baos/watch/sdk/BasSdk;->iBleClientSdkCallback:Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    .line 228
    new-instance v0, Lcn/baos/watch/sdk/BasSdk$2;

    invoke-direct {v0}, Lcn/baos/watch/sdk/BasSdk$2;-><init>()V

    sput-object v0, Lcn/baos/watch/sdk/BasSdk;->iMessageCallback:Lcn/baos/watch/sdk/manager/message/IMessageCallback;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAlarm(Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V
    .registers 3

    .line 728
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;->addAlarm(Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V

    return-void
.end method

.method public static addConnectListener(Lcn/baos/watch/sdk/manager/api/ConnectListener;)V
    .registers 2

    if-eqz p0, :cond_7

    .line 392
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mConnectListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public static addDeviceCallBack(Lcn/baos/watch/sdk/manager/api/DeviceCallBack;)V
    .registers 2

    if-eqz p0, :cond_7

    .line 412
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mDeviceCallBacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public static addOneMessageNotify(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)Z
    .registers 2

    .line 1199
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->insertNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static addReminder(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V
    .registers 3

    .line 699
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;->addReminder(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V

    return-void
.end method

.method public static addScannerListener(Lcn/baos/watch/sdk/manager/api/ScannerListener;)V
    .registers 2

    if-eqz p0, :cond_7

    .line 360
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mScannerListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public static bindDevice(Ljava/lang/String;Lcn/baos/watch/sdk/manager/api/BindStatusCallback;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method

.method public static checkPermissions(Ljava/lang/String;)Z
    .registers 6

    .line 1408
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x17

    const/4 v2, 0x1

    if-ge v0, v1, :cond_24

    .line 1409
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    sget-object v4, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    .line 1410
    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 1409
    invoke-static {v0, p0, v1, v3, v4}, Landroidx/core/content/PermissionChecker;->checkPermission(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_24

    return v2

    .line 1414
    :cond_24
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->checkSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v2, 0x0

    :goto_2e
    return v2
.end method

.method public static connectDevice(Ljava/lang/String;)V
    .registers 3

    .line 433
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->startConnect(Ljava/lang/String;Z)Z

    return-void
.end method

.method public static deleteAlarm(Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V
    .registers 3

    .line 735
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;->deleteAlarm(Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V

    return-void
.end method

.method public static deleteReminder(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V
    .registers 3

    .line 706
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;->deleteReminder(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V

    return-void
.end method

.method public static disConnectDevice()V
    .registers 1

    .line 443
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->disconnect()V

    return-void
.end method

.method public static findDevice(I)V
    .registers 2

    .line 1389
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->findDevice(I)Z

    return-void
.end method

.method public static findMobile(Z)Z
    .registers 3

    .line 1127
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    const-string v1, "KEY_WATCH_FIND_PHONE_SWITCH"

    invoke-virtual {v0, v1, p0}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public static generateWallBin(Lcn/baos/watch/w100/messages/Device_base_info;Ljava/lang/String;ZIIIII)Ljava/lang/String;
    .registers 19

    move-object v0, p0

    move/from16 v1, p5

    .line 1028
    new-instance v4, Lcn/baos/watch/w100/messages/Wallpaper_info;

    invoke-direct {v4}, Lcn/baos/watch/w100/messages/Wallpaper_info;-><init>()V

    .line 1030
    new-instance v2, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    invoke-direct {v2}, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;-><init>()V

    .line 1031
    invoke-static {p3}, Landroid/graphics/Color;->alpha(I)I

    move-result v3

    iput v3, v2, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->alpha:I

    .line 1032
    invoke-static {p3}, Landroid/graphics/Color;->red(I)I

    move-result v3

    iput v3, v2, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->red:I

    .line 1033
    invoke-static {p3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    iput v3, v2, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->green:I

    .line 1034
    invoke-static {p3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    iput v3, v2, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->blue:I

    .line 1035
    iput-object v2, v4, Lcn/baos/watch/w100/messages/Wallpaper_info;->bgColor:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    const/4 v2, 0x2

    new-array v3, v2, [Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    .line 1037
    iput-object v3, v4, Lcn/baos/watch/w100/messages/Wallpaper_info;->controls:[Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    .line 1038
    new-instance v3, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;-><init>()V

    const/4 v5, 0x1

    .line 1039
    iput v5, v3, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->id:I

    .line 1040
    new-instance v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    invoke-direct {v6}, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;-><init>()V

    .line 1041
    iput v2, v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->id:I

    .line 1042
    iget-object v2, v4, Lcn/baos/watch/w100/messages/Wallpaper_info;->controls:[Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    const/4 v7, 0x0

    aput-object v3, v2, v7

    .line 1043
    iget-object v2, v4, Lcn/baos/watch/w100/messages/Wallpaper_info;->controls:[Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    aput-object v6, v2, v5

    .line 1045
    new-instance v2, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    invoke-direct {v2}, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;-><init>()V

    .line 1046
    iput-object v2, v3, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    .line 1047
    iput-object v2, v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    .line 1048
    invoke-static {p4}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    iput v8, v2, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->alpha:I

    .line 1049
    invoke-static {p4}, Landroid/graphics/Color;->red(I)I

    move-result v8

    iput v8, v2, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->red:I

    .line 1050
    invoke-static {p4}, Landroid/graphics/Color;->green(I)I

    move-result v8

    iput v8, v2, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->green:I

    .line 1051
    invoke-static {p4}, Landroid/graphics/Color;->blue(I)I

    move-result v8

    iput v8, v2, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->blue:I

    if-eqz p2, :cond_6c

    .line 1054
    iput v5, v3, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->visible:I

    .line 1055
    iput v5, v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->visible:I

    goto :goto_70

    .line 1057
    :cond_6c
    iput v7, v3, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->visible:I

    .line 1058
    iput v7, v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->visible:I

    :goto_70
    const/16 v2, 0x12

    if-nez v1, :cond_81

    .line 1063
    iput v2, v3, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->left:I

    .line 1064
    iput v2, v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->left:I

    const/16 v1, 0x14

    .line 1065
    iput v1, v3, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->top:I

    const/16 v1, 0x41

    .line 1066
    iput v1, v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->top:I

    goto :goto_9c

    :cond_81
    if-ne v1, v5, :cond_90

    .line 1069
    iput v2, v3, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->left:I

    .line 1070
    iput v2, v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->left:I

    const/16 v1, 0x5a

    .line 1071
    iput v1, v3, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->top:I

    const/16 v1, 0x87

    .line 1072
    iput v1, v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->top:I

    goto :goto_9c

    .line 1075
    :cond_90
    iput v2, v3, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->left:I

    .line 1076
    iput v2, v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->left:I

    const/16 v1, 0xac

    .line 1077
    iput v1, v3, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->top:I

    const/16 v1, 0xd9

    .line 1078
    iput v1, v6, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->top:I

    .line 1081
    :goto_9c
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u8868\u76d8json\u5b9e\u4f53\u7ed3\u6784:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1090
    new-instance v7, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;

    invoke-direct {v7}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;-><init>()V

    .line 1092
    invoke-static {}, Lcn/baos/watch/sdk/util/DialPackageUtils;->packageHeader()[B

    move-result-object v8

    .line 1095
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6253\u5305\u8868\u76d8\u53c2\u6570\u6e90\u751f\u7aef-\u8868\u76d8json:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1096
    invoke-static {v4}, Lcn/baos/watch/sdk/manager/message/MessageManager;->packMessage(Lcn/baos/message/Serializable;)[B

    move-result-object v9

    .line 1097
    invoke-static {v9}, Lcn/baos/watch/sdk/manager/message/MessageManager;->unpackMessage([B)Lcn/baos/message/Serializable;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/w100/messages/Wallpaper_info;

    .line 1098
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u6253\u5305\u8868\u76d8\u53c2\u6570\u6e90\u751f\u7aef-\u8868\u76d8json-unpack:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1101
    sget-object v1, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    move-object v2, p1

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual {v7, v1, p1, v5, v6}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->compressImage240280(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v10

    .line 1103
    sget-object v2, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    move-object v1, v7

    move-object v3, v10

    invoke-virtual/range {v1 .. v6}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->drawControlOnCompressed(Landroid/content/Context;Ljava/lang/String;Lcn/baos/watch/w100/messages/Wallpaper_info;II)Ljava/lang/String;

    move-result-object v1

    .line 1105
    sget-object v2, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    invoke-virtual {v7, v2, v1}, Lcn/baos/watch/sdk/manager/packageAlbumDial/WatchImageUtil;->compressImage152176(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1107
    invoke-static {}, Lcn/baos/watch/sdk/util/DialPackageUtils;->packageLayoutMagic()[B

    move-result-object v2

    .line 1109
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "\u6253\u5305\u8868\u76d8\u53c2\u6570\u6e90\u751f\u7aef\uff0cheader:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v8}, Lcn/baos/watch/sdk/util/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u6587\u4ef6\u5730\u5740:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u9884\u89c8\u6587\u4ef6\u5730\u5740:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " layoutMagic:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v2}, Lcn/baos/watch/sdk/util/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " \u624b\u8868\u4fe1\u606f:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v4, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1113
    new-instance v3, Lcn/baos/watch/sdk/manager/packageAlbumDial/PackageAlbumDialUtil;

    invoke-direct {v3}, Lcn/baos/watch/sdk/manager/packageAlbumDial/PackageAlbumDialUtil;-><init>()V

    .line 1114
    sget-object v4, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    move-object p1, v3

    move-object p2, v8

    move-object p3, v1

    move-object p4, v10

    move-object/from16 p5, v2

    move-object/from16 p6, v9

    invoke-virtual/range {p1 .. p6}, Lcn/baos/watch/sdk/manager/packageAlbumDial/PackageAlbumDialUtil;->packageAlbumDial([BLjava/lang/String;Ljava/lang/String;[B[B)[B

    move-result-object v1

    invoke-virtual {v3, v4, p0, v1}, Lcn/baos/watch/sdk/manager/packageAlbumDial/PackageAlbumDialUtil;->saveAlbumByteLocal(Landroid/content/Context;Lcn/baos/watch/w100/messages/Device_base_info;[B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getBatteryInfo(Lcn/baos/watch/sdk/interfac/watchbattery/OnWatchBatteryListener;)Z
    .registers 2

    .line 559
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getWatchBattery(Lcn/baos/watch/sdk/interfac/watchbattery/OnWatchBatteryListener;)Z

    move-result p0

    return p0
.end method

.method public static getContactInfo(Lcn/baos/watch/sdk/interfac/contact/OnContactListener;)Z
    .registers 2

    .line 1221
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getContactInfo(Lcn/baos/watch/sdk/interfac/contact/OnContactListener;)Z

    move-result p0

    return p0
.end method

.method public static getNotificationAppList()Ljava/util/ArrayList;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;",
            ">;"
        }
    .end annotation

    .line 1178
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getAllNotification()Ljava/util/ArrayList;

    move-result-object v0

    .line 1179
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6d88\u606f\u901a\u77e5->\u83b7\u53d6\u6240\u6709app\u5217\u8868:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getRealTimeDailyActiveData()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;
    .registers 1

    .line 779
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mSensor_data_daily_active_sum:Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    return-object v0
.end method

.method public static getRealTimeDailySpoData()Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;
    .registers 1

    .line 787
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mSensor_data_daily_spo:Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;

    return-object v0
.end method

.method public static getRealTimeHeartRateData()Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;
    .registers 1

    .line 783
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mSensor_data_daily_hrate:Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;

    return-object v0
.end method

.method public static getWatchInfo(Lcn/baos/watch/sdk/interfac/watchinfo/OnWatchInfoListener;)Z
    .registers 2

    .line 550
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getWatchInfo(Lcn/baos/watch/sdk/interfac/watchinfo/OnWatchInfoListener;)Z

    move-result p0

    return p0
.end method

.method public static initSdk(Landroid/content/Context;)V
    .registers 3

    .line 314
    sput-object p0, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    .line 315
    new-instance v0, Lcn/baos/watch/sdk/util/LogcatThread;

    sget-object v1, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/baos/watch/sdk/util/LogcatThread;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/baos/watch/sdk/BasSdk;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    .line 317
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->setContext(Landroid/content/Context;)V

    .line 318
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->setContext(Landroid/content/Context;)V

    .line 319
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sporthrate/SportHeartManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sporthrate/SportHeartManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sporthrate/SportHeartManager;->setContext(Landroid/content/Context;)V

    .line 320
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->setContext(Landroid/content/Context;)V

    .line 321
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;->setContext(Landroid/content/Context;)V

    .line 322
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->setContext(Landroid/content/Context;)V

    .line 323
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneManager;->setContext(Landroid/content/Context;)V

    .line 324
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->setContext(Landroid/content/Context;)V

    .line 325
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->setContext(Landroid/content/Context;)V

    .line 326
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyrhr/DailyRhrManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyrhr/DailyRhrManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyrhr/DailyRhrManager;->setContext(Landroid/content/Context;)V

    .line 327
    invoke-static {}, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->getInstance()Lcn/baos/watch/sdk/database/contacts/ContactsManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/database/contacts/ContactsManager;->setContext(Landroid/content/Context;)V

    .line 329
    invoke-static {}, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->getInstance()Lcn/baos/watch/sdk/util/LocalAudioPlayManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->setContext(Landroid/content/Context;)V

    .line 331
    invoke-static {}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->getInstance()Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    move-result-object p0

    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->setContext(Landroid/content/Context;)V

    .line 335
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object p0

    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->init(Landroid/content/Context;)V

    .line 336
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p0

    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->iBleClientSdkCallback:Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->setIBleClientSdkCallback(Lcn/baos/watch/sdk/interfac/ble/IBleClientSdkCallback;)V

    .line 340
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p0

    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setContext(Landroid/content/Context;)V

    .line 341
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p0

    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->iMessageCallback:Lcn/baos/watch/sdk/manager/message/IMessageCallback;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setMessageCallback(Lcn/baos/watch/sdk/manager/message/IMessageCallback;)V

    return-void
.end method

.method public static isKeepLive()Z
    .registers 2

    const-string v0, "android.permission.ACCESS_COARSE_LOCATION"

    .line 1395
    invoke-static {v0}, Lcn/baos/watch/sdk/BasSdk;->checkPermissions(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    .line 1398
    invoke-static {v1}, Lcn/baos/watch/sdk/BasSdk;->checkPermissions(Ljava/lang/String;)Z

    move-result v1

    if-eqz v0, :cond_12

    if-eqz v1, :cond_12

    const/4 v0, 0x1

    return v0

    :cond_12
    const/4 v0, 0x0

    return v0
.end method

.method public static local()Ljava/lang/String;
    .registers 3

    .line 1356
    :try_start_0
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    if-eqz v0, :cond_18

    .line 1358
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    if-eqz v0, :cond_3f

    .line 1363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3a} :catch_3b

    return-object v0

    :catch_3b
    move-exception v0

    .line 1366
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3f
    const-string v0, ""

    return-object v0
.end method

.method public static logSdkVersion()V
    .registers 3

    const-string v0, "--sdk-version-info-"

    const-string v1, "SDK: "

    .line 1376
    :try_start_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nVersion Name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\nAndroid Version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1379
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception v0

    .line 1381
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_40
    return-void
.end method

.method public static musicControl(ZLandroid/app/Activity;)Z
    .registers 5

    const/4 v0, 0x1

    if-eqz p0, :cond_e

    .line 1142
    :try_start_3
    invoke-static {}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->getInstance()Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->requestRebindNotificationService(Landroid/content/Context;)Z

    move-result v0

    goto :goto_e

    :catch_c
    move-exception p1

    goto :goto_1a

    :cond_e
    :goto_e
    if-eqz v0, :cond_3a

    .line 1145
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object p1

    const-string v1, "KEY_WATCH_MUSIC_SWITCH"

    invoke-virtual {p1, v1, p0}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Z)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_19} :catch_c

    goto :goto_3a

    .line 1148
    :goto_1a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "musicControl\u5931\u8d25\uff0cisOpen="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ",\u5f02\u5e38\uff1a"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_3a
    :goto_3a
    return v0
.end method

.method public static queryAlarm(Lcn/baos/watch/sdk/interfac/clock/OnGetClockDataListener;)V
    .registers 2

    .line 750
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;->requestClockListToWatch(Lcn/baos/watch/sdk/interfac/clock/OnGetClockDataListener;)V

    return-void
.end method

.method public static queryDailyActiveSumData(Ljava/util/Date;Ljava/util/Date;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;",
            ">;"
        }
    .end annotation

    .line 892
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;

    move-result-object v0

    .line 893
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p0, v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v3

    long-to-int p1, v1

    invoke-virtual {v0, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->queryDailyActiveInInterval(II)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static queryDailyBloodOxygenData(Ljava/util/Date;Ljava/util/Date;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;",
            ">;"
        }
    .end annotation

    .line 952
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;

    move-result-object v0

    .line 953
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p0, v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v3

    long-to-int p1, v1

    invoke-virtual {v0, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoManager;->queryDailySpoInInterval(II)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static queryDailyHeartRateData(Ljava/util/Date;Ljava/util/Date;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;",
            ">;"
        }
    .end annotation

    .line 904
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;

    move-result-object v0

    .line 905
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p0, v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v3

    long-to-int p1, v1

    invoke-virtual {v0, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateManager;->queryDailyHrateInInterval(II)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static queryDailyResetHeartRateData(Ljava/util/Date;Ljava/util/Date;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;",
            ">;"
        }
    .end annotation

    .line 940
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyrhr/DailyRhrManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyrhr/DailyRhrManager;

    move-result-object v0

    .line 941
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p0, v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v3

    long-to-int p1, v1

    invoke-virtual {v0, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyrhr/DailyRhrManager;->queryDailyRhrInInterval(II)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static queryDailySleepSumData(Ljava/util/Date;Ljava/util/Date;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;",
            ">;"
        }
    .end annotation

    .line 916
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p0, v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v3

    long-to-int p1, v1

    invoke-virtual {v0, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsManager;->querySleepStatsInInterval(II)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static queryReminder(Lcn/baos/watch/w100/messages/QueryReminder;Lcn/baos/watch/sdk/interfac/reminder/OnGetReminderDataListener;)V
    .registers 3

    .line 721
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;->requestReminderListToWatch(Lcn/baos/watch/w100/messages/QueryReminder;Lcn/baos/watch/sdk/interfac/reminder/OnGetReminderDataListener;)V

    return-void
.end method

.method public static querySleepStatusData(Ljava/util/Date;Ljava/util/Date;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstatus/SleepStatusEntity;",
            ">;"
        }
    .end annotation

    .line 986
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p0, v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v3

    long-to-int p1, v1

    invoke-virtual {v0, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusManager;->querySleepStatusInInterval(II)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static querySportData(Ljava/util/Date;Ljava/util/Date;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;",
            ">;"
        }
    .end annotation

    .line 927
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;

    move-result-object v0

    .line 928
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p0, v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v3

    long-to-int p1, v1

    invoke-virtual {v0, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportrecord/SportRecordFromWatchManager;->querySportRecordFromWatchInInterval(II)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static querySportHeartRateData(Ljava/util/Date;Ljava/util/Date;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;",
            ">;"
        }
    .end annotation

    .line 975
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sporthrate/SportHeartManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sporthrate/SportHeartManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p0, v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v3

    long-to-int p1, v1

    invoke-virtual {v0, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sporthrate/SportHeartManager;->querySportHrateInInterval(II)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static querySportModeData(Ljava/util/Date;Ljava/util/Date;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;",
            ">;"
        }
    .end annotation

    .line 964
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;

    move-result-object v0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    long-to-int p0, v1

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    div-long/2addr v1, v3

    long-to-int p1, v1

    invoke-virtual {v0, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/sportmode/SportModeManager;->querySportModeInInterval(II)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public static registerKeepLive(Landroid/content/Context;)V
    .registers 1

    return-void
.end method

.method public static removeConnectListener(Lcn/baos/watch/sdk/manager/api/ConnectListener;)V
    .registers 2

    if-eqz p0, :cond_7

    .line 403
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mConnectListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public static removeDeviceCallBack(Lcn/baos/watch/sdk/manager/api/DeviceCallBack;)V
    .registers 2

    if-eqz p0, :cond_7

    .line 421
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mDeviceCallBacks:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public static removeScannerListener(Lcn/baos/watch/sdk/manager/api/ScannerListener;)V
    .registers 2

    if-eqz p0, :cond_7

    .line 371
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mScannerListeners:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_7
    return-void
.end method

.method public static responseTimeModify()V
    .registers 2

    .line 657
    new-instance v0, Lcn/baos/watch/w100/messages/Action_sync;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Action_sync;-><init>()V

    const/16 v1, 0x8

    .line 658
    iput v1, v0, Lcn/baos/watch/w100/messages/Action_sync;->action_type:I

    .line 659
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    return-void
.end method

.method public static responseTimeZoneModify()V
    .registers 2

    .line 666
    new-instance v0, Lcn/baos/watch/w100/messages/Action_sync;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Action_sync;-><init>()V

    const/4 v1, 0x7

    .line 667
    iput v1, v0, Lcn/baos/watch/w100/messages/Action_sync;->action_type:I

    .line 668
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    return-void
.end method

.method public static sendSensorGpsData(Lcn/baos/watch/w100/messages/Sensor_data_gps;)Z
    .registers 2

    .line 691
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    move-result p0

    return p0
.end method

.method public static setAllMessageNotifyEnable(ZLandroid/app/Activity;)Z
    .registers 4

    if-eqz p0, :cond_b

    .line 1162
    invoke-static {}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->getInstance()Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/manager/notification/NotificationHuabaoManager;->requestRebindNotificationService(Landroid/content/Context;)Z

    move-result p1

    goto :goto_c

    :cond_b
    const/4 p1, 0x1

    :goto_c
    if-eqz p1, :cond_34

    .line 1165
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v0

    const-string v1, "notificationManageKey"

    invoke-virtual {v0, v1, p0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->saveCheckStateLightDb(Ljava/lang/String;Z)V

    .line 1166
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6d88\u606f\u901a\u77e5->\u8bbe\u7f6e\u603b\u5f00\u5173\u72b6\u6001:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1168
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->updateAllNotifications(Z)V

    :cond_34
    return p1
.end method

.method public static setContactInfo(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/baos/watch/sdk/entitiy/ContactInfoEntity;",
            ">;)Z"
        }
    .end annotation

    .line 1237
    new-instance v0, Lcn/baos/watch/w100/messages/Common_contact_info;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Common_contact_info;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p0, :cond_4d

    .line 1239
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_4d

    .line 1240
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, v2

    new-array v2, v3, [Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;

    .line 1241
    :goto_16
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_56

    if-nez v1, :cond_25

    .line 1243
    new-instance v3, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;-><init>()V

    .line 1244
    aput-object v3, v2, v1

    .line 1246
    :cond_25
    new-instance v3, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;-><init>()V

    .line 1247
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/entitiy/ContactInfoEntity;

    iget-object v4, v4, Lcn/baos/watch/sdk/entitiy/ContactInfoEntity;->name:Ljava/lang/String;

    iput-object v4, v3, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;->name:Ljava/lang/String;

    .line 1248
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/entitiy/ContactInfoEntity;

    iget v4, v4, Lcn/baos/watch/sdk/entitiy/ContactInfoEntity;->flag:I

    iput v4, v3, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;->flag:I

    .line 1249
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/entitiy/ContactInfoEntity;

    iget-object v4, v4, Lcn/baos/watch/sdk/entitiy/ContactInfoEntity;->number:Ljava/lang/String;

    iput-object v4, v3, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;->number:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    .line 1250
    aput-object v3, v2, v1

    goto :goto_16

    .line 1253
    :cond_4d
    new-instance p0, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;

    invoke-direct {p0}, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;-><init>()V

    new-array v2, v2, [Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;

    aput-object p0, v2, v1

    .line 1257
    :cond_56
    iput-object v2, v0, Lcn/baos/watch/w100/messages/Common_contact_info;->contacts:[Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;

    .line 1259
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "=commonContactInfo="

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setContactInfo(Lcn/baos/watch/w100/messages/Common_contact_info;)Z

    move-result p0

    return p0
.end method

.method public static setHealthMeasureConfig(Lcn/baos/watch/w100/messages/Health_measure_config;)Z
    .registers 3

    .line 601
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5fc3\u7387\u68c0\u6d4b:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 602
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p0

    return p0
.end method

.method public static setLogDir(Ljava/lang/String;)V
    .registers 2

    .line 769
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/util/LogcatThread;->setLogDir(Ljava/lang/String;)V

    return-void
.end method

.method public static setLogEnable(Z)V
    .registers 1

    if-eqz p0, :cond_8

    .line 761
    sget-object p0, Lcn/baos/watch/sdk/BasSdk;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    invoke-virtual {p0}, Lcn/baos/watch/sdk/util/LogcatThread;->startThread()V

    goto :goto_d

    .line 763
    :cond_8
    sget-object p0, Lcn/baos/watch/sdk/BasSdk;->mLogcatThread:Lcn/baos/watch/sdk/util/LogcatThread;

    invoke-virtual {p0}, Lcn/baos/watch/sdk/util/LogcatThread;->endThread()V

    :goto_d
    return-void
.end method

.method public static setMenstrualRemind(Lcn/baos/watch/w100/messages/Menstrual_remind_config;)Z
    .registers 3

    .line 584
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5973\u6027\u5065\u5eb7:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 585
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p0

    return p0
.end method

.method public static setNotDisturb(Lcn/baos/watch/w100/messages/Not_disturb_config;)Z
    .registers 3

    .line 592
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u52ff\u6270\u6a21\u5f0f:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 593
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p0

    return p0
.end method

.method public static setOneMessageNotifyEnable(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)Z
    .registers 2

    .line 1190
    sget-object v0, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->getInstance(Landroid/content/Context;)Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/notification/db/NotificationDbManager;->updateNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static setPrayerGps(Lcn/baos/watch/sdk/entitiy/PrayerGpsEntity;Lcn/baos/watch/sdk/interfac/moslem/OnMoslemGpsListener;)Z
    .registers 3

    .line 1214
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setSensorDataGps(Lcn/baos/watch/sdk/entitiy/PrayerGpsEntity;Lcn/baos/watch/sdk/interfac/moslem/OnMoslemGpsListener;)Z

    move-result p0

    return p0
.end method

.method public static setPrayerTime(Lcn/baos/watch/sdk/entitiy/PrayerTimeEntity;Lcn/baos/watch/sdk/interfac/moslem/OnMoslemListener;)Z
    .registers 3

    .line 1207
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setPrayerTime(Lcn/baos/watch/sdk/entitiy/PrayerTimeEntity;Lcn/baos/watch/sdk/interfac/moslem/OnMoslemListener;)Z

    move-result p0

    return p0
.end method

.method public static setQrImages(Lcn/baos/watch/sdk/entitiy/QrEntity;Lcn/baos/watch/sdk/interfac/moslem/OnQrImageListener;)Z
    .registers 3

    .line 1267
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setQrImages(Lcn/baos/watch/sdk/entitiy/QrEntity;Lcn/baos/watch/sdk/interfac/moslem/OnQrImageListener;)Z

    move-result p0

    return p0
.end method

.method public static setRaiseLightUpSwitch(Z)Z
    .registers 2

    .line 634
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setSwitchRaiseWristLightUp(Z)Z

    move-result p0

    return p0
.end method

.method public static setRegularRemind(Lcn/baos/watch/w100/messages/Regular_remind_config;)Z
    .registers 3

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5e38\u89c4\u63d0\u9192:\u559d\u6c34\u3001\u6d17\u624b:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 575
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p0

    return p0
.end method

.method public static setSedentaryReminder(Lcn/baos/watch/w100/messages/Sedentary_monitor_config;)Z
    .registers 3

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4e45\u5750\u63d0\u9192:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 567
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p0

    return p0
.end method

.method public static setSensorDataGps(Lcn/baos/watch/w100/messages/Sensor_data_gps_base;)Z
    .registers 3

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u8bbe\u7f6e\u7ecf\u7eac\u5ea6 Sensor_data_gps_base:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1230
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    move-result p0

    return p0
.end method

.method public static setTime(JI)V
    .registers 4

    .line 650
    invoke-static {}, Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;->getInstance()Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/baos/watch/sdk/manager/TimeSyncCacheManager;->timeSyncToWatch(JI)V

    return-void
.end method

.method public static setTimeFormat(I)Z
    .registers 3

    .line 677
    new-instance v0, Lcn/baos/watch/w100/messages/Action_sync;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Action_sync;-><init>()V

    const/16 v1, 0x9

    .line 678
    iput v1, v0, Lcn/baos/watch/w100/messages/Action_sync;->action_type:I

    if-nez p0, :cond_10

    const/16 p0, 0xc

    .line 680
    iput p0, v0, Lcn/baos/watch/w100/messages/Action_sync;->action_param:I

    goto :goto_14

    :cond_10
    const/16 p0, 0x18

    .line 682
    iput p0, v0, Lcn/baos/watch/w100/messages/Action_sync;->action_param:I

    .line 684
    :goto_14
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p0

    return p0
.end method

.method public static setUserInfo(Lcn/baos/watch/w100/messages/User_info_config;)Z
    .registers 3

    .line 642
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4e2a\u4eba\u4fe1\u606f\u4fee\u6539-\u53d1\u9001\u7ed9\u624b\u8868:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 643
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    move-result p0

    return p0
.end method

.method public static setWeather(Lcn/baos/watch/sdk/entitiy/WeatherEntity;)Z
    .registers 3

    const-string v0, "0"

    .line 621
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->setCode(Ljava/lang/String;)V

    if-eqz p0, :cond_20

    .line 622
    invoke-virtual {p0}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getCode()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Lcn/baos/watch/sdk/entitiy/WeatherEntity;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 623
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendWeatherInfoToWatch(Lcn/baos/watch/sdk/entitiy/WeatherEntity;)Z

    move-result p0

    return p0

    :cond_20
    const/4 p0, 0x0

    return p0
.end method

.method public static setWorldTime(Ljava/util/List;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/baos/watch/sdk/entitiy/WorldEntity;",
            ">;)Z"
        }
    .end annotation

    .line 1274
    new-instance v0, Lcn/baos/watch/w100/messages/World_clock_config;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/World_clock_config;-><init>()V

    if-eqz p0, :cond_48

    .line 1276
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_48

    .line 1277
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcn/baos/watch/w100/messages/World_clock_config$World_clock;

    const/4 v2, 0x0

    .line 1278
    :goto_14
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_46

    .line 1279
    new-instance v3, Lcn/baos/watch/w100/messages/World_clock_config$World_clock;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/World_clock_config$World_clock;-><init>()V

    .line 1280
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/entitiy/WorldEntity;

    iget-object v4, v4, Lcn/baos/watch/sdk/entitiy/WorldEntity;->cityCn:Ljava/lang/String;

    iput-object v4, v3, Lcn/baos/watch/w100/messages/World_clock_config$World_clock;->name:Ljava/lang/String;

    .line 1281
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/entitiy/WorldEntity;

    iget-object v4, v4, Lcn/baos/watch/sdk/entitiy/WorldEntity;->secondsFromGMT:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iput v4, v3, Lcn/baos/watch/w100/messages/World_clock_config$World_clock;->timezone:I

    .line 1282
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/baos/watch/sdk/entitiy/WorldEntity;

    iget v4, v4, Lcn/baos/watch/sdk/entitiy/WorldEntity;->reserve:I

    iput v4, v3, Lcn/baos/watch/w100/messages/World_clock_config$World_clock;->reserve:I

    .line 1283
    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 1285
    :cond_46
    iput-object v1, v0, Lcn/baos/watch/w100/messages/World_clock_config;->clocks:[Lcn/baos/watch/w100/messages/World_clock_config$World_clock;

    .line 1288
    :cond_48
    new-instance p0, Lcom/google/gson/Gson;

    invoke-direct {p0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "=commonWorld="

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setWorldTimeInfo(Lcn/baos/watch/w100/messages/World_clock_config;)Z

    move-result p0

    return p0
.end method

.method public static startScan()V
    .registers 1

    .line 350
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->startConnect()Z

    return-void
.end method

.method public static stopScan()V
    .registers 1

    .line 381
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->stopScan()Z

    return-void
.end method

.method public static syncData(Lcn/baos/watch/sdk/manager/api/SyncDataListener;)Z
    .registers 5

    const-string v0, "\u6570\u636e\u540c\u6b65"

    .line 794
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 795
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentStatus()Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_BOND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_18

    const-string p0, "\u84dd\u7259\u672a\u8fde\u63a5\uff0c\u540c\u6b65\u6570\u636e\u5931\u8d25"

    .line 796
    invoke-static {p0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return v2

    :cond_18
    if-eqz p0, :cond_1d

    .line 800
    invoke-interface {p0}, Lcn/baos/watch/sdk/manager/api/SyncDataListener;->onSyncStart()V

    .line 802
    :cond_1d
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;

    move-result-object v0

    sget-object v1, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    new-instance v3, Lcn/baos/watch/sdk/BasSdk$3;

    invoke-direct {v3}, Lcn/baos/watch/sdk/BasSdk$3;-><init>()V

    invoke-virtual {v0, v1, v2, v3}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->startSyncRightNowData(Landroid/content/Context;ILcn/baos/watch/sdk/interfac/syncdata/SyncRightNowDataCallback;)V

    .line 819
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;

    move-result-object v0

    sget-object v1, Lcn/baos/watch/sdk/BasSdk;->mCtx:Landroid/content/Context;

    new-instance v2, Lcn/baos/watch/sdk/BasSdk$4;

    invoke-direct {v2, p0}, Lcn/baos/watch/sdk/BasSdk$4;-><init>(Lcn/baos/watch/sdk/manager/api/SyncDataListener;)V

    invoke-virtual {v0, v1, v2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;->startSyncDateFromWatch(Landroid/content/Context;Lcn/baos/watch/sdk/interfac/syncdata/SyncStatusCallback;)V

    const/4 p0, 0x1

    return p0
.end method

.method public static translateFile(Ljava/io/File;ILcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;)V
    .registers 4

    .line 997
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lcn/baos/watch/sdk/huabaoImpl/translate/TranslateManager;->transferFile(Ljava/io/File;ILcn/baos/watch/sdk/huabaoImpl/translate/TranslateCallback;)V

    return-void
.end method

.method public static unBindDevice(Ljava/lang/String;)V
    .registers 1

    .line 518
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p0

    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleService;->unBindWatch()V

    return-void
.end method

.method public static updateAlarm(Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V
    .registers 3

    .line 742
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/clock/ClockManagerImpl;->updateAlarm(Lcn/baos/watch/sdk/entitiy/ClockListEntity;Lcn/baos/watch/sdk/interfac/clock/OnCrudClockDataListener;)V

    return-void
.end method

.method public static updateDeviceResource(Lcn/baos/watch/w100/messages/Update_device_resource;)Z
    .registers 3

    .line 1007
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4fee\u6539\u8868\u76d8\u5bf9\u8c61json\u6253\u5370:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1008
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    move-result p0

    return p0
.end method

.method public static updateReminder(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V
    .registers 3

    .line 713
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcn/baos/watch/sdk/huabaoImpl/reminder/ReminderManagerImpl;->updateReminder(Lcn/baos/watch/sdk/entitiy/ReminderListEntity;Lcn/baos/watch/sdk/interfac/reminder/OnCrudReminderDataListener;)V

    return-void
.end method
