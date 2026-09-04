.class Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;
.super Ljava/lang/Object;
.source "TranscodeDispatcher.java"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/otaliastudios/transcoder/TranscoderListener;


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/TranscoderOptions;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->getListenerHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;->mHandler:Landroid/os/Handler;

    .line 20
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->getListener()Lcom/otaliastudios/transcoder/TranscoderListener;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;->mListener:Lcom/otaliastudios/transcoder/TranscoderListener;

    return-void
.end method

.method static synthetic access$000(Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;)Lcom/otaliastudios/transcoder/TranscoderListener;
    .locals 0

    .line 13
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;->mListener:Lcom/otaliastudios/transcoder/TranscoderListener;

    return-object p0
.end method


# virtual methods
.method dispatchCancel()V
    .locals 2

    .line 24
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$1;

    invoke-direct {v1, p0}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$1;-><init>(Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method dispatchFailure(Ljava/lang/Throwable;)V
    .locals 2

    .line 42
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$3;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$3;-><init>(Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method dispatchProgress(D)V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$4;-><init>(Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;D)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method dispatchSuccess(I)V
    .locals 2

    .line 33
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$2;

    invoke-direct {v1, p0, p1}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$2;-><init>(Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
