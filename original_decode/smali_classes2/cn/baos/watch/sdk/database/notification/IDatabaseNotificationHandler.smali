.class public interface abstract Lcn/baos/watch/sdk/database/notification/IDatabaseNotificationHandler;
.super Ljava/lang/Object;
.source "IDatabaseNotificationHandler.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract createDatabase()V
.end method

.method public abstract delete(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V
.end method

.method public abstract getAllNotificationAppListEntities()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;",
            ">;"
        }
    .end annotation
.end method

.method public abstract hasNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)Z
.end method

.method public abstract insert(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V
.end method

.method public abstract open()V
.end method

.method public abstract query(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;
.end method

.method public abstract update(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V
.end method
