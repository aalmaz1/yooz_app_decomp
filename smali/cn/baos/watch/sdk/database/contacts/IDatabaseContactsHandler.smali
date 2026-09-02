.class public interface abstract Lcn/baos/watch/sdk/database/contacts/IDatabaseContactsHandler;
.super Ljava/lang/Object;
.source "IDatabaseContactsHandler.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract createDatabase()V
.end method

.method public abstract delete(Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;)V
.end method

.method public abstract deleteAll()V
.end method

.method public abstract insert(Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;)V
.end method

.method public abstract open()V
.end method

.method public abstract query(I)Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;
.end method

.method public abstract queryArrayAll()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryArrayBetween(II)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract update(Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;)V
.end method
