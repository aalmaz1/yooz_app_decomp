.class public interface abstract Lcn/baos/watch/sdk/database/six/meto/IDatabaseMetoHandler;
.super Ljava/lang/Object;
.source "IDatabaseMetoHandler.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract createDatabase()V
.end method

.method public abstract delete(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;)V
.end method

.method public abstract insert(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;)V
.end method

.method public abstract open()V
.end method

.method public abstract queryArrayBetween(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/six/meto/MetoEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;)V
.end method
