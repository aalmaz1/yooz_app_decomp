.class public Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;
.super Ljava/lang/Object;
.source "DailyRhrEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private devId:Ljava/lang/String;

.field private id:I

.field public mac:Ljava/lang/String;

.field private sensor_data_daily_rhr:Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;

.field private userId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->id:I

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->userId:J

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->devId:Ljava/lang/String;

    .line 23
    new-instance v0, Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->sensor_data_daily_rhr:Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;

    return-void
.end method


# virtual methods
.method public getDevId()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->devId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 29
    iget v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->id:I

    return v0
.end method

.method public getSensor_data_daily_rhr()Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;
    .locals 1

    .line 53
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->sensor_data_daily_rhr:Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 37
    iget-wide v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->userId:J

    return-wide v0
.end method

.method public setDevId(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->devId:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 33
    iput p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->id:I

    return-void
.end method

.method public setSensor_data_daily_rhr(Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->sensor_data_daily_rhr:Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr;

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 41
    iput-wide p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;->userId:J

    return-void
.end method
