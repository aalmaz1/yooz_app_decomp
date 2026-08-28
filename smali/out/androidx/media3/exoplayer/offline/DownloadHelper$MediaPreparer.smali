.class final Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;
.super Ljava/lang/Object;
.source "DownloadHelper.java"

# interfaces
.implements Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;
.implements Landroidx/media3/exoplayer/source/MediaPeriod$Callback;
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/offline/DownloadHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "MediaPreparer"
.end annotation


# static fields
.field private static final DOWNLOAD_HELPER_CALLBACK_MESSAGE_FAILED:I = 0x2

.field private static final DOWNLOAD_HELPER_CALLBACK_MESSAGE_PREPARED:I = 0x1

.field private static final MESSAGE_CHECK_FOR_FAILURE:I = 0x2

.field private static final MESSAGE_CONTINUE_LOADING:I = 0x3

.field private static final MESSAGE_PREPARE_SOURCE:I = 0x1

.field private static final MESSAGE_RELEASE:I = 0x4


# instance fields
.field private final allocator:Landroidx/media3/exoplayer/upstream/Allocator;

.field private final downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

.field private final downloadHelperHandler:Landroid/os/Handler;

.field public mediaPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

.field private final mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

.field private final mediaSourceHandler:Landroid/os/Handler;

.field private final mediaSourceThread:Landroid/os/HandlerThread;

.field private final pendingMediaPeriods:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/exoplayer/source/MediaPeriod;",
            ">;"
        }
    .end annotation
.end field

.field private released:Z

.field public timeline:Landroidx/media3/common/Timeline;


