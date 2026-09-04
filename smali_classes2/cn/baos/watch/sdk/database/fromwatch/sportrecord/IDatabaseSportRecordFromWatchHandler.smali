.class public interface abstract Lcn/baos/watch/sdk/database/fromwatch/sportrecord/IDatabaseSportRecordFromWatchHandler;
.super Ljava/lang/Object;
.source "IDatabaseSportRecordFromWatchHandler.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract createDatabase()V
.end method

.method public abstract delete(Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;)V
.end method

.method public abstract insert(Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;)V
.end method

.method public abstract insertPhone(Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordEntity;)V
.end method

.method public abstract open()V
.end method

.method public abstract query(I)Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;
.end method

.method public abstract queryArrayBetween(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Lcn/baos/watch/sdk/database/fromwatch/sportrecord/SportRecordFromWatchEntity;)V
.end method
