.class public Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;
.super Ljava/lang/Object;
.source "SleepStatsEntity.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private devId:Ljava/lang/String;

.field private id:I

.field public mac:Ljava/lang/String;

.field private sensor_data_sleep_stats:Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

.field private sleepStatusArr:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;",
            ">;"
        }
    .end annotation
.end field

.field private userId:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->id:I

    const-wide/16 v0, 0x0

    .line 17
    iput-wide v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->userId:J

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->devId:Ljava/lang/String;

    .line 25
    new-instance v0, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->sensor_data_sleep_stats:Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    return-void
.end method


# virtual methods
.method public getDevId()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->devId:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .registers 2

    .line 31
    iget v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->id:I

    return v0
.end method

.method public getSensor_data_sleep_stats()Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;
    .registers 2

    .line 55
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->sensor_data_sleep_stats:Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    return-object v0
.end method

.method public getSleepStatusArr()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->sleepStatusArr:Ljava/util/List;

    return-object v0
.end method

.method public getUserId()J
    .registers 3

    .line 39
    iget-wide v0, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->userId:J

    return-wide v0
.end method

.method public setDevId(Ljava/lang/String;)V
    .registers 2

    .line 51
    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->devId:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .registers 2

    .line 35
    iput p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->id:I

    return-void
.end method

.method public setSensor_data_sleep_stats(Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->sensor_data_sleep_stats:Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    return-void
.end method

.method public setSleepStatusArr(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;",
            ">;)V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->sleepStatusArr:Ljava/util/List;

    return-void
.end method

.method public setUserId(J)V
    .registers 3

    .line 43
    iput-wide p1, p0, Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;->userId:J

    return-void
.end method
