.class Lcn/yoozworld/watch/ui/SsManager$2;
.super Ljava/lang/Object;
.source "SsManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/manager/message/IMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/ui/SsManager;->initBleServiceManager(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yoozworld/watch/ui/SsManager;


# direct methods
.method public static synthetic $r8$lambda$Q3gGcUr-N4PKgJDo4Oh4CtXPlFg(Lcn/yoozworld/watch/ui/SsManager$2;Lcn/baos/watch/w100/messages/Action_sync;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/SsManager$2;->lambda$onActionSync$3(Lcn/baos/watch/w100/messages/Action_sync;)V

    return-void
.end method

.method constructor <init>(Lcn/yoozworld/watch/ui/SsManager;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcn/yoozworld/watch/ui/SsManager$2;->this$0:Lcn/yoozworld/watch/ui/SsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onActionSync$3(Lcn/baos/watch/w100/messages/Action_sync;)V
    .locals 1

    .line 378
    iget-object v0, p0, Lcn/yoozworld/watch/ui/SsManager$2;->this$0:Lcn/yoozworld/watch/ui/SsManager;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/SsManager;->-$$Nest$fgetsportTime(Lcn/yoozworld/watch/ui/SsManager;)I

    move-result v0

    iget p1, p1, Lcn/baos/watch/w100/messages/Action_sync;->timestamp:I

    invoke-static {v0, p1}, Lcn/yoozworld/watch/utils/track/SportTraceUtils;->sendGpsToWatch(II)V

    return-void
.end method

.method static synthetic lambda$onActionSync$4(Lcn/baos/watch/w100/messages/Action_sync;)V
    .locals 2

    .line 399
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 400
    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "actionSync"

    .line 399
    invoke-virtual {v0, v1, p0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onCollectWatchLoggerRequest$1([B)V
    .locals 2

    .line 342
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "collectWatchLoggerRequest"

    invoke-virtual {v0, v1, p0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onDeviceResourceInfo$0(Lcn/baos/watch/w100/messages/Device_resource_info;)V
    .locals 2

    .line 331
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "syncDeviceResourceInfo"

    invoke-virtual {v0, v1, p0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethodEventByJSONRes(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$onRequestGetData$6(Lcn/baos/watch/w100/messages/Request_get_data;)V
    .locals 2

    .line 413
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 414
    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "requestGetData"

    .line 413
    invoke-virtual {v0, v1, p0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onRequestGpsData$7()V
    .locals 3

    .line 421
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "getGPSBase"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onSyncMessageRequest$2([B)V
    .locals 2

    .line 354
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    const-string v1, "syncMessageRequest"

    invoke-virtual {v0, v1, p0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$onUserInfoConfig$5(Lcn/baos/watch/w100/messages/User_info_config;)V
    .locals 2

    .line 406
    invoke-static {}, Lcn/yoozworld/watch/ui/BLfLst;->getInstance()Lcn/yoozworld/watch/ui/BLfLst;

    move-result-object v0

    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 407
    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "userInfoConfig"

    .line 406
    invoke-virtual {v0, v1, p0}, Lcn/yoozworld/watch/ui/BLfLst;->invokeFlutterMethod(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onActionSync(Lcn/baos/watch/w100/messages/Action_sync;)V
    .locals 4

    const-string v0, "onActionSync-\u8fd0\u52a8-\u91c7\u96c6\u7ed3\u675fsportTime:"

    if-eqz p1, :cond_2

    .line 362
    :try_start_0
    iget v1, p1, Lcn/baos/watch/w100/messages/Action_sync;->action_type:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x4

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "onActionSync-\u8fd0\u52a8-\u91c7\u96c6\u7ed3\u675f"

    .line 370
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 371
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->stopService()V

    .line 372
    iget v1, p1, Lcn/baos/watch/w100/messages/Action_sync;->reserve:I

    if-ne v1, v2, :cond_2

    .line 373
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/yoozworld/watch/ui/SsManager$2;->this$0:Lcn/yoozworld/watch/ui/SsManager;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/SsManager;->-$$Nest$fgetsportTime(Lcn/yoozworld/watch/ui/SsManager;)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcn/yoozworld/watch/ui/SsManager$2;->this$0:Lcn/yoozworld/watch/ui/SsManager;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/SsManager;->-$$Nest$fgetsportTime(Lcn/yoozworld/watch/ui/SsManager;)I

    move-result v0

    if-lez v0, :cond_2

    .line 376
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda0;-><init>(Lcn/yoozworld/watch/ui/SsManager$2;Lcn/baos/watch/w100/messages/Action_sync;)V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 381
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$2$1;

    invoke-direct {v1, p0}, Lcn/yoozworld/watch/ui/SsManager$2$1;-><init>(Lcn/yoozworld/watch/ui/SsManager$2;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Lcn/baos/watch/sdk/code/MainHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    const-string v0, "onActionSync-\u8fd0\u52a8-\u91c7\u96c6\u5f00\u59cb"

    .line 365
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 367
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/reload/BleReloadManager;->startService()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "onActionSync-\u8fd0\u52a8-\u91c7\u96c6\u62a5\u9519"

    .line 394
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 396
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 399
    :cond_2
    :goto_0
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda1;-><init>(Lcn/baos/watch/w100/messages/Action_sync;)V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBindRequestByPhone()V
    .locals 1

    const-string v0, "\u624b\u8868\u7aef\u53d1\u8d77\u7ed1\u5b9a\u8bf7\u6c42\uff0c\u624b\u673a\u7aef\u540c\u6b65\u4e3a\u672a\u7ed1\u5b9a\u72b6\u6001"

    .line 302
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/BleService;->bindDeviceBindRequestByPhone()V

    return-void
.end method

.method public onCollectWatchLoggerRequest([B)V
    .locals 2

    .line 342
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda2;-><init>([B)V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCollectWatchLoggerRequestData(Ljava/lang/String;)V
    .locals 2

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u8868\u8fd4\u56de\u65e5\u5fd7:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onDeviceResourceInfo(Lcn/baos/watch/w100/messages/Device_resource_info;)V
    .locals 8

    .line 309
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u8868\u8d44\u6e90\u540c\u6b65:"

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

    if-eqz p1, :cond_3

    .line 310
    iget v0, p1, Lcn/baos/watch/w100/messages/Device_resource_info;->resource_type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 312
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    sget-object v1, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_WATCH_LUANGH:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Z)V

    .line 313
    iget v0, p1, Lcn/baos/watch/w100/messages/Device_resource_info;->active_res_location:I

    const/high16 v1, 0x60000

    if-ne v0, v1, :cond_0

    .line 314
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v0

    sget-object v1, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_WATCH_LUANGH:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Z)V

    .line 316
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 317
    iget-object v1, p1, Lcn/baos/watch/w100/messages/Device_resource_info;->resource_array:[Lcn/baos/watch/w100/messages/Device_resource_info$Dev_res;

    if-eqz v1, :cond_1

    iget-object v1, p1, Lcn/baos/watch/w100/messages/Device_resource_info;->resource_array:[Lcn/baos/watch/w100/messages/Device_resource_info$Dev_res;

    array-length v1, v1

    if-lez v1, :cond_1

    .line 318
    iget-object v1, p1, Lcn/baos/watch/w100/messages/Device_resource_info;->resource_array:[Lcn/baos/watch/w100/messages/Device_resource_info$Dev_res;

    array-length v3, v1

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 319
    new-instance v5, Lcn/baos/watch/sdk/entitiy/DILanguageEntity;

    invoke-direct {v5}, Lcn/baos/watch/sdk/entitiy/DILanguageEntity;-><init>()V

    .line 320
    iget v6, v4, Lcn/baos/watch/w100/messages/Device_resource_info$Dev_res;->resource_id:I

    const/high16 v7, 0x10000

    div-int/2addr v6, v7

    iput v6, v5, Lcn/baos/watch/sdk/entitiy/DILanguageEntity;->resourceId:I

    .line 321
    iget v4, v4, Lcn/baos/watch/w100/messages/Device_resource_info$Dev_res;->location_index:I

    iput v4, v5, Lcn/baos/watch/sdk/entitiy/DILanguageEntity;->locationIndex:I

    .line 322
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 326
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 327
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, ""

    .line 329
    :goto_1
    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig;->getInstance()Lcn/baos/watch/sdk/base/AppDataConfig;

    move-result-object v1

    sget-object v2, Lcn/baos/watch/sdk/util/SharePreferenceUtils;->KEY_DEVICE_RESOURCE_LANGUAGE:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcn/baos/watch/sdk/base/AppDataConfig;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    :cond_3
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1}, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda4;-><init>(Lcn/baos/watch/w100/messages/Device_resource_info;)V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPhoneStatus(I)V
    .locals 0

    return-void
.end method

.method public onRequestGetData(Lcn/baos/watch/w100/messages/Request_get_data;)V
    .locals 2

    .line 413
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda6;

    invoke-direct {v1, p1}, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda6;-><init>(Lcn/baos/watch/w100/messages/Request_get_data;)V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRequestGpsData()V
    .locals 2

    .line 420
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRequestMeteorologicalData()V
    .locals 0

    return-void
.end method

.method public onRequestWeather()V
    .locals 1

    const-string v0, "\u624b\u8868\u7aef\u53d1\u8d77\u5929\u6c14\u8bf7\u6c42"

    .line 336
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onSyncMessageRequest([B)V
    .locals 2

    .line 353
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6570\u636e\u540c\u6b65->onSyncMessageRequest:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda5;

    invoke-direct {v1, p1}, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda5;-><init>([B)V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onUserInfoConfig(Lcn/baos/watch/w100/messages/User_info_config;)V
    .locals 2

    .line 405
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u4e2a\u4eba\u4fe1\u606f\u4fee\u6539-\u624b\u8868\u53d1\u7ed9\u624b\u673a:"

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

    .line 406
    invoke-static {}, Lcn/baos/watch/sdk/code/MainHandler;->getInstance()Lcn/baos/watch/sdk/code/MainHandler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda7;

    invoke-direct {v1, p1}, Lcn/yoozworld/watch/ui/SsManager$2$$ExternalSyntheticLambda7;-><init>(Lcn/baos/watch/w100/messages/User_info_config;)V

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/code/MainHandler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestGetTime()V
    .locals 0

    return-void
.end method
