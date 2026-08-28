.class public interface abstract Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bp/BpModeInterface;
.super Ljava/lang/Object;
.source "BpModeInterface.java"


# virtual methods
.method public abstract queryBpModeInInterval(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/six/bp/BpEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryBpModeToday(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/six/bp/BpEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveBpModeEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_blood_pressure;)V
.end method
