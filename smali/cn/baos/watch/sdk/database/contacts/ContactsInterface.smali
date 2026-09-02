.class public interface abstract Lcn/baos/watch/sdk/database/contacts/ContactsInterface;
.super Ljava/lang/Object;
.source "ContactsInterface.java"


# virtual methods
.method public abstract dlt()V
.end method

.method public abstract queryList()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract saveContactsToDb(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/entitiy/PhoneContactsEntity;",
            ">;)V"
        }
    .end annotation
.end method
