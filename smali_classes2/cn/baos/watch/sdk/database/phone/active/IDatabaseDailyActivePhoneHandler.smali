.class public interface abstract Lcn/baos/watch/sdk/database/phone/active/IDatabaseDailyActivePhoneHandler;
.super Ljava/lang/Object;
.source "IDatabaseDailyActivePhoneHandler.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract createDatabase()V
.end method

.method public abstract delete(Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;)V
.end method

.method public abstract insert(Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;)V
.end method

.method public abstract open()V
.end method

.method public abstract query(I)Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;
.end method

.method public abstract queryArrayBetween(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyactive/DailyActiveEntity;)V
.end method
