.class public interface abstract Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyspo/DailySpoInterface;
.super Ljava/lang/Object;
.source "DailySpoInterface.java"


# virtual methods
.method public abstract queryDailySpoInInterval(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryDailySpoToday(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveDailySpoEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_spo_array;)V
.end method
