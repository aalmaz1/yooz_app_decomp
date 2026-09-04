.class public interface abstract Lcn/baos/watch/sdk/database/six/bp/IDatabaseBpHandler;
.super Ljava/lang/Object;
.source "IDatabaseBpHandler.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract createDatabase()V
.end method

.method public abstract delete(Lcn/baos/watch/w100/messages/Sensor_data_blood_pressure;)V
.end method

.method public abstract insert(Lcn/baos/watch/w100/messages/Sensor_data_blood_pressure;)V
.end method

.method public abstract open()V
.end method

.method public abstract queryArrayBetween(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/six/bp/BpEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Lcn/baos/watch/w100/messages/Sensor_data_blood_pressure;)V
.end method
