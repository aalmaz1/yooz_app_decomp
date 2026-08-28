.class Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$1;
.super Ljava/lang/Object;
.source "TranscodeDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;->dispatchCancel()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$1;->this$0:Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$1;->this$0:Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;->access$000(Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;)Lcom/otaliastudios/transcoder/TranscoderListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/TranscoderListener;->onTranscodeCanceled()V

    return-void
.end method
