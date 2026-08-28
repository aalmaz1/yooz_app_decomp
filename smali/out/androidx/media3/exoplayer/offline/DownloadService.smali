.class public abstract Landroidx/media3/exoplayer/offline/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;,
        Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;
    }
.end annotation


# static fields
.field public static final ACTION_ADD_DOWNLOAD:Ljava/lang/String; = "androidx.media3.exoplayer.downloadService.action.ADD_DOWNLOAD"

.field public static final ACTION_INIT:Ljava/lang/String; = "androidx.media3.exoplayer.downloadService.action.INIT"

.field public static final ACTION_PAUSE_DOWNLOADS:Ljava/lang/String; = "androidx.media3.exoplayer.downloadService.action.PAUSE_DOWNLOADS"

.field public static final ACTION_REMOVE_ALL_DOWNLOADS:Ljava/lang/String; = "androidx.media3.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS"

.field public static final ACTION_REMOVE_DOWNLOAD:Ljava/lang/String; = "androidx.media3.exoplayer.downloadService.action.REMOVE_DOWNLOAD"

.field private static final ACTION_RESTART:Ljava/lang/String; = "androidx.media3.exoplayer.downloadService.action.RESTART"

.field public static final ACTION_RESUME_DOWNLOADS:Ljava/lang/String; = "androidx.media3.exoplayer.downloadService.action.RESUME_DOWNLOADS"

.field public static final ACTION_SET_REQUIREMENTS:Ljava/lang/String; = "androidx.media3.exoplayer.downloadService.action.SET_REQUIREMENTS"

.field public static final ACTION_SET_STOP_REASON:Ljava/lang/String; = "androidx.media3.exoplayer.downloadService.action.SET_STOP_REASON"

.field public static final DEFAULT_FOREGROUND_NOTIFICATION_UPDATE_INTERVAL:J = 0x3e8L

.field public static final FOREGROUND_NOTIFICATION_ID_NONE:I = 0x0

.field public static final KEY_CONTENT_ID:Ljava/lang/String; = "content_id"

.field public static final KEY_DOWNLOAD_REQUEST:Ljava/lang/String; = "download_request"

.field public static final KEY_FOREGROUND:Ljava/lang/String; = "foreground"

.field public static final KEY_REQUIREMENTS:Ljava/lang/String; = "requirements"

.field public static final KEY_STOP_REASON:Ljava/lang/String; = "stop_reason"

.field private static final TAG:Ljava/lang/String; = "DownloadService"

.field private static final downloadManagerHelpers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final channelDescriptionResourceId:I

.field private final channelId:Ljava/lang/String;

.field private final channelNameResourceId:I

.field private downloadManagerHelper:Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

.field private final foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

.field private isDestroyed:Z

.field private isStopped:Z

.field private lastStartId:I

.field private startedInForeground:Z

.field private taskRemoved:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroidx/media3/exoplayer/offline/DownloadService;->downloadManagerHelpers:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(I)V
    .registers 4

    const-wide/16 v0, 0x3e8

    .line 219
    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/offline/DownloadService;-><init>(IJ)V

    return-void
.end method

.method protected constructor <init>(IJ)V
    .registers 11

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 233
    invoke-direct/range {v0 .. v6}, Landroidx/media3/exoplayer/offline/DownloadService;-><init>(IJLjava/lang/String;II)V

    return-void
.end method

.method protected constructor <init>(IJLjava/lang/String;II)V
    .registers 8

    .line 268
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    if-nez p1, :cond_10

    const/4 p1, 0x0

    .line 270
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    .line 271
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->channelId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 272
    iput p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->channelNameResourceId:I

    .line 273
    iput p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->channelDescriptionResourceId:I

    goto :goto_1d

    .line 275
    :cond_10
    new-instance v0, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    invoke-direct {v0, p0, p1, p2, p3}, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;-><init>(Landroidx/media3/exoplayer/offline/DownloadService;IJ)V

    iput-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    .line 278
    iput-object p4, p0, Landroidx/media3/exoplayer/offline/DownloadService;->channelId:Ljava/lang/String;

    .line 279
    iput p5, p0, Landroidx/media3/exoplayer/offline/DownloadService;->channelNameResourceId:I

    .line 280
    iput p6, p0, Landroidx/media3/exoplayer/offline/DownloadService;->channelDescriptionResourceId:I

    :goto_1d
    return-void
