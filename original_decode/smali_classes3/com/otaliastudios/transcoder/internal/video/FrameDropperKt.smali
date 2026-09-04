.class public final Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt;
.super Ljava/lang/Object;
.source "FrameDropper.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u001a\u0018\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0003H\u0000\u00a8\u0006\u0005"
    }
    d2 = {
        "FrameDropper",
        "Lcom/otaliastudios/transcoder/internal/video/FrameDropper;",
        "inputFps",
        "",
        "outputFps",
        "lib_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final FrameDropper(II)Lcom/otaliastudios/transcoder/internal/video/FrameDropper;
    .locals 1

    .line 13
    new-instance v0, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;

    invoke-direct {v0, p0, p1}, Lcom/otaliastudios/transcoder/internal/video/FrameDropperKt$FrameDropper$1;-><init>(II)V

    check-cast v0, Lcom/otaliastudios/transcoder/internal/video/FrameDropper;

    return-object v0
.end method
