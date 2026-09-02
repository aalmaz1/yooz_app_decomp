.class public Lcn/baos/watch/sdk/util/NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationListener.java"

# interfaces
.implements Landroid/media/RemoteController$OnClientUpdateListener;


# static fields
.field private static isConnected:Z = false

.field public static musicPosition:I


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private musicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 32
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 38
    new-instance v0, Lcn/baos/watch/w100/messages/MusicControlResponse;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/MusicControlResponse;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/util/NotificationListener;->musicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    return-void
.end method

.method public static isConnected()Z
    .registers 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u83b7\u53d6\u6d88\u606f\u901a\u77e5\u5f53\u524d\u8fde\u63a5\u72b6\u6001:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v1, Lcn/baos/watch/sdk/util/NotificationListener;->isConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 42
    sget-boolean v0, Lcn/baos/watch/sdk/util/NotificationListener;->isConnected:Z

    return v0
.end method


# virtual methods
.method public onClientChange(Z)V
    .registers 4

    .line 129
    iget-object v0, p0, Lcn/baos/watch/sdk/util/NotificationListener;->musicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    const/16 v1, 0xc

    iput v1, v0, Lcn/baos/watch/w100/messages/MusicControlResponse;->status:I

    .line 131
    invoke-static {}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->getInstance()Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/util/NotificationListener;->musicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->sendSongStatusAndVolumeToWatch(Lcn/baos/watch/w100/messages/MusicControlResponse;)V

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "notification service clearing:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .registers 7

    const/4 v0, 0x7

    const/4 v1, 0x0

    .line 172
    invoke-virtual {p1, v0, v1}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    .line 173
    invoke-virtual {p1, v2, v1}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    const/4 v2, 0x1

    .line 174
    invoke-virtual {p1, v2, v1}, Landroid/media/RemoteController$MetadataEditor;->getString(ILjava/lang/String;)Ljava/lang/String;

    const/16 v2, 0x9

    const-wide/16 v3, -0x1

    .line 176
    invoke-virtual {p1, v2, v3, v4}, Landroid/media/RemoteController$MetadataEditor;->getLong(IJ)J

    const/16 v2, 0x64

    .line 177
    invoke-virtual {p1, v2, v1}, Landroid/media/RemoteController$MetadataEditor;->getBitmap(ILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 179
    iget-object p1, p0, Lcn/baos/watch/sdk/util/NotificationListener;->musicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    iput-object v0, p1, Lcn/baos/watch/w100/messages/MusicControlResponse;->name:Ljava/lang/String;

    .line 180
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "MetadataUpdate \u6b4c\u66f2\u4fe1\u606f\u66f4\u65b0:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcn/baos/watch/sdk/util/NotificationListener;->musicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->getInstance()Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    move-result-object p1

    iget-object v0, p0, Lcn/baos/watch/sdk/util/NotificationListener;->musicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->sendSongStatusAndVolumeToWatch(Lcn/baos/watch/w100/messages/MusicControlResponse;)V

    return-void
.end method

.method public onClientPlaybackStateUpdate(I)V
    .registers 4

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "state:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onClientPlaybackStateUpdate(IJJF)V
    .registers 7

    .line 144
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "StateUpdate \u6b4c\u66f2\u72b6\u6001\u66f4\u65b0,\u56de\u8c03"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p2, 0x2

    if-ne p1, p2, :cond_1a

    .line 147
    iget-object p1, p0, Lcn/baos/watch/sdk/util/NotificationListener;->musicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    iput p2, p1, Lcn/baos/watch/w100/messages/MusicControlResponse;->status:I

    goto :goto_29

    :cond_1a
    const/4 p3, 0x3

    if-ne p1, p3, :cond_23

    .line 150
    iget-object p1, p0, Lcn/baos/watch/sdk/util/NotificationListener;->musicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    const/4 p2, 0x1

    iput p2, p1, Lcn/baos/watch/w100/messages/MusicControlResponse;->status:I

    goto :goto_29

    :cond_23
    if-nez p1, :cond_29

    .line 153
    iget-object p1, p0, Lcn/baos/watch/sdk/util/NotificationListener;->musicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    iput p2, p1, Lcn/baos/watch/w100/messages/MusicControlResponse;->status:I

    :cond_29
    :goto_29
    long-to-int p1, p4

    .line 155
    sput p1, Lcn/baos/watch/sdk/util/NotificationListener;->musicPosition:I

    .line 156
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "StateUpdate \u6b4c\u66f2\u72b6\u6001\u66f4\u65b0"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcn/baos/watch/sdk/util/NotificationListener;->musicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    invoke-static {p2}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 158
    invoke-static {}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->getInstance()Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    move-result-object p1

    iget-object p2, p0, Lcn/baos/watch/sdk/util/NotificationListener;->musicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    invoke-virtual {p1, p2}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->sendSongStatusAndVolumeToWatch(Lcn/baos/watch/w100/messages/MusicControlResponse;)V

    return-void
.end method

.method public onClientTransportControlUpdate(I)V
    .registers 4

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "transportControlFlags:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onCreate()V
    .registers 3

    .line 52
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onCreate()V

    const-string v0, "notification service onCreate"

    .line 53
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 54
    new-instance v0, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;

    invoke-direct {v0, p0}, Lcn/baos/watch/sdk/manager/notification/NotificationHandler;-><init>(Lcn/baos/watch/sdk/util/NotificationListener;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/util/NotificationListener;->mHandler:Landroid/os/Handler;

    .line 56
    invoke-static {}, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;->getInstance()Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;

    move-result-object v0

    invoke-virtual {v0, p0, p0}, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;->registerRemoteController(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    .line 58
    iget-object v0, p0, Lcn/baos/watch/sdk/util/NotificationListener;->musicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    const/16 v1, 0xc

    iput v1, v0, Lcn/baos/watch/w100/messages/MusicControlResponse;->status:I

    return-void
.end method

.method public onDestroy()V
    .registers 2

    const-string v0, "\u6d88\u606f\u76d1\u542c\u670d\u52a1notification service onDestroy"

    .line 69
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 70
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/util/NotificationListener;->setConnected(Z)V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcn/baos/watch/sdk/util/NotificationListener;->mHandler:Landroid/os/Handler;

    .line 72
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onDestroy()V

    return-void
.end method

.method public onListenerConnected()V
    .registers 3

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/util/NotificationListener;->setConnected(Z)V

    const-string v0, "notification service onListenerConnected"

    .line 78
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcn/baos/watch/sdk/util/NotificationListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_15

    const/4 v1, 0x3

    .line 80
    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_15
    return-void
.end method

.method public onListenerDisconnected()V
    .registers 2

    .line 120
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerDisconnected()V

    const-string v0, "notification service onListenerDisconnected"

    .line 122
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 5

    .line 95
    sget-boolean v0, Lcn/baos/watch/sdk/entitiy/Constant;->isPushNotification:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    const-string v0, "notification service onNotificationPosted"

    .line 98
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 99
    iget-object v0, p0, Lcn/baos/watch/sdk/util/NotificationListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    .line 100
    new-instance v1, Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    invoke-direct {v1, p1, p2}, Lcn/baos/watch/sdk/entitiy/NotificationEntity;-><init>(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    const/4 p1, 0x1

    invoke-static {v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 101
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_1b
    return-void
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 5

    const-string v0, "notification service onNotificationRankingUpdate"

    .line 86
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcn/baos/watch/sdk/util/NotificationListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_17

    .line 88
    new-instance v1, Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcn/baos/watch/sdk/entitiy/NotificationEntity;-><init>(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    const/4 p1, 0x4

    invoke-static {v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 89
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_17
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .registers 5

    const-string v0, "notification service onNotificationRemoved"

    .line 107
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 109
    :try_start_5
    iget-object v0, p0, Lcn/baos/watch/sdk/util/NotificationListener;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1b

    .line 110
    new-instance v1, Lcn/baos/watch/sdk/entitiy/NotificationEntity;

    invoke-direct {v1, p1, p2}, Lcn/baos/watch/sdk/entitiy/NotificationEntity;-><init>(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    const/4 p1, 0x2

    invoke-static {v0, p1, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_16} :catch_17

    goto :goto_1b

    :catch_17
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1b
    :goto_1b
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 4

    .line 63
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "NotificationListener notification service\u91cd\u542f\u6a21\u5f0f:"

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 p1, 0x2

    return p1
.end method

.method public setConnected(Z)V
    .registers 3

    .line 46
    sput-boolean p1, Lcn/baos/watch/sdk/util/NotificationListener;->isConnected:Z

    .line 47
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u8bbe\u7f6e\u6d88\u606f\u901a\u77e5\u5f53\u524d\u8fde\u63a5\u72b6\u6001:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-boolean v0, Lcn/baos/watch/sdk/util/NotificationListener;->isConnected:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    return-void
.end method
