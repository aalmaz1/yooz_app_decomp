.class public final Lcom/otaliastudios/transcoder/internal/codec/Decoder;
.super Lcom/otaliastudios/transcoder/internal/pipeline/QueuedStep;
.source "Decoder.kt"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/internal/codec/Decoder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/otaliastudios/transcoder/internal/pipeline/QueuedStep<",
        "Lcom/otaliastudios/transcoder/internal/data/ReaderData;",
        "Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;",
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderData;",
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;",
        ">;",
        "Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Decoder.kt\ncom/otaliastudios/transcoder/internal/codec/Decoder\n+ 2 Delegates.kt\nkotlin/properties/Delegates\n*L\n1#1,133:1\n33#2,3:134\n33#2,3:137\n*S KotlinDebug\n*F\n+ 1 Decoder.kt\ncom/otaliastudios/transcoder/internal/codec/Decoder\n*L\n50#1:134,3\n51#1:137,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000h\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u000c\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0008\u0008\u0000\u0018\u0000 62\u001a\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00050\u00012\u00020\u0003:\u00016B\u0015\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\t\u00a2\u0006\u0002\u0010\nJ\u0016\u0010)\u001a\u0010\u0012\u0004\u0012\u00020+\u0012\u0004\u0012\u00020\u0017\u0018\u00010*H\u0016J\u000e\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u00040-H\u0014J\u0010\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020\u0002H\u0014J\u0010\u00101\u001a\u00020/2\u0006\u00100\u001a\u00020\u0002H\u0014J\u0010\u00102\u001a\u00020/2\u0006\u00103\u001a\u00020\u0005H\u0016J\u0008\u00104\u001a\u00020/H\u0002J\u0008\u00105\u001a\u00020/H\u0016R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u0014\u0010\u0011\u001a\u00020\u0000X\u0096\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u0004\u00a2\u0006\u0002\n\u0000R+\u0010\u0018\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00178B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR+\u0010\u001f\u001a\u00020\u00172\u0006\u0010\u0016\u001a\u00020\u00178B@BX\u0082\u008e\u0002\u00a2\u0006\u0012\n\u0004\u0008\"\u0010\u001e\u001a\u0004\u0008 \u0010\u001a\"\u0004\u0008!\u0010\u001cR\u000e\u0010#\u001a\u00020$X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\'\u001a\u00020(X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00067"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/codec/Decoder;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/QueuedStep;",
        "Lcom/otaliastudios/transcoder/internal/data/ReaderData;",
        "Lcom/otaliastudios/transcoder/internal/data/ReaderChannel;",
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderData;",
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;",
        "format",
        "Landroid/media/MediaFormat;",
        "continuous",
        "",
        "(Landroid/media/MediaFormat;Z)V",
        "buffers",
        "Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;",
        "getBuffers",
        "()Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;",
        "buffers$delegate",
        "Lkotlin/Lazy;",
        "channel",
        "getChannel",
        "()Lcom/otaliastudios/transcoder/internal/codec/Decoder;",
        "codec",
        "Landroid/media/MediaCodec;",
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
        "dropper",
        "Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;",
        "info",
        "Landroid/media/MediaCodec$BufferInfo;",
        "log",
        "Lcom/otaliastudios/transcoder/internal/utils/Logger;",
        "buffer",
        "Lkotlin/Pair;",
        "Ljava/nio/ByteBuffer;",
        "drain",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State;",
        "enqueue",
        "",
        "data",
        "enqueueEos",
        "initialize",
        "next",
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

.field public static final Companion:Lcom/otaliastudios/transcoder/internal/codec/Decoder$Companion;

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

.field private final channel:Lcom/otaliastudios/transcoder/internal/codec/Decoder;

.field private final codec:Landroid/media/MediaCodec;

.field private final dequeuedInputs$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final dequeuedOutputs$delegate:Lkotlin/properties/ReadWriteProperty;

.field private final dropper:Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;

.field private final format:Landroid/media/MediaFormat;

.field private info:Landroid/media/MediaCodec$BufferInfo;

