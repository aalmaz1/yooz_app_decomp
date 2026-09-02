.class public Lcn/baos/watch/sdk/huabaoImpl/sportcontrol/SportControlManager;
.super Ljava/lang/Object;
.source "SportControlManager.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleGpsRequestFromWatch(Landroid/content/Context;Lcn/baos/watch/w100/messages/Request_get_data;)V
    .registers 4

    .line 35
    iget p1, p2, Lcn/baos/watch/w100/messages/Request_get_data;->last_data_timestamp:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1a

    .line 37
    new-instance p1, Lcn/baos/watch/w100/messages/Sensor_data_gps;

    invoke-direct {p1}, Lcn/baos/watch/w100/messages/Sensor_data_gps;-><init>()V

    .line 38
    invoke-static {}, Lcn/baos/watch/sdk/manager/gps/GpsManager;->getInstance()Lcn/baos/watch/sdk/manager/gps/GpsManager;

    move-result-object p2

    iget p2, p2, Lcn/baos/watch/sdk/manager/gps/GpsManager;->gpsCount:I

    iput p2, p1, Lcn/baos/watch/w100/messages/Sensor_data_gps;->satellite_count:I

    .line 39
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/watch/w100/messages/MessageBase;)Z

    goto :goto_1c

    .line 40
    :cond_1a
    iget p1, p2, Lcn/baos/watch/w100/messages/Request_get_data;->last_data_timestamp:I

    :goto_1c
    return-void
.end method

.method public responseActionSync(Lcn/baos/watch/w100/messages/Action_sync;)V
    .registers 4

    .line 19
    new-instance v0, Lcn/baos/watch/w100/messages/Response_msg;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Response_msg;-><init>()V

    .line 20
    iget v1, p1, Lcn/baos/watch/w100/messages/Action_sync;->catagory:I

    iput v1, v0, Lcn/baos/watch/w100/messages/Response_msg;->act_catagory:I

    .line 21
    iget p1, p1, Lcn/baos/watch/w100/messages/Action_sync;->action_type:I

    iput p1, v0, Lcn/baos/watch/w100/messages/Response_msg;->act_sequence_id:I

    .line 22
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u65b0\u534f\u8bae\u6d88\u606f\u56de\u590d,\u8fd0\u52a8\u63a7\u5236,\u76f8\u673a\u72b6\u6001\u56de\u590d:"

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

    .line 23
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMessage(Lcn/baos/message/Serializable;)Z

    return-void
.end method
