.class final Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;
.super Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
.source "CodedInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeDirectNioDecoder"
.end annotation


# instance fields
.field private final address:J

.field private final buffer:Ljava/nio/ByteBuffer;

.field private bufferSizeAfterLimit:I

.field private currentLimit:I

.field private enableAliasing:Z

.field private final immutable:Z

.field private lastTag:I

.field private limit:J

.field private pos:J

.field private startPos:J


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "buffer",
            "immutable"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1308
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;-><init>(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$1;)V

    const v0, 0x7fffffff

    .line 1302
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1309
    iput-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    .line 1310
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    .line 1311
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    .line 1312
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1313
    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    .line 1314
    iput-boolean p2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/nio/ByteBuffer;ZLcom/google/crypto/tink/shaded/protobuf/CodedInputStream$1;)V
    .registers 4

    .line 1267
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;-><init>(Ljava/nio/ByteBuffer;Z)V

    return-void
.end method

.method private bufferPos(J)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pos"
        }
    .end annotation

    .line 1967
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->address:J

    sub-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method

.method static isSupported()Z
    .registers 1

    .line 1305
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    return v0
.end method

.method private recomputeBufferSizeAfterLimit()V
    .registers 5

    .line 1951
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    .line 1952
    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    sub-long v2, v0, v2

    long-to-int v2, v2

    .line 1953
    iget v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    if-le v2, v3, :cond_19

    sub-int/2addr v2, v3

    .line 1955
    iput v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    .line 1956
    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    goto :goto_1c

    :cond_19
    const/4 v0, 0x0

    .line 1958
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferSizeAfterLimit:I

    :goto_1c
    return-void
.end method

.method private remaining()I
    .registers 5

    .line 1963
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private skipRawVarint()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1712
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_c

    .line 1713
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarintFastPath()V

    goto :goto_f

    .line 1715
    :cond_c
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarintSlowPath()V

    :goto_f
    return-void
.end method

