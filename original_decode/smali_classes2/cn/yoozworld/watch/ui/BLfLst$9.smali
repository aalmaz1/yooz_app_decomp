.class Lcn/yoozworld/watch/ui/BLfLst$9;
.super Ljava/lang/Object;
.source "BLfLst.java"

# interfaces
.implements Lcn/baos/watch/sdk/interfac/syncdata/SyncRightNowDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/ui/BLfLst;->switchFlutterData(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yoozworld/watch/ui/BLfLst;


# direct methods
.method public static synthetic $r8$lambda$8dNglYZfZfJW25FQpKFUOrX_Yg0(Lcn/yoozworld/watch/ui/BLfLst$9;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$9;->lambda$onDailyActiveSum$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9t-LwKAR8YvTAEyhJwT18GdvtOc(Lcn/yoozworld/watch/ui/BLfLst$9;)V
    .locals 0

    invoke-direct {p0}, Lcn/yoozworld/watch/ui/BLfLst$9;->lambda$onDailyActiveSum$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$WJ_C6ak3lHEAvnA7fykjdnwLKLM(Lcn/yoozworld/watch/ui/BLfLst$9;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$9;->lambda$onDailySpo$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$acHlCjdTXHzlKZWSA6NDIXXjevQ(Lcn/yoozworld/watch/ui/BLfLst$9;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$9;->lambda$onDailyHrate$2(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Lcn/yoozworld/watch/ui/BLfLst;)V
    .locals 0

    .line 1670
    iput-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst$9;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onDailyActiveSum$0(Ljava/lang/String;)V
    .locals 1

    .line 1689
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$9;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetjsonMessageChannel(Lcn/yoozworld/watch/ui/BLfLst;)Lio/flutter/plugin/common/BasicMessageChannel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onDailyActiveSum$1()V
    .locals 3

    .line 1695
    new-instance v0, Lcn/baos/watch/sdk/util/AppUtils;

    invoke-direct {v0}, Lcn/baos/watch/sdk/util/AppUtils;-><init>()V

    iget-object v1, p0, Lcn/yoozworld/watch/ui/BLfLst$9;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {v1}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetmContext(Lcn/yoozworld/watch/ui/BLfLst;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcn/baos/watch/sdk/util/AppUtils;->registerKeepLive(ZLandroid/content/Context;)V

    return-void
.end method

.method private synthetic lambda$onDailyHrate$2(Ljava/lang/String;)V
    .locals 1

    .line 1705
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$9;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetjsonMessageChannel(Lcn/yoozworld/watch/ui/BLfLst;)Lio/flutter/plugin/common/BasicMessageChannel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$onDailySpo$3(Ljava/lang/String;)V
    .locals 1

    .line 1715
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$9;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetjsonMessageChannel(Lcn/yoozworld/watch/ui/BLfLst;)Lio/flutter/plugin/common/BasicMessageChannel;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public onDailyActiveSum(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;)V
    .locals 4

    .line 1674
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u5c06\u5b9e\u65f6\u65e5\u5e38\u6570\u636e(\u6b65\u6570\u3001\u5361\u8def\u91cc)\u5b58\u5165\u6570\u636e\u5e93\uff0c\u5b58\u5165\u7406\u8bba:\u5c06\u65f6\u95f4\u6233\u8f6c\u4e3a\u6574\u70b9\u65f6\u95f4\uff0c\u66f4\u65b0\u6570\u636e\u5e93\u6574\u70b9\u6570\u636e"

    .line 1675
    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1676
    new-instance v1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;

    invoke-direct {v1}, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;-><init>()V

    const/4 v2, 0x1

    new-array v2, v2, [Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    .line 1677
    iput-object v2, v1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    .line 1678
    new-instance v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    invoke-direct {v2}, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;-><init>()V

    .line 1679
    iget v3, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    iput v3, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_step:I

    .line 1680
    iget v3, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    iput v3, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_distance_m:I

    .line 1681
    iget v3, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    iput v3, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_calorie:I

    .line 1682
    iget v3, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    iput v3, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->sum_times:I

    .line 1683
    iget p1, p1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->update_timestamp:I

    iput p1, v2, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;->update_timestamp:I

    .line 1684
    iget-object p1, v1, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    const/4 v3, 0x0

    aput-object v2, p1, v3

    .line 1685
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->getInstance()Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActiveManager;->saveData(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;)V

    .line 1686
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u6e90\u751f\u7aef->\u5b9e\u65f6\u6570\u636e\u65e5\u5e38\u6d3b\u52a8\uff0c\u8fd4\u56de:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1687
    iget-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst$9;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {p1}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetmMainHandler(Lcn/yoozworld/watch/ui/BLfLst;)Landroid/os/Handler;

    move-result-object p1

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$9$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0}, Lcn/yoozworld/watch/ui/BLfLst$9$$ExternalSyntheticLambda2;-><init>(Lcn/yoozworld/watch/ui/BLfLst$9;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1691
    iget-object p1, p0, Lcn/yoozworld/watch/ui/BLfLst$9;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {p1}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetmMainHandler(Lcn/yoozworld/watch/ui/BLfLst;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcn/yoozworld/watch/ui/BLfLst$9$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcn/yoozworld/watch/ui/BLfLst$9$$ExternalSyntheticLambda3;-><init>(Lcn/yoozworld/watch/ui/BLfLst$9;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDailyHrate(Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;)V
    .locals 2

    .line 1701
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1702
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6e90\u751f\u7aef->\u5b9e\u65f6\u6570\u636e\u5fc3\u7387\u6570\u636e\uff0c\u8fd4\u56de:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1703
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$9;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetmMainHandler(Lcn/yoozworld/watch/ui/BLfLst;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$9$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$9$$ExternalSyntheticLambda0;-><init>(Lcn/yoozworld/watch/ui/BLfLst$9;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDailySpo(Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;)V
    .locals 2

    .line 1711
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1712
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6e90\u751f\u7aef->\u5b9e\u65f6\u6570\u636e\u8840\u6c27\u6570\u636e\uff0c\u8fd4\u56de:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 1713
    iget-object v0, p0, Lcn/yoozworld/watch/ui/BLfLst$9;->this$0:Lcn/yoozworld/watch/ui/BLfLst;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/BLfLst;->-$$Nest$fgetmMainHandler(Lcn/yoozworld/watch/ui/BLfLst;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcn/yoozworld/watch/ui/BLfLst$9$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/ui/BLfLst$9$$ExternalSyntheticLambda1;-><init>(Lcn/yoozworld/watch/ui/BLfLst$9;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
