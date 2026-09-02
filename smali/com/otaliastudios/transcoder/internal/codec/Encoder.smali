.class public final Lcom/otaliastudios/transcoder/internal/codec/Encoder;
.super Lcom/otaliastudios/transcoder/internal/pipeline/QueuedStep;
.source "Encoder.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/codec/EncoderChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/internal/codec/Encoder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/otaliastudios/transcoder/internal/pipeline/QueuedStep<",
        "Lcom/otaliastudios/transcoder/internal/codec/EncoderData;",
        "Lcom/otaliastudios/transcoder/internal/codec/EncoderChannel;",
        "Lcom/otaliastudios/transcoder/internal/data/WriterData;",
        "Lcom/otaliastudios/transcoder/internal/data/WriterChannel;",
        ">;",
        "Lcom/otaliastudios/transcoder/internal/codec/EncoderChannel;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nEncoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Encoder.kt\ncom/otaliastudios/transcoder/internal/codec/Encoder\n+ 2 Delegates.kt\nkotlin/properties/Delegates\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,163:1\n33#2,3:164\n33#2,3:167\n1#3:170\n*S KotlinDebug\n*F\n+ 1 Encoder.kt\ncom/otaliastudios/transcoder/internal/codec/Encoder\n*L\n55#1:164,3\n56#1:167,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\u0008\u0000\u0018\u0000 ;2\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00012\u00020\u0003:\u0001;B\u0017\u0008\u0016\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nB\'\u0012\u0006\u0010\u000b\u001a\u00020\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000e\u0012\u0006\u0010\u000f\u001a\u00020\u0010\u0012\u0006\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0002\u0010\u0012J\u0016\u00100\u001a\u0010\u0012\u0004\u0012\u000202\u0012\u0004\u0012\u00020\u001d\u0018\u000101H\u0016J\u000e\u00103\u001a\u0008\u0012\u0004\u0012\u00020\u000404H\u0014J\u0010\u00105\u001a\u0002062\u0006\u00107\u001a\u00020\u0002H\u0014J\u0010\u00108\u001a\u0002062\u0006\u00107\u001a\u00020\u0002H\u0014J\u0008\u00109\u001a\u000206H\u0002J\u0008\u0010:\u001a\u000206H\u0016R\u001b\u0010\u0013\u001a\u00020\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016R\u0014\u0010\u0019\u001a\u00020\u0000X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\u001e\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001d8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008#\u0010$\u001a\u0004\u0008\u001f\u0010 \"\u0004\u0008!\u0010\"R+\u0010%\u001a\u00020\u001d2\u0006\u0010\u001c\u001a\u00020\u001d8B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008(\u0010$\u001a\u0004\u0008&\u0010 \"\u0004\u0008\'\u0010\"R\u000e\u0010)\u001a\u00020\u0010X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020+X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010,\u001a\u00020-X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0010X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008.\u0010/R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006<"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/codec/Encoder;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/QueuedStep;",
        "Lcom/otaliastudios/transcoder/internal/codec/EncoderData;",
        "Lcom/otaliastudios/transcoder/internal/codec/EncoderChannel;",
        "Lcom/otaliastudios/transcoder/internal/data/WriterData;",
        "Lcom/otaliastudios/transcoder/internal/data/WriterChannel;",
        "codecs",
        "Lcom/otaliastudios/transcoder/internal/Codecs;",
        "type",
        "Lcom/otaliastudios/transcoder/common/TrackType;",
        "(Lcom/otaliastudios/transcoder/internal/Codecs;Lcom/otaliastudios/transcoder/common/TrackType;)V",
        "codec",
        "Landroid/media/MediaCodec;",
        "surface",
        "Landroid/view/Surface;",
        "ownsCodecStart",
        "",
        "ownsCodecStop",
        "(Landroid/media/MediaCodec;Landroid/view/Surface;ZZ)V",
        "buffers",
        "Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;",
        "getBuffers",
        "()Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;",
        "buffers$delegate",
        "Lkotlin/Lazy;",
        "channel",
        "getChannel",
        "()Lcom/otaliastudios/transcoder/internal/codec/Encoder;",
        "<set-?>",
        "",
        "dequeuedInputs",
        "getDequeuedInputs",
        "()I",
        "setDequeuedInputs",
        "(I)V",
        "dequeuedInputs$delegate",
        "Lkotlin/properties/ReadWriteProperty;",
        "dequeuedOutputs",
        "getDequeuedOutputs",
        "setDequeuedOutputs",
        "dequeuedOutputs$delegate",
        "eosReceivedButNotEnqueued",
        "info",
        "Landroid/media/MediaCodec$BufferInfo;",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "getSurface",
        "()Landroid/view/Surface;",
        "buffer",
        "Lkotlin/Pair;",
        "Ljava/nio/ByteBuffer;",
        "drain",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State;",
        "enqueue",
        "",
        "data",
        "enqueueEos",
        "printDequeued",
        "release",
        "Companion",
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
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/otaliastudios/transcoder/internal/codec/Encoder$Companion;

