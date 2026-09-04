.class public final Lcom/otaliastudios/transcoder/internal/Codecs;
.super Ljava/lang/Object;
.source "Codecs.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCodecs.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Codecs.kt\ncom/otaliastudios/transcoder/internal/Codecs\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,69:1\n1849#2,2:70\n*S KotlinDebug\n*F\n+ 1 Codecs.kt\ncom/otaliastudios/transcoder/internal/Codecs\n*L\n65#1:70,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0000\u0008\u0000\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007\u00a2\u0006\u0002\u0010\tJ\u0006\u0010\u0017\u001a\u00020\u0018R\u0014\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R%\u0010\n\u001a\u0016\u0012\u0012\u0012\u0010\u0012\u0004\u0012\u00020\u000c\u0012\u0006\u0012\u0004\u0018\u00010\r0\u000b0\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u000fR\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0016\u0010\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/Codecs;",
        "",
        "sources",
        "Lcom/otaliastudios/transcoder/internal/DataSources;",
        "tracks",
        "Lcom/otaliastudios/transcoder/internal/Tracks;",
        "current",
        "Lcom/otaliastudios/transcoder/internal/utils/TrackMap;",
        "",
        "(Lcom/otaliastudios/transcoder/internal/DataSources;Lcom/otaliastudios/transcoder/internal/Tracks;Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)V",
        "encoders",
        "Lkotlin/Pair;",
        "Landroid/media/MediaCodec;",
        "Landroid/view/Surface;",
        "getEncoders",
        "()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "ownsEncoderStart",
        "",
        "getOwnsEncoderStart",
        "ownsEncoderStop",
        "getOwnsEncoderStop",
        "release",
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
.field private final current:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final encoders:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Lkotlin/Pair<",
            "Landroid/media/MediaCodec;",
            "Landroid/view/Surface;",
            ">;>;"
        }
    .end annotation
.end field

.field private final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

.field private final ownsEncoderStart:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final ownsEncoderStop:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final sources:Lcom/otaliastudios/transcoder/internal/DataSources;

.field private final tracks:Lcom/otaliastudios/transcoder/internal/Tracks;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/transcoder/internal/DataSources;Lcom/otaliastudios/transcoder/internal/Tracks;Lcom/otaliastudios/transcoder/internal/utils/TrackMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/internal/DataSources;",
            "Lcom/otaliastudios/transcoder/internal/Tracks;",
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sources"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tracks"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "current"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/Codecs;->sources:Lcom/otaliastudios/transcoder/internal/DataSources;

    .line 24
    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/Codecs;->tracks:Lcom/otaliastudios/transcoder/internal/Tracks;

    .line 25
    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/Codecs;->current:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    .line 28
    new-instance p1, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string p2, "Codecs"

    invoke-direct {p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/Codecs;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    .line 30
    new-instance p1, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1;

    invoke-direct {p1, p0}, Lcom/otaliastudios/transcoder/internal/Codecs$encoders$1;-><init>(Lcom/otaliastudios/transcoder/internal/Codecs;)V

    check-cast p1, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/Codecs;->encoders:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    .line 54
    new-instance p1, Lcom/otaliastudios/transcoder/internal/Codecs$ownsEncoderStart$1;

    invoke-direct {p1, p0}, Lcom/otaliastudios/transcoder/internal/Codecs$ownsEncoderStart$1;-><init>(Lcom/otaliastudios/transcoder/internal/Codecs;)V

    check-cast p1, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/Codecs;->ownsEncoderStart:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    .line 59
    new-instance p1, Lcom/otaliastudios/transcoder/internal/Codecs$ownsEncoderStop$1;

    invoke-direct {p1, p0}, Lcom/otaliastudios/transcoder/internal/Codecs$ownsEncoderStop$1;-><init>(Lcom/otaliastudios/transcoder/internal/Codecs;)V

    check-cast p1, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/Codecs;->ownsEncoderStop:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    return-void
.end method

.method public static final synthetic access$getCurrent$p(Lcom/otaliastudios/transcoder/internal/Codecs;)Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/Codecs;->current:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    return-object p0
.end method

.method public static final synthetic access$getSources$p(Lcom/otaliastudios/transcoder/internal/Codecs;)Lcom/otaliastudios/transcoder/internal/DataSources;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/Codecs;->sources:Lcom/otaliastudios/transcoder/internal/DataSources;

    return-object p0
.end method

.method public static final synthetic access$getTracks$p(Lcom/otaliastudios/transcoder/internal/Codecs;)Lcom/otaliastudios/transcoder/internal/Tracks;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/Codecs;->tracks:Lcom/otaliastudios/transcoder/internal/Tracks;

    return-object p0
.end method


# virtual methods
.method public final getEncoders()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Lkotlin/Pair<",
            "Landroid/media/MediaCodec;",
            "Landroid/view/Surface;",
            ">;>;"
        }
    .end annotation

    .line 30
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Codecs;->encoders:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    return-object v0
.end method

.method public final getOwnsEncoderStart()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Codecs;->ownsEncoderStart:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    return-object v0
.end method

.method public final getOwnsEncoderStop()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 59
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Codecs;->ownsEncoderStop:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    return-object v0
.end method

.method public final release()V
    .locals 2

    .line 65
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/Codecs;->encoders:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    check-cast v0, Ljava/lang/Iterable;

    .line 70
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    .line 66
    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->release()V

    goto :goto_0

    :cond_0
    return-void
.end method
