.class public interface abstract Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/temp/TempModeInterface;
.super Ljava/lang/Object;
.source "TempModeInterface.java"


# virtual methods
.method public abstract queryTempModeInInterval(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/six/temp/TempEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryTempModeToday(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/six/temp/TempEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract savTempModeEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_temperature;)V
.end method