.method private skipRawVarintFastPath()V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_16

    .line 1721
    iget-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-static {v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-ltz v1, :cond_13

    return-void

    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1725
    :cond_16
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private skipRawVarintSlowPath()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_f

    .line 1730
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawByte()B

    move-result v1

    if-ltz v1, :cond_c

    return-void

    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1734
    :cond_f
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method private slice(JJ)Ljava/nio/ByteBuffer;
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "begin",
            "end"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1971
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1972
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    .line 1975
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    .line 1977
    :try_start_e
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1978
    invoke-direct {p0, p3, p4}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 1979
    iget-object p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p1
    :try_end_22
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_22} :catch_2b
    .catchall {:try_start_e .. :try_end_22} :catchall_29

    .line 1985
    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1986
    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    return-object p1

    :catchall_29
    move-exception p1

    goto :goto_34

    :catch_2b
    move-exception p1

    .line 1981
    :try_start_2c
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p2

    .line 1982
    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 1983
    throw p2
    :try_end_34
    .catchall {:try_start_2c .. :try_end_34} :catchall_29

    .line 1985
    :goto_34
    invoke-virtual {v2, v0}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    .line 1986
    invoke-virtual {v2, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    .line 1987
    throw p1
.end method


# virtual methods
.method public checkLastTagWas(I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1335
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    if-ne v0, p1, :cond_5

    return-void

    .line 1336
    :cond_5
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidEndTag()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public enableAliasing(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 1858
    iput-boolean p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    return-void
.end method

.method public getBytesUntilLimit()I
    .registers 3

    .line 1891
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_9

    const/4 v0, -0x1

    return v0

    .line 1895
    :cond_9
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getTotalBytesRead()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public getLastTag()I
    .registers 2

    .line 1342
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    return v0
.end method

.method public getTotalBytesRead()I
    .registers 5

    .line 1905
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public isAtEnd()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1900
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public popLimit(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "oldLimit"
        }
    .end annotation

    .line 1885
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1886
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recomputeBufferSizeAfterLimit()V

    return-void
.end method

.method public pushLimit(I)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "byteLimit"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    if-ltz p1, :cond_16

    .line 1871
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getTotalBytesRead()I

    move-result v0

    add-int/2addr p1, v0

    .line 1872
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    if-gt p1, v0, :cond_11

    .line 1876
    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->currentLimit:I

    .line 1878
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recomputeBufferSizeAfterLimit()V

    return v0

    .line 1874
    :cond_11
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1869
    :cond_16
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public readBool()Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1462
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public readByteArray()[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1604
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawBytes(I)[B

    move-result-object v0

    return-object v0
.end method

.method public readByteBuffer()Ljava/nio/ByteBuffer;
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1609
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_39

    .line 1610
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_39

    .line 1614
    iget-boolean v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    if-nez v1, :cond_23

    iget-boolean v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    if-eqz v1, :cond_23

    .line 1615
    iget-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v3, v0

    add-long v5, v1, v3

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1616
    iget-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return-object v0

    .line 1620
    :cond_23
    new-array v1, v0, [B

    .line 1621
    iget-wide v3, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v6, 0x0

    int-to-long v10, v0

    move-object v5, v1

    move-wide v8, v10

    invoke-static/range {v3 .. v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 1622
    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    add-long/2addr v2, v10

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1623
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    :cond_39
    if-nez v0, :cond_3e

    .line 1629
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/Internal;->EMPTY_BYTE_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    :cond_3e
    if-gez v0, :cond_45

    .line 1632
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1634
    :cond_45
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1578
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_3d

    .line 1579
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_3d

    .line 1580
    iget-boolean v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->immutable:Z

    if-eqz v1, :cond_27

    iget-boolean v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->enableAliasing:Z

    if-eqz v1, :cond_27

    .line 1581
    iget-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v3, v0

    add-long v5, v1, v3

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1582
    iget-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1583
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0

    .line 1586
    :cond_27
    new-array v8, v0, [B

    .line 1587
    iget-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v4, 0x0

    int-to-long v9, v0

    move-object v3, v8

    move-wide v6, v9

    invoke-static/range {v1 .. v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 1588
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    add-long/2addr v0, v9

    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1589
    invoke-static {v8}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->wrap([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    return-object v0

    :cond_3d
    if-nez v0, :cond_42

    .line 1594
    sget-object v0, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->EMPTY:Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    return-object v0

    :cond_42
    if-gez v0, :cond_49

    .line 1597
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1599
    :cond_49
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1427
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readEnum()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1644
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1457
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1452
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1432
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    return v0
.end method

.method public readGroup(ILcom/google/crypto/tink/shaded/protobuf/Parser;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "parser",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            ">(I",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1527
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkRecursionLimit()V

    .line 1528
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1529
    invoke-interface {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/Parser;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    const/4 p3, 0x4

    .line 1530
    invoke-static {p1, p3}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1531
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    return-object p2
.end method

.method public readGroup(ILcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "builder",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1514
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkRecursionLimit()V

    .line 1515
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1516
    invoke-interface {p2, p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    const/4 p2, 0x4

    .line 1517
    invoke-static {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1518
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    return-void
.end method

.method public readInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1447
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1442
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMessage(Lcom/google/crypto/tink/shaded/protobuf/Parser;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "parser",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            ">(",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "TT;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1562
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1563
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkRecursionLimit()V

    .line 1564
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pushLimit(I)I

    move-result v0

    .line 1565
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1566
    invoke-interface {p1, p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/Parser;->parsePartialFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    const/4 p2, 0x0

    .line 1567
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1568
    iget p2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 p2, p2, -0x1

    iput p2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1569
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getBytesUntilLimit()I

    move-result p2

    if-nez p2, :cond_2b

    .line 1572
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->popLimit(I)V

    return-object p1

    .line 1570
    :cond_2b
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public readMessage(Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "builder",
            "extensionRegistry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1546
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    .line 1547
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkRecursionLimit()V

    .line 1548
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pushLimit(I)I

    move-result v0

    .line 1549
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1550
    invoke-interface {p1, p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;->mergeFrom(Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;

    const/4 p1, 0x0

    .line 1551
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1552
    iget p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->recursionDepth:I

    .line 1553
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->getBytesUntilLimit()I

    move-result p1

    if-nez p1, :cond_28

    .line 1556
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->popLimit(I)V

    return-void

    .line 1554
    :cond_28
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public readRawByte()B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1910
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_12

    const-wide/16 v2, 0x1

    add-long/2addr v2, v0

    .line 1913
    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    return v0

    .line 1911
    :cond_12
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readRawBytes(I)[B
    .registers 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_1c

    .line 1918
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_1c

    .line 1919
    new-array v0, p1, [B

    .line 1920
    iget-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v3, p1

    add-long v5, v1, v3

    invoke-direct {p0, v1, v2, v5, v6}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->slice(JJ)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 1921
    iget-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return-object v0

    :cond_1c
    if-gtz p1, :cond_28

    if-nez p1, :cond_23

    .line 1927
    sget-object p1, Lcom/google/crypto/tink/shaded/protobuf/Internal;->EMPTY_BYTE_ARRAY:[B

    return-object p1

    .line 1929
    :cond_23
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1933
    :cond_28
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method

.method public readRawLittleEndian32()I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1824
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1826
    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_39

    add-long/2addr v4, v0

    .line 1830
    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1831
    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    const-wide/16 v3, 0x1

    add-long/2addr v3, v0

    .line 1832
    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const-wide/16 v3, 0x2

    add-long/2addr v3, v0

    .line 1833
    invoke-static {v3, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const-wide/16 v3, 0x3

    add-long/2addr v0, v3

    .line 1834
    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v2

    return v0

    .line 1827
    :cond_39
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readRawLittleEndian64()J
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1839
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1841
    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x8

    cmp-long v2, v2, v4

    if-ltz v2, :cond_72

    add-long/2addr v4, v0

    .line 1845
    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1846
    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const-wide/16 v6, 0x1

    add-long/2addr v6, v0

    .line 1847
    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x8

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x2

    add-long/2addr v6, v0

    .line 1848
    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x10

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x3

    add-long/2addr v6, v0

    .line 1849
    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x18

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x4

    add-long/2addr v6, v0

    .line 1850
    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x20

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x5

    add-long/2addr v6, v0

    .line 1851
    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x28

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x6

    add-long/2addr v6, v0

    .line 1852
    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    and-long/2addr v6, v4

    const/16 v8, 0x30

    shl-long/2addr v6, v8

    or-long/2addr v2, v6

    const-wide/16 v6, 0x7

    add-long/2addr v0, v6

    .line 1853
    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    int-to-long v0, v0

    and-long/2addr v0, v4

    const/16 v4, 0x38

    shl-long/2addr v0, v4

    or-long/2addr v0, v2

    return-wide v0

    .line 1842
    :cond_72
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readRawVarint32()I
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1674
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1676
    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_a

    goto/16 :goto_85

    :cond_a
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 1681
    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-ltz v0, :cond_17

    .line 1682
    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return v0

    .line 1684
    :cond_17
    iget-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v1, v6, v8

    if-gez v1, :cond_21

    goto :goto_85

    :cond_21
    add-long v6, v4, v2

    .line 1686
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_2f

    xor-int/lit8 v0, v0, -0x80

    goto :goto_8b

    :cond_2f
    add-long v4, v6, v2

    .line 1688
    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_3e

    xor-int/lit16 v0, v0, 0x3f80

    :cond_3c
    move-wide v6, v4

    goto :goto_8b

    :cond_3e
    add-long v6, v4, v2

    .line 1690
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_4e

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_8b

    :cond_4e
    add-long v4, v6, v2

    .line 1693
    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v6, v1, 0x1c

    xor-int/2addr v0, v6

    const v6, 0xfe03f80

    xor-int/2addr v0, v6

    if-gez v1, :cond_3c

    add-long v6, v4, v2

    .line 1697
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_8b

    add-long v4, v6, v2

    .line 1698
    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_3c

    add-long v6, v4, v2

    .line 1699
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_8b

    add-long v4, v6, v2

    .line 1700
    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_3c

    add-long v6, v4, v2

    .line 1701
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    if-gez v1, :cond_8b

    .line 1708
    :goto_85
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    long-to-int v0, v0

    return v0

    .line 1705
    :cond_8b
    :goto_8b
    iput-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return v0
.end method

.method public readRawVarint64()J
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1752
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    .line 1754
    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    cmp-long v2, v2, v0

    if-nez v2, :cond_a

    goto/16 :goto_cb

    :cond_a
    const-wide/16 v2, 0x1

    add-long v4, v0, v2

    .line 1760
    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v0

    if-ltz v0, :cond_18

    .line 1761
    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v0, v0

    return-wide v0

    .line 1763
    :cond_18
    iget-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->limit:J

    sub-long/2addr v6, v4

    const-wide/16 v8, 0x9

    cmp-long v1, v6, v8

    if-gez v1, :cond_23

    goto/16 :goto_cb

    :cond_23
    add-long v6, v4, v2

    .line 1765
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x7

    xor-int/2addr v0, v1

    if-gez v0, :cond_33

    xor-int/lit8 v0, v0, -0x80

    :goto_30
    int-to-long v0, v0

    goto/16 :goto_d1

    :cond_33
    add-long v4, v6, v2

    .line 1767
    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0xe

    xor-int/2addr v0, v1

    if-ltz v0, :cond_44

    xor-int/lit16 v0, v0, 0x3f80

    int-to-long v0, v0

    :cond_41
    :goto_41
    move-wide v6, v4

    goto/16 :goto_d1

    :cond_44
    add-long v6, v4, v2

    .line 1769
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v1

    shl-int/lit8 v1, v1, 0x15

    xor-int/2addr v0, v1

    if-gez v0, :cond_54

    const v1, -0x1fc080

    xor-int/2addr v0, v1

    goto :goto_30

    :cond_54
    int-to-long v0, v0

    add-long v4, v6, v2

    .line 1771
    invoke-static {v6, v7}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v6

    int-to-long v6, v6

    const/16 v8, 0x1c

    shl-long/2addr v6, v8

    xor-long/2addr v0, v6

    const-wide/16 v6, 0x0

    cmp-long v8, v0, v6

    if-ltz v8, :cond_6b

    const-wide/32 v2, 0xfe03f80

    :goto_69
    xor-long/2addr v0, v2

    goto :goto_41

    :cond_6b
    add-long v8, v4, v2

    .line 1773
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x23

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_82

    const-wide v2, -0x7f01fc080L

    :goto_7f
    xor-long/2addr v0, v2

    move-wide v6, v8

    goto :goto_d1

    :cond_82
    add-long v4, v8, v2

    .line 1775
    invoke-static {v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x2a

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-ltz v8, :cond_97

    const-wide v2, 0x3f80fe03f80L

    goto :goto_69

    :cond_97
    add-long v8, v4, v2

    .line 1777
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    const/16 v10, 0x31

    shl-long/2addr v4, v10

    xor-long/2addr v0, v4

    cmp-long v4, v0, v6

    if-gez v4, :cond_ac

    const-wide v2, -0x1fc07f01fc080L

    goto :goto_7f

    :cond_ac
    add-long v4, v8, v2

    .line 1787
    invoke-static {v8, v9}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v8

    int-to-long v8, v8

    const/16 v10, 0x38

    shl-long/2addr v8, v10

    xor-long/2addr v0, v8

    const-wide v8, 0xfe03f80fe03f80L

    xor-long/2addr v0, v8

    cmp-long v8, v0, v6

    if-gez v8, :cond_41

    add-long/2addr v2, v4

    .line 1798
    invoke-static {v4, v5}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->getByte(J)B

    move-result v4

    int-to-long v4, v4

    cmp-long v4, v4, v6

    if-gez v4, :cond_d0

    .line 1806
    :goto_cb
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64SlowPath()J

    move-result-wide v0

    return-wide v0

    :cond_d0
    move-wide v6, v2

    .line 1803
    :goto_d1
    iput-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return-wide v0
.end method

.method readRawVarint64SlowPath()J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_3
    const/16 v3, 0x40

    if-ge v2, v3, :cond_18

    .line 1813
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawByte()B

    move-result v3

    and-int/lit8 v4, v3, 0x7f

    int-to-long v4, v4

    shl-long/2addr v4, v2

    or-long/2addr v0, v4

    and-int/lit16 v3, v3, 0x80

    if-nez v3, :cond_15

    return-wide v0

    :cond_15
    add-int/lit8 v2, v2, 0x7

    goto :goto_3

    .line 1819
    :cond_18
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->malformedVarint()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readSFixed32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1649
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    return v0
.end method

.method public readSFixed64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1654
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readSInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1659
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->decodeZigZag32(I)I

    move-result v0

    return v0
.end method

.method public readSInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1664
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->decodeZigZag64(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public readString()Ljava/lang/String;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1467
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_25

    .line 1468
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_25

    .line 1473
    new-array v1, v0, [B

    .line 1474
    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    const-wide/16 v5, 0x0

    int-to-long v9, v0

    move-object v4, v1

    move-wide v7, v9

    invoke-static/range {v2 .. v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->copyMemory(J[BJJ)V

    .line 1475
    new-instance v0, Ljava/lang/String;

    sget-object v2, Lcom/google/crypto/tink/shaded/protobuf/Internal;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 1476
    iget-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    add-long/2addr v1, v9

    iput-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return-object v0

    :cond_25
    if-nez v0, :cond_2a

    const-string v0, ""

    return-object v0

    :cond_2a
    if-gez v0, :cond_31

    .line 1484
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1486
    :cond_31
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readStringRequireUtf8()Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1491
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    if-lez v0, :cond_1f

    .line 1492
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v1

    if-gt v0, v1, :cond_1f

    .line 1493
    iget-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    invoke-direct {p0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->bufferPos(J)I

    move-result v1

    .line 1494
    iget-object v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v2, v1, v0}, Lcom/google/crypto/tink/shaded/protobuf/Utf8;->decodeUtf8(Ljava/nio/ByteBuffer;II)Ljava/lang/String;

    move-result-object v1

    .line 1495
    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return-object v1

    :cond_1f
    if-nez v0, :cond_24

    const-string v0, ""

    return-object v0

    :cond_24
    if-gtz v0, :cond_2b

    .line 1503
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0

    .line 1505
    :cond_2b
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readTag()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1319
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->isAtEnd()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 1320
    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    return v0

    .line 1324
    :cond_a
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    .line 1325
    invoke-static {v0}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result v0

    if-eqz v0, :cond_19

    .line 1330
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->lastTag:I

    return v0

    .line 1328
    :cond_19
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidTag()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object v0

    throw v0
.end method

.method public readUInt32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1639
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result v0

    return v0
.end method

.method public readUInt64()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1437
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint64()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnknownGroup(ILcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "fieldNumber",
            "builder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1539
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readGroup(ILcom/google/crypto/tink/shaded/protobuf/MessageLite$Builder;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)V

    return-void
.end method

.method public resetSizeCounter()V
    .registers 3

    .line 1863
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->startPos:J

    return-void
.end method

.method public skipField(I)Z
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1347
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3d

    if-eq v0, v1, :cond_37

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2f

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_20

    if-eq v0, v3, :cond_1e

    const/4 p1, 0x5

    if-ne v0, p1, :cond_19

    .line 1365
    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    return v1

    .line 1368
    :cond_19
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_1e
    const/4 p1, 0x0

    return p1

    .line 1358
    :cond_20
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipMessage()V

    .line 1360
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    invoke-static {p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 1359
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    return v1

    .line 1355
    :cond_2f
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawVarint32()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    return v1

    :cond_37
    const/16 p1, 0x8

    .line 1352
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawBytes(I)V

    return v1

    .line 1349
    :cond_3d
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipRawVarint()V

    return v1
.end method

.method public skipField(ILcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)Z
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "tag",
            "output"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1374
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagWireType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_52

    if-eq v0, v1, :cond_47

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3c

    const/4 v2, 0x3

    const/4 v3, 0x4

    if-eq v0, v2, :cond_27

    if-eq v0, v3, :cond_25

    const/4 v2, 0x5

    if-ne v0, v2, :cond_20

    .line 1413
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian32()I

    move-result v0

    .line 1414
    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1415
    invoke-virtual {p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeFixed32NoTag(I)V

    return v1

    .line 1419
    :cond_20
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->invalidWireType()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;

    move-result-object p1

    throw p1

    :cond_25
    const/4 p1, 0x0

    return p1

    .line 1398
    :cond_27
    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1399
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->skipMessage(Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;)V

    .line 1402
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->getTagFieldNumber(I)I

    move-result p1

    .line 1401
    invoke-static {p1, v3}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->makeTag(II)I

    move-result p1

    .line 1403
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->checkLastTagWas(I)V

    .line 1404
    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    return v1

    .line 1391
    :cond_3c
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readBytes()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    .line 1392
    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1393
    invoke-virtual {p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeBytesNoTag(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)V

    return v1

    .line 1384
    :cond_47
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readRawLittleEndian64()J

    move-result-wide v2

    .line 1385
    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1386
    invoke-virtual {p2, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeFixed64NoTag(J)V

    return v1

    .line 1377
    :cond_52
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->readInt64()J

    move-result-wide v2

    .line 1378
    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeUInt32NoTag(I)V

    .line 1379
    invoke-virtual {p2, v2, v3}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->writeUInt64NoTag(J)V

    return v1
.end method

.method public skipRawBytes(I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-ltz p1, :cond_f

    .line 1938
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_f

    .line 1940
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/CodedInputStream$UnsafeDirectNioDecoder;->pos:J

    return-void

    :cond_f
    if-gez p1, :cond_16

    .line 1945
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->negativeSize()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1

    .line 1947
    :cond_16
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;->truncatedMessage()Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException;

    move-result-object p1

    throw p1
.end method
