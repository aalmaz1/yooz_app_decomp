.class public final Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;
.super Ljava/lang/Object;
.source "VideoRenderer.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/pipeline/Step;
.implements Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Step<",
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderData;",
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;",
        "Ljava/lang/Long;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        ">;",
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoRenderer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoRenderer.kt\ncom/otaliastudios/transcoder/internal/video/VideoRenderer\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,113:1\n1#2:114\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0000\u0018\u00002\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00012\u00020\u0003B\'\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\n\u0012\u0008\u0008\u0002\u0010\u000b\u001a\u00020\u000c\u00a2\u0006\u0002\u0010\rJ\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\nH\u0016J\u0010\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020\nH\u0016J\u0008\u0010!\u001a\u00020\u001cH\u0016J$\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u00040#2\u000c\u0010$\u001a\u0008\u0012\u0004\u0012\u00020\u00020%2\u0006\u0010&\u001a\u00020\u000cH\u0016R\u0014\u0010\u000e\u001a\u00020\u0000X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u000e\u0010\u0008\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0011\u001a\u00020\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0016\u001a\u0004\u0008\u0013\u0010\u0014R\u000e\u0010\u0017\u001a\u00020\u0018X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\'"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Step;",
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderData;",
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;",
        "",
        "Lcom/otaliastudios/transcoder/internal/pipeline/Channel;",
        "sourceRotation",
        "",
        "extraRotation",
        "targetFormat",
        "Landroid/media/MediaFormat;",
        "flipY",
        "",
        "(IILandroid/media/MediaFormat;Z)V",
        "channel",
        "getChannel",
        "()Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;",
        "frameDrawer",
        "Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;",
        "getFrameDrawer",
        "()Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;",
        "frameDrawer$delegate",
        "Lkotlin/Lazy;",
        "frameDropper",
        "Lcom/otaliastudios/transcoder/internal/video/FrameDropper;",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "handleRawFormat",
        "",
        "rawFormat",
        "handleSourceFormat",
        "Landroid/view/Surface;",
        "sourceFormat",
        "release",
        "step",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State;",
        "state",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;",
        "fresh",
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
.field private final channel:Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;

.field private final extraRotation:I

.field private final frameDrawer$delegate:Lkotlin/Lazy;

.field private frameDropper:Lcom/otaliastudios/transcoder/internal/video/FrameDropper;

.field private final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

.field private final sourceRotation:I

.field private final targetFormat:Landroid/media/MediaFormat;


