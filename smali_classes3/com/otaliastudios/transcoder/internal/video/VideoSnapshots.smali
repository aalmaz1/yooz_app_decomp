.class public final Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;
.super Lcom/otaliastudios/transcoder/internal/pipeline/BaseStep;
.source "VideoSnapshots.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/otaliastudios/transcoder/internal/pipeline/BaseStep<",
        "Ljava/lang/Long;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "Ljava/lang/Long;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\u0008\u0000\u0018\u00002\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B=\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0002\u0012\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\n\u00a2\u0006\u0002\u0010\rJ\u0008\u0010\u001c\u001a\u00020\u000cH\u0016J$\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u001e2\u000c\u0010\u001f\u001a\u0008\u0012\u0004\u0012\u00020\u00020 2\u0006\u0010!\u001a\u00020\"H\u0016R\u000e\u0010\u0008\u001a\u00020\u0002X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u000e\u001a\u00020\u000fX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004\u00a2\u0006\u0002\n\u0000R \u0010\t\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u000b\u0012\u0004\u0012\u00020\u000c0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0018X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001b\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006#"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/BaseStep;",
        "",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "format",
        "Landroid/media/MediaFormat;",
        "requests",
        "",
        "accuracyUs",
        "onSnapshot",
        "Lkotlin/Function2;",
        "Landroid/graphics/Bitmap;",
        "",
        "(Landroid/media/MediaFormat;Ljava/util/List;JLkotlin/jvm/functions/Function2;)V",
        "channel",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;",
        "getChannel",
        "()Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;",
        "core",
        "Lcom/otaliastudios/opengl/core/EglCore;",
        "height",
        "",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "",
        "surface",
        "Lcom/otaliastudios/opengl/surface/EglOffscreenSurface;",
        "width",
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
.field private final accuracyUs:J

.field private final channel:Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

.field private final core:Lcom/otaliastudios/opengl/core/EglCore;

.field private final height:I

.field private final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

.field private final onSnapshot:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Ljava/lang/Long;",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final requests:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final surface:Lcom/otaliastudios/opengl/surface/EglOffscreenSurface;

.field private final width:I


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;Ljava/util/List;JLkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;J",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Landroid/graphics/Bitmap;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "requests"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onSnapshot"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/pipeline/BaseStep;-><init>()V

    .line 25
    iput-wide p3, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->accuracyUs:J

    .line 26
    iput-object p5, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->onSnapshot:Lkotlin/jvm/functions/Function2;

    .line 29
    new-instance p3, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string p4, "VideoSnapshots"

    invoke-direct {p3, p4}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    .line 30
    sget-object p3, Lcom/otaliastudios/transcoder/internal/pipeline/Channel;->Companion:Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->channel:Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

    .line 31
    check-cast p2, Ljava/util/Collection;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->requests:Ljava/util/List;

    const-string p2, "width"

    .line 32
    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->width:I

    const-string p3, "height"

    .line 33
    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->height:I

    .line 34
    new-instance p3, Lcom/otaliastudios/opengl/core/EglCore;

    sget-object p4, Landroid/opengl/EGL14;->EGL_NO_CONTEXT:Landroid/opengl/EGLContext;

    const/4 p5, 0x1

    invoke-direct {p3, p4, p5}, Lcom/otaliastudios/opengl/core/EglCore;-><init>(Landroid/opengl/EGLContext;I)V

    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->core:Lcom/otaliastudios/opengl/core/EglCore;

    .line 35
    new-instance p4, Lcom/otaliastudios/opengl/surface/EglOffscreenSurface;

    invoke-direct {p4, p3, p2, p1}, Lcom/otaliastudios/opengl/surface/EglOffscreenSurface;-><init>(Lcom/otaliastudios/opengl/core/EglCore;II)V

    .line 36
    invoke-virtual {p4}, Lcom/otaliastudios/opengl/surface/EglOffscreenSurface;->makeCurrent()V

    .line 37
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 35
    iput-object p4, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->surface:Lcom/otaliastudios/opengl/surface/EglOffscreenSurface;

    return-void
.end method


# virtual methods
.method public getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;
    .locals 1

    .line 30
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->channel:Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

    return-object v0
.end method

.method public bridge synthetic getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel$Companion;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    return-object v0
.end method

.method public release()V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->surface:Lcom/otaliastudios/opengl/surface/EglOffscreenSurface;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/surface/EglOffscreenSurface;->release()V

    .line 63
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->core:Lcom/otaliastudios/opengl/core/EglCore;

    invoke-virtual {v0}, Lcom/otaliastudios/opengl/core/EglCore;->release()V

    return-void
.end method

.method public step(Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;Z)Lcom/otaliastudios/transcoder/internal/pipeline/State;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok<",
            "Ljava/lang/Long;",
            ">;Z)",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string p2, "state"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->requests:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    return-object p1

    .line 42
    :cond_0
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->requests:Ljava/util/List;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 43
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    .line 44
    iget-wide v4, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->accuracyUs:J

    cmp-long p2, v2, v4

    const-string v4, " deltaUs="

    const-string v5, " actualUs="

    if-ltz p2, :cond_2

    instance-of p2, p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v6

    cmp-long p2, v0, v6

    if-lez p2, :cond_1

    goto :goto_0

    .line 56
    :cond_1
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Request has high delta. expectedUs="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    goto :goto_1

    .line 45
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Request MATCHED! expectedUs="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 46
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->requests:Ljava/util/List;

    invoke-static {p2}, Lkotlin/collections/CollectionsKt;->removeFirst(Ljava/util/List;)Ljava/lang/Object;

    .line 47
    iget p2, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->width:I

    iget v0, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->height:I

    mul-int/2addr p2, v0

    mul-int/lit8 p2, p2, 0x4

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p2

    .line 48
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 49
    iget v3, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->width:I

    iget v4, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->height:I

    const/16 v5, 0x1908

    const/16 v6, 0x1401

    move-object v0, p2

    check-cast v0, Ljava/nio/Buffer;

    move-object v7, v0

    invoke-static/range {v1 .. v7}, Landroid/opengl/GLES20;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    const-string v1, "glReadPixels"

    .line 50
    invoke-static {v1}, Lcom/otaliastudios/opengl/core/Egloo;->checkGlError(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 52
    iget p2, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->width:I

    iget v1, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->height:I

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 53
    invoke-virtual {p2, v0}, Landroid/graphics/Bitmap;->copyPixelsFromBuffer(Ljava/nio/Buffer;)V

    .line 54
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/VideoSnapshots;->onSnapshot:Lkotlin/jvm/functions/Function2;

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "bitmap"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    :goto_1
    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    return-object p1
.end method
