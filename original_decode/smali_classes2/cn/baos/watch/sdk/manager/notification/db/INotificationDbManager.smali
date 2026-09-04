.class public interface abstract Lcn/baos/watch/sdk/manager/notification/db/INotificationDbManager;
.super Ljava/lang/Object;
.source "INotificationDbManager.java"


# virtual methods
.method public abstract deleteNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V
.end method

.method public abstract getAllNotification()Ljava/util/ArrayList;
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

.method public abstract initNotificationDb()V
.end method

.method public abstract insertNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V
.end method

.method public abstract queryCheckStateLightDb(Ljava/lang/String;)Z
.end method

.method public abstract queryNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;
.end method

.method public abstract saveCheckStateLightDb(Ljava/lang/String;Z)V
.end method

.method public abstract updateNotification(Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;)V
.end method

.method public abstract updateNotifications(Ljava/util/ArrayList;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/entitiy/NotificationAppListEntity;",
            ">;Z)V"
        }
    .end annotation
.end method
