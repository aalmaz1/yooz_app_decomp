.class public final Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;
.super Ljava/lang/Object;
.source "DownloadNotificationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/offline/DownloadNotificationHelper$Api31;
    }
.end annotation


# static fields
.field private static final NULL_STRING_ID:I


# instance fields
.field private final notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    return-void
.end method

.method private buildEndStateNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;
    .registers 17

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move/from16 v5, p5

    .line 198
    invoke-direct/range {v0 .. v10}, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->buildNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;IIIZZZ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private buildNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;IIIZZZ)Landroid/app/Notification;
    .registers 12

    .line 222
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {v0, p2}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    .line 223
    iget-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    const/4 v0, 0x0

    if-nez p5, :cond_c

    move-object p1, v0

    goto :goto_14

    .line 224
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 223
    :goto_14
    invoke-virtual {p2, p1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    .line 225
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1, p3}, Landroidx/core/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroidx/core/app/NotificationCompat$Builder;

    .line 226
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    if-nez p4, :cond_21

    goto :goto_2a

    .line 227
    :cond_21
    new-instance p2, Landroidx/core/app/NotificationCompat$BigTextStyle;

    invoke-direct {p2}, Landroidx/core/app/NotificationCompat$BigTextStyle;-><init>()V

    invoke-virtual {p2, p4}, Landroidx/core/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$BigTextStyle;

    move-result-object v0

    .line 226
    :goto_2a
    invoke-virtual {p1, v0}, Landroidx/core/app/NotificationCompat$Builder;->setStyle(Landroidx/core/app/NotificationCompat$Style;)Landroidx/core/app/NotificationCompat$Builder;

    .line 228
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1, p6, p7, p8}, Landroidx/core/app/NotificationCompat$Builder;->setProgress(IIZ)Landroidx/core/app/NotificationCompat$Builder;

    .line 229
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1, p9}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 230
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1, p10}, Landroidx/core/app/NotificationCompat$Builder;->setShowWhen(Z)Landroidx/core/app/NotificationCompat$Builder;

    .line 231
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p2, 0x1f

    if-lt p1, p2, :cond_47

    .line 232
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper$Api31;->setForegroundServiceBehavior(Landroidx/core/app/NotificationCompat$Builder;)V

    .line 234
    :cond_47
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->notificationBuilder:Landroidx/core/app/NotificationCompat$Builder;

    invoke-virtual {p1}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public buildDownloadCompletedNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .registers 11

    .line 170
    sget v5, Landroidx/media3/exoplayer/R$string;->exo_download_completed:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 171
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->buildEndStateNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public buildDownloadFailedNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;)Landroid/app/Notification;
    .registers 11

    .line 188
    sget v5, Landroidx/media3/exoplayer/R$string;->exo_download_failed:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 189
    invoke-direct/range {v0 .. v5}, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->buildEndStateNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;I)Landroid/app/Notification;

    move-result-object p1

    return-object p1
.end method

.method public buildProgressNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;Ljava/util/List;I)Landroid/app/Notification;
    .registers 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Landroid/app/PendingIntent;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/offline/Download;",
            ">;I)",
            "Landroid/app/Notification;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v3

    move v5, v4

    move v6, v5

    move v7, v6

    move v8, v7

    move v9, v2

    .line 79
    :goto_a
    invoke-interface/range {p5 .. p5}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_4a

    move-object/from16 v10, p5

    .line 80
    invoke-interface {v10, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/media3/exoplayer/offline/Download;

    .line 81
    iget v12, v11, Landroidx/media3/exoplayer/offline/Download;->state:I

    if-eqz v12, :cond_46

    const/4 v13, 0x2

    if-eq v12, v13, :cond_28

    const/4 v13, 0x5

    if-eq v12, v13, :cond_26

    const/4 v13, 0x7

    if-eq v12, v13, :cond_28

    goto :goto_47

    :cond_26
    move v7, v2

    goto :goto_47

    .line 91
    :cond_28
    invoke-virtual {v11}, Landroidx/media3/exoplayer/offline/Download;->getPercentDownloaded()F

    move-result v4

    const/high16 v12, -0x40800000    # -1.0f

    cmpl-float v12, v4, v12

    if-eqz v12, :cond_34

    add-float/2addr v0, v4

    move v9, v1

    .line 96
    :cond_34
    invoke-virtual {v11}, Landroidx/media3/exoplayer/offline/Download;->getBytesDownloaded()J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v4, v11, v13

    if-lez v4, :cond_40

    move v4, v2

    goto :goto_41

    :cond_40
    move v4, v1

    :goto_41
    or-int/2addr v6, v4

    add-int/lit8 v8, v8, 0x1

    move v4, v2

    goto :goto_47

    :cond_46
    move v5, v2

    :goto_47
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_4a
    if-eqz v4, :cond_51

    .line 111
    sget v3, Landroidx/media3/exoplayer/R$string;->exo_download_downloading:I

    :goto_4e
    move v15, v3

    :goto_4f
    move v3, v2

    goto :goto_6f

    :cond_51
    if-eqz v5, :cond_68

    if-eqz p6, :cond_68

    and-int/lit8 v3, p6, 0x2

    if-eqz v3, :cond_5e

    .line 117
    sget v3, Landroidx/media3/exoplayer/R$string;->exo_download_paused_for_wifi:I

    :goto_5b
    move v15, v3

    move v3, v1

    goto :goto_6f

    :cond_5e
    and-int/lit8 v3, p6, 0x1

    if-eqz v3, :cond_65

    .line 119
    sget v3, Landroidx/media3/exoplayer/R$string;->exo_download_paused_for_network:I

    goto :goto_5b

    .line 121
    :cond_65
    sget v3, Landroidx/media3/exoplayer/R$string;->exo_download_paused:I

    goto :goto_5b

    :cond_68
    if-eqz v7, :cond_6d

    .line 124
    sget v3, Landroidx/media3/exoplayer/R$string;->exo_download_removing:I

    goto :goto_4e

    :cond_6d
    move v15, v1

    goto :goto_4f

    :goto_6f
    if-eqz v3, :cond_89

    const/16 v3, 0x64

    if-eqz v4, :cond_82

    int-to-float v4, v8

    div-float/2addr v0, v4

    float-to-int v0, v0

    if-eqz v9, :cond_7d

    if-eqz v6, :cond_7d

    move v1, v2

    :cond_7d
    move/from16 v17, v0

    move/from16 v18, v1

    goto :goto_86

    :cond_82
    move/from16 v17, v1

    move/from16 v18, v2

    :goto_86
    move/from16 v16, v3

    goto :goto_8f

    :cond_89
    move/from16 v16, v1

    move/from16 v17, v16

    move/from16 v18, v17

    :goto_8f
    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, p2

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    .line 143
    invoke-direct/range {v10 .. v20}, Landroidx/media3/exoplayer/offline/DownloadNotificationHelper;->buildNotification(Landroid/content/Context;ILandroid/app/PendingIntent;Ljava/lang/String;IIIZZZ)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method