.end method

.method static synthetic access$200(Landroidx/media3/exoplayer/offline/DownloadService;)Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;
    .registers 1

    .line 56
    iget-object p0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->downloadManagerHelper:Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    return-object p0
.end method

.method static synthetic access$300(Landroidx/media3/exoplayer/offline/DownloadService;Ljava/util/List;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadService;->notifyDownloads(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$400(Landroidx/media3/exoplayer/offline/DownloadService;Landroidx/media3/exoplayer/offline/Download;)V
    .registers 2

    .line 56
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadService;->notifyDownloadChanged(Landroidx/media3/exoplayer/offline/Download;)V

    return-void
.end method

.method static synthetic access$500(I)Z
    .registers 1

    .line 56
    invoke-static {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->needsStartedService(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$600(Landroidx/media3/exoplayer/offline/DownloadService;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->notifyDownloadRemoved()V

    return-void
.end method

.method static synthetic access$700(Landroidx/media3/exoplayer/offline/DownloadService;)V
    .registers 1

    .line 56
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->onIdle()V

    return-void
.end method

.method static synthetic access$800(Landroidx/media3/exoplayer/offline/DownloadService;)Z
    .registers 1

    .line 56
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->isStopped()Z

    move-result p0

    return p0
.end method

.method static synthetic access$900(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .registers 3

    .line 56
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildAddDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;IZ)Landroid/content/Intent;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Landroidx/media3/exoplayer/offline/DownloadRequest;",
            "IZ)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "androidx.media3.exoplayer.downloadService.action.ADD_DOWNLOAD"

    .line 318
    invoke-static {p0, p1, v0, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "download_request"

    .line 319
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "stop_reason"

    .line 320
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildAddDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;Z)Landroid/content/Intent;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Landroidx/media3/exoplayer/offline/DownloadRequest;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 298
    invoke-static {p0, p1, p2, v0, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->buildAddDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;IZ)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildPauseDownloadsIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "androidx.media3.exoplayer.downloadService.action.PAUSE_DOWNLOADS"

    .line 374
    invoke-static {p0, p1, v0, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildRemoveAllDownloadsIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "androidx.media3.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS"

    .line 348
    invoke-static {p0, p1, v0, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildRemoveDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "androidx.media3.exoplayer.downloadService.action.REMOVE_DOWNLOAD"

    .line 334
    invoke-static {p0, p1, v0, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "content_id"

    .line 335
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildResumeDownloadsIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "androidx.media3.exoplayer.downloadService.action.RESUME_DOWNLOADS"

    .line 361
    invoke-static {p0, p1, v0, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildSetRequirementsIntent(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/scheduler/Requirements;Z)Landroid/content/Intent;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Landroidx/media3/exoplayer/scheduler/Requirements;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "androidx.media3.exoplayer.downloadService.action.SET_REQUIREMENTS"

    .line 414
    invoke-static {p0, p1, v0, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "requirements"

    .line 415
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildSetStopReasonIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;IZ)Landroid/content/Intent;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Ljava/lang/String;",
            "IZ)",
            "Landroid/content/Intent;"
        }
    .end annotation

    const-string v0, "androidx.media3.exoplayer.downloadService.action.SET_STOP_REASON"

    .line 394
    invoke-static {p0, p1, v0, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "content_id"

    .line 395
    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "stop_reason"

    .line 396
    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static clearDownloadManagerHelpers()V
    .registers 1

    .line 579
    sget-object v0, Landroidx/media3/exoplayer/offline/DownloadService;->downloadManagerHelpers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method private static getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 867
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private static getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .line 862
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "foreground"

    invoke-virtual {p0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private isStopped()Z
    .registers 2

    .line 828
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->isStopped:Z

    return v0
.end method

.method private static needsStartedService(I)Z
    .registers 2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_c

    const/4 v0, 0x5

    if-eq p0, v0, :cond_c

    const/4 v0, 0x7

    if-ne p0, v0, :cond_a

    goto :goto_c

    :cond_a
    const/4 p0, 0x0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    return p0
.end method

.method private notifyDownloadChanged(Landroidx/media3/exoplayer/offline/Download;)V
    .registers 3

    .line 810
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz v0, :cond_17

    .line 811
    iget p1, p1, Landroidx/media3/exoplayer/offline/Download;->state:I

    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadService;->needsStartedService(I)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 812
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;->startPeriodicUpdates()V

    goto :goto_17

    .line 814
    :cond_12
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;->invalidate()V

    :cond_17
    :goto_17
    return-void
.end method

.method private notifyDownloadRemoved()V
    .registers 2

    .line 821
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz v0, :cond_7

    .line 822
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;->invalidate()V

    :cond_7
    return-void
.end method

.method private notifyDownloads(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/offline/Download;",
            ">;)V"
        }
    .end annotation

    .line 794
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz v0, :cond_22

    const/4 v0, 0x0

    .line 795
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_22

    .line 796
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/offline/Download;

    iget v1, v1, Landroidx/media3/exoplayer/offline/Download;->state:I

    invoke-static {v1}, Landroidx/media3/exoplayer/offline/DownloadService;->needsStartedService(I)Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 797
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;->startPeriodicUpdates()V

    goto :goto_22

    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_22
    :goto_22
    return-void
.end method

.method private onIdle()V
    .registers 3

    .line 832
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz v0, :cond_7

    .line 835
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;->stopPeriodicUpdates()V

    .line 838
    :cond_7
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->downloadManagerHelper:Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->updateScheduler()Z

    move-result v0

    if-nez v0, :cond_16

    return-void

    .line 846
    :cond_16
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1c

    if-ge v0, v1, :cond_27

    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->taskRemoved:Z

    if-eqz v0, :cond_27

    .line 847
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->stopSelf()V

    const/4 v0, 0x1

    .line 848
    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->isStopped:Z

    goto :goto_32

    .line 850
    :cond_27
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->isStopped:Z

    iget v1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->lastStartId:I

    invoke-virtual {p0, v1}, Landroidx/media3/exoplayer/offline/DownloadService;->stopSelfResult(I)Z

    move-result v1

    or-int/2addr v0, v1

    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->isStopped:Z

    :goto_32
    return-void
.end method

.method public static sendAddDownload(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Landroidx/media3/exoplayer/offline/DownloadRequest;",
            "IZ)V"
        }
    .end annotation

    .line 451
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->buildAddDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;IZ)Landroid/content/Intent;

    move-result-object p1

    .line 452
    invoke-static {p0, p1, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static sendAddDownload(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Landroidx/media3/exoplayer/offline/DownloadRequest;",
            "Z)V"
        }
    .end annotation

    .line 431
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->buildAddDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadRequest;Z)Landroid/content/Intent;

    move-result-object p1

    .line 432
    invoke-static {p0, p1, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static sendPauseDownloads(Landroid/content/Context;Ljava/lang/Class;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;Z)V"
        }
    .end annotation

    .line 504
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->buildPauseDownloadsIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;

    move-result-object p1

    .line 505
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static sendRemoveAllDownloads(Landroid/content/Context;Ljava/lang/Class;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;Z)V"
        }
    .end annotation

    .line 478
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->buildRemoveAllDownloadsIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;

    move-result-object p1

    .line 479
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static sendRemoveDownload(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 465
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->buildRemoveDownloadIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 466
    invoke-static {p0, p1, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static sendResumeDownloads(Landroid/content/Context;Ljava/lang/Class;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;Z)V"
        }
    .end annotation

    .line 491
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->buildResumeDownloadsIntent(Landroid/content/Context;Ljava/lang/Class;Z)Landroid/content/Intent;

    move-result-object p1

    .line 492
    invoke-static {p0, p1, p2}, Landroidx/media3/exoplayer/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static sendSetRequirements(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/scheduler/Requirements;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Landroidx/media3/exoplayer/scheduler/Requirements;",
            "Z)V"
        }
    .end annotation

    .line 542
    invoke-static {p0, p1, p2, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->buildSetRequirementsIntent(Landroid/content/Context;Ljava/lang/Class;Landroidx/media3/exoplayer/scheduler/Requirements;Z)Landroid/content/Intent;

    move-result-object p1

    .line 543
    invoke-static {p0, p1, p3}, Landroidx/media3/exoplayer/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static sendSetStopReason(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;IZ)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;",
            "Ljava/lang/String;",
            "IZ)V"
        }
    .end annotation

    .line 524
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->buildSetStopReasonIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;IZ)Landroid/content/Intent;

    move-result-object p1

    .line 525
    invoke-static {p0, p1, p4}, Landroidx/media3/exoplayer/offline/DownloadService;->startService(Landroid/content/Context;Landroid/content/Intent;Z)V

    return-void
.end method

.method public static start(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;)V"
        }
    .end annotation

    const-string v0, "androidx.media3.exoplayer.downloadService.action.INIT"

    .line 554
    invoke-static {p0, p1, v0}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public static startForeground(Landroid/content/Context;Ljava/lang/Class;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/media3/exoplayer/offline/DownloadService;",
            ">;)V"
        }
    .end annotation

    const-string v0, "androidx.media3.exoplayer.downloadService.action.INIT"

    const/4 v1, 0x1

    .line 567
    invoke-static {p0, p1, v0, v1}, Landroidx/media3/exoplayer/offline/DownloadService;->getIntent(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    .line 568
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method private static startService(Landroid/content/Context;Landroid/content/Intent;Z)V
    .registers 3

    if-eqz p2, :cond_6

    .line 872
    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_9

    .line 874
    :cond_6
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_9
    return-void
.end method


# virtual methods
.method protected abstract getDownloadManager()Landroidx/media3/exoplayer/offline/DownloadManager;
.end method

.method protected abstract getForegroundNotification(Ljava/util/List;I)Landroid/app/Notification;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/exoplayer/offline/Download;",
            ">;I)",
            "Landroid/app/Notification;"
        }
    .end annotation
.end method

.method protected abstract getScheduler()Landroidx/media3/exoplayer/scheduler/Scheduler;
.end method

.method protected final invalidateForegroundNotification()V
    .registers 3

    .line 783
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz v0, :cond_b

    iget-boolean v1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->isDestroyed:Z

    if-nez v1, :cond_b

    .line 784
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;->invalidate()V

    :cond_b
    return-void
.end method

.method public final onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 2

    .line 717
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public onCreate()V
    .registers 12

    .line 584
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->channelId:Ljava/lang/String;

    if-eqz v0, :cond_c

    .line 585
    iget v1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->channelNameResourceId:I

    iget v2, p0, Landroidx/media3/exoplayer/offline/DownloadService;->channelDescriptionResourceId:I

    const/4 v3, 0x2

    invoke-static {p0, v0, v1, v2, v3}, Landroidx/media3/common/util/NotificationUtil;->createNotificationChannel(Landroid/content/Context;Ljava/lang/String;III)V

    .line 592
    :cond_c
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 593
    sget-object v1, Landroidx/media3/exoplayer/offline/DownloadService;->downloadManagerHelpers:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    if-nez v2, :cond_4c

    .line 595
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_22

    move v7, v3

    goto :goto_23

    :cond_22
    move v7, v4

    .line 597
    :goto_23
    sget v2, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x1f

    if-ge v2, v5, :cond_2a

    goto :goto_2b

    :cond_2a
    move v3, v4

    :goto_2b
    if-eqz v7, :cond_34

    if-eqz v3, :cond_34

    .line 600
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->getScheduler()Landroidx/media3/exoplayer/scheduler/Scheduler;

    move-result-object v2

    goto :goto_35

    :cond_34
    const/4 v2, 0x0

    :goto_35
    move-object v8, v2

    .line 601
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->getDownloadManager()Landroidx/media3/exoplayer/offline/DownloadManager;

    move-result-object v6

    .line 602
    invoke-virtual {v6}, Landroidx/media3/exoplayer/offline/DownloadManager;->resumeDownloads()V

    .line 603
    new-instance v2, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    .line 605
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    const/4 v10, 0x0

    move-object v4, v2

    move-object v9, v0

    invoke-direct/range {v4 .. v10}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;-><init>(Landroid/content/Context;Landroidx/media3/exoplayer/offline/DownloadManager;ZLandroidx/media3/exoplayer/scheduler/Scheduler;Ljava/lang/Class;Landroidx/media3/exoplayer/offline/DownloadService$1;)V

    .line 606
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 608
    :cond_4c
    iput-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadService;->downloadManagerHelper:Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    .line 609
    invoke-virtual {v2, p0}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->attachService(Landroidx/media3/exoplayer/offline/DownloadService;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    const/4 v0, 0x1

    .line 704
    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->isDestroyed:Z

    .line 705
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->downloadManagerHelper:Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    invoke-virtual {v0, p0}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->detachService(Landroidx/media3/exoplayer/offline/DownloadService;)V

    .line 706
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz v0, :cond_15

    .line 707
    invoke-virtual {v0}, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;->stopPeriodicUpdates()V

    :cond_15
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 11

    .line 614
    iput p3, p0, Landroidx/media3/exoplayer/offline/DownloadService;->lastStartId:I

    const/4 p2, 0x0

    .line 615
    iput-boolean p2, p0, Landroidx/media3/exoplayer/offline/DownloadService;->taskRemoved:Z

    const-string p3, "androidx.media3.exoplayer.downloadService.action.RESTART"

    const/4 v0, 0x1

    if-eqz p1, :cond_2c

    .line 619
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "content_id"

    .line 620
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 621
    iget-boolean v3, p0, Landroidx/media3/exoplayer/offline/DownloadService;->startedInForeground:Z

    const-string v4, "foreground"

    .line 622
    invoke-virtual {p1, v4, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_27

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    goto :goto_27

    :cond_25
    move v4, p2

    goto :goto_28

    :cond_27
    :goto_27
    move v4, v0

    :goto_28
    or-int/2addr v3, v4

    iput-boolean v3, p0, Landroidx/media3/exoplayer/offline/DownloadService;->startedInForeground:Z

    goto :goto_2e

    :cond_2c
    const/4 v1, 0x0

    move-object v2, v1

    :goto_2e
    const-string v3, "androidx.media3.exoplayer.downloadService.action.INIT"

    if-nez v1, :cond_33

    move-object v1, v3

    .line 628
    :cond_33
    iget-object v4, p0, Landroidx/media3/exoplayer/offline/DownloadService;->downloadManagerHelper:Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    .line 629
    invoke-static {v4}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;

    invoke-static {v4}, Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;->access$100(Landroidx/media3/exoplayer/offline/DownloadService$DownloadManagerHelper;)Landroidx/media3/exoplayer/offline/DownloadManager;

    move-result-object v4

    .line 630
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v5

    const/4 v6, -0x1

    sparse-switch v5, :sswitch_data_14e

    goto/16 :goto_ad

    :sswitch_4c
    const-string p3, "androidx.media3.exoplayer.downloadService.action.PAUSE_DOWNLOADS"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_56

    goto/16 :goto_ad

    :cond_56
    const/16 v6, 0x8

    goto/16 :goto_ad

    :sswitch_5a
    const-string p3, "androidx.media3.exoplayer.downloadService.action.SET_REQUIREMENTS"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_63

    goto :goto_ad

    :cond_63
    const/4 v6, 0x7

    goto :goto_ad

    :sswitch_65
    const-string p3, "androidx.media3.exoplayer.downloadService.action.ADD_DOWNLOAD"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6e

    goto :goto_ad

    :cond_6e
    const/4 v6, 0x6

    goto :goto_ad

    :sswitch_70
    const-string p3, "androidx.media3.exoplayer.downloadService.action.REMOVE_ALL_DOWNLOADS"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_79

    goto :goto_ad

    :cond_79
    const/4 v6, 0x5

    goto :goto_ad

    :sswitch_7b
    const-string p3, "androidx.media3.exoplayer.downloadService.action.RESUME_DOWNLOADS"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_84

    goto :goto_ad

    :cond_84
    const/4 v6, 0x4

    goto :goto_ad

    :sswitch_86
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_8d

    goto :goto_ad

    :cond_8d
    const/4 v6, 0x3

    goto :goto_ad

    :sswitch_8f
    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_96

    goto :goto_ad

    :cond_96
    const/4 v6, 0x2

    goto :goto_ad

    :sswitch_98
    const-string p3, "androidx.media3.exoplayer.downloadService.action.REMOVE_DOWNLOAD"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_a1

    goto :goto_ad

    :cond_a1
    move v6, v0

    goto :goto_ad

    :sswitch_a3
    const-string p3, "androidx.media3.exoplayer.downloadService.action.SET_STOP_REASON"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_ac

    goto :goto_ad

    :cond_ac
    move v6, p2

    :goto_ad
    const-string p3, "stop_reason"

    const-string v3, "DownloadService"

    packed-switch v6, :pswitch_data_174

    .line 681
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p3, "Ignored unrecognized action: "

    invoke-direct {p1, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_131

    .line 660
    :pswitch_c8
    invoke-virtual {v4}, Landroidx/media3/exoplayer/offline/DownloadManager;->pauseDownloads()V

    goto :goto_131

    .line 673
    :pswitch_cc
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    const-string p3, "requirements"

    invoke-virtual {p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/scheduler/Requirements;

    if-nez p1, :cond_e2

    const-string p1, "Ignored SET_REQUIREMENTS: Missing requirements extra"

    .line 675
    invoke-static {v3, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_131

    .line 677
    :cond_e2
    invoke-virtual {v4, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->setRequirements(Landroidx/media3/exoplayer/scheduler/Requirements;)V

    goto :goto_131

    .line 638
    :pswitch_e6
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v2, "download_request"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroidx/media3/exoplayer/offline/DownloadRequest;

    if-nez v1, :cond_fc

    const-string p1, "Ignored ADD_DOWNLOAD: Missing download_request extra"

    .line 640
    invoke-static {v3, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_131

    .line 642
    :cond_fc
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 643
    invoke-virtual {v4, v1, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->addDownload(Landroidx/media3/exoplayer/offline/DownloadRequest;I)V

    goto :goto_131

    .line 654
    :pswitch_104
    invoke-virtual {v4}, Landroidx/media3/exoplayer/offline/DownloadManager;->removeAllDownloads()V

    goto :goto_131

    .line 657
    :pswitch_108
    invoke-virtual {v4}, Landroidx/media3/exoplayer/offline/DownloadManager;->resumeDownloads()V

    goto :goto_131

    :pswitch_10c
    if-nez v2, :cond_114

    const-string p1, "Ignored REMOVE_DOWNLOAD: Missing content_id extra"

    .line 648
    invoke-static {v3, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_131

    .line 650
    :cond_114
    invoke-virtual {v4, v2}, Landroidx/media3/exoplayer/offline/DownloadManager;->removeDownload(Ljava/lang/String;)V

    goto :goto_131

    .line 663
    :pswitch_118
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-virtual {v1, p3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12a

    const-string p1, "Ignored SET_STOP_REASON: Missing stop_reason extra"

    .line 664
    invoke-static {v3, p1}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_131

    .line 666
    :cond_12a
    invoke-virtual {p1, p3, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 667
    invoke-virtual {v4, v2, p1}, Landroidx/media3/exoplayer/offline/DownloadManager;->setStopReason(Ljava/lang/String;I)V

    .line 685
    :goto_131
    :pswitch_131
    sget p1, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 p3, 0x1a

    if-lt p1, p3, :cond_142

    iget-boolean p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->startedInForeground:Z

    if-eqz p1, :cond_142

    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->foregroundNotificationUpdater:Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;

    if-eqz p1, :cond_142

    .line 687
    invoke-virtual {p1}, Landroidx/media3/exoplayer/offline/DownloadService$ForegroundNotificationUpdater;->showNotificationIfNotAlready()V

    .line 690
    :cond_142
    iput-boolean p2, p0, Landroidx/media3/exoplayer/offline/DownloadService;->isStopped:Z

    .line 691
    invoke-virtual {v4}, Landroidx/media3/exoplayer/offline/DownloadManager;->isIdle()Z

    move-result p1

    if-eqz p1, :cond_14d

    .line 692
    invoke-direct {p0}, Landroidx/media3/exoplayer/offline/DownloadService;->onIdle()V

    :cond_14d
    return v0

    :sswitch_data_14e
    .sparse-switch
        -0x7b47cdc8 -> :sswitch_a3
        -0x47112489 -> :sswitch_98
        -0x274df87d -> :sswitch_8f
        -0xe367804 -> :sswitch_86
        0x1f2a425 -> :sswitch_7b
        0x1bab7dfe -> :sswitch_70
        0x3175ed72 -> :sswitch_65
        0x3267e259 -> :sswitch_5a
        0x6815b736 -> :sswitch_4c
    .end sparse-switch

    :pswitch_data_174
    .packed-switch 0x0
        :pswitch_118
        :pswitch_10c
        :pswitch_131
        :pswitch_131
        :pswitch_108
        :pswitch_104
        :pswitch_e6
        :pswitch_cc
        :pswitch_c8
    .end packed-switch
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .registers 2

    const/4 p1, 0x1

    .line 699
    iput-boolean p1, p0, Landroidx/media3/exoplayer/offline/DownloadService;->taskRemoved:Z

    return-void
.end method
