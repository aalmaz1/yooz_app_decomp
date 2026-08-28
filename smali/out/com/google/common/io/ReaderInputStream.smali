.class final Lcom/google/common/io/ReaderInputStream;
.super Ljava/io/InputStream;
.source "ReaderInputStream.java"


# annotations
.annotation runtime Lcom/google/common/io/ElementTypesAreNonnullByDefault;
.end annotation


# instance fields
.field private byteBuffer:Ljava/nio/ByteBuffer;

.field private charBuffer:Ljava/nio/CharBuffer;

.field private doneFlushing:Z

.field private draining:Z

.field private final encoder:Ljava/nio/charset/CharsetEncoder;

.field private endOfInput:Z

.field private final reader:Ljava/io/Reader;

.field private final singleByte:[B


# direct methods
.method constructor <init>(Ljava/io/Reader;Ljava/nio/charset/Charset;I)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reader",
            "charset",
            "bufferSize"
        }
    .end annotation

    .line 88
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object p2

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 89
    invoke-virtual {p2, v0}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p2

    sget-object v0, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 90
    invoke-virtual {p2, v0}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object p2

    .line 85
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/io/ReaderInputStream;-><init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V

    return-void
.end method

.method constructor <init>(Ljava/io/Reader;Ljava/nio/charset/CharsetEncoder;I)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "reader",
            "encoder",
            "bufferSize"
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 53
    iput-object v1, p0, Lcom/google/common/io/ReaderInputStream;->singleByte:[B

    .line 104
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/Reader;

    iput-object p1, p0, Lcom/google/common/io/ReaderInputStream;->reader:Ljava/io/Reader;

    .line 105
    invoke-static {p2}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/charset/CharsetEncoder;

    iput-object p1, p0, Lcom/google/common/io/ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    if-lez p3, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v0, 0x0

    :goto_1c
    const-string p1, "bufferSize must be positive: %s"

    .line 106
    invoke-static {v0, p1, p3}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;I)V

    .line 107
    invoke-virtual {p2}, Ljava/nio/charset/CharsetEncoder;->reset()Ljava/nio/charset/CharsetEncoder;

    .line 109
    invoke-static {p3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    .line 110
    invoke-static {p1}, Lcom/google/common/io/Java8Compatibility;->flip(Ljava/nio/Buffer;)V

    .line 112
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private static availableCapacity(Ljava/nio/Buffer;)I
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buffer"
        }
    .end annotation

    .line 232
    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p0}, Ljava/nio/Buffer;->limit()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method private drain([BII)I
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "off",
            "len"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 255
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3
.end method

.method private static grow(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "buf"
        }
    .end annotation

    .line 193
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    invoke-virtual {p0}, Ljava/nio/CharBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    .line 194
    invoke-static {v0}, Ljava/nio/CharBuffer;->wrap([C)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->position()I

    move-result v1

    invoke-static {v0, v1}, Lcom/google/common/io/Java8Compatibility;->position(Ljava/nio/Buffer;I)V

    .line 196
    invoke-virtual {p0}, Ljava/nio/CharBuffer;->limit()I

    move-result p0

    invoke-static {v0, p0}, Lcom/google/common/io/Java8Compatibility;->limit(Ljava/nio/Buffer;I)V

    return-object v0
.end method

.method private readMoreChars()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-static {v0}, Lcom/google/common/io/ReaderInputStream;->availableCapacity(Ljava/nio/Buffer;)I

    move-result v0

    if-nez v0, :cond_22

    .line 211
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    if-lez v0, :cond_1a

    .line 213
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->compact()Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/io/Java8Compatibility;->flip(Ljava/nio/Buffer;)V

    goto :goto_22

    .line 216
    :cond_1a
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-static {v0}, Lcom/google/common/io/ReaderInputStream;->grow(Ljava/nio/CharBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    .line 221
    :cond_22
    :goto_22
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->limit()I

    move-result v0

    .line 222
    iget-object v1, p0, Lcom/google/common/io/ReaderInputStream;->reader:Ljava/io/Reader;

    iget-object v2, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v2

    iget-object v3, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    invoke-static {v3}, Lcom/google/common/io/ReaderInputStream;->availableCapacity(Ljava/nio/Buffer;)I

    move-result v3

    invoke-virtual {v1, v2, v0, v3}, Ljava/io/Reader;->read([CII)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_41

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/google/common/io/ReaderInputStream;->endOfInput:Z

    goto :goto_47

    .line 226
    :cond_41
    iget-object v2, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    add-int/2addr v0, v1

    invoke-static {v2, v0}, Lcom/google/common/io/Java8Compatibility;->limit(Ljava/nio/Buffer;I)V

    :goto_47
    return-void
.end method

.method private startDraining(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "overflow"
        }
    .end annotation

    .line 241
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v0}, Lcom/google/common/io/Java8Compatibility;->flip(Ljava/nio/Buffer;)V

    if-eqz p1, :cond_1e

    .line 242
    iget-object p1, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    if-nez p1, :cond_1e

    .line 243
    iget-object p1, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    goto :goto_21

    :cond_1e
    const/4 p1, 0x1

    .line 245
    iput-boolean p1, p0, Lcom/google/common/io/ReaderInputStream;->draining:Z

    :goto_21
    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->reader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    return-void
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->singleByte:[B

    invoke-virtual {p0, v0}, Lcom/google/common/io/ReaderInputStream;->read([B)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/google/common/io/ReaderInputStream;->singleByte:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    invoke-static {v0}, Lcom/google/common/primitives/UnsignedBytes;->toInt(B)I

    move-result v0

    goto :goto_14

    :cond_13
    const/4 v0, -0x1

    :goto_14
    return v0
.end method

.method public read([BII)I
    .registers 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "b",
            "off",
            "len"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    add-int v0, p2, p3

    .line 130
    array-length v1, p1

    invoke-static {p2, v0, v1}, Lcom/google/common/base/Preconditions;->checkPositionIndexes(III)V

    const/4 v0, 0x0

    if-nez p3, :cond_a

    return v0

    .line 137
    :cond_a
    iget-boolean v1, p0, Lcom/google/common/io/ReaderInputStream;->endOfInput:Z

    move v2, v0

    .line 143
    :goto_d
    iget-boolean v3, p0, Lcom/google/common/io/ReaderInputStream;->draining:Z

    if-eqz v3, :cond_2e

    add-int v3, p2, v2

    sub-int v4, p3, v2

    .line 144
    invoke-direct {p0, p1, v3, v4}, Lcom/google/common/io/ReaderInputStream;->drain([BII)I

    move-result v3

    add-int/2addr v2, v3

    if-eq v2, p3, :cond_29

    .line 145
    iget-boolean v3, p0, Lcom/google/common/io/ReaderInputStream;->doneFlushing:Z

    if-eqz v3, :cond_21

    goto :goto_29

    .line 148
    :cond_21
    iput-boolean v0, p0, Lcom/google/common/io/ReaderInputStream;->draining:Z

    .line 149
    iget-object v3, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-static {v3}, Lcom/google/common/io/Java8Compatibility;->clear(Ljava/nio/Buffer;)V

    goto :goto_2e

    :cond_29
    :goto_29
    if-lez v2, :cond_2c

    goto :goto_2d

    :cond_2c
    const/4 v2, -0x1

    :goto_2d
    return v2

    .line 156
    :cond_2e
    :goto_2e
    iget-boolean v3, p0, Lcom/google/common/io/ReaderInputStream;->doneFlushing:Z

    if-eqz v3, :cond_35

    .line 157
    sget-object v3, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_4c

    :cond_35
    if-eqz v1, :cond_40

    .line 159
    iget-object v3, p0, Lcom/google/common/io/ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, v4}, Ljava/nio/charset/CharsetEncoder;->flush(Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;

    move-result-object v3

    goto :goto_4c

    .line 161
    :cond_40
    iget-object v3, p0, Lcom/google/common/io/ReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, p0, Lcom/google/common/io/ReaderInputStream;->charBuffer:Ljava/nio/CharBuffer;

    iget-object v5, p0, Lcom/google/common/io/ReaderInputStream;->byteBuffer:Ljava/nio/ByteBuffer;

    iget-boolean v6, p0, Lcom/google/common/io/ReaderInputStream;->endOfInput:Z

    invoke-virtual {v3, v4, v5, v6}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v3

    .line 164
    :goto_4c
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_57

    .line 166
    invoke-direct {p0, v5}, Lcom/google/common/io/ReaderInputStream;->startDraining(Z)V

    goto :goto_d

    .line 168
    :cond_57
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v4

    if-eqz v4, :cond_6f

    if-eqz v1, :cond_65

    .line 174
    iput-boolean v5, p0, Lcom/google/common/io/ReaderInputStream;->doneFlushing:Z

    .line 175
    invoke-direct {p0, v0}, Lcom/google/common/io/ReaderInputStream;->startDraining(Z)V

    goto :goto_d

    .line 177
    :cond_65
    iget-boolean v3, p0, Lcom/google/common/io/ReaderInputStream;->endOfInput:Z

    if-eqz v3, :cond_6b

    move v1, v5

    goto :goto_2e

    .line 180
    :cond_6b
    invoke-direct {p0}, Lcom/google/common/io/ReaderInputStream;->readMoreChars()V

    goto :goto_2e

    .line 182
    :cond_6f
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 184
    invoke-virtual {v3}, Ljava/nio/charset/CoderResult;->throwException()V

    return v0
.end method
