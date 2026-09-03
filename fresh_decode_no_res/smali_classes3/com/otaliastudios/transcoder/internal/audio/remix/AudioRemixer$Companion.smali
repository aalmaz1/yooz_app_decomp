.class public final Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer$Companion;
.super Ljava/lang/Object;
.source "AudioRemixer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u001e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\u0080\u0002\u00a2\u0006\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer$Companion;",
        "",
        "()V",
        "get",
        "Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;",
        "inputChannels",
        "",
        "outputChannels",
        "get$lib_release",
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


# static fields
.field static final synthetic $$INSTANCE:Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer$Companion;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer$Companion;-><init>()V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer$Companion;->$$INSTANCE:Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get$lib_release(II)Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;
    .locals 7

    const/4 v0, 0x2

    .line 26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v2, v0, [Ljava/lang/Integer;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v2, v5

    aput-object v1, v2, v3

    invoke-static {v2}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    const-string v6, "Input channel count not supported: "

    if-eqz v2, :cond_3

    new-array v0, v0, [Ljava/lang/Integer;

    aput-object v4, v0, v5

    aput-object v1, v0, v3

    .line 27
    invoke-static {v0}, Lkotlin/collections/SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-ge p1, p2, :cond_0

    .line 28
    new-instance p1, Lcom/otaliastudios/transcoder/internal/audio/remix/UpMixAudioRemixer;

    invoke-direct {p1}, Lcom/otaliastudios/transcoder/internal/audio/remix/UpMixAudioRemixer;-><init>()V

    check-cast p1, Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;

    goto :goto_0

    :cond_0
    if-le p1, p2, :cond_1

    .line 29
    new-instance p1, Lcom/otaliastudios/transcoder/internal/audio/remix/DownMixAudioRemixer;

    invoke-direct {p1}, Lcom/otaliastudios/transcoder/internal/audio/remix/DownMixAudioRemixer;-><init>()V

    check-cast p1, Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;

    goto :goto_0

    .line 30
    :cond_1
    new-instance p1, Lcom/otaliastudios/transcoder/internal/audio/remix/PassThroughAudioRemixer;

    invoke-direct {p1}, Lcom/otaliastudios/transcoder/internal/audio/remix/PassThroughAudioRemixer;-><init>()V

    check-cast p1, Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;

    :goto_0
    return-object p1

    .line 27
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2

    .line 26
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v6, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Throwable;

    throw p2
.end method
