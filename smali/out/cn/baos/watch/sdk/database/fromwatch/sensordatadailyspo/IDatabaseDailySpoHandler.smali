.class public interface abstract Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/IDatabaseDailySpoHandler;
.super Ljava/lang/Object;
.source "IDatabaseDailySpoHandler.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract createDatabase()V
.end method

.method public abstract delete(Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;)V
.end method

.method public abstract insert(Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;)V
.end method

.method public abstract open()V
.end method

.method public abstract query(I)Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;
.end method

.method public abstract queryArrayBetween(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Lcn/baos/watch/sdk/database/fromwatch/sensordatadailyspo/DailySpoEntity;)V
.end method
