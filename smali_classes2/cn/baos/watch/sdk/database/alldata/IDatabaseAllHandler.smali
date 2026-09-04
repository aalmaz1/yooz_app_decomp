.class public interface abstract Lcn/baos/watch/sdk/database/alldata/IDatabaseAllHandler;
.super Ljava/lang/Object;
.source "IDatabaseAllHandler.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract createDatabase()V
.end method

.method public abstract delete(Ljava/lang/String;)V
.end method

.method public abstract getAlEntities()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasSportRecordEntity(Ljava/lang/String;)Z
.end method

.method public abstract insert(Ljava/lang/String;)V
.end method

.method public abstract open()V
.end method

.method public abstract query(J)Ljava/lang/String;
.end method

.method public abstract queryArrayBetween(JJ)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Ljava/lang/String;)V
.end method
