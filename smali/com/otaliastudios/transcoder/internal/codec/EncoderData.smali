.class public final Lcom/otaliastudios/transcoder/internal/codec/EncoderData;
.super Ljava/lang/Object;
.source "Encoder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/internal/codec/EncoderData$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u000c\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0080\u0008\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u001f\u0012\u0008\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000b\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0007H\u00c6\u0003J)\u0010\u0012\u001a\u00020\u00002\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0016\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001R\u0013\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/codec/EncoderData;",
        "",
        "buffer",
        "Ljava/nio/ByteBuffer;",
        "id",
        "",
        "timeUs",
        "",
        "(Ljava/nio/ByteBuffer;IJ)V",
        "getBuffer",
        "()Ljava/nio/ByteBuffer;",
        "getId",
        "()I",
        "getTimeUs",
        "()J",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
        "",
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
.field public static final Companion:Lcom/otaliastudios/transcoder/internal/codec/EncoderData$Companion;

.field private static final Empty:Lcom/otaliastudios/transcoder/internal/codec/EncoderData;


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final id:I

.field private final timeUs:J


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/codec/EncoderData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->Companion:Lcom/otaliastudios/transcoder/internal/codec/EncoderData$Companion;

    .line 27
    new-instance v0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;-><init>(Ljava/nio/ByteBuffer;IJ)V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->Empty:Lcom/otaliastudios/transcoder/internal/codec/EncoderData;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ByteBuffer;IJ)V
    .registers 5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->buffer:Ljava/nio/ByteBuffer;

    .line 24
    iput p2, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->id:I

    .line 25
    iput-wide p3, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->timeUs:J

    return-void
.end method

.method public static final synthetic access$getEmpty$cp()Lcom/otaliastudios/transcoder/internal/codec/EncoderData;
    .registers 1

    .line 22
    sget-object v0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->Empty:Lcom/otaliastudios/transcoder/internal/codec/EncoderData;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/otaliastudios/transcoder/internal/codec/EncoderData;Ljava/nio/ByteBuffer;IJILjava/lang/Object;)Lcom/otaliastudios/transcoder/internal/codec/EncoderData;
    .registers 7

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_6

    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->buffer:Ljava/nio/ByteBuffer;

    :cond_6
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_c

    iget p2, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->id:I

    :cond_c
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_12

    iget-wide p3, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->timeUs:J

    :cond_12
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->copy(Ljava/nio/ByteBuffer;IJ)Lcom/otaliastudios/transcoder/internal/codec/EncoderData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final component2()I
    .registers 2

    iget v0, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->id:I

    return v0
.end method

.method public final component3()J
    .registers 3

    iget-wide v0, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->timeUs:J

    return-wide v0
.end method

.method public final copy(Ljava/nio/ByteBuffer;IJ)Lcom/otaliastudios/transcoder/internal/codec/EncoderData;
    .registers 6

    new-instance v0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;-><init>(Ljava/nio/ByteBuffer;IJ)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    instance-of v1, p1, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    check-cast p1, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->buffer:Ljava/nio/ByteBuffer;

    iget-object v3, p1, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    return v2

    :cond_17
    iget v1, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->id:I

    iget v3, p1, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->id:I

    if-eq v1, v3, :cond_1e

    return v2

    :cond_1e
    iget-wide v3, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->timeUs:J

    iget-wide v5, p1, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->timeUs:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_27

    return v2

    :cond_27
    return v0
.end method

.method public final getBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getId()I
    .registers 2

    .line 24
    iget v0, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->id:I

    return v0
.end method

.method public final getTimeUs()J
    .registers 3

    .line 25
    iget-wide v0, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->timeUs:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 4

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->buffer:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hashCode()I

    move-result v0

    :goto_a
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->timeUs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EncoderData(buffer="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;->timeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
