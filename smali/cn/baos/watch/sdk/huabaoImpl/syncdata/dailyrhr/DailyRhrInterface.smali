.class public interface abstract Lcn/baos/watch/sdk/huabaoImpl/syncdata/dailyrhr/DailyRhrInterface;
.super Ljava/lang/Object;
.source "DailyRhrInterface.java"


# virtual methods
.method public abstract queryDailyRhrInInterval(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryDailyRhrToday(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyrhr/DailyRhrEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveDailyRhrEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_rhr_array;)V
.end method
