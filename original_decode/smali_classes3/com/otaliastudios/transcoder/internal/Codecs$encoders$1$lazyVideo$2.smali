.class final Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1$lazyVideo$2;
.super Lkotlin/jvm/internal/Lambda;
.source "Codecs.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1;-><init>(Lcom/otaliastudios/transcoder/internal/Codecs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Pair<",
        "+",
        "Landroid/media/MediaCodec;",
        "+",
        "Landroid/view/Surface;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Pair;",
        "Landroid/media/MediaCodec;",
        "Landroid/view/Surface;"
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
.field final synthetic this$0:Lcom/otaliastudios/transcoder/internal/Codecs;


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/internal/Codecs;)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1$lazyVideo$2;->this$0:Lcom/otaliastudios/transcoder/internal/Codecs;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 41
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1$lazyVideo$2;->invoke()Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final invoke()Lkotlin/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Landroid/media/MediaCodec;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 42
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1$lazyVideo$2;->this$0:Lcom/otaliastudios/transcoder/internal/Codecs;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/Codecs;->access$getTracks$p(Lcom/otaliastudios/transcoder/internal/Codecs;)Lcom/otaliastudios/transcoder/internal/Tracks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/Tracks;->getOutputFormats()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v0

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->getVideo()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaFormat;

    const-string v1, "mime"

    .line 43
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    const-string v2, "createEncoderByType(form\u2026(MediaFormat.KEY_MIME)!!)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 44
    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 45
    invoke-virtual {v1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method
