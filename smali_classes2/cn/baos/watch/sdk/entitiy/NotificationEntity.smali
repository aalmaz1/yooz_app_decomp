.class public Lcn/baos/watch/sdk/entitiy/NotificationEntity;
.super Ljava/lang/Object;
.source "NotificationEntity.java"


# instance fields
.field private rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private sbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public constructor <init>(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 12
    iput-object p2, p0, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-void
.end method


# virtual methods
.method public getRankingMap()Landroid/service/notification/NotificationListenerService$RankingMap;
    .locals 1

    .line 24
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-object v0
.end method

.method public getSbn()Landroid/service/notification/StatusBarNotification;
    .locals 1

    .line 16
    iget-object v0, p0, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->sbn:Landroid/service/notification/StatusBarNotification;

    return-object v0
.end method

.method public setRankingMap(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->rankingMap:Landroid/service/notification/NotificationListenerService$RankingMap;

    return-void
.end method

.method public setSbn(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 20
    iput-object p1, p0, Lcn/baos/watch/sdk/entitiy/NotificationEntity;->sbn:Landroid/service/notification/StatusBarNotification;

    return-void
.end method
