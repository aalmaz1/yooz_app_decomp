.class Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$4;
.super Ljava/lang/Object;
.source "TranscodeDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;->dispatchProgress(D)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;

.field final synthetic val$progress:D


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;D)V
    .registers 4

    .line 51
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$4;->this$0:Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;

    iput-wide p2, p0, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$4;->val$progress:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 54
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$4;->this$0:Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;->access$000(Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;)Lcom/otaliastudios/transcoder/TranscoderListener;

    move-result-object v0

    iget-wide v1, p0, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$4;->val$progress:D

    invoke-interface {v0, v1, v2}, Lcom/otaliastudios/transcoder/TranscoderListener;->onTranscodeProgress(D)V

    return-void
.end method
