.class Lcn/baos/watch/sdk/BasSdk$2;
.super Ljava/lang/Object;
.source "BasSdk.java"

# interfaces
.implements Lcn/baos/watch/sdk/manager/message/IMessageCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/BasSdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionSync(Lcn/baos/watch/w100/messages/Action_sync;)V
    .locals 2

    .line 266
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmDeviceCallBacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/manager/api/DeviceCallBack;

    .line 267
    invoke-interface {v1, p1}, Lcn/baos/watch/sdk/manager/api/DeviceCallBack;->onActionSync(Lcn/baos/watch/w100/messages/Action_sync;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBindRequestByPhone()V
    .locals 0

    return-void
.end method

.method public onCollectWatchLoggerRequest([B)V
    .locals 2

    .line 250
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmDeviceCallBacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/manager/api/DeviceCallBack;

    .line 251
    invoke-interface {v1, p1}, Lcn/baos/watch/sdk/manager/api/DeviceCallBack;->onCollectWatchLoggerRequest([B)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onCollectWatchLoggerRequestData(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onDeviceResourceInfo(Lcn/baos/watch/w100/messages/Device_resource_info;)V
    .locals 2

    .line 236
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmDeviceCallBacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/manager/api/DeviceCallBack;

    .line 237
    invoke-interface {v1, p1}, Lcn/baos/watch/sdk/manager/api/DeviceCallBack;->onDeviceResourceInfo(Lcn/baos/watch/w100/messages/Device_resource_info;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPhoneStatus(I)V
    .locals 2

    .line 294
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmDeviceCallBacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/manager/api/DeviceCallBack;

    .line 295
    invoke-interface {v1, p1}, Lcn/baos/watch/sdk/manager/api/DeviceCallBack;->onPhoneStatus(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRequestGetData(Lcn/baos/watch/w100/messages/Request_get_data;)V
    .locals 2

    .line 277
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmDeviceCallBacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/manager/api/DeviceCallBack;

    .line 278
    invoke-interface {v1, p1}, Lcn/baos/watch/sdk/manager/api/DeviceCallBack;->onRequestGetData(Lcn/baos/watch/w100/messages/Request_get_data;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onRequestGpsData()V
    .locals 0

    return-void
.end method

.method public onRequestMeteorologicalData()V
    .locals 0

    return-void
.end method

.method public onRequestWeather()V
    .locals 2

    .line 243
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmDeviceCallBacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/manager/api/DeviceCallBack;

    .line 244
    invoke-interface {v1}, Lcn/baos/watch/sdk/manager/api/DeviceCallBack;->onRequestWeather()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onSyncMessageRequest([B)V
    .locals 0

    return-void
.end method

.method public onUserInfoConfig(Lcn/baos/watch/w100/messages/User_info_config;)V
    .locals 0

    return-void
.end method

.method public requestGetTime()V
    .locals 2

    .line 301
    invoke-static {}, Lcn/baos/watch/sdk/BasSdk;->-$$Nest$sfgetmDeviceCallBacks()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/baos/watch/sdk/manager/api/DeviceCallBack;

    .line 302
    invoke-interface {v1}, Lcn/baos/watch/sdk/manager/api/DeviceCallBack;->onRequestTime()V

    goto :goto_0

    :cond_0
    return-void
.end method