# direct methods
.method public constructor <init>(IILandroid/media/MediaFormat;Z)V
    .locals 5

    const-string v0, "targetFormat"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->sourceRotation:I

    .line 17
    iput p2, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->extraRotation:I

    .line 18
    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->targetFormat:Landroid/media/MediaFormat;

    .line 22
    new-instance p1, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v0, "VideoRenderer"

    invoke-direct {p1, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    .line 24
    iput-object p0, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->channel:Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;

    .line 27
    new-instance v0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer$frameDrawer$2;

    invoke-direct {v0, p4}, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer$frameDrawer$2;-><init>(Z)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p4

    iput-object p4, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->frameDrawer$delegate:Lkotlin/Lazy;

    const-string p4, "width"

    .line 40
    invoke-virtual {p3, p4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "height"

    .line 41
    invoke-virtual {p3, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v2

    .line 42
    rem-int/lit16 p2, p2, 0xb4

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 43
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "FrameDrawerEncoder: size="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", flipping="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->e(Ljava/lang/String;)V

    if-eqz p2, :cond_1

    move p1, v2

    goto :goto_1

    :cond_1
    move p1, v0

    .line 44
    :goto_1
    invoke-virtual {p3, p4, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    if-eqz p2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v2

    .line 45
    :goto_2
    invoke-virtual {p3, v1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic constructor <init>(IILandroid/media/MediaFormat;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 15
    :cond_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;-><init>(IILandroid/media/MediaFormat;Z)V

    return-void
.end method

.method private final getFrameDrawer()Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->frameDrawer$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->getChannel()Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    return-object v0
.end method

.method public getChannel()Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->channel:Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;

    return-object v0
.end method

.method public handleRawFormat(Landroid/media/MediaFormat;)V
    .locals 1

    const-string v0, "rawFormat"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public handleSourceFormat(Landroid/media/MediaFormat;)Landroid/view/Surface;
    .locals 5

    const-string v0, "rotation-degrees"

    const-string v1, "sourceFormat"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "handleSourceFormat("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x29

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 54
    :try_start_0
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    move-object v1, p0

    check-cast v1, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;

    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_1
    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 55
    iget v2, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->sourceRotation:I

    if-ne v1, v2, :cond_6

    .line 62
    invoke-virtual {p1, v0, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 65
    iget v0, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->extraRotation:I

    add-int/2addr v1, v0

    rem-int/lit16 v1, v1, 0x168

    .line 66
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->getFrameDrawer()Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->setRotation(I)V

    .line 69
    rem-int/lit16 v1, v1, 0xb4

    if-eqz v1, :cond_1

    const/4 v3, 0x1

    :cond_1
    const-string v0, "width"

    .line 70
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    int-to-float v1, v1

    const-string v2, "height"

    .line 71
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v1, v4

    .line 73
    iget-object v4, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->targetFormat:Landroid/media/MediaFormat;

    if-eqz v3, :cond_2

    invoke-virtual {v4, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v4

    :goto_2
    int-to-float v4, v4

    if-eqz v3, :cond_3

    .line 74
    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->targetFormat:Landroid/media/MediaFormat;

    invoke-virtual {v2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->targetFormat:Landroid/media/MediaFormat;

    invoke-virtual {v0, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    :goto_3
    int-to-float v0, v0

    div-float/2addr v4, v0

    cmpl-float v0, v1, v4

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v0, :cond_4

    div-float/2addr v1, v4

    move v4, v2

    move v2, v1

    goto :goto_4

    :cond_4
    cmpg-float v0, v1, v4

    if-gez v0, :cond_5

    div-float/2addr v4, v1

    goto :goto_4

    :cond_5
    move v4, v2

    .line 83
    :goto_4
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->getFrameDrawer()Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->setScale(FF)V

    const-string v0, "frame-rate"

    .line 87
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    .line 88
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->targetFormat:Landroid/media/MediaFormat;

    invoke-virtual {v1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    .line 86
    invoke-static {p1, v0}, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt;->FrameDropper(II)Lcom/otaliastudios/transcoder/internal/video/FrameDropper;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->frameDropper:Lcom/otaliastudios/transcoder/internal/video/FrameDropper;

    .line 89
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->getFrameDrawer()Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->getSurface()Landroid/view/Surface;

    move-result-object p1

    const-string v0, "frameDrawer.surface"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 56
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected difference in rotation. DataSource="

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->sourceRotation:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", MediaFormat="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Throwable;

    throw v0
.end method

.method public initialize(Lcom/otaliastudios/transcoder/internal/pipeline/Channel;)V
    .locals 0

    .line 15
    invoke-static {p0, p1}, Lcom/otaliastudios/transcoder/internal/pipeline/Step$DefaultImpls;->initialize(Lcom/otaliastudios/transcoder/internal/pipeline/Step;Lcom/otaliastudios/transcoder/internal/pipeline/Channel;)V

    return-void
.end method

.method public release()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->getFrameDrawer()Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->release()V

    return-void
.end method

.method public step(Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;Z)Lcom/otaliastudios/transcoder/internal/pipeline/State;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok<",
            "Lcom/otaliastudios/transcoder/internal/codec/DecoderData;",
            ">;Z)",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    const-string p2, "state"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    instance-of p2, p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    const/4 v0, 0x0

    .line 96
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;->getRelease()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    new-instance p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;-><init>(Ljava/lang/Object;)V

    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    goto :goto_0

    .line 99
    :cond_0
    iget-object p2, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->frameDropper:Lcom/otaliastudios/transcoder/internal/video/FrameDropper;

    if-nez p2, :cond_1

    const-string p2, "frameDropper"

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p2, 0x0

    :cond_1
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;

    invoke-virtual {v1}, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;->getTimeUs()J

    move-result-wide v1

    invoke-interface {p2, v1, v2}, Lcom/otaliastudios/transcoder/internal/video/FrameDropper;->shouldRender(J)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 100
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;

    invoke-virtual {p2}, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;->getRelease()Lkotlin/jvm/functions/Function1;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;->getFrameDrawer()Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;

    move-result-object p2

    invoke-virtual {p2}, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->drawFrame()V

    .line 102
    new-instance p2, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;->getTimeUs()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;-><init>(Ljava/lang/Object;)V

    move-object p1, p2

    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;->getRelease()Lkotlin/jvm/functions/Function1;

    move-result-object p1

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object p1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;->INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;

    check-cast p1, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    :goto_0
    return-object p1
.end method
