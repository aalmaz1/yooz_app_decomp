.class public Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;
.super Landroid/content/ContextWrapper;
.source "NotificationUtils.java"


# static fields
.field private static CHANNEL_ID:Ljava/lang/String; = "default"

.field private static CHANNEL_NAME:Ljava/lang/String; = "Default_Channel"


# instance fields
.field private channel:Landroid/app/NotificationChannel;

.field private mManager:Landroid/app/NotificationManager;

.field private params:Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 45
    invoke-direct {p0, p1, p1}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->createNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    .line 50
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 53
    invoke-direct {p0, p2, p1}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->createNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 58
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 61
    invoke-direct {p0, p2, p3}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->createNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    return-void
.end method

.method private createNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 5

    .line 77
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 78
    sput-object p1, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->CHANNEL_ID:Ljava/lang/String;

    .line 80
    :cond_8
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 81
    sput-object p2, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->CHANNEL_NAME:Ljava/lang/String;

    .line 83
    :cond_10
    new-instance p1, Landroid/app/NotificationChannel;

    sget-object p2, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->CHANNEL_ID:Ljava/lang/String;

    sget-object v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->CHANNEL_NAME:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-direct {p1, p2, v0, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->channel:Landroid/app/NotificationChannel;

    const/4 p2, 0x0

    .line 87
    invoke-virtual {p1, p2, p2}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    .line 99
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getManager()Landroid/app/NotificationManager;

    move-result-object p1

    iget-object p2, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->channel:Landroid/app/NotificationChannel;

    invoke-virtual {p1, p2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 100
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->channel:Landroid/app/NotificationChannel;

    return-object p1
.end method

.method private getNotificationCompat(Ljava/lang/String;Ljava/lang/String;I)Landroidx/core/app/NotificationCompat$Builder;
    .registers 8

    .line 276
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getNotificationParams()Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;

    move-result-object v0

    .line 278
    new-instance v1, Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 284
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 285
    invoke-virtual {v1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 286
    invoke-virtual {v1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 288
    iget p1, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->priority:I

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setPriority(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 290
    iget-boolean p1, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->onlyAlertOnce:Z

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setOnlyAlertOnce(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 292
    iget-boolean p1, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->ongoing:Z

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 293
    iget-object p1, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->remoteViews:Landroid/widget/RemoteViews;

    if-eqz p1, :cond_30

    .line 294
    iget-object p1, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroidx/core/app/NotificationCompat$Builder;

    .line 296
    :cond_30
    iget-object p1, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->intent:Landroid/app/PendingIntent;

    if-eqz p1, :cond_39

    .line 297
    iget-object p1, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 299
    :cond_39
    iget-object p1, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->ticker:Ljava/lang/String;

    if-eqz p1, :cond_4a

    iget-object p1, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->ticker:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_4a

    .line 300
    iget-object p1, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->ticker:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 302
    :cond_4a
    iget-wide p1, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->when:J

    const-wide/16 v2, 0x0

    cmp-long p1, p1, v2

    if-eqz p1, :cond_57

    .line 303
    iget-wide p1, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->when:J

    invoke-virtual {v1, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;->setWhen(J)Landroidx/core/app/NotificationCompat$Builder;

    .line 305
    :cond_57
    iget-object p1, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->sound:Landroid/net/Uri;

    if-eqz p1, :cond_60

    .line 306
    iget-object p1, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->sound:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setSound(Landroid/net/Uri;)Landroidx/core/app/NotificationCompat$Builder;

    .line 308
    :cond_60
    iget p1, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->defaults:I

    if-eqz p1, :cond_69

    .line 309
    iget p1, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->defaults:I

    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setDefaults(I)Landroidx/core/app/NotificationCompat$Builder;

    :cond_69
    const/4 p1, 0x1

    .line 312
    invoke-virtual {v1, p1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    return-object v1
.end method

.method private getNotificationV4(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification$Builder;
    .registers 8

    .line 319
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getNotificationParams()Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;

    move-result-object v0

    .line 320
    new-instance v1, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->CHANNEL_ID:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 323
    invoke-virtual {v1, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 325
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 327
    invoke-virtual {p1, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-boolean p2, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->ongoing:Z

    .line 329
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    iget p2, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->priority:I

    .line 331
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object p1

    iget-boolean p2, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->onlyAlertOnce:Z

    .line 333
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 334
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 335
    iget-object p2, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->remoteViews:Landroid/widget/RemoteViews;

    if-eqz p2, :cond_3b

    .line 337
    iget-object p2, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->remoteViews:Landroid/widget/RemoteViews;

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    .line 339
    :cond_3b
    iget-object p2, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->intent:Landroid/app/PendingIntent;

    if-eqz p2, :cond_44

    .line 340
    iget-object p2, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->intent:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 342
    :cond_44
    iget-object p2, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->ticker:Ljava/lang/String;

    if-eqz p2, :cond_55

    iget-object p2, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->ticker:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    if-lez p2, :cond_55

    .line 344
    iget-object p2, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->ticker:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 346
    :cond_55
    iget-wide p2, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->when:J

    const-wide/16 v1, 0x0

    cmp-long p2, p2, v1

    if-eqz p2, :cond_62

    .line 348
    iget-wide p2, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->when:J

    invoke-virtual {p1, p2, p3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 350
    :cond_62
    iget-object p2, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->sound:Landroid/net/Uri;

    if-eqz p2, :cond_6b

    .line 352
    iget-object p2, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->sound:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 354
    :cond_6b
    iget p2, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->defaults:I

    if-eqz p2, :cond_74

    .line 356
    iget p2, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->defaults:I

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 358
    :cond_74
    iget-object p2, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->pattern:[J

    if-eqz p2, :cond_7d

    .line 360
    iget-object p2, v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->pattern:[J

    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    :cond_7d
    return-object p1
.end method


# virtual methods
.method public clearAllGroupNotification()V
    .registers 8

    .line 188
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getManager()Landroid/app/NotificationManager;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannelGroups()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_44

    const/4 v2, 0x0

    .line 191
    :goto_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 192
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannelGroup;

    if-nez v3, :cond_1a

    goto :goto_41

    .line 196
    :cond_1a
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->getId()Ljava/lang/String;

    move-result-object v4

    .line 197
    invoke-virtual {v3}, Landroid/app/NotificationChannelGroup;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 198
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "notification group "

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_44
    return-void
.end method

.method public clearAllNotification()V
    .registers 8

    .line 167
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getManager()Landroid/app/NotificationManager;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Landroid/app/NotificationManager;->getNotificationChannels()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_44

    const/4 v2, 0x0

    .line 170
    :goto_b
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_44

    .line 171
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/NotificationChannel;

    if-nez v3, :cond_1a

    goto :goto_41

    .line 175
    :cond_1a
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    .line 176
    invoke-virtual {v3}, Landroid/app/NotificationChannel;->getName()Ljava/lang/CharSequence;

    move-result-object v3

    .line 177
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " , "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "notification channel "

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    invoke-virtual {v0, v4}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_44
    return-void
.end method

.method public clearId()V
    .registers 3

    .line 146
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getManager()Landroid/app/NotificationManager;

    move-result-object v0

    const/16 v1, 0x5f0

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public clearNotification()V
    .registers 2

    .line 142
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getManager()Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->cancelAll()V

    return-void
.end method

.method public clearNotificationChannel(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_10

    .line 155
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 158
    :cond_9
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getManager()Landroid/app/NotificationManager;

    move-result-object v0

    .line 159
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->deleteNotificationChannel(Ljava/lang/String;)V

    :cond_10
    :goto_10
    return-void
.end method

.method public getManager()Landroid/app/NotificationManager;
    .registers 2

    .line 108
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->mManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_e

    const-string v0, "notification"

    .line 109
    invoke-virtual {p0, v0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->mManager:Landroid/app/NotificationManager;

    .line 111
    :cond_e
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->mManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method public getNotification(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification;
    .registers 6

    .line 214
    invoke-direct {p0, p1, p2, p3}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getNotificationV4(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 215
    invoke-virtual {p1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    .line 220
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getNotificationParams()Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;

    move-result-object p2

    .line 221
    iget-object p3, p2, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->flags:[I

    if-eqz p3, :cond_27

    iget-object p3, p2, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->flags:[I

    array-length p3, p3

    if-lez p3, :cond_27

    const/4 p3, 0x0

    .line 222
    :goto_16
    iget-object v0, p2, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->flags:[I

    array-length v0, v0

    if-ge p3, v0, :cond_27

    .line 223
    iget v0, p1, Landroid/app/Notification;->flags:I

    iget-object v1, p2, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->flags:[I

    aget v1, v1, p3

    or-int/2addr v0, v1

    iput v0, p1, Landroid/app/Notification;->flags:I

    add-int/lit8 p3, p3, 0x1

    goto :goto_16

    :cond_27
    return-object p1
.end method

.method public getNotificationChannel()Landroid/app/NotificationChannel;
    .registers 2

    .line 119
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->channel:Landroid/app/NotificationChannel;

    if-nez v0, :cond_b

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, v0, v0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->createNotificationChannel(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0

    iput-object v0, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->channel:Landroid/app/NotificationChannel;

    .line 122
    :cond_b
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->channel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;
    .registers 3

    .line 131
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 132
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object p1

    return-object p1

    .line 134
    :cond_b
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getManager()Landroid/app/NotificationManager;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    return-object p1
.end method

.method public getNotificationParams()Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;
    .registers 2

    .line 368
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->params:Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;

    if-nez v0, :cond_9

    .line 369
    new-instance v0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;

    invoke-direct {v0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;-><init>()V

    :cond_9
    return-object v0
.end method

.method public isNoImportance(Landroid/app/NotificationChannel;)Z
    .registers 2

    .line 387
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result p1

    if-nez p1, :cond_8

    const/4 p1, 0x1

    return p1

    :cond_8
    const/4 p1, 0x0

    return p1
.end method

.method public isNoImportance(Ljava/lang/String;)Z
    .registers 2

    .line 401
    invoke-virtual {p0, p1}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    .line 402
    invoke-virtual {p0, p1}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->isNoImportance(Landroid/app/NotificationChannel;)Z

    move-result p1

    return p1
.end method

.method public openChannelSetting(Landroid/app/NotificationChannel;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 416
    :cond_3
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-nez v0, :cond_25

    .line 417
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.CHANNEL_NOTIFICATION_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.provider.extra.APP_PACKAGE"

    .line 418
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.provider.extra.CHANNEL_ID"

    .line 419
    invoke-virtual {p1}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    invoke-virtual {p0, v0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->startActivity(Landroid/content/Intent;)V

    :cond_25
    return-void
.end method

.method public openChannelSetting(Ljava/lang/String;)V
    .registers 2

    .line 407
    invoke-virtual {p0, p1}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getNotificationChannel(Ljava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p1

    .line 408
    invoke-virtual {p0, p1}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->openChannelSetting(Landroid/app/NotificationChannel;)V

    return-void
.end method

.method public sendNotification(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 241
    invoke-direct {p0, p2, p3, p4}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getNotificationV4(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 242
    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 247
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getNotificationParams()Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;

    move-result-object p3

    .line 248
    iget-object p4, p3, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->flags:[I

    if-eqz p4, :cond_27

    iget-object p4, p3, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->flags:[I

    array-length p4, p4

    if-lez p4, :cond_27

    const/4 p4, 0x0

    .line 249
    :goto_16
    iget-object v0, p3, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->flags:[I

    array-length v0, v0

    if-ge p4, v0, :cond_27

    .line 250
    iget v0, p2, Landroid/app/Notification;->flags:I

    iget-object v1, p3, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->flags:[I

    aget v1, v1, p4

    or-int/2addr v0, v1

    iput v0, p2, Landroid/app/Notification;->flags:I

    add-int/lit8 p4, p4, 0x1

    goto :goto_16

    .line 253
    :cond_27
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getManager()Landroid/app/NotificationManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public sendNotificationCompat(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 7

    .line 263
    invoke-direct {p0, p2, p3, p4}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getNotificationCompat(Ljava/lang/String;Ljava/lang/String;I)Landroidx/core/app/NotificationCompat$Builder;

    move-result-object p2

    .line 264
    invoke-virtual {p2}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    .line 265
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getNotificationParams()Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;

    move-result-object p3

    .line 266
    iget-object p4, p3, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->flags:[I

    if-eqz p4, :cond_27

    iget-object p4, p3, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->flags:[I

    array-length p4, p4

    if-lez p4, :cond_27

    const/4 p4, 0x0

    .line 267
    :goto_16
    iget-object v0, p3, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->flags:[I

    array-length v0, v0

    if-ge p4, v0, :cond_27

    .line 268
    iget v0, p2, Landroid/app/Notification;->flags:I

    iget-object v1, p3, Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;->flags:[I

    aget v1, v1, p4

    or-int/2addr v0, v1

    iput v0, p2, Landroid/app/Notification;->flags:I

    add-int/lit8 p4, p4, 0x1

    goto :goto_16

    .line 271
    :cond_27
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->getManager()Landroid/app/NotificationManager;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method public setNotificationParams(Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;)Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;
    .registers 2

    .line 375
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/lb/NotificationUtils;->params:Lcn/yoozworld/watch/utils/notifi/lb/NotificationParams;

    return-object p0
.end method
