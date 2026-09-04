.class final Lcom/otaliastudios/transcoder/internal/audio/Chunk;
.super Ljava/lang/Object;
.source "chunks.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/internal/audio/Chunk$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u000f\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u0082\u0008\u0018\u0000  2\u00020\u0001:\u0001 B+\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u000c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0002\u0010\u000bJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0007H\u00c6\u0003J\u000f\u0010\u0017\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u00c6\u0003J7\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u000e\u0008\u0002\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tH\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001c\u001a\u00020\u001dH\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000c\u0010\rR\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\t\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\u00a8\u0006!"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/audio/Chunk;",
        "",
        "buffer",
        "Ljava/nio/ShortBuffer;",
        "timeUs",
        "",
        "timeStretch",
        "",
        "release",
        "Lkotlin/Function0;",
        "",
        "(Ljava/nio/ShortBuffer;JDLkotlin/jvm/functions/Function0;)V",
        "getBuffer",
        "()Ljava/nio/ShortBuffer;",
        "getRelease",
        "()Lkotlin/jvm/functions/Function0;",
        "getTimeStretch",
        "()D",
        "getTimeUs",
        "()J",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
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
.field public static final Companion:Lcom/otaliastudios/transcoder/internal/audio/Chunk$Companion;

.field private static final Eos:Lcom/otaliastudios/transcoder/internal/audio/Chunk;


# instance fields
.field private final buffer:Ljava/nio/ShortBuffer;

.field private final release:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final timeStretch:D

.field private final timeUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/otaliastudios/transcoder/internal/audio/Chunk$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/audio/Chunk$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->Companion:Lcom/otaliastudios/transcoder/internal/audio/Chunk$Companion;

    .line 12
    new-instance v0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/nio/ShortBuffer;->allocate(I)Ljava/nio/ShortBuffer;

    move-result-object v3

    const-string v1, "allocate(0)"

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    sget-object v1, Lcom/otaliastudios/transcoder/internal/audio/Chunk$Companion$Eos$1;->INSTANCE:Lcom/otaliastudios/transcoder/internal/audio/Chunk$Companion$Eos$1;

    move-object v8, v1

    check-cast v8, Lkotlin/jvm/functions/Function0;

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/otaliastudios/transcoder/internal/audio/Chunk;-><init>(Ljava/nio/ShortBuffer;JDLkotlin/jvm/functions/Function0;)V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->Eos:Lcom/otaliastudios/transcoder/internal/audio/Chunk;

    return-void
.end method

.method public constructor <init>(Ljava/nio/ShortBuffer;JDLkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ShortBuffer;",
            "JD",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "release"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->buffer:Ljava/nio/ShortBuffer;

    .line 7
    iput-wide p2, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->timeUs:J

    .line 8
    iput-wide p4, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->timeStretch:D

    .line 9
    iput-object p6, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->release:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public static final synthetic access$getEos$cp()Lcom/otaliastudios/transcoder/internal/audio/Chunk;
    .locals 1

    .line 5
    sget-object v0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->Eos:Lcom/otaliastudios/transcoder/internal/audio/Chunk;

    return-object v0
.end method

.method public static synthetic copy$default(Lcom/otaliastudios/transcoder/internal/audio/Chunk;Ljava/nio/ShortBuffer;JDLkotlin/jvm/functions/Function0;ILjava/lang/Object;)Lcom/otaliastudios/transcoder/internal/audio/Chunk;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->buffer:Ljava/nio/ShortBuffer;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-wide p2, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->timeUs:J

    :cond_1
    move-wide v0, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-wide p4, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->timeStretch:D

    :cond_2
    move-wide v2, p4

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-object p6, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->release:Lkotlin/jvm/functions/Function0;

    :cond_3
    move-object p8, p6

    move-object p2, p0

    move-object p3, p1

    move-wide p4, v0

    move-wide p6, v2

    invoke-virtual/range {p2 .. p8}, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->copy(Ljava/nio/ShortBuffer;JDLkotlin/jvm/functions/Function0;)Lcom/otaliastudios/transcoder/internal/audio/Chunk;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/nio/ShortBuffer;
    .locals 1

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->buffer:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public final component2()J
    .locals 2

    iget-wide v0, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->timeUs:J

    return-wide v0
.end method

.method public final component3()D
    .locals 2

    iget-wide v0, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->timeStretch:D

    return-wide v0
.end method

.method public final component4()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->release:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final copy(Ljava/nio/ShortBuffer;JDLkotlin/jvm/functions/Function0;)Lcom/otaliastudios/transcoder/internal/audio/Chunk;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ShortBuffer;",
            "JD",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)",
            "Lcom/otaliastudios/transcoder/internal/audio/Chunk;"
        }
    .end annotation

    const-string v0, "buffer"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "release"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;

    move-object v1, v0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/otaliastudios/transcoder/internal/audio/Chunk;-><init>(Ljava/nio/ShortBuffer;JDLkotlin/jvm/functions/Function0;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/otaliastudios/transcoder/internal/audio/Chunk;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/otaliastudios/transcoder/internal/audio/Chunk;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->buffer:Ljava/nio/ShortBuffer;

    iget-object v3, p1, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->buffer:Ljava/nio/ShortBuffer;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-wide v3, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->timeUs:J

    iget-wide v5, p1, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->timeUs:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    :cond_3
    iget-wide v3, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->timeStretch:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iget-wide v3, p1, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->timeStretch:D

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->release:Lkotlin/jvm/functions/Function0;

    iget-object p1, p1, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->release:Lkotlin/jvm/functions/Function0;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getBuffer()Ljava/nio/ShortBuffer;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->buffer:Ljava/nio/ShortBuffer;

    return-object v0
.end method

.method public final getRelease()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->release:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getTimeStretch()D
    .locals 2

    .line 8
    iget-wide v0, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->timeStretch:D

    return-wide v0
.end method

.method public final getTimeUs()J
    .locals 2

    .line 7
    iget-wide v0, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->timeUs:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0}, Ljava/nio/ShortBuffer;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->timeUs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->hashCode(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->timeStretch:D

    invoke-static {v1, v2}, Ljava/lang/Double;->hashCode(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->release:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Chunk(buffer="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->buffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->timeUs:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", timeStretch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->timeStretch:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", release="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/audio/Chunk;->release:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
