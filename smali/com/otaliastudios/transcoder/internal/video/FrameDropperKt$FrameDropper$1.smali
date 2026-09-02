.class public final Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;
.super Ljava/lang/Object;
.source "FrameDropper.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/video/FrameDropper;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt;->FrameDropper(II)Lcom/otaliastudios/transcoder/internal/video/FrameDropper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "com/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1",
        "Lcom/otaliastudios/transcoder/internal/video/FrameDropper;",
        "currentSpf",
        "",
        "frameCount",
        "",
        "inputSpf",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "outputSpf",
        "shouldRender",
        "",
        "timeUs",
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
.field final synthetic $inputFps:I

.field final synthetic $outputFps:I

.field private currentSpf:D

.field private frameCount:I

.field private final inputSpf:D

.field private final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

.field private final outputSpf:D


# direct methods
.method constructor <init>(II)V
    .registers 7

    iput p1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->$inputFps:I

    iput p2, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->$outputFps:I

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "FrameDropper"

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    int-to-double v0, p1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v0, v2, v0

    .line 16
    iput-wide v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->inputSpf:D

    int-to-double p1, p2

    div-double/2addr v2, p1

    .line 17
    iput-wide v2, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->outputSpf:D

    return-void
.end method


# virtual methods
.method public shouldRender(J)Z
    .registers 9

    .line 22
    iget-wide p1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->currentSpf:D

    iget-wide v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->inputSpf:D

    add-double/2addr p1, v0

    iput-wide p1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->currentSpf:D

    .line 23
    iget v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->frameCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->frameCount:I

    const-string v1, " outputSpf="

    const-string v2, " inputSpf="

    const/4 v3, 0x1

    if-nez v0, :cond_3f

    .line 24
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "RENDERING (first frame) - currentSpf="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->currentSpf:D

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v4, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->inputSpf:D

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->outputSpf:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    return v3

    .line 26
    :cond_3f
    iget-wide v4, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->outputSpf:D

    cmpl-double v0, p1, v4

    if-lez v0, :cond_73

    sub-double/2addr p1, v4

    .line 27
    iput-wide p1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->currentSpf:D

    .line 28
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "RENDERING - currentSpf="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->currentSpf:D

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v4, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->inputSpf:D

    invoke-virtual {p2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->outputSpf:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    return v3

    .line 31
    :cond_73
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "DROPPING - currentSpf="

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->currentSpf:D

    invoke-virtual {p2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v2, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->inputSpf:D

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-wide v0, p0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;->outputSpf:D

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
