.class Lcn/baos/watch/sdk/BasSdk$3;
.super Ljava/lang/Object;
.source "BasSdk.java"

# interfaces
.implements Lcn/baos/watch/sdk/interfac/syncdata/SyncRightNowDataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/BasSdk;->syncData(Lcn/baos/watch/sdk/manager/api/SyncDataListener;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 802
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDailyActiveSum(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;)V
    .registers 2

    .line 806
    invoke-static {p1}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfputmSensor_data_daily_active_sum(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;)V

    return-void
.end method

.method public onDailyHrate(Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;)V
    .registers 2

    .line 811
    invoke-static {p1}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfputmSensor_data_daily_hrate(Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate;)V

    return-void
.end method

.method public onDailySpo(Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;)V
    .registers 2

    .line 816
    invoke-static {p1}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfputmSensor_data_daily_spo(Lcn/baos/watch/w100/messages/Sensor_data_daily_spo;)V

    return-void
.end method
