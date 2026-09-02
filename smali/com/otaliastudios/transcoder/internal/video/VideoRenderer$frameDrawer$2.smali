.class final Lcom/otaliastudios/transcoder/internal/video/VideoRenderer$frameDrawer$2;
.super Lkotlin/jvm/internal/Lambda;
.source "VideoRenderer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/video/VideoRenderer;-><init>(IILandroid/media/MediaFormat;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $flipY:Z


# direct methods
.method constructor <init>(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer$frameDrawer$2;->$flipY:Z

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;
    .registers 3

    .line 28
    new-instance v0, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;-><init>()V

    .line 29
    iget-boolean v1, p0, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer$frameDrawer$2;->$flipY:Z

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;->setFlipY(Z)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 27
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/video/VideoRenderer$frameDrawer$2;->invoke()Lcom/otaliastudios/transcoder/internal/video/FrameDrawer;

    move-result-object v0

    return-object v0
.end method
