.class public interface abstract Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/rh/RhModeInterface;
.super Ljava/lang/Object;
.source "RhModeInterface.java"


# virtual methods
.method public abstract queryRhModeInInterval(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/six/rh/RhEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryRhModeToday(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/six/rh/RhEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract savRhModeEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_general_health;)V
.end method
