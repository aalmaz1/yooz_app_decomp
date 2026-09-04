.class public interface abstract Lcn/baos/watch/sdk/huabaoImpl/syncdata/sleepstatus/SleepStatusInterface;
.super Ljava/lang/Object;
.source "SleepStatusInterface.java"


# virtual methods
.method public abstract querySleepStatusInInterval(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstatus/SleepStatusEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract querySleepStatusToday(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasleepstatus/SleepStatusEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveSleepStatusEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_sleep_status_array;)V
.end method
