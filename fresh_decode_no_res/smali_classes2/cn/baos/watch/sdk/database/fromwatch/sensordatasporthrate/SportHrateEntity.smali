.class public Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;
.super Ljava/lang/Object;
.source "SportHrateEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private devId:Ljava/lang/String;

.field private id:I

.field public mac:Ljava/lang/String;

.field private sensor_data_sport_hrate:Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate;

.field private userId:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;->id:I

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;->userId:J

    const-string v0, ""

    .line 18
    iput-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;->devId:Ljava/lang/String;

    .line 22
    new-instance v0, Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;->sensor_data_sport_hrate:Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate;

    return-void
.end method


# virtual methods
.method public getDevId()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;->devId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 28
    iget v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;->id:I

    return v0
.end method

.method public getSensor_data_sport_hrate()Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate;
    .locals 1

    .line 52
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;->sensor_data_sport_hrate:Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate;

    return-object v0
.end method

.method public getUserId()J
    .locals 2

    .line 36
    iget-wide v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;->userId:J

    return-wide v0
.end method

.method public setDevId(Ljava/lang/String;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;->devId:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 32
    iput p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;->id:I

    return-void
.end method

.method public setSensor_data_sport_hrate(Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;->sensor_data_sport_hrate:Lcn/baos/watch/w100/messages/Sensor_data_sport_hrate;

    return-void
.end method

.method public setUserId(J)V
    .locals 0

    .line 40
    iput-wide p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasporthrate/SportHrateEntity;->userId:J

    return-void
.end method
