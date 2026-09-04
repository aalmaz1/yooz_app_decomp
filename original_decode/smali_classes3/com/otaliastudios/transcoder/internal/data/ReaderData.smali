.class public final Lcom/otaliastudios/transcoder/internal/data/ReaderData;
.super Ljava/lang/Object;
.source "Reader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0080\u0008\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\t\u0010\u000b\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u000c\u001a\u00020\u0005H\u00c6\u0003J\u001d\u0010\r\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005H\u00c6\u0001J\u0013\u0010\u000e\u001a\u00020\u000f2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0011\u001a\u00020\u0005H\u00d6\u0001J\t\u0010\u0012\u001a\u00020\u0013H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/data/ReaderData;",
        "",
        "chunk",
        "Lcom/otaliastudios/transcoder/source/DataSource$Chunk;",
        "id",
        "",
        "(Lcom/otaliastudios/transcoder/source/DataSource$Chunk;I)V",
        "getChunk",
        "()Lcom/otaliastudios/transcoder/source/DataSource$Chunk;",
        "getId",
        "()I",
        "component1",
        "component2",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "toString",
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
.field private final chunk:Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

.field private final id:I


# direct methods
.method public constructor <init>(Lcom/otaliastudios/transcoder/source/DataSource$Chunk;I)V
    .locals 1

    const-string v0, "chunk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->chunk:Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    iput p2, p0, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->id:I

    return-void
.end method

.method public static synthetic copy$default(Lcom/otaliastudios/transcoder/internal/data/ReaderData;Lcom/otaliastudios/transcoder/source/DataSource$Chunk;IILjava/lang/Object;)Lcom/otaliastudios/transcoder/internal/data/ReaderData;
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    iget-object p1, p0, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->chunk:Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    iget p2, p0, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->id:I

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->copy(Lcom/otaliastudios/transcoder/source/DataSource$Chunk;I)Lcom/otaliastudios/transcoder/internal/data/ReaderData;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/otaliastudios/transcoder/source/DataSource$Chunk;
    .locals 1

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->chunk:Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    return-object v0
.end method

.method public final component2()I
    .locals 1

    iget v0, p0, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->id:I

    return v0
.end method

.method public final copy(Lcom/otaliastudios/transcoder/source/DataSource$Chunk;I)Lcom/otaliastudios/transcoder/internal/data/ReaderData;
    .locals 1

    const-string v0, "chunk"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/otaliastudios/transcoder/internal/data/ReaderData;

    invoke-direct {v0, p1, p2}, Lcom/otaliastudios/transcoder/internal/data/ReaderData;-><init>(Lcom/otaliastudios/transcoder/source/DataSource$Chunk;I)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/otaliastudios/transcoder/internal/data/ReaderData;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/otaliastudios/transcoder/internal/data/ReaderData;

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->chunk:Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    iget-object v3, p1, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->chunk:Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->id:I

    iget p1, p1, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->id:I

    if-eq v1, p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getChunk()Lcom/otaliastudios/transcoder/source/DataSource$Chunk;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->chunk:Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    return-object v0
.end method

.method public final getId()I
    .locals 1

    .line 12
    iget v0, p0, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->id:I

    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->chunk:Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/source/DataSource$Chunk;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ReaderData(chunk="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->chunk:Lcom/otaliastudios/transcoder/source/DataSource$Chunk;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/otaliastudios/transcoder/internal/data/ReaderData;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
