.class public interface abstract Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstats/SleepStatsInterface;
.super Ljava/lang/Object;
.source "SleepStatsInterface.java"


# virtual methods
.method public abstract querySleepStatsInInterval(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract querySleepStatsToday(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstats/SleepStatsEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveSleepStatsEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;)V
.end method
