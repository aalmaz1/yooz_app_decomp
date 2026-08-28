.class final Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;
.super Ljava/lang/Object;
.source "DefaultPreloadManager.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/preload/PreloadMediaSource$PreloadControl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SourcePreloadControl"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;)V
    .registers 2

    .line 205
    iput-object p1, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$1;)V
    .registers 3

    .line 205
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;-><init>(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;)V

    return-void
.end method

.method private continueOrCompletePreloading(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;Lcom/google/common/base/Predicate;Z)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;",
            "Lcom/google/common/base/Predicate<",
            "Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;",
            ">;Z)Z"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    .line 258
    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->getTargetPreloadStatus(Landroidx/media3/exoplayer/source/MediaSource;)Landroidx/media3/exoplayer/source/preload/TargetPreloadStatusControl$PreloadStatus;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 260
    check-cast v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;

    .line 261
    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;

    invoke-interface {p2, v0}, Lcom/google/common/base/Predicate;->apply(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    const/4 p1, 0x1

    return p1

    :cond_18
    if-eqz p3, :cond_1f

    .line 265
    iget-object p2, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->clearSourceInternal(Landroidx/media3/exoplayer/source/MediaSource;)V

    .line 268
    :cond_1f
    iget-object p2, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {p2, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->onPreloadCompleted(Landroidx/media3/exoplayer/source/MediaSource;)V

    const/4 p1, 0x0

    return p1
.end method

.method static synthetic lambda$onContinueLoadingRequested$2(JLandroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;)Z
    .registers 5

    .line 237
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;->getStage()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_15

    .line 238
    invoke-virtual {p2}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;->getValue()J

    move-result-wide v0

    invoke-static {p0, p1}, Landroidx/media3/common/util/Util;->usToMs(J)J

    move-result-wide p0

    cmp-long p0, v0, p0

    if-lez p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method

.method static synthetic lambda$onSourcePrepared$0(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;)Z
    .registers 1

    .line 214
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;->getStage()I

    move-result p0

    if-lez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method static synthetic lambda$onTracksSelected$1(Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;)Z
    .registers 2

    .line 225
    invoke-virtual {p0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$Status;->getStage()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method


# virtual methods
.method public onContinueLoadingRequested(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;J)Z
    .registers 5

    .line 234
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p3}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl$$ExternalSyntheticLambda1;-><init>(J)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->continueOrCompletePreloading(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;Lcom/google/common/base/Predicate;Z)Z

    move-result p1

    return p1
.end method

.method public onLoadedToTheEndOfSource(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V
    .registers 3

    .line 249
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->onPreloadCompleted(Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method

.method public onSourcePrepared(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Z
    .registers 4

    .line 211
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl$$ExternalSyntheticLambda0;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->continueOrCompletePreloading(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;Lcom/google/common/base/Predicate;Z)Z

    move-result p1

    return p1
.end method

.method public onTracksSelected(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)Z
    .registers 4

    .line 222
    new-instance v0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl$$ExternalSyntheticLambda2;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->continueOrCompletePreloading(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;Lcom/google/common/base/Predicate;Z)Z

    move-result p1

    return p1
.end method

.method public onUsedByPlayer(Landroidx/media3/exoplayer/source/preload/PreloadMediaSource;)V
    .registers 3

    .line 244
    iget-object v0, p0, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager$SourcePreloadControl;->this$0:Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;

    invoke-virtual {v0, p1}, Landroidx/media3/exoplayer/source/preload/DefaultPreloadManager;->onPreloadCompleted(Landroidx/media3/exoplayer/source/MediaSource;)V

    return-void
.end method
