.class public interface abstract Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/meto/MetoModeInterface;
.super Ljava/lang/Object;
.source "MetoModeInterface.java"


# virtual methods
.method public abstract queryMetoModeInInterval(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/six/meto/MetoEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryMetoModeToday(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/six/meto/MetoEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveMetoModeEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;)V
.end method
