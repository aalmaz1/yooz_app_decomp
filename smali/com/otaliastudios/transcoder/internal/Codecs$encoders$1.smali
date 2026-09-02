.class public final Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1;
.super Ljava/lang/Object;
.source "Codecs.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/utils/TrackMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/Codecs;-><init>(Lcom/otaliastudios/transcoder/internal/DataSources;Lcom/otaliastudios/transcoder/internal/Tracks;Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1$WhenMappings;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
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
        "\u0000+\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0001\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00020\u0001J\u001f\u0010\u000e\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u00022\u0006\u0010\u000f\u001a\u00020\u0010H\u0096\u0002J\u0010\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R)\u0010\u0005\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u0007\u0010\u0008R\'\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u00028BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\n\u001a\u0004\u0008\u000c\u0010\u0008\u00a8\u0006\u0013"
    }
    d2 = {
        "com/otaliastudios/transcoder/internal/Codecs$encoders$1",
        "Lcom/otaliastudios/transcoder/internal/utils/TrackMap;",
        "Lkotlin/Pair;",
        "Landroid/media/MediaCodec;",
        "Landroid/view/Surface;",
        "lazyAudio",
        "",
        "getLazyAudio",
        "()Lkotlin/Pair;",
        "lazyAudio$delegate",
        "Lkotlin/Lazy;",
        "lazyVideo",
        "getLazyVideo",
        "lazyVideo$delegate",
        "get",
        "type",
        "Lcom/otaliastudios/transcoder/common/TrackType;",
        "has",
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
.field private final lazyAudio$delegate:Lkotlin/Lazy;

.field private final lazyVideo$delegate:Lkotlin/Lazy;

.field final synthetic this$0:Lcom/otaliastudios/transcoder/internal/Codecs;


# direct methods
.method constructor <init>(Lcom/otaliastudios/transcoder/internal/Codecs;)V
    .registers 3

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1;->this$0:Lcom/otaliastudios/transcoder/internal/Codecs;

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1$lazyAudio$2;

    invoke-direct {v0, p1}, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1$lazyAudio$2;-><init>(Lcom/otaliastudios/transcoder/internal/Codecs;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1;->lazyAudio$delegate:Lkotlin/Lazy;

    .line 41
    new-instance v0, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1$lazyVideo$2;

    invoke-direct {v0, p1}, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1$lazyVideo$2;-><init>(Lcom/otaliastudios/transcoder/internal/Codecs;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1;->lazyVideo$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getLazyAudio()Lkotlin/Pair;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1;->lazyAudio$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    return-object v0
.end method

.method private final getLazyVideo()Lkotlin/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Landroid/media/MediaCodec;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1;->lazyVideo$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic audioOrNull()Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1;->audioOrNull()Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public audioOrNull()Lkotlin/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Landroid/media/MediaCodec;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->audioOrNull(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    return-object v0
.end method

.method public bridge synthetic get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public get(Lcom/otaliastudios/transcoder/common/TrackType;)Lkotlin/Pair;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/common/TrackType;",
            ")",
            "Lkotlin/Pair<",
            "Landroid/media/MediaCodec;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    sget-object v0, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/common/TrackType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1e

    const/4 v0, 0x2

    if-ne p1, v0, :cond_18

    .line 50
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1;->getLazyVideo()Lkotlin/Pair;

    move-result-object p1

    goto :goto_22

    :cond_18
    new-instance p1, Lkotlin/NoWhenBranchMatchedException;

    invoke-direct {p1}, Lkotlin/NoWhenBranchMatchedException;-><init>()V

    throw p1

    .line 49
    :cond_1e
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1;->getLazyAudio()Lkotlin/Pair;

    move-result-object p1

    :goto_22
    return-object p1
.end method

.method public bridge synthetic getAudio()Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1;->getAudio()Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getAudio()Lkotlin/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Landroid/media/MediaCodec;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getAudio(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    return-object v0
.end method

.method public getHasAudio()Z
    .registers 2

    .line 30
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getHasAudio(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Z

    move-result v0

    return v0
.end method

.method public getHasVideo()Z
    .registers 2

    .line 30
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getHasVideo(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic getOrNull(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1;->getOrNull(Lcom/otaliastudios/transcoder/common/TrackType;)Lkotlin/Pair;

    move-result-object p1

    return-object p1
.end method

.method public getOrNull(Lcom/otaliastudios/transcoder/common/TrackType;)Lkotlin/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/common/TrackType;",
            ")",
            "Lkotlin/Pair<",
            "Landroid/media/MediaCodec;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {p0, p1}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getOrNull(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    return-object p1
.end method

.method public getSize()I
    .registers 2

    .line 30
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getSize(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic getVideo()Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1;->getVideo()Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public getVideo()Lkotlin/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Landroid/media/MediaCodec;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->getVideo(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    return-object v0
.end method

.method public has(Lcom/otaliastudios/transcoder/common/TrackType;)Z
    .registers 3

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1;->this$0:Lcom/otaliastudios/transcoder/internal/Codecs;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/internal/Codecs;->access$getTracks$p(Lcom/otaliastudios/transcoder/internal/Codecs;)Lcom/otaliastudios/transcoder/internal/Tracks;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/Tracks;->getAll()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackStatus;->COMPRESSING:Lcom/otaliastudios/transcoder/common/TrackStatus;

    if-ne p1, v0, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return p1
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lkotlin/Pair<",
            "Landroid/media/MediaCodec;",
            "Landroid/view/Surface;",
            ">;>;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->iterator(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic videoOrNull()Ljava/lang/Object;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1;->videoOrNull()Lkotlin/Pair;

    move-result-object v0

    return-object v0
.end method

.method public videoOrNull()Lkotlin/Pair;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Landroid/media/MediaCodec;",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 30
    invoke-static {p0}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap$DefaultImpls;->videoOrNull(Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    return-object v0
.end method
