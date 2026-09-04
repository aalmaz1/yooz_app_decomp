.class public interface abstract Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyactive/DailyActivePhoneInterface;
.super Ljava/lang/Object;
.source "DailyActivePhoneInterface.java"


# virtual methods
.method public abstract queryDailyActiveInInterval(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryDailyActiveToday(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveDailyActiveEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_array;)V
.end method
