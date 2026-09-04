.class public interface abstract Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/IDatabaseSportModeHandler;
.super Ljava/lang/Object;
.source "IDatabaseSportModeHandler.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract createDatabase()V
.end method

.method public abstract delete(Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;)V
.end method

.method public abstract insert(Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;)V
.end method

.method public abstract insertToPhone(Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;)V
.end method

.method public abstract open()V
.end method

.method public abstract query(I)Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;
.end method

.method public abstract queryArrayBetween(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryArrayBetweenPhone(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/huabaoImpl/syncdata/sport/SportPhoneRecordDetailEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Lcn/baos/watch/sdk/database/fromwatch/sensordatasportmode/SportModeEntity;)V
.end method
