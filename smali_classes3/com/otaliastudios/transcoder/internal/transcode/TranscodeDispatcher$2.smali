.class Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$2;
.super Ljava/lang/Object;
.source "TranscodeDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;->dispatchSuccess(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;

.field final synthetic val$successCode:I


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;I)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$2;->this$0:Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;

    iput p2, p0, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$2;->val$successCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$2;->this$0:Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;->access$000(Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher;)Lcom/otaliastudios/transcoder/TranscoderListener;

    move-result-object v0

    iget v1, p0, Lcom/otaliastudios/transcoder/internal/transcode/TranscodeDispatcher$2;->val$successCode:I

    invoke-interface {v0, v1}, Lcom/otaliastudios/transcoder/TranscoderListener;->onTranscodeCompleted(I)V

    return-void
.end method
