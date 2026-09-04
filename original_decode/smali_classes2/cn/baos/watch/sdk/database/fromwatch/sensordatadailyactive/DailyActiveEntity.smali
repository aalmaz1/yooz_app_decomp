.class public Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;
.super Ljava/lang/Object;
.source "DailyActiveEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private devId:Ljava/lang/String;

.field private id:I

.field public mac:Ljava/lang/String;

.field private sensor_data_daily_active_sum:Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

.field private userId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->id:I

    const-wide/16 v0, 0x0

    .line 15
    iput-wide v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->userId:J

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->devId:Ljava/lang/String;

    .line 19
    new-instance v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->sensor_data_daily_active_sum:Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    return-void
.end method


# virtual methods
.method public getDevId()Ljava/lang/String;
    .locals 1

    .line 43
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->devId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 27
    iget v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->id:I

    return v0
.end method

.method public getSensor_data_daily_active_sum()Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;
    .locals 1

    .line 51
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->sensor_data_daily_active_sum:Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 35
    iget-wide v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->userId:J

    return-wide v0
.end method

.method public setDevId(Ljava/lang/String;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->devId:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 31
    iput p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->id:I

    return-void
.end method

.method public setSensor_data_daily_active_sum(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->sensor_data_daily_active_sum:Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 39
    iput-wide p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->userId:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DailyActiveEntity{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->userId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", devId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->devId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\', sensor_data_daily_active_sum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;->sensor_data_daily_active_sum:Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
