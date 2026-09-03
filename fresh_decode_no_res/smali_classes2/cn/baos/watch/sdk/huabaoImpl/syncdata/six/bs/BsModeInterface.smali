.class public interface abstract Lcn/baos/watch/sdk/huabaoImpl/syncdata/six/bs/BsModeInterface;
.super Ljava/lang/Object;
.source "BsModeInterface.java"


# virtual methods
.method public abstract queryBsModeInInterval(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/six/bs/BsEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryBsModeToday(I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/six/bs/BsEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveBsModeEntitiesToDb(Lcn/baos/watch/w100/messages/Sensor_data_blood_sugar;)V
.end method