# direct methods
.method public static synthetic $r8$lambda$kZTXaFwV6fsxhMAxOeNT24dpaSk(Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;Landroid/os/Message;)Z
    .registers 2

    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->handleDownloadHelperCallbackMessage(Landroid/os/Message;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/exoplayer/offline/DownloadHelper;)V
    .registers 4

    .line 871
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 872
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    .line 873
    iput-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

    .line 874
    new-instance p1, Landroidx/media3/exoplayer/upstream/DefaultAllocator;

    const/high16 p2, 0x10000

    const/4 v0, 0x1

    invoke-direct {p1, v0, p2}, Landroidx/media3/exoplayer/upstream/DefaultAllocator;-><init>(ZI)V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 875
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    .line 877
    new-instance p1, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer$$ExternalSyntheticLambda0;-><init>(Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;)V

    .line 878
    invoke-static {p1}, Landroidx/media3/common/util/Util;->createHandlerForCurrentOrMainLooper(Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    .line 879
    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->downloadHelperHandler:Landroid/os/Handler;

    .line 880
    new-instance p1, Landroid/os/HandlerThread;

    const-string p2, "ExoPlayer:DownloadHelper"

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaSourceThread:Landroid/os/HandlerThread;

    .line 881
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 882
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {p1, p0}, Landroidx/media3/common/util/Util;->createHandler(Landroid/os/Looper;Landroid/os/Handler$Callback;)Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    .line 883
    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private handleDownloadHelperCallbackMessage(Landroid/os/Message;)Z
    .registers 6

    .line 993
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->released:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 997
    :cond_6
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_20

    if-eq v0, v2, :cond_f

    return v1

    .line 1009
    :cond_f
    invoke-virtual {p0}, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->release()V

    .line 1010
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/IOException;

    invoke-static {v0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->access$400(Landroidx/media3/exoplayer/offline/DownloadHelper;Ljava/io/IOException;)V

    return v3

    .line 1000
    :cond_20
    :try_start_20
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->downloadHelper:Landroidx/media3/exoplayer/offline/DownloadHelper;

    invoke-static {p1}, Landroidx/media3/exoplayer/offline/DownloadHelper;->access$300(Landroidx/media3/exoplayer/offline/DownloadHelper;)V
    :try_end_25
    .catch Landroidx/media3/exoplayer/ExoPlaybackException; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_35

    :catch_26
    move-exception p1

    .line 1002
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->downloadHelperHandler:Landroid/os/Handler;

    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    .line 1003
    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1005
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_35
    return v3
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 8

    .line 898
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_84

    const/4 v4, 0x0

    if-eq v0, v2, :cond_51

    const/4 v2, 0x3

    if-eq v0, v2, :cond_32

    const/4 p1, 0x4

    if-eq v0, p1, :cond_11

    return v4

    .line 928
    :cond_11
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    if-eqz p1, :cond_22

    .line 929
    array-length v0, p1

    :goto_16
    if-ge v4, v0, :cond_22

    aget-object v2, p1, v4

    .line 930
    iget-object v5, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-interface {v5, v2}, Landroidx/media3/exoplayer/source/MediaSource;->releasePeriod(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_16

    .line 933
    :cond_22
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-interface {p1, p0}, Landroidx/media3/exoplayer/source/MediaSource;->releaseSource(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;)V

    .line 934
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 935
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaSourceThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->quit()Z

    return v3

    .line 922
    :cond_32
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    .line 923
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 924
    new-instance v0, Landroidx/media3/exoplayer/LoadingInfo$Builder;

    invoke-direct {v0}, Landroidx/media3/exoplayer/LoadingInfo$Builder;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->setPlaybackPositionUs(J)Landroidx/media3/exoplayer/LoadingInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/media3/exoplayer/LoadingInfo$Builder;->build()Landroidx/media3/exoplayer/LoadingInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Landroidx/media3/exoplayer/source/MediaPeriod;->continueLoading(Landroidx/media3/exoplayer/LoadingInfo;)Z

    :cond_50
    return v3

    .line 906
    :cond_51
    :try_start_51
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    if-nez p1, :cond_5b

    .line 907
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaSource;->maybeThrowSourceInfoRefreshError()V

    goto :goto_71

    .line 909
    :cond_5b
    :goto_5b
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v4, p1, :cond_71

    .line 910
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-interface {p1}, Landroidx/media3/exoplayer/source/MediaPeriod;->maybeThrowPrepareError()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_5b

    .line 913
    :cond_71
    :goto_71
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x64

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_78
    .catch Ljava/io/IOException; {:try_start_51 .. :try_end_78} :catch_79

    goto :goto_83

    :catch_79
    move-exception p1

    .line 916
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->downloadHelperHandler:Landroid/os/Handler;

    .line 917
    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 918
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_83
    return v3

    .line 900
    :cond_84
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    sget-object v0, Landroidx/media3/exoplayer/analytics/PlayerId;->UNSET:Landroidx/media3/exoplayer/analytics/PlayerId;

    invoke-interface {p1, p0, v1, v0}, Landroidx/media3/exoplayer/source/MediaSource;->prepareSource(Landroidx/media3/exoplayer/source/MediaSource$MediaSourceCaller;Landroidx/media3/datasource/TransferListener;Landroidx/media3/exoplayer/analytics/PlayerId;)V

    .line 902
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return v3
.end method

.method public onContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .registers 4

    .line 987
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 988
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_12
    return-void
.end method

.method public bridge synthetic onContinueLoadingRequested(Landroidx/media3/exoplayer/source/SequenceableLoader;)V
    .registers 2

    .line 847
    check-cast p1, Landroidx/media3/exoplayer/source/MediaPeriod;

    invoke-virtual {p0, p1}, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->onContinueLoadingRequested(Landroidx/media3/exoplayer/source/MediaPeriod;)V

    return-void
.end method

.method public onPrepared(Landroidx/media3/exoplayer/source/MediaPeriod;)V
    .registers 3

    .line 978
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 979
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_19

    .line 980
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 981
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->downloadHelperHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_19
    return-void
.end method

.method public onSourceInfoRefreshed(Landroidx/media3/exoplayer/source/MediaSource;Landroidx/media3/common/Timeline;)V
    .registers 9

    .line 946
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->timeline:Landroidx/media3/common/Timeline;

    if-eqz p1, :cond_5

    return-void

    .line 950
    :cond_5
    new-instance p1, Landroidx/media3/common/Timeline$Window;

    invoke-direct {p1}, Landroidx/media3/common/Timeline$Window;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p2, v0, p1}, Landroidx/media3/common/Timeline;->getWindow(ILandroidx/media3/common/Timeline$Window;)Landroidx/media3/common/Timeline$Window;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/media3/common/Timeline$Window;->isLive()Z

    move-result p1

    if-eqz p1, :cond_25

    .line 951
    iget-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->downloadHelperHandler:Landroid/os/Handler;

    new-instance p2, Landroidx/media3/exoplayer/offline/DownloadHelper$LiveContentUnsupportedException;

    invoke-direct {p2}, Landroidx/media3/exoplayer/offline/DownloadHelper$LiveContentUnsupportedException;-><init>()V

    const/4 v0, 0x2

    .line 952
    invoke-virtual {p1, v0, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 955
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    .line 958
    :cond_25
    iput-object p2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->timeline:Landroidx/media3/common/Timeline;

    .line 959
    invoke-virtual {p2}, Landroidx/media3/common/Timeline;->getPeriodCount()I

    move-result p1

    new-array p1, p1, [Landroidx/media3/exoplayer/source/MediaPeriod;

    iput-object p1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    move p1, v0

    .line 960
    :goto_30
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    array-length v2, v1

    const-wide/16 v3, 0x0

    if-ge p1, v2, :cond_54

    .line 961
    iget-object v1, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaSource:Landroidx/media3/exoplayer/source/MediaSource;

    new-instance v2, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;

    .line 963
    invoke-virtual {p2, p1}, Landroidx/media3/common/Timeline;->getUidOfPeriod(I)Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v2, v5}, Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;-><init>(Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->allocator:Landroidx/media3/exoplayer/upstream/Allocator;

    .line 962
    invoke-interface {v1, v2, v5, v3, v4}, Landroidx/media3/exoplayer/source/MediaSource;->createPeriod(Landroidx/media3/exoplayer/source/MediaSource$MediaPeriodId;Landroidx/media3/exoplayer/upstream/Allocator;J)Landroidx/media3/exoplayer/source/MediaPeriod;

    move-result-object v1

    .line 966
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaPeriods:[Landroidx/media3/exoplayer/source/MediaPeriod;

    aput-object v1, v2, p1

    .line 967
    iget-object v2, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->pendingMediaPeriods:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_30

    .line 969
    :cond_54
    array-length p1, v1

    :goto_55
    if-ge v0, p1, :cond_5f

    aget-object p2, v1, v0

    .line 970
    invoke-interface {p2, p0, v3, v4}, Landroidx/media3/exoplayer/source/MediaPeriod;->prepare(Landroidx/media3/exoplayer/source/MediaPeriod$Callback;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_55

    :cond_5f
    return-void
.end method

.method public release()V
    .registers 3

    .line 887
    iget-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->released:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 890
    iput-boolean v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->released:Z

    .line 891
    iget-object v0, p0, Landroidx/media3/exoplayer/offline/DownloadHelper$MediaPreparer;->mediaSourceHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