.field private final log:Lcom/otaliastudios/transcoder/internal/utils/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 50
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-string v2, "dequeuedInputs"

    const-string v3, "getDequeuedInputs()I"

    const-class v4, Lcom/otaliastudios/transcoder/internal/codec/Decoder;

    const/4 v5, 0x0

    invoke-direct {v1, v4, v2, v3, v5}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v1, Lkotlin/jvm/internal/MutablePropertyReference1;

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    aput-object v1, v0, v5

    .line 51
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

    sput-object v0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    new-instance v0, Lcom/otaliastudios/transcoder/internal/codec/Decoder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/codec/Decoder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->Companion:Lcom/otaliastudios/transcoder/internal/codec/Decoder$Companion;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v1, v5}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/TrackMapKt;->trackMapOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    move-result-object v0

    sput-object v0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->ID:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaFormat;Z)V
    .registers 7

    const-string v0, "format"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/pipeline/QueuedStep;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->format:Landroid/media/MediaFormat;

    .line 42
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Decoder("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/otaliastudios/transcoder/common/TrackTypeKt;->getTrackType(Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/common/TrackType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->ID:Lcom/otaliastudios/transcoder/internal/utils/TrackMap;

    invoke-static {p1}, Lcom/otaliastudios/transcoder/common/TrackTypeKt;->getTrackType(Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/common/TrackType;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/otaliastudios/transcoder/internal/utils/TrackMap;->get(Lcom/otaliastudios/transcoder/common/TrackType;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    .line 43
    iput-object p0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->channel:Lcom/otaliastudios/transcoder/internal/codec/Decoder;

    const-string v0, "mime"

    .line 45
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {p1}, Landroid/media/MediaCodec;->createDecoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object p1

    const-string v0, "createDecoderByType(form\u2026(MediaFormat.KEY_MIME)!!)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->codec:Landroid/media/MediaCodec;

    .line 46
    new-instance p1, Lcom/otaliastudios/transcoder/internal/codec/Decoder$buffers$2;

    invoke-direct {p1, p0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder$buffers$2;-><init>(Lcom/otaliastudios/transcoder/internal/codec/Decoder;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->buffers$delegate:Lkotlin/Lazy;

    .line 47
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->info:Landroid/media/MediaCodec$BufferInfo;

    .line 48
    new-instance p1, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;

    invoke-direct {p1, p2}, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;-><init>(Z)V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->dropper:Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;

    .line 50
    sget-object p1, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 134
    new-instance p2, Lcom/otaliastudios/transcoder/internal/codec/Decoder$special$$inlined$observable$1;

    invoke-direct {p2, p1, p1, p0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder$special$$inlined$observable$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/otaliastudios/transcoder/internal/codec/Decoder;)V

    check-cast p2, Lkotlin/properties/ReadWriteProperty;

    .line 50
    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->dequeuedInputs$delegate:Lkotlin/properties/ReadWriteProperty;

    .line 51
    sget-object p2, Lkotlin/properties/Delegates;->INSTANCE:Lkotlin/properties/Delegates;

    .line 137
    new-instance p2, Lcom/otaliastudios/transcoder/internal/codec/Decoder$special$$inlined$observable$2;

    invoke-direct {p2, p1, p1, p0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder$special$$inlined$observable$2;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/otaliastudios/transcoder/internal/codec/Decoder;)V

    check-cast p2, Lkotlin/properties/ReadWriteProperty;

    .line 51
    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->dequeuedOutputs$delegate:Lkotlin/properties/ReadWriteProperty;

    return-void
.end method

.method public static final synthetic access$getCodec$p(Lcom/otaliastudios/transcoder/internal/codec/Decoder;)Landroid/media/MediaCodec;
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->codec:Landroid/media/MediaCodec;

    return-object p0
.end method

.method public static final synthetic access$getDequeuedOutputs(Lcom/otaliastudios/transcoder/internal/codec/Decoder;)I
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->getDequeuedOutputs()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$printDequeued(Lcom/otaliastudios/transcoder/internal/codec/Decoder;)V
    .registers 1

    .line 33
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->printDequeued()V

    return-void
.end method

.method public static final synthetic access$setDequeuedOutputs(Lcom/otaliastudios/transcoder/internal/codec/Decoder;I)V
    .registers 2

    .line 33
    invoke-direct {p0, p1}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->setDequeuedOutputs(I)V

    return-void
.end method

.method private final getBuffers()Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;
    .registers 2

    .line 46
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->buffers$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;

    return-object v0
.end method

.method private final getDequeuedInputs()I
    .registers 4

    .line 50
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->dequeuedInputs$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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

    .line 51
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->dequeuedOutputs$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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
    .registers 1

    return-void
.end method

.method private final setDequeuedInputs(I)V
    .registers 5

    .line 50
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->dequeuedInputs$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p0, v1, p1}, Lkotlin/properties/ReadWriteProperty;->setValue(Ljava/lang/Object;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setDequeuedOutputs(I)V
    .registers 5

    .line 51
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->dequeuedOutputs$delegate:Lkotlin/properties/ReadWriteProperty;

    sget-object v1, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

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

    .line 65
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->codec:Landroid/media/MediaCodec;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v0

    if-ltz v0, :cond_24

    .line 67
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->getDequeuedInputs()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, v1}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->setDequeuedInputs(I)V

    .line 68
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->getBuffers()Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v0

    goto :goto_4e

    .line 70
    :cond_24
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "buffer() failed. dequeuedInputs="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->getDequeuedInputs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dequeuedOutputs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->getDequeuedOutputs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 71
    move-object v1, v0

    check-cast v1, Lkotlin/Pair;

    :goto_4e
    return-object v0
.end method

.method protected drain()Lcom/otaliastudios/transcoder/internal/pipeline/State;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State<",
            "Lcom/otaliastudios/transcoder/internal/codec/DecoderData;",
            ">;"
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->codec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->info:Landroid/media/MediaCodec$BufferInfo;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    const/4 v1, -0x3

    if-eq v0, v1, :cond_b5

    const/4 v1, -0x2

    if-eq v0, v1, :cond_8b

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7f

    .line 108
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->info:Landroid/media/MediaCodec$BufferInfo;

    iget v1, v1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x4

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v1, :cond_1f

    move v1, v4

    goto :goto_20

    :cond_1f
    move v1, v5

    :goto_20
    if-eqz v1, :cond_27

    .line 109
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    goto :goto_31

    :cond_27
    iget-object v2, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->dropper:Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;

    iget-object v3, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->info:Landroid/media/MediaCodec$BufferInfo;

    iget-wide v6, v3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    invoke-virtual {v2, v6, v7}, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->output(J)Ljava/lang/Long;

    move-result-object v2

    :goto_31
    if-eqz v2, :cond_6a

    .line 111
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->getDequeuedOutputs()I

    move-result v3

    add-int/2addr v3, v4

    invoke-direct {p0, v3}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->setDequeuedOutputs(I)V

    .line 112
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->getBuffers()Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    const-string v4, "buffers.getOutputBuffer(result)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 113
    new-instance v4, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    new-instance v2, Lcom/otaliastudios/transcoder/internal/codec/Decoder$drain$data$1;

    invoke-direct {v2, p0, v0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder$drain$data$1;-><init>(Lcom/otaliastudios/transcoder/internal/codec/Decoder;I)V

    check-cast v2, Lkotlin/jvm/functions/Function1;

    invoke-direct {v4, v3, v5, v6, v2}, Lcom/otaliastudios/transcoder/internal/codec/DecoderData;-><init>(Ljava/nio/ByteBuffer;JLkotlin/jvm/functions/Function1;)V

    if-eqz v1, :cond_62

    .line 117
    new-instance v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;

    invoke-direct {v0, v4}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Eos;-><init>(Ljava/lang/Object;)V

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    goto :goto_67

    :cond_62
    new-instance v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    invoke-direct {v0, v4}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;-><init>(Ljava/lang/Object;)V

    :goto_67
    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    goto :goto_73

    .line 119
    :cond_6a
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v5}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    .line 120
    sget-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;->INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    .line 122
    :goto_73
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v2, "drain(): returning "

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->v(Ljava/lang/String;)V

    goto :goto_c7

    .line 94
    :cond_7f
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "drain(): got INFO_TRY_AGAIN_LATER, waiting."

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;->INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/State$Wait;

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    goto :goto_c7

    .line 98
    :cond_8b
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "drain(): got INFO_OUTPUT_FORMAT_CHANGED, handling format and retrying. format="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->getNext()Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v1}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v1

    const-string v2, "codec.outputFormat"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;->handleRawFormat(Landroid/media/MediaFormat;)V

    .line 100
    sget-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;->INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    goto :goto_c7

    .line 103
    :cond_b5
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "drain(): got INFO_OUTPUT_BUFFERS_CHANGED, retrying."

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 104
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->getBuffers()Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/internal/media/MediaCodecBuffers;->onOutputBuffersChanged()V

    .line 105
    sget-object v0, Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;->INSTANCE:Lcom/otaliastudios/transcoder/internal/pipeline/State$Retry;

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/State;

    :goto_c7
    return-object v0
.end method

.method protected enqueue(Lcom/otaliastudios/transcoder/internal/data/ReaderData;)V
    .registers 10

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->getDequeuedInputs()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->setDequeuedInputs(I)V

    .line 84
    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->component1()Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    move-result-object v0

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->component2()I

    move-result v2

    .line 85
    iget-boolean v7, v0, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->keyframe:Z

    .line 86
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->codec:Landroid/media/MediaCodec;

    iget-object p1, v0, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object p1, v0, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    iget-wide v5, v0, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->timeUs:J

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 87
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->dropper:Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;

    iget-wide v1, v0, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->timeUs:J

    iget-boolean v0, v0, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->render:Z

    invoke-virtual {p1, v1, v2, v0}, Lcom/otaliastudios/transcoder/internal/codec/DecoderDropper;->input(JZ)V

    return-void
.end method

.method public bridge synthetic enqueue(Ljava/lang/Object;)V
    .registers 2

    .line 33
    check-cast p1, Lcom/otaliastudios/transcoder/internal/data/ReaderData;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->enqueue(Lcom/otaliastudios/transcoder/internal/data/ReaderData;)V

    return-void
.end method

.method protected enqueueEos(Lcom/otaliastudios/transcoder/internal/data/ReaderData;)V
    .registers 10

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "enqueueEos()!"

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 77
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->getDequeuedInputs()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->setDequeuedInputs(I)V

    const/4 v7, 0x4

    .line 79
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->getId()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    return-void
.end method

.method public bridge synthetic enqueueEos(Ljava/lang/Object;)V
    .registers 2

    .line 33
    check-cast p1, Lcom/otaliastudios/transcoder/internal/data/ReaderData;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->enqueueEos(Lcom/otaliastudios/transcoder/internal/data/ReaderData;)V

    return-void
.end method

.method public getChannel()Lcom/otaliastudios/transcoder/internal/codec/Decoder;
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->channel:Lcom/otaliastudios/transcoder/internal/codec/Decoder;

    return-object v0
.end method

.method public bridge synthetic getChannel()Lcom/otaliastudios/transcoder/internal/pipeline/Channel;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->getChannel()Lcom/otaliastudios/transcoder/internal/codec/Decoder;

    move-result-object v0

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    return-object v0
.end method

.method public initialize(Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;)V
    .registers 6

    const-string v0, "next"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    move-object v0, p1

    check-cast v0, Lcom/otaliastudios/transcoder/internal/pipeline/Channel;

    invoke-super {p0, v0}, Lcom/otaliastudios/transcoder/internal/pipeline/QueuedStep;->initialize(Lcom/otaliastudios/transcoder/internal/pipeline/Channel;)V

    .line 58
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "initialize()"

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->format:Landroid/media/MediaFormat;

    invoke-interface {p1, v0}, Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;->handleSourceFormat(Landroid/media/MediaFormat;)Landroid/view/Surface;

    move-result-object p1

    .line 60
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->codec:Landroid/media/MediaCodec;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->format:Landroid/media/MediaFormat;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p1, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 61
    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    return-void
.end method

.method public bridge synthetic initialize(Lcom/otaliastudios/transcoder/internal/pipeline/Channel;)V
    .registers 2

    .line 33
    check-cast p1, Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;

    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->initialize(Lcom/otaliastudios/transcoder/internal/codec/DecoderChannel;)V

    return-void
.end method

.method public release()V
    .registers 4

    .line 129
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->log:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "release(): releasing codec. dequeuedInputs="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->getDequeuedInputs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dequeuedOutputs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->getDequeuedOutputs()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 130
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->stop()V

    .line 131
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/Decoder;->codec:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    return-void
.end method
