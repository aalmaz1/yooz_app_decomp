.class public final Lcom/otaliastudios/transcoder/internal/video/VideoPublisher;
.super Ljava/lang/Object;
.source "VideoPublisher.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/pipeline/Step;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Step<",
        "Ljava/lang/Long;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "Lcom/otaliastudios/transcoder/internal/codec/EncoderData;",
        "Lcom/otaliastudios/transcoder/internal/codec/EncoderChannel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u0001B\u0005\u00a2\u0006\u0002\u0010\u0006J\u0010\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0005H\u0016J\u0008\u0010\u0012\u001a\u00020\u0010H\u0016J$\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00040\u00142\u000c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u0018H\u0016R\u0014\u0010\u0007\u001a\u00020\u0008X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/video/VideoPublisher;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Step;",
        "",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "Lcom/otaliastudios/transcoder/internal/codec/EncoderData;",
        "Lcom/otaliastudios/transcoder/internal/codec/EncoderChannel;",
        "()V",
        "channel",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;",
        "getChannel",
        "()Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;",
        "core",
        "Lcom/otaliastudios/opengl/core/EglCore;",
        "surface",
        "Lcom/otaliastudios/opengl/surface/EglWindowSurface;",
        "initialize",
        "",
        "next",
        "release",
        "step",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State;",
        "state",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;",
        "fresh",
        "",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final channel:Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

.field private final core:Lcom/otaliastudios/opengl/core/EglCore;

.field private surface:Lcom/otaliastudios/opengl/surface/EglWindowSurface;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    sget-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/Channel;->Companion:Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/VideoPublisher;->channel:Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

    .line 17
    new-instance v0, Lcom/otaliastudios/opengl/core/EglCore;

    sget-object v1, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/otaliastudios/opengl/core/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/VideoPublisher;->core:Lcom/otaliastudios/opengl/core/EglCore;

    return-void
.end method


# virtual methods
.method public getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/VideoPublisher;->channel:Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

    return-object v0
.end method

.method public bridge synthetic getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel;
    .registers 2

    .line 13
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/video/VideoPublisher;->getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    return-object v0
.end method

.method public initialize(Lcom/otaliastudios/transcoder/internal/codec/EncoderChannel;)V
    .registers 5

    const-string v0, "next"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    move-object v0, p0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/Step;

    move-object v1, p1

    check-cast v1, Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/Step$DefaultImpls;->initialize(Lcom/otaliastudios/transcoder/internal/pipeline/Step;Lcom/otaliastudios/transcoder/internal/pipeline/Channel;)V

    .line 22
    new-instance v0, Lcom/otaliastudios/opengl/surface/EglWindowSurface;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/video/VideoPublisher;->core:Lcom/otaliastudios/opengl/core/EglCore;

    invoke-interface {p1}, Lcom/otaliastudios/transcoder/internal/codec/EncoderChannel;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/otaliastudios/opengl/surface/EglWindowSurface;-><init>(Lcom/otaliastudios/opengl/core/EglCore;Landroid/view/Surface;Z)V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/VideoPublisher;->surface:Lcom/otaliastudios/opengl/surface/EglWindowSurface;

    .line 23
    invoke-virtual {v0}, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->makeCurrent()V

    return-void
.end method

.method public bridge synthetic initialize(Lcom/otaliastudios/transcoder/internal/pipeline/Channel;)V
    .registers 2

    .line 13
    check-cast p1, Lcom/otaliastudios/transcoder/internal/codec/EncoderChannel;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/video/VideoPublisher;->initialize(Lcom/otaliastudios/transcoder/internal/codec/EncoderChannel;)V

    return-void
.end method

.method public release()V
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/VideoPublisher;->surface:Lcom/otaliastudios/opengl/surface/EglWindowSurface;

    if-nez v0, :cond_a

    const-string v0, "surface"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v0}, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->release()V

    .line 38
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/VideoPublisher;->core:Lcom/otaliastudios/opengl/core/EglCore;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/core/EglCore;->release()V

    return-void
.end method

.method public step(Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;Z)Lcom/otaliastudios/transcoder/internal/pipeline/State;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State<",
            "Lcom/otaliastudios/transcoder/internal/codec/EncoderData;",
            ">;"
        }
    .end annotation

    const-string p2, "state"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    instance-of p2, p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    if-eqz p2, :cond_17

    .line 28
    new-instance p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    sget-object p2, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->Companion:Lcom/otaliastudios/transcoder/internal/codec/EncoderData$Companion;

    invoke-virtual {p2}, Lcom/otaliastudios/transcoder/internal/codec/EncoderData$Companion;->getEmpty()Lcom/otaliastudios/transcoder/internal/codec/EncoderData;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    return-object p1

    .line 30
    :cond_17
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/video/VideoPublisher;->surface:Lcom/otaliastudios/opengl/surface/EglWindowSurface;

    const/4 v0, 0x0

    const-string v1, "surface"

    if-nez p2, :cond_22

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p2, v0

    :cond_22
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    const/16 p1, 0x3e8

    int-to-long v4, p1

    mul-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->setPresentationTime(J)V

    .line 31
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/video/VideoPublisher;->surface:Lcom/otaliastudios/opengl/surface/EglWindowSurface;

    if-nez p1, :cond_3b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3c

    :cond_3b
    move-object v0, p1

    :goto_3c
    invoke-virtual {v0}, Lcom/otaliastudios/opengl/surface/EglWindowSurface;->swapBuffers()Z

    .line 32
    new-instance p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    sget-object p2, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->Companion:Lcom/otaliastudios/transcoder/internal/codec/EncoderData$Companion;

    invoke-virtual {p2}, Lcom/otaliastudios/transcoder/internal/codec/EncoderData$Companion;->getEmpty()Lcom/otaliastudios/transcoder/internal/codec/EncoderData;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    return-object p1
.end method
