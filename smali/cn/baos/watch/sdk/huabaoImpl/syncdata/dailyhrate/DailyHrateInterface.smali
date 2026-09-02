.class public interface abstract Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyhrate/DailyHrateInterface;
.super Ljava/lang/Object;
.source "DailyHrateInterface.java"


# virtual methods
.method public abstract queryDailyHrateInInterval(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryDailyHrateOnlyInterval(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryDailyHrateToday(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyhrate/DailyHrateEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveDailyHrateEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_hrate_array;)V
.end method