.field private static final ID:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/otaliastudios/transcoder/internal/utils/TrackMap<",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final buffers$delegate:Lkotlin/Lazy;

.field private final channel:Lcom/otaliastudios/transcoder/internal/codec/Encoder;

.field private final codec:Landroid/media/MediaCodec;

.field private final dequeuedInputs$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final dequeuedOutputs$delegate:Lkotlin/properties/ReadWriteProperty;

.field private eosReceivedButNotEnqueued:Z

.field private info:Landroid/media/MediaCodec$BufferInfo;

.field private final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

.field private final ownsCodecStop:Z

.field private final surface:Landroid/view/Surface;

.field private final type:Lcom/otaliastudios/transcoder/common/TrackType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 55
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "dequeuedInputs"

    const-string v3, "getDequeuedInputs()I"

    const-class v4, Lcom/otaliastudios/transcoder/internal/codec/Encoder;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    aput-object v1, v0, v5

    .line 56
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "dequeuedOutputs"

    const-string v3, "getDequeuedOutputs()I"

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sput-object v0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/otaliastudios/transcoder/internal/codec/Encoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/codec/Encoder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->Companion:Lcom/otaliastudios/transcoder/internal/codec/Encoder$Companion;

    .line 50
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->trackMapOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->ID:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Landroid/view/Surface;ZZ)V
    .registers 8

    const-string v0, "codec"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/pipeline/QueuedStep;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->codec:Landroid/media/MediaCodec;

    .line 37
    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->surface:Landroid/view/Surface;

    .line 39
    iput-boolean p4, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->ownsCodecStop:Z

    .line 53
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    if-eqz p2, :cond_17

    sget-object p2, Lcom/otaliastudios/transcoder/common/TrackType;->VIDEO:Lcom/otaliastudios/transcoder/common/TrackType;

    goto :goto_19

    :cond_17
    sget-object p2, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    :goto_19
    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->type:Lcom/otaliastudios/transcoder/common/TrackType;

    .line 54
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Encoder("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->ID:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    invoke-interface {v2, p2}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v1, 0x29

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    .line 55
    sget-object p2, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 164
    new-instance v2, Lcom/otaliastudios/transcoder/internal/codec/Encoder$special$$inlined$observable$1;

    invoke-direct {v2, v1, v1, p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/otaliastudios/transcoder/internal/codec/Encoder;)V

    check-cast v2, Lkotlin/properties/ReadWriteProperty;

    .line 55
    iput-object v2, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->dequeuedInputs$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 56
    sget-object v1, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 167
    new-instance v1, Lcom/otaliastudios/transcoder/internal/codec/Encoder$special$$inlined$observable$2;

    invoke-direct {v1, p2, p2, p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder$special$$inlined$observable$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/otaliastudios/transcoder/internal/codec/Encoder;)V

    check-cast v1, Lkotlin/properties/ReadWriteProperty;

    .line 56
    iput-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->dequeuedOutputs$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 61
    iput-object p0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->channel:Lcom/otaliastudios/transcoder/internal/codec/Encoder;

    .line 63
    new-instance p2, Lcom/otaliastudios/transcoder/internal/codec/Encoder$buffers$2;

    invoke-direct {p2, p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder$buffers$2;-><init>(Lcom/otaliastudios/transcoder/internal/codec/Encoder;)V

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->buffers$delegate:Lkotlin/Lazy;

    .line 65
    new-instance p2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 69
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Encoder: ownsStart="

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " ownsStop="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    if-eqz p3, :cond_a3

    .line 71
    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    :cond_a3
    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/transcoder/internal/Codecs;Lcom/otaliastudios/transcoder/common/TrackType;)V
    .registers 6

    const-string v0, "codecs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/Codecs;->getEncoders()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec;

    .line 44
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/Codecs;->getEncoders()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/Surface;

    .line 45
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/Codecs;->getOwnsEncoderStart()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v2

    invoke-interface {v2, p2}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 46
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/Codecs;->getOwnsEncoderStop()Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 42
    invoke-direct {p0, v0, v1, v2, p1}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;-><init>(Landroid/media/MediaCodec;Landroid/view/Surface;ZZ)V

    return-void
.end method

.method public static final synthetic access$getCodec$p(Lcom/otaliastudios/transcoder/internal/codec/Encoder;)Landroid/media/MediaCodec;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->codec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method public static final synthetic access$getDequeuedOutputs(Lcom/otaliastudios/transcoder/internal/codec/Encoder;)I
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getDequeuedOutputs()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$printDequeued(Lcom/otaliastudios/transcoder/internal/codec/Encoder;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->printDequeued()V

    return-void
.end method

.method public static final synthetic access$setDequeuedOutputs(Lcom/otaliastudios/transcoder/internal/codec/Encoder;I)V
    .registers 2

    .line 35
    invoke-direct {p0, p1}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->setDequeuedOutputs(I)V

    return-void
.end method

.method private final getBuffers()Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->buffers$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;

    return-object v0
.end method

.method private final getDequeuedInputs()I
    .registers 4

    .line 55
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->dequeuedInputs$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final getDequeuedOutputs()I
    .registers 4

    .line 56
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->dequeuedOutputs$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lkotlin/properties/ReadWriteProperty;->getValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final printDequeued()V
    .registers 4

    .line 58
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "dequeuedInputs="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getDequeuedInputs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dequeuedOutputs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getDequeuedOutputs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    return-void
.end method

.method private final setDequeuedInputs(I)V
    .registers 5

    .line 55
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->dequeuedInputs$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setDequeuedOutputs(I)V
    .registers 5

    .line 56
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->dequeuedOutputs$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public buffer()Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/nio/ByteBuffer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->codec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    if-ltz v0, :cond_24

    .line 78
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getDequeuedInputs()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->setDequeuedInputs(I)V

    .line 79
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getBuffers()Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_4e

    .line 81
    :cond_24
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "buffer() failed. dequeuedInputs="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getDequeuedInputs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dequeuedOutputs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getDequeuedOutputs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 82
    move-object v1, v0

    check-cast v1, Lkotlin/Pair;

    :goto_4e
    return-object v0
.end method

.method protected drain()Lcom/otaliastudios/transcoder/internal/pipeline/State;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State<",
            "Lcom/otaliastudios/transcoder/internal/data/WriterData;",
            ">;"
        }
    .end annotation

    .line 110
    iget-boolean v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->eosReceivedButNotEnqueued:Z

    if-eqz v0, :cond_7

    const-wide/16 v0, 0x1388

    goto :goto_9

    :cond_7
    const-wide/16 v0, 0x0

    .line 111
    :goto_9
    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->codec:Landroid/media/MediaCodec;

    iget-object v3, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->info:Landroid/media/MediaCodec$BufferInfo;

    invoke-virtual {v2, v3, v0, v1}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_112

    const/4 v1, -0x2

    if-eq v0, v1, :cond_e8

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_93

    .line 134
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_26

    move v1, v3

    goto :goto_27

    :cond_26
    move v1, v2

    :goto_27
    if-eqz v1, :cond_34

    .line 136
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 137
    sget-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;->INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    goto/16 :goto_11d

    .line 139
    :cond_34
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getDequeuedOutputs()I

    move-result v1

    add-int/2addr v1, v3

    invoke-direct {p0, v1}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->setDequeuedOutputs(I)V

    .line 140
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_45

    move v2, v3

    .line 141
    :cond_45
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v7, v1, -0x5

    .line 142
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getBuffers()Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    const-string v1, "buffers.getOutputBuffer(result)"

    invoke-static {v4, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v5, v1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    .line 144
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 145
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget-object v3, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v3, v3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v1, v3

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 146
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    new-instance v1, Lcom/otaliastudios/transcoder/internal/data/WriterData;

    new-instance v3, Lcom/otaliastudios/transcoder/internal/codec/Encoder$drain$data$1;

    invoke-direct {v3, p0, v0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder$drain$data$1;-><init>(Lcom/otaliastudios/transcoder/internal/codec/Encoder;I)V

    move-object v8, v3

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/otaliastudios/transcoder/internal/data/WriterData;-><init>(Ljava/nio/ByteBuffer;JILkotlin/jvm/functions/Function0;)V

    if-eqz v2, :cond_8a

    .line 151
    new-instance v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    goto :goto_8f

    :cond_8a
    new-instance v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;-><init>(Ljava/lang/Object;)V

    :goto_8f
    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    goto/16 :goto_11d

    .line 113
    :cond_93
    iget-boolean v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->eosReceivedButNotEnqueued:Z

    if-eqz v0, :cond_dc

    .line 116
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Sending fake Eos. dequeuedInputs="

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getDequeuedInputs()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " dequeuedOutputs="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getDequeuedOutputs()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 117
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 118
    new-instance v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    new-instance v1, Lcom/otaliastudios/transcoder/internal/data/WriterData;

    const-string v2, "buffer"

    invoke-static {v4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    sget-object v2, Lcom/otaliastudios/transcoder/internal/codec/Encoder$drain$1;->INSTANCE:Lcom/otaliastudios/transcoder/internal/codec/Encoder$drain$1;

    move-object v8, v2

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/otaliastudios/transcoder/internal/data/WriterData;-><init>(Ljava/nio/ByteBuffer;JILkotlin/jvm/functions/Function0;)V

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    goto :goto_11d

    .line 120
    :cond_dc
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "Can\'t dequeue output buffer: INFO_TRY_AGAIN_LATER"

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;->INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    goto :goto_11d

    .line 125
    :cond_e8
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "INFO_OUTPUT_FORMAT_CHANGED! format="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getNext()Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/data/WriterChannel;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "codec.outputFormat"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/otaliastudios/transcoder/internal/data/WriterChannel;->handleFormat(Landroid/media/MediaFormat;)V

    .line 127
    sget-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;->INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    goto :goto_11d

    .line 130
    :cond_112
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getBuffers()Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;->onOutputBuffersChanged()V

    .line 131
    sget-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;->INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    :goto_11d
    return-object v0
.end method

.method protected enqueue(Lcom/otaliastudios/transcoder/internal/codec/EncoderData;)V
    .registers 10

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_c

    return-void

    .line 103
    :cond_c
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 104
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->getId()I

    move-result v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->getTimeUs()J

    move-result-wide v5

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 105
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getDequeuedInputs()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->setDequeuedInputs(I)V

    return-void

    .line 103
    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Audio should always pass a buffer to Encoder."

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1
.end method

.method public bridge synthetic enqueue(Ljava/lang/Object;)V
    .registers 2

    .line 35
    check-cast p1, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->enqueue(Lcom/otaliastudios/transcoder/internal/codec/EncoderData;)V

    return-void
.end method

.method protected enqueueEos(Lcom/otaliastudios/transcoder/internal/codec/EncoderData;)V
    .registers 10

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_2f

    .line 90
    iget-boolean v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->ownsCodecStop:Z

    if-nez v0, :cond_12

    iput-boolean v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->eosReceivedButNotEnqueued:Z

    :cond_12
    if-nez v0, :cond_16

    const/4 v0, 0x0

    goto :goto_17

    :cond_16
    const/4 v0, 0x4

    :goto_17
    move v7, v0

    .line 92
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->getId()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 93
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getDequeuedInputs()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-direct {p0, p1}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->setDequeuedInputs(I)V

    goto :goto_3b

    .line 95
    :cond_2f
    iget-boolean p1, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->ownsCodecStop:Z

    if-nez p1, :cond_36

    iput-boolean v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->eosReceivedButNotEnqueued:Z

    goto :goto_3b

    .line 96
    :cond_36
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    :goto_3b
    return-void
.end method

.method public bridge synthetic enqueueEos(Ljava/lang/Object;)V
    .registers 2

    .line 35
    check-cast p1, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->enqueueEos(Lcom/otaliastudios/transcoder/internal/codec/EncoderData;)V

    return-void
.end method

.method public getChannel()Lcom/otaliastudios/transcoder/internal/codec/Encoder;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->channel:Lcom/otaliastudios/transcoder/internal/codec/Encoder;

    return-object v0
.end method

.method public bridge synthetic getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getChannel()Lcom/otaliastudios/transcoder/internal/codec/Encoder;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    return-object v0
.end method

.method public getSurface()Landroid/view/Surface;
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->surface:Landroid/view/Surface;

    return-object v0
.end method

.method public release()V
    .registers 4

    .line 158
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "release(): ownsStop="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->ownsCodecStop:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dequeuedInputs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getDequeuedInputs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dequeuedOutputs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->getDequeuedOutputs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 159
    iget-boolean v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->ownsCodecStop:Z

    if-eqz v0, :cond_3b

    .line 160
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Encoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    :cond_3b
    return-void
.end method
