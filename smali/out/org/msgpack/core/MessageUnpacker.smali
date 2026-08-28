.class public Lorg/msgpack/core/MessageUnpacker;
.super Ljava/lang/Object;
.source "MessageUnpacker.java"

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMPTY_BUFFER:Lorg/msgpack/core/buffer/MessageBuffer;

.field private static final EMPTY_STRING:Ljava/lang/String; = ""


# instance fields
.field private final actionOnMalformedString:Ljava/nio/charset/CodingErrorAction;

.field private final actionOnUnmappableString:Ljava/nio/charset/CodingErrorAction;

.field private final allowReadingBinaryAsString:Z

.field private final allowReadingStringAsBinary:Z

.field private buffer:Lorg/msgpack/core/buffer/MessageBuffer;

.field private decodeBuffer:Ljava/nio/CharBuffer;

.field private decodeStringBuffer:Ljava/lang/StringBuilder;

.field private decoder:Ljava/nio/charset/CharsetDecoder;

.field private in:Lorg/msgpack/core/buffer/MessageBufferInput;

.field private nextReadPosition:I

.field private final numberBuffer:Lorg/msgpack/core/buffer/MessageBuffer;

.field private position:I

.field private final stringDecoderBufferSize:I

.field private final stringSizeLimit:I

.field private totalReadBytes:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 153
    invoke-static {v0}, Lorg/msgpack/core/buffer/MessageBuffer;->wrap([B)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    sput-object v0, Lorg/msgpack/core/MessageUnpacker;->EMPTY_BUFFER:Lorg/msgpack/core/buffer/MessageBuffer;

    return-void
.end method

.method protected constructor <init>(Lorg/msgpack/core/buffer/MessageBufferInput;Lorg/msgpack/core/MessagePack$UnpackerConfig;)V
    .registers 4

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    sget-object v0, Lorg/msgpack/core/MessageUnpacker;->EMPTY_BUFFER:Lorg/msgpack/core/buffer/MessageBuffer;

    iput-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    const/16 v0, 0x8

    .line 183
    invoke-static {v0}, Lorg/msgpack/core/buffer/MessageBuffer;->allocate(I)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->numberBuffer:Lorg/msgpack/core/buffer/MessageBuffer;

    const-string v0, "MessageBufferInput is null"

    .line 213
    invoke-static {p1, v0}, Lorg/msgpack/core/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/msgpack/core/buffer/MessageBufferInput;

    iput-object p1, p0, Lorg/msgpack/core/MessageUnpacker;->in:Lorg/msgpack/core/buffer/MessageBufferInput;

    .line 214
    invoke-virtual {p2}, Lorg/msgpack/core/MessagePack$UnpackerConfig;->getAllowReadingStringAsBinary()Z

    move-result p1

    iput-boolean p1, p0, Lorg/msgpack/core/MessageUnpacker;->allowReadingStringAsBinary:Z

    .line 215
    invoke-virtual {p2}, Lorg/msgpack/core/MessagePack$UnpackerConfig;->getAllowReadingBinaryAsString()Z

    move-result p1

    iput-boolean p1, p0, Lorg/msgpack/core/MessageUnpacker;->allowReadingBinaryAsString:Z

    .line 216
    invoke-virtual {p2}, Lorg/msgpack/core/MessagePack$UnpackerConfig;->getActionOnMalformedString()Ljava/nio/charset/CodingErrorAction;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/core/MessageUnpacker;->actionOnMalformedString:Ljava/nio/charset/CodingErrorAction;

    .line 217
    invoke-virtual {p2}, Lorg/msgpack/core/MessagePack$UnpackerConfig;->getActionOnUnmappableString()Ljava/nio/charset/CodingErrorAction;

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/core/MessageUnpacker;->actionOnUnmappableString:Ljava/nio/charset/CodingErrorAction;

    .line 218
    invoke-virtual {p2}, Lorg/msgpack/core/MessagePack$UnpackerConfig;->getStringSizeLimit()I

    move-result p1

    iput p1, p0, Lorg/msgpack/core/MessageUnpacker;->stringSizeLimit:I

    .line 219
    invoke-virtual {p2}, Lorg/msgpack/core/MessagePack$UnpackerConfig;->getStringDecoderBufferSize()I

    move-result p1

    iput p1, p0, Lorg/msgpack/core/MessageUnpacker;->stringDecoderBufferSize:I

    return-void
.end method

.method private decodeStringFastPath(I)Ljava/lang/String;
    .registers 6

    .line 1243
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->actionOnMalformedString:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->actionOnUnmappableString:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v1, :cond_30

    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    .line 1245
    invoke-virtual {v0}, Lorg/msgpack/core/buffer/MessageBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 1246
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v1}, Lorg/msgpack/core/buffer/MessageBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v2}, Lorg/msgpack/core/buffer/MessageBuffer;->arrayOffset()I

    move-result v2

    iget v3, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    add-int/2addr v2, v3

    sget-object v3, Lorg/msgpack/core/MessagePack;->UTF8:Ljava/nio/charset/Charset;

    invoke-direct {v0, v1, v2, p1, v3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 1247
    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    return-object v0

    .line 1251
    :cond_30
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    invoke-virtual {v0, v1, p1}, Lorg/msgpack/core/buffer/MessageBuffer;->sliceAsByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1254
    :try_start_38
    iget-object v1, p0, Lorg/msgpack/core/MessageUnpacker;->decoder:Ljava/nio/charset/CharsetDecoder;

    invoke-virtual {v1, v0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v0
    :try_end_3e
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_38 .. :try_end_3e} :catch_48

    .line 1259
    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    .line 1260
    invoke-virtual {v0}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_48
    move-exception p1

    .line 1257
    new-instance v0, Lorg/msgpack/core/MessageStringCodingException;

    invoke-direct {v0, p1}, Lorg/msgpack/core/MessageStringCodingException;-><init>(Ljava/nio/charset/CharacterCodingException;)V

    throw v0
.end method

.method private ensureBuffer()Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 362
    :goto_0
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    if-gt v0, v1, :cond_25

    .line 363
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->in:Lorg/msgpack/core/buffer/MessageBufferInput;

    invoke-interface {v0}, Lorg/msgpack/core/buffer/MessageBufferInput;->next()Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_14

    return v1

    .line 367
    :cond_14
    iget-wide v2, p0, Lorg/msgpack/core/MessageUnpacker;->totalReadBytes:J

    iget-object v4, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v4}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/msgpack/core/MessageUnpacker;->totalReadBytes:J

    .line 368
    iput-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    .line 369
    iput v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    goto :goto_0

    :cond_25
    const/4 v0, 0x1

    return v0
.end method

.method private getNextBuffer()Lorg/msgpack/core/buffer/MessageBuffer;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 275
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->in:Lorg/msgpack/core/buffer/MessageBufferInput;

    invoke-interface {v0}, Lorg/msgpack/core/buffer/MessageBufferInput;->next()Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 280
    iget-wide v1, p0, Lorg/msgpack/core/MessageUnpacker;->totalReadBytes:J

    iget-object v3, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v3}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/msgpack/core/MessageUnpacker;->totalReadBytes:J

    return-object v0

    .line 277
    :cond_15
    new-instance v0, Lorg/msgpack/core/MessageInsufficientBufferException;

    invoke-direct {v0}, Lorg/msgpack/core/MessageInsufficientBufferException;-><init>()V

    throw v0
.end method

.method private handleCoderError(Ljava/nio/charset/CoderResult;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/nio/charset/CharacterCodingException;
        }
    .end annotation

    .line 1235
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isMalformed()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->actionOnMalformedString:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-eq v0, v1, :cond_18

    .line 1236
    :cond_c
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->isUnmappable()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->actionOnUnmappableString:Ljava/nio/charset/CodingErrorAction;

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    if-ne v0, v1, :cond_1b

    .line 1237
    :cond_18
    invoke-virtual {p1}, Ljava/nio/charset/CoderResult;->throwException()V

    :cond_1b
    return-void
.end method

.method private nextBuffer()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->getNextBuffer()Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    const/4 v0, 0x0

    .line 288
    iput v0, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    return-void
.end method

.method private static overflowI16(S)Lorg/msgpack/core/MessageIntegerOverflowException;
    .registers 3

    int-to-long v0, p0

    .line 1709
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .line 1710
    new-instance v0, Lorg/msgpack/core/MessageIntegerOverflowException;

    invoke-direct {v0, p0}, Lorg/msgpack/core/MessageIntegerOverflowException;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method private static overflowI32(I)Lorg/msgpack/core/MessageIntegerOverflowException;
    .registers 3

    int-to-long v0, p0

    .line 1715
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .line 1716
    new-instance v0, Lorg/msgpack/core/MessageIntegerOverflowException;

    invoke-direct {v0, p0}, Lorg/msgpack/core/MessageIntegerOverflowException;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method private static overflowI64(J)Lorg/msgpack/core/MessageIntegerOverflowException;
    .registers 2

    .line 1721
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .line 1722
    new-instance p1, Lorg/msgpack/core/MessageIntegerOverflowException;

    invoke-direct {p1, p0}, Lorg/msgpack/core/MessageIntegerOverflowException;-><init>(Ljava/math/BigInteger;)V

    return-object p1
.end method

.method private static overflowU16(S)Lorg/msgpack/core/MessageIntegerOverflowException;
    .registers 3

    const v0, 0xffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    .line 1691
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .line 1692
    new-instance v0, Lorg/msgpack/core/MessageIntegerOverflowException;

    invoke-direct {v0, p0}, Lorg/msgpack/core/MessageIntegerOverflowException;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method private static overflowU32(I)Lorg/msgpack/core/MessageIntegerOverflowException;
    .registers 5

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide v2, 0x80000000L

    add-long/2addr v0, v2

    .line 1697
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .line 1698
    new-instance v0, Lorg/msgpack/core/MessageIntegerOverflowException;

    invoke-direct {v0, p0}, Lorg/msgpack/core/MessageIntegerOverflowException;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method private static overflowU32Size(I)Lorg/msgpack/core/MessageSizeException;
    .registers 5

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    int-to-long v0, p0

    const-wide v2, 0x80000000L

    add-long/2addr v0, v2

    .line 1728
    new-instance p0, Lorg/msgpack/core/MessageSizeException;

    invoke-direct {p0, v0, v1}, Lorg/msgpack/core/MessageSizeException;-><init>(J)V

    return-object p0
.end method

.method private static overflowU64(J)Lorg/msgpack/core/MessageIntegerOverflowException;
    .registers 4

    const-wide v0, 0x7fffffffffffffffL

    add-long/2addr p0, v0

    const-wide/16 v0, 0x1

    add-long/2addr p0, v0

    .line 1703
    invoke-static {p0, p1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    const/16 p1, 0x3f

    invoke-virtual {p0, p1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object p0

    .line 1704
    new-instance p1, Lorg/msgpack/core/MessageIntegerOverflowException;

    invoke-direct {p1, p0}, Lorg/msgpack/core/MessageIntegerOverflowException;-><init>(Ljava/math/BigInteger;)V

    return-object p1
.end method

.method private static overflowU8(B)Lorg/msgpack/core/MessageIntegerOverflowException;
    .registers 3

    and-int/lit16 p0, p0, 0xff

    int-to-long v0, p0

    .line 1685
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    .line 1686
    new-instance v0, Lorg/msgpack/core/MessageIntegerOverflowException;

    invoke-direct {v0, p0}, Lorg/msgpack/core/MessageIntegerOverflowException;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method private prepareNumberBuffer(I)Lorg/msgpack/core/buffer/MessageBuffer;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 302
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_13

    .line 305
    iput v1, p0, Lorg/msgpack/core/MessageUnpacker;->nextReadPosition:I

    add-int/2addr v1, p1

    .line 306
    iput v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    .line 307
    iget-object p1, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    return-object p1

    :cond_13
    const/4 v2, 0x0

    if-lez v0, :cond_20

    .line 316
    iget-object v3, p0, Lorg/msgpack/core/MessageUnpacker;->numberBuffer:Lorg/msgpack/core/buffer/MessageBuffer;

    iget-object v4, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v3, v2, v4, v1, v0}, Lorg/msgpack/core/buffer/MessageBuffer;->putMessageBuffer(ILorg/msgpack/core/buffer/MessageBuffer;II)V

    sub-int/2addr p1, v0

    add-int/2addr v0, v2

    goto :goto_21

    :cond_20
    move v0, v2

    .line 322
    :goto_21
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->nextBuffer()V

    .line 323
    iget-object v1, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v1}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v1

    if-lt v1, p1, :cond_3a

    .line 325
    iget-object v1, p0, Lorg/msgpack/core/MessageUnpacker;->numberBuffer:Lorg/msgpack/core/buffer/MessageBuffer;

    iget-object v3, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v1, v0, v3, v2, p1}, Lorg/msgpack/core/buffer/MessageBuffer;->putMessageBuffer(ILorg/msgpack/core/buffer/MessageBuffer;II)V

    .line 326
    iput p1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    .line 336
    iput v2, p0, Lorg/msgpack/core/MessageUnpacker;->nextReadPosition:I

    .line 337
    iget-object p1, p0, Lorg/msgpack/core/MessageUnpacker;->numberBuffer:Lorg/msgpack/core/buffer/MessageBuffer;

    return-object p1

    .line 330
    :cond_3a
    iget-object v3, p0, Lorg/msgpack/core/MessageUnpacker;->numberBuffer:Lorg/msgpack/core/buffer/MessageBuffer;

    iget-object v4, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v3, v0, v4, v2, v1}, Lorg/msgpack/core/buffer/MessageBuffer;->putMessageBuffer(ILorg/msgpack/core/buffer/MessageBuffer;II)V

    sub-int/2addr p1, v1

    add-int/2addr v0, v1

    goto :goto_21
.end method

.method private readByte()B
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 409
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    const/4 v2, 0x1

    if-le v0, v1, :cond_17

    .line 410
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0, v1}, Lorg/msgpack/core/buffer/MessageBuffer;->getByte(I)B

    move-result v0

    .line 411
    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    add-int/2addr v1, v2

    iput v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    return v0

    .line 415
    :cond_17
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->nextBuffer()V

    .line 416
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    if-lez v0, :cond_2c

    .line 417
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/msgpack/core/buffer/MessageBuffer;->getByte(I)B

    move-result v0

    .line 418
    iput v2, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    return v0

    .line 421
    :cond_2c
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    return v0
.end method

.method private readDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 456
    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->prepareNumberBuffer(I)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    .line 457
    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->nextReadPosition:I

    invoke-virtual {v0, v1}, Lorg/msgpack/core/buffer/MessageBuffer;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method private readFloat()F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 449
    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->prepareNumberBuffer(I)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    .line 450
    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->nextReadPosition:I

    invoke-virtual {v0, v1}, Lorg/msgpack/core/buffer/MessageBuffer;->getFloat(I)F

    move-result v0

    return v0
.end method

.method private readInt()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    .line 435
    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->prepareNumberBuffer(I)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    .line 436
    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->nextReadPosition:I

    invoke-virtual {v0, v1}, Lorg/msgpack/core/buffer/MessageBuffer;->getInt(I)I

    move-result v0

    return v0
.end method

.method private readLong()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    .line 442
    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->prepareNumberBuffer(I)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    .line 443
    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->nextReadPosition:I

    invoke-virtual {v0, v1}, Lorg/msgpack/core/buffer/MessageBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method private readNextLength16()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1655
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method private readNextLength32()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1662
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readInt()I

    move-result v0

    if-ltz v0, :cond_7

    return v0

    .line 1664
    :cond_7
    invoke-static {v0}, Lorg/msgpack/core/MessageUnpacker;->overflowU32Size(I)Lorg/msgpack/core/MessageSizeException;

    move-result-object v0

    throw v0
.end method

.method private readNextLength8()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1648
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readShort()S
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    .line 428
    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->prepareNumberBuffer(I)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    .line 429
    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->nextReadPosition:I

    invoke-virtual {v0, v1}, Lorg/msgpack/core/buffer/MessageBuffer;->getShort(I)S

    move-result v0

    return v0
.end method

.method private resetDecoder()V
    .registers 3

    .line 1124
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->decoder:Ljava/nio/charset/CharsetDecoder;

    if-nez v0, :cond_21

    .line 1125
    iget v0, p0, Lorg/msgpack/core/MessageUnpacker;->stringDecoderBufferSize:I

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->decodeBuffer:Ljava/nio/CharBuffer;

    .line 1126
    sget-object v0, Lorg/msgpack/core/MessagePack;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iget-object v1, p0, Lorg/msgpack/core/MessageUnpacker;->actionOnMalformedString:Ljava/nio/charset/CodingErrorAction;

    .line 1127
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iget-object v1, p0, Lorg/msgpack/core/MessageUnpacker;->actionOnUnmappableString:Ljava/nio/charset/CodingErrorAction;

    .line 1128
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    iput-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->decoder:Ljava/nio/charset/CharsetDecoder;

    goto :goto_24

    .line 1131
    :cond_21
    invoke-virtual {v0}, Ljava/nio/charset/CharsetDecoder;->reset()Ljava/nio/charset/CharsetDecoder;

    .line 1133
    :goto_24
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->decodeStringBuffer:Ljava/lang/StringBuilder;

    if-nez v0, :cond_30

    .line 1134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->decodeStringBuffer:Ljava/lang/StringBuilder;

    goto :goto_34

    :cond_30
    const/4 v1, 0x0

    .line 1137
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    :goto_34
    return-void
.end method

.method private skipPayload(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1482
    :goto_0
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_f

    add-int/2addr v1, p1

    .line 1484
    iput v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    return-void

    :cond_f
    add-int/2addr v1, v0

    .line 1488
    iput v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    sub-int/2addr p1, v0

    .line 1491
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->nextBuffer()V

    goto :goto_0
.end method

.method private tryReadBinaryHeader(B)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_14

    const/4 p1, -0x1

    return p1

    .line 1407
    :pswitch_5
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength32()I

    move-result p1

    return p1

    .line 1405
    :pswitch_a
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength16()I

    move-result p1

    return p1

    .line 1403
    :pswitch_f
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength8()I

    move-result p1

    return p1

    :pswitch_data_14
    .packed-switch -0x3c
        :pswitch_f
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method private tryReadStringHeader(B)I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    packed-switch p1, :pswitch_data_14

    const/4 p1, -0x1

    return p1

    .line 1392
    :pswitch_5
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength32()I

    move-result p1

    return p1

    .line 1390
    :pswitch_a
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength16()I

    move-result p1

    return p1

    .line 1388
    :pswitch_f
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength8()I

    move-result p1

    return p1

    :pswitch_data_14
    .packed-switch -0x27
        :pswitch_f
        :pswitch_a
        :pswitch_5
    .end packed-switch
.end method

.method private static unexpected(Ljava/lang/String;B)Lorg/msgpack/core/MessagePackException;
    .registers 7

    .line 588
    invoke-static {p1}, Lorg/msgpack/core/MessageFormat;->valueOf(B)Lorg/msgpack/core/MessageFormat;

    move-result-object v0

    .line 589
    sget-object v1, Lorg/msgpack/core/MessageFormat;->NEVER_USED:Lorg/msgpack/core/MessageFormat;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_1a

    .line 590
    new-instance p1, Lorg/msgpack/core/MessageNeverUsedFormatException;

    new-array v0, v3, [Ljava/lang/Object;

    aput-object p0, v0, v2

    const-string p0, "Expected %s, but encountered 0xC1 \"NEVER_USED\" byte"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/msgpack/core/MessageNeverUsedFormatException;-><init>(Ljava/lang/String;)V

    return-object p1

    .line 593
    :cond_1a
    invoke-virtual {v0}, Lorg/msgpack/core/MessageFormat;->getValueType()Lorg/msgpack/value/ValueType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/msgpack/value/ValueType;->name()Ljava/lang/String;

    move-result-object v0

    .line 594
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 595
    new-instance v1, Lorg/msgpack/core/MessageTypeException;

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p0, v4, v2

    aput-object v0, v4, v3

    const/4 p0, 0x2

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, v4, p0

    const-string p0, "Expected %s, but got %s (%02x)"

    invoke-static {p0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Lorg/msgpack/core/MessageTypeException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private static utf8MultibyteCharacterSize(B)I
    .registers 1

    and-int/lit16 p0, p0, 0xff

    not-int p0, p0

    shl-int/lit8 p0, p0, 0x18

    .line 343
    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1678
    sget-object v0, Lorg/msgpack/core/MessageUnpacker;->EMPTY_BUFFER:Lorg/msgpack/core/buffer/MessageBuffer;

    iput-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    const/4 v0, 0x0

    .line 1679
    iput v0, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    .line 1680
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->in:Lorg/msgpack/core/buffer/MessageBufferInput;

    invoke-interface {v0}, Lorg/msgpack/core/buffer/MessageBufferInput;->close()V

    return-void
.end method

.method public getNextFormat()Lorg/msgpack/core/MessageFormat;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 393
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->ensureBuffer()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 396
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    invoke-virtual {v0, v1}, Lorg/msgpack/core/buffer/MessageBuffer;->getByte(I)B

    move-result v0

    .line 397
    invoke-static {v0}, Lorg/msgpack/core/MessageFormat;->valueOf(B)Lorg/msgpack/core/MessageFormat;

    move-result-object v0

    return-object v0

    .line 394
    :cond_13
    new-instance v0, Lorg/msgpack/core/MessageInsufficientBufferException;

    invoke-direct {v0}, Lorg/msgpack/core/MessageInsufficientBufferException;-><init>()V

    throw v0
.end method

.method public getTotalReadBytes()J
    .registers 5

    .line 263
    iget-wide v0, p0, Lorg/msgpack/core/MessageUnpacker;->totalReadBytes:J

    iget v2, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public hasNext()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->ensureBuffer()Z

    move-result v0

    return v0
.end method

.method public readPayload(Ljava/nio/ByteBuffer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1509
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 1510
    iget-object v1, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v1}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v1

    iget v2, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    sub-int/2addr v1, v2

    if-lt v1, v0, :cond_1a

    .line 1512
    iget-object v1, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v1, v2, v0, p1}, Lorg/msgpack/core/buffer/MessageBuffer;->getBytes(IILjava/nio/ByteBuffer;)V

    .line 1513
    iget p1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    return-void

    .line 1516
    :cond_1a
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0, v2, v1, p1}, Lorg/msgpack/core/buffer/MessageBuffer;->getBytes(IILjava/nio/ByteBuffer;)V

    .line 1517
    iget v0, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    .line 1519
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->nextBuffer()V

    goto :goto_0
.end method

.method public readPayload(Lorg/msgpack/core/buffer/MessageBuffer;II)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1539
    :goto_0
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_16

    .line 1541
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {p1, p2, v0, v1, p3}, Lorg/msgpack/core/buffer/MessageBuffer;->putMessageBuffer(ILorg/msgpack/core/buffer/MessageBuffer;II)V

    .line 1542
    iget p1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    return-void

    .line 1545
    :cond_16
    iget-object v2, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {p1, p2, v2, v1, v0}, Lorg/msgpack/core/buffer/MessageBuffer;->putMessageBuffer(ILorg/msgpack/core/buffer/MessageBuffer;II)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 1548
    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    .line 1550
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->nextBuffer()V

    goto :goto_0
.end method

.method public readPayload([B)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1568
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/msgpack/core/MessageUnpacker;->readPayload([BII)V

    return-void
.end method

.method public readPayload([BII)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1605
    :goto_0
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p3, :cond_16

    .line 1607
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0, v1, p1, p2, p3}, Lorg/msgpack/core/buffer/MessageBuffer;->getBytes(I[BII)V

    .line 1608
    iget p1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    return-void

    .line 1611
    :cond_16
    iget-object v2, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v2, v1, p1, p2, v0}, Lorg/msgpack/core/buffer/MessageBuffer;->getBytes(I[BII)V

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 1614
    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    add-int/2addr v1, v0

    iput v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    .line 1616
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->nextBuffer()V

    goto :goto_0
.end method

.method public readPayload(I)[B
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1586
    new-array p1, p1, [B

    .line 1587
    invoke-virtual {p0, p1}, Lorg/msgpack/core/MessageUnpacker;->readPayload([B)V

    return-object p1
.end method

.method public readPayloadAsReference(I)Lorg/msgpack/core/buffer/MessageBuffer;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1634
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v0

    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    sub-int/2addr v0, v1

    if-lt v0, p1, :cond_17

    .line 1636
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v0, v1, p1}, Lorg/msgpack/core/buffer/MessageBuffer;->slice(II)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    .line 1637
    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    add-int/2addr v1, p1

    iput v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    return-object v0

    .line 1640
    :cond_17
    invoke-static {p1}, Lorg/msgpack/core/buffer/MessageBuffer;->allocate(I)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 1641
    invoke-virtual {p0, v0, v1, p1}, Lorg/msgpack/core/MessageUnpacker;->readPayload(Lorg/msgpack/core/buffer/MessageBuffer;II)V

    return-object v0
.end method

.method public reset(Lorg/msgpack/core/buffer/MessageBufferInput;)Lorg/msgpack/core/buffer/MessageBufferInput;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "MessageBufferInput is null"

    .line 239
    invoke-static {p1, v0}, Lorg/msgpack/core/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/msgpack/core/buffer/MessageBufferInput;

    .line 242
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->in:Lorg/msgpack/core/buffer/MessageBufferInput;

    .line 243
    iput-object p1, p0, Lorg/msgpack/core/MessageUnpacker;->in:Lorg/msgpack/core/buffer/MessageBufferInput;

    .line 244
    sget-object p1, Lorg/msgpack/core/MessageUnpacker;->EMPTY_BUFFER:Lorg/msgpack/core/buffer/MessageBuffer;

    iput-object p1, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    const/4 p1, 0x0

    .line 245
    iput p1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    const-wide/16 v1, 0x0

    .line 246
    iput-wide v1, p0, Lorg/msgpack/core/MessageUnpacker;->totalReadBytes:J

    return-object v0
.end method

.method public skipValue()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 468
    invoke-virtual {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->skipValue(I)V

    return-void
.end method

.method public skipValue(I)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    if-lez p1, :cond_ab

    .line 481
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    .line 482
    invoke-static {v0}, Lorg/msgpack/core/MessageFormat;->valueOf(B)Lorg/msgpack/core/MessageFormat;

    move-result-object v1

    .line 483
    sget-object v2, Lorg/msgpack/core/MessageUnpacker$1;->$SwitchMap$org$msgpack$core$MessageFormat:[I

    invoke-virtual {v1}, Lorg/msgpack/core/MessageFormat;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    packed-switch v1, :pswitch_data_ac

    goto/16 :goto_a7

    .line 571
    :pswitch_19
    new-instance p1, Lorg/msgpack/core/MessageNeverUsedFormatException;

    const-string v0, "Encountered 0xC1 \"NEVER_USED\" byte"

    invoke-direct {p1, v0}, Lorg/msgpack/core/MessageNeverUsedFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 568
    :pswitch_21
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength32()I

    move-result v0

    goto/16 :goto_a5

    .line 565
    :pswitch_27
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength16()I

    move-result v0

    goto/16 :goto_a5

    .line 562
    :pswitch_2d
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength32()I

    move-result v0

    goto/16 :goto_a6

    .line 559
    :pswitch_33
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength16()I

    move-result v0

    goto/16 :goto_a6

    .line 556
    :pswitch_39
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength32()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->skipPayload(I)V

    goto/16 :goto_a7

    .line 553
    :pswitch_43
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength16()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->skipPayload(I)V

    goto :goto_a7

    .line 550
    :pswitch_4c
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength8()I

    move-result v0

    add-int/2addr v0, v2

    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->skipPayload(I)V

    goto :goto_a7

    :pswitch_55
    const/16 v0, 0x11

    .line 547
    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->skipPayload(I)V

    goto :goto_a7

    :pswitch_5b
    const/16 v0, 0x9

    .line 544
    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->skipPayload(I)V

    goto :goto_a7

    :pswitch_61
    const/4 v0, 0x5

    .line 541
    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->skipPayload(I)V

    goto :goto_a7

    :pswitch_66
    const/4 v0, 0x3

    .line 538
    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->skipPayload(I)V

    goto :goto_a7

    .line 535
    :pswitch_6b
    invoke-direct {p0, v3}, Lorg/msgpack/core/MessageUnpacker;->skipPayload(I)V

    goto :goto_a7

    .line 532
    :pswitch_6f
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength32()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->skipPayload(I)V

    goto :goto_a7

    .line 528
    :pswitch_77
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength16()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->skipPayload(I)V

    goto :goto_a7

    .line 524
    :pswitch_7f
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength8()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->skipPayload(I)V

    goto :goto_a7

    :pswitch_87
    const/16 v0, 0x8

    .line 520
    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->skipPayload(I)V

    goto :goto_a7

    :pswitch_8d
    const/4 v0, 0x4

    .line 515
    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->skipPayload(I)V

    goto :goto_a7

    .line 510
    :pswitch_92
    invoke-direct {p0, v3}, Lorg/msgpack/core/MessageUnpacker;->skipPayload(I)V

    goto :goto_a7

    .line 506
    :pswitch_96
    invoke-direct {p0, v2}, Lorg/msgpack/core/MessageUnpacker;->skipPayload(I)V

    goto :goto_a7

    :pswitch_9a
    and-int/lit8 v0, v0, 0x1f

    .line 501
    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->skipPayload(I)V

    goto :goto_a7

    :pswitch_a0
    and-int/lit8 v0, v0, 0xf

    goto :goto_a6

    :pswitch_a3
    and-int/lit8 v0, v0, 0xf

    :goto_a5
    mul-int/2addr v0, v3

    :goto_a6
    add-int/2addr p1, v0

    :goto_a7
    add-int/lit8 p1, p1, -0x1

    goto/16 :goto_0

    :cond_ab
    return-void

    :pswitch_data_ac
    .packed-switch 0x5
        :pswitch_a3
        :pswitch_a0
        :pswitch_9a
        :pswitch_96
        :pswitch_96
        :pswitch_92
        :pswitch_92
        :pswitch_8d
        :pswitch_8d
        :pswitch_8d
        :pswitch_87
        :pswitch_87
        :pswitch_87
        :pswitch_7f
        :pswitch_7f
        :pswitch_77
        :pswitch_77
        :pswitch_6f
        :pswitch_6f
        :pswitch_6b
        :pswitch_66
        :pswitch_61
        :pswitch_5b
        :pswitch_55
        :pswitch_4c
        :pswitch_43
        :pswitch_39
        :pswitch_33
        :pswitch_2d
        :pswitch_27
        :pswitch_21
        :pswitch_19
    .end packed-switch
.end method

.method public tryUnpackNil()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 752
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->ensureBuffer()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 755
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    invoke-virtual {v0, v1}, Lorg/msgpack/core/buffer/MessageBuffer;->getByte(I)B

    move-result v0

    const/16 v1, -0x40

    if-ne v0, v1, :cond_17

    .line 757
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    const/4 v0, 0x1

    return v0

    :cond_17
    const/4 v0, 0x0

    return v0

    .line 753
    :cond_19
    new-instance v0, Lorg/msgpack/core/MessageInsufficientBufferException;

    invoke-direct {v0}, Lorg/msgpack/core/MessageInsufficientBufferException;-><init>()V

    throw v0
.end method

.method public unpackArrayHeader()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1279
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    .line 1280
    invoke-static {v0}, Lorg/msgpack/core/MessagePack$Code;->isFixedArray(B)Z

    move-result v1

    if-eqz v1, :cond_d

    and-int/lit8 v0, v0, 0xf

    return v0

    :cond_d
    const/16 v1, -0x24

    if-eq v0, v1, :cond_21

    const/16 v1, -0x23

    if-ne v0, v1, :cond_1a

    .line 1289
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength32()I

    move-result v0

    return v0

    :cond_1a
    const-string v1, "Array"

    .line 1293
    invoke-static {v1, v0}, Lorg/msgpack/core/MessageUnpacker;->unexpected(Ljava/lang/String;B)Lorg/msgpack/core/MessagePackException;

    move-result-object v0

    throw v0

    .line 1285
    :cond_21
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength16()I

    move-result v0

    return v0
.end method

.method public unpackBigInteger()Ljava/math/BigInteger;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1030
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    .line 1031
    invoke-static {v0}, Lorg/msgpack/core/MessagePack$Code;->isFixInt(B)Z

    move-result v1

    if-eqz v1, :cond_10

    int-to-long v0, v0

    .line 1032
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_10
    packed-switch v0, :pswitch_data_9a

    const-string v1, "Integer"

    .line 1071
    invoke-static {v1, v0}, Lorg/msgpack/core/MessageUnpacker;->unexpected(Ljava/lang/String;B)Lorg/msgpack/core/MessagePackException;

    move-result-object v0

    throw v0

    .line 1068
    :pswitch_1a
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readLong()J

    move-result-wide v0

    .line 1069
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1065
    :pswitch_23
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readInt()I

    move-result v0

    int-to-long v0, v0

    .line 1066
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1062
    :pswitch_2d
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readShort()S

    move-result v0

    int-to-long v0, v0

    .line 1063
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1059
    :pswitch_37
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    int-to-long v0, v0

    .line 1060
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1050
    :pswitch_41
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gez v2, :cond_5f

    const-wide v2, 0x7fffffffffffffffL

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 1052
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->setBit(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1056
    :cond_5f
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1042
    :pswitch_64
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readInt()I

    move-result v0

    if-gez v0, :cond_7a

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    const-wide v2, 0x80000000L

    add-long/2addr v0, v2

    .line 1044
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :cond_7a
    int-to-long v0, v0

    .line 1047
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1039
    :pswitch_80
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    .line 1040
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    .line 1036
    :pswitch_8e
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    .line 1037
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0

    :pswitch_data_9a
    .packed-switch -0x34
        :pswitch_8e
        :pswitch_80
        :pswitch_64
        :pswitch_41
        :pswitch_37
        :pswitch_2d
        :pswitch_23
        :pswitch_1a
    .end packed-switch
.end method

.method public unpackBinaryHeader()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1453
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    .line 1454
    invoke-static {v0}, Lorg/msgpack/core/MessagePack$Code;->isFixedRaw(B)Z

    move-result v1

    if-eqz v1, :cond_d

    and-int/lit8 v0, v0, 0x1f

    return v0

    .line 1457
    :cond_d
    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->tryReadBinaryHeader(B)I

    move-result v1

    if-ltz v1, :cond_14

    return v1

    .line 1462
    :cond_14
    iget-boolean v1, p0, Lorg/msgpack/core/MessageUnpacker;->allowReadingStringAsBinary:Z

    if-eqz v1, :cond_1f

    .line 1463
    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->tryReadStringHeader(B)I

    move-result v1

    if-ltz v1, :cond_1f

    return v1

    :cond_1f
    const-string v1, "Binary"

    .line 1468
    invoke-static {v1, v0}, Lorg/msgpack/core/MessageUnpacker;->unexpected(Ljava/lang/String;B)Lorg/msgpack/core/MessagePackException;

    move-result-object v0

    throw v0
.end method

.method public unpackBoolean()Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 773
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    const/16 v1, -0x3e

    if-ne v0, v1, :cond_a

    const/4 v0, 0x0

    return v0

    :cond_a
    const/16 v1, -0x3d

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    return v0

    :cond_10
    const-string v1, "boolean"

    .line 780
    invoke-static {v1, v0}, Lorg/msgpack/core/MessageUnpacker;->unexpected(Ljava/lang/String;B)Lorg/msgpack/core/MessagePackException;

    move-result-object v0

    throw v0
.end method

.method public unpackByte()B
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 796
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    .line 797
    invoke-static {v0}, Lorg/msgpack/core/MessagePack$Code;->isFixInt(B)Z

    move-result v1

    if-eqz v1, :cond_b

    return v0

    :cond_b
    const-wide/16 v1, 0x7f

    const/16 v3, -0x80

    const/16 v4, 0x7f

    packed-switch v0, :pswitch_data_92

    const-string v1, "Integer"

    .line 847
    invoke-static {v1, v0}, Lorg/msgpack/core/MessageUnpacker;->unexpected(Ljava/lang/String;B)Lorg/msgpack/core/MessagePackException;

    move-result-object v0

    throw v0

    .line 841
    :pswitch_1b
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readLong()J

    move-result-wide v3

    const-wide/16 v5, -0x80

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2c

    cmp-long v0, v3, v1

    if-gtz v0, :cond_2c

    :goto_29
    long-to-int v0, v3

    int-to-byte v0, v0

    return v0

    .line 843
    :cond_2c
    invoke-static {v3, v4}, Lorg/msgpack/core/MessageUnpacker;->overflowI64(J)Lorg/msgpack/core/MessageIntegerOverflowException;

    move-result-object v0

    throw v0

    .line 835
    :pswitch_31
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readInt()I

    move-result v0

    if-lt v0, v3, :cond_3b

    if-gt v0, v4, :cond_3b

    int-to-byte v0, v0

    return v0

    .line 837
    :cond_3b
    invoke-static {v0}, Lorg/msgpack/core/MessageUnpacker;->overflowI32(I)Lorg/msgpack/core/MessageIntegerOverflowException;

    move-result-object v0

    throw v0

    .line 829
    :pswitch_40
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readShort()S

    move-result v0

    if-lt v0, v3, :cond_4a

    if-gt v0, v4, :cond_4a

    int-to-byte v0, v0

    return v0

    .line 831
    :cond_4a
    invoke-static {v0}, Lorg/msgpack/core/MessageUnpacker;->overflowI16(S)Lorg/msgpack/core/MessageIntegerOverflowException;

    move-result-object v0

    throw v0

    .line 826
    :pswitch_4f
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    return v0

    .line 820
    :pswitch_54
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readLong()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_63

    cmp-long v0, v3, v1

    if-gtz v0, :cond_63

    goto :goto_29

    .line 822
    :cond_63
    invoke-static {v3, v4}, Lorg/msgpack/core/MessageUnpacker;->overflowU64(J)Lorg/msgpack/core/MessageIntegerOverflowException;

    move-result-object v0

    throw v0

    .line 814
    :pswitch_68
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readInt()I

    move-result v0

    if-ltz v0, :cond_72

    if-gt v0, v4, :cond_72

    int-to-byte v0, v0

    return v0

    .line 816
    :cond_72
    invoke-static {v0}, Lorg/msgpack/core/MessageUnpacker;->overflowU32(I)Lorg/msgpack/core/MessageIntegerOverflowException;

    move-result-object v0

    throw v0

    .line 808
    :pswitch_77
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readShort()S

    move-result v0

    if-ltz v0, :cond_81

    if-gt v0, v4, :cond_81

    int-to-byte v0, v0

    return v0

    .line 810
    :cond_81
    invoke-static {v0}, Lorg/msgpack/core/MessageUnpacker;->overflowU16(S)Lorg/msgpack/core/MessageIntegerOverflowException;

    move-result-object v0

    throw v0

    .line 802
    :pswitch_86
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    if-ltz v0, :cond_8d

    return v0

    .line 804
    :cond_8d
    invoke-static {v0}, Lorg/msgpack/core/MessageUnpacker;->overflowU8(B)Lorg/msgpack/core/MessageIntegerOverflowException;

    move-result-object v0

    throw v0

    :pswitch_data_92
    .packed-switch -0x34
        :pswitch_86
        :pswitch_77
        :pswitch_68
        :pswitch_54
        :pswitch_4f
        :pswitch_40
        :pswitch_31
        :pswitch_1b
    .end packed-switch
.end method

.method public unpackDouble()D
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1108
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    const/16 v1, -0x36

    if-eq v0, v1, :cond_18

    const/16 v1, -0x35

    if-ne v0, v1, :cond_11

    .line 1114
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readDouble()D

    move-result-wide v0

    return-wide v0

    :cond_11
    const-string v1, "Float"

    .line 1117
    invoke-static {v1, v0}, Lorg/msgpack/core/MessageUnpacker;->unexpected(Ljava/lang/String;B)Lorg/msgpack/core/MessagePackException;

    move-result-object v0

    throw v0

    .line 1111
    :cond_18
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readFloat()F

    move-result v0

    float-to-double v0, v0

    return-wide v0
.end method

.method public unpackExtensionTypeHeader()Lorg/msgpack/core/ExtensionTypeHeader;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1332
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x2

    packed-switch v0, :pswitch_data_9e

    packed-switch v0, :pswitch_data_a8

    const-string v1, "Ext"

    .line 1380
    invoke-static {v1, v0}, Lorg/msgpack/core/MessageUnpacker;->unexpected(Ljava/lang/String;B)Lorg/msgpack/core/MessagePackException;

    move-result-object v0

    throw v0

    .line 1351
    :pswitch_14
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    .line 1352
    new-instance v1, Lorg/msgpack/core/ExtensionTypeHeader;

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Lorg/msgpack/core/ExtensionTypeHeader;-><init>(BI)V

    return-object v1

    .line 1347
    :pswitch_20
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    .line 1348
    new-instance v1, Lorg/msgpack/core/ExtensionTypeHeader;

    const/16 v2, 0x8

    invoke-direct {v1, v0, v2}, Lorg/msgpack/core/ExtensionTypeHeader;-><init>(BI)V

    return-object v1

    .line 1343
    :pswitch_2c
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    .line 1344
    new-instance v2, Lorg/msgpack/core/ExtensionTypeHeader;

    invoke-direct {v2, v0, v1}, Lorg/msgpack/core/ExtensionTypeHeader;-><init>(BI)V

    return-object v2

    .line 1339
    :pswitch_36
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    .line 1340
    new-instance v1, Lorg/msgpack/core/ExtensionTypeHeader;

    invoke-direct {v1, v0, v3}, Lorg/msgpack/core/ExtensionTypeHeader;-><init>(BI)V

    return-object v1

    .line 1335
    :pswitch_40
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    .line 1336
    new-instance v1, Lorg/msgpack/core/ExtensionTypeHeader;

    invoke-direct {v1, v0, v2}, Lorg/msgpack/core/ExtensionTypeHeader;-><init>(BI)V

    return-object v1

    :pswitch_4a
    const/4 v0, 0x5

    .line 1369
    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->prepareNumberBuffer(I)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    .line 1370
    iget v2, p0, Lorg/msgpack/core/MessageUnpacker;->nextReadPosition:I

    invoke-virtual {v0, v2}, Lorg/msgpack/core/buffer/MessageBuffer;->getInt(I)I

    move-result v2

    if-ltz v2, :cond_64

    .line 1375
    iget v3, p0, Lorg/msgpack/core/MessageUnpacker;->nextReadPosition:I

    add-int/2addr v3, v1

    invoke-virtual {v0, v3}, Lorg/msgpack/core/buffer/MessageBuffer;->getByte(I)B

    move-result v0

    .line 1376
    new-instance v1, Lorg/msgpack/core/ExtensionTypeHeader;

    invoke-direct {v1, v0, v2}, Lorg/msgpack/core/ExtensionTypeHeader;-><init>(BI)V

    return-object v1

    .line 1372
    :cond_64
    invoke-static {v2}, Lorg/msgpack/core/MessageUnpacker;->overflowU32Size(I)Lorg/msgpack/core/MessageSizeException;

    move-result-object v0

    throw v0

    :pswitch_69
    const/4 v0, 0x3

    .line 1362
    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->prepareNumberBuffer(I)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    .line 1363
    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->nextReadPosition:I

    invoke-virtual {v0, v1}, Lorg/msgpack/core/buffer/MessageBuffer;->getShort(I)S

    move-result v1

    const v2, 0xffff

    and-int/2addr v1, v2

    .line 1365
    iget v2, p0, Lorg/msgpack/core/MessageUnpacker;->nextReadPosition:I

    add-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lorg/msgpack/core/buffer/MessageBuffer;->getByte(I)B

    move-result v0

    .line 1366
    new-instance v2, Lorg/msgpack/core/ExtensionTypeHeader;

    invoke-direct {v2, v0, v1}, Lorg/msgpack/core/ExtensionTypeHeader;-><init>(BI)V

    return-object v2

    .line 1355
    :pswitch_85
    invoke-direct {p0, v3}, Lorg/msgpack/core/MessageUnpacker;->prepareNumberBuffer(I)Lorg/msgpack/core/buffer/MessageBuffer;

    move-result-object v0

    .line 1356
    iget v1, p0, Lorg/msgpack/core/MessageUnpacker;->nextReadPosition:I

    invoke-virtual {v0, v1}, Lorg/msgpack/core/buffer/MessageBuffer;->getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    .line 1358
    iget v3, p0, Lorg/msgpack/core/MessageUnpacker;->nextReadPosition:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lorg/msgpack/core/buffer/MessageBuffer;->getByte(I)B

    move-result v0

    .line 1359
    new-instance v2, Lorg/msgpack/core/ExtensionTypeHeader;

    invoke-direct {v2, v0, v1}, Lorg/msgpack/core/ExtensionTypeHeader;-><init>(BI)V

    return-object v2

    :pswitch_data_9e
    .packed-switch -0x39
        :pswitch_85
        :pswitch_69
        :pswitch_4a
    .end packed-switch

    :pswitch_data_a8
    .packed-switch -0x2c
        :pswitch_40
        :pswitch_36
        :pswitch_2c
        :pswitch_20
        :pswitch_14
    .end packed-switch
.end method

.method public unpackFloat()F
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1086
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    const/16 v1, -0x36

    if-eq v0, v1, :cond_19

    const/16 v1, -0x35

    if-ne v0, v1, :cond_12

    .line 1092
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readDouble()D

    move-result-wide v0

    double-to-float v0, v0

    return v0

    :cond_12
    const-string v1, "Float"

    .line 1095
    invoke-static {v1, v0}, Lorg/msgpack/core/MessageUnpacker;->unexpected(Ljava/lang/String;B)Lorg/msgpack/core/MessagePackException;

    move-result-object v0

    throw v0

    .line 1089
    :cond_19
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readFloat()F

    move-result v0

    return v0
.end method

.method public unpackInt()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 924
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    .line 925
    invoke-static {v0}, Lorg/msgpack/core/MessagePack$Code;->isFixInt(B)Z

    move-result v1

    if-eqz v1, :cond_b

    return v0

    :cond_b
    const-wide/32 v1, 0x7fffffff

    packed-switch v0, :pswitch_data_6e

    const-string v1, "Integer"

    .line 963
    invoke-static {v1, v0}, Lorg/msgpack/core/MessageUnpacker;->unexpected(Ljava/lang/String;B)Lorg/msgpack/core/MessagePackException;

    move-result-object v0

    throw v0

    .line 957
    :pswitch_18
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readLong()J

    move-result-wide v3

    const-wide/32 v5, -0x80000000

    cmp-long v0, v3, v5

    if-ltz v0, :cond_29

    cmp-long v0, v3, v1

    if-gtz v0, :cond_29

    long-to-int v0, v3

    return v0

    .line 959
    :cond_29
    invoke-static {v3, v4}, Lorg/msgpack/core/MessageUnpacker;->overflowI64(J)Lorg/msgpack/core/MessageIntegerOverflowException;

    move-result-object v0

    throw v0

    .line 954
    :pswitch_2e
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readInt()I

    move-result v0

    return v0

    .line 951
    :pswitch_33
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readShort()S

    move-result v0

    return v0

    .line 948
    :pswitch_38
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    return v0

    .line 942
    :pswitch_3d
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readLong()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_4d

    cmp-long v0, v3, v1

    if-gtz v0, :cond_4d

    long-to-int v0, v3

    return v0

    .line 944
    :cond_4d
    invoke-static {v3, v4}, Lorg/msgpack/core/MessageUnpacker;->overflowU64(J)Lorg/msgpack/core/MessageIntegerOverflowException;

    move-result-object v0

    throw v0

    .line 936
    :pswitch_52
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readInt()I

    move-result v0

    if-ltz v0, :cond_59

    return v0

    .line 938
    :cond_59
    invoke-static {v0}, Lorg/msgpack/core/MessageUnpacker;->overflowU32(I)Lorg/msgpack/core/MessageIntegerOverflowException;

    move-result-object v0

    throw v0

    .line 933
    :pswitch_5e
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0

    .line 930
    :pswitch_67
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0

    :pswitch_data_6e
    .packed-switch -0x34
        :pswitch_67
        :pswitch_5e
        :pswitch_52
        :pswitch_3d
        :pswitch_38
        :pswitch_33
        :pswitch_2e
        :pswitch_18
    .end packed-switch
.end method

.method public unpackLong()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 979
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    .line 980
    invoke-static {v0}, Lorg/msgpack/core/MessagePack$Code;->isFixInt(B)Z

    move-result v1

    if-eqz v1, :cond_c

    int-to-long v0, v0

    return-wide v0

    :cond_c
    packed-switch v0, :pswitch_data_64

    const-string v1, "Integer"

    .line 1017
    invoke-static {v1, v0}, Lorg/msgpack/core/MessageUnpacker;->unexpected(Ljava/lang/String;B)Lorg/msgpack/core/MessagePackException;

    move-result-object v0

    throw v0

    .line 1014
    :pswitch_16
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readLong()J

    move-result-wide v0

    return-wide v0

    .line 1011
    :pswitch_1b
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readInt()I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 1008
    :pswitch_21
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readShort()S

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 1005
    :pswitch_27
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    int-to-long v0, v0

    return-wide v0

    .line 999
    :pswitch_2d
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readLong()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_38

    return-wide v0

    .line 1001
    :cond_38
    invoke-static {v0, v1}, Lorg/msgpack/core/MessageUnpacker;->overflowU64(J)Lorg/msgpack/core/MessageIntegerOverflowException;

    move-result-object v0

    throw v0

    .line 991
    :pswitch_3d
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readInt()I

    move-result v0

    if-gez v0, :cond_4f

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    const-wide v2, 0x80000000L

    add-long/2addr v0, v2

    return-wide v0

    :cond_4f
    int-to-long v0, v0

    return-wide v0

    .line 988
    :pswitch_51
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readShort()S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0

    .line 985
    :pswitch_5b
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    int-to-long v0, v0

    return-wide v0

    nop

    :pswitch_data_64
    .packed-switch -0x34
        :pswitch_5b
        :pswitch_51
        :pswitch_3d
        :pswitch_2d
        :pswitch_27
        :pswitch_21
        :pswitch_1b
        :pswitch_16
    .end packed-switch
.end method

.method public unpackMapHeader()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1312
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    .line 1313
    invoke-static {v0}, Lorg/msgpack/core/MessagePack$Code;->isFixedMap(B)Z

    move-result v1

    if-eqz v1, :cond_d

    and-int/lit8 v0, v0, 0xf

    return v0

    :cond_d
    const/16 v1, -0x22

    if-eq v0, v1, :cond_21

    const/16 v1, -0x21

    if-ne v0, v1, :cond_1a

    .line 1322
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength32()I

    move-result v0

    return v0

    :cond_1a
    const-string v1, "Map"

    .line 1326
    invoke-static {v1, v0}, Lorg/msgpack/core/MessageUnpacker;->unexpected(Ljava/lang/String;B)Lorg/msgpack/core/MessagePackException;

    move-result-object v0

    throw v0

    .line 1318
    :cond_21
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readNextLength16()I

    move-result v0

    return v0
.end method

.method public unpackNil()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 731
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    const/16 v1, -0x40

    if-ne v0, v1, :cond_9

    return-void

    :cond_9
    const-string v1, "Nil"

    .line 735
    invoke-static {v1, v0}, Lorg/msgpack/core/MessageUnpacker;->unexpected(Ljava/lang/String;B)Lorg/msgpack/core/MessagePackException;

    move-result-object v0

    throw v0
.end method

.method public unpackRawStringHeader()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1416
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    .line 1417
    invoke-static {v0}, Lorg/msgpack/core/MessagePack$Code;->isFixedRaw(B)Z

    move-result v1

    if-eqz v1, :cond_d

    and-int/lit8 v0, v0, 0x1f

    return v0

    .line 1420
    :cond_d
    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->tryReadStringHeader(B)I

    move-result v1

    if-ltz v1, :cond_14

    return v1

    .line 1425
    :cond_14
    iget-boolean v1, p0, Lorg/msgpack/core/MessageUnpacker;->allowReadingBinaryAsString:Z

    if-eqz v1, :cond_1f

    .line 1426
    invoke-direct {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->tryReadBinaryHeader(B)I

    move-result v1

    if-ltz v1, :cond_1f

    return v1

    :cond_1f
    const-string v1, "String"

    .line 1431
    invoke-static {v1, v0}, Lorg/msgpack/core/MessageUnpacker;->unexpected(Ljava/lang/String;B)Lorg/msgpack/core/MessagePackException;

    move-result-object v0

    throw v0
.end method

.method public unpackShort()S
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 863
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    .line 864
    invoke-static {v0}, Lorg/msgpack/core/MessagePack$Code;->isFixInt(B)Z

    move-result v1

    if-eqz v1, :cond_c

    int-to-short v0, v0

    return v0

    :cond_c
    const-wide/16 v1, 0x7fff

    const/16 v3, 0x7fff

    packed-switch v0, :pswitch_data_82

    const-string v1, "Integer"

    .line 908
    invoke-static {v1, v0}, Lorg/msgpack/core/MessageUnpacker;->unexpected(Ljava/lang/String;B)Lorg/msgpack/core/MessagePackException;

    move-result-object v0

    throw v0

    .line 902
    :pswitch_1a
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readLong()J

    move-result-wide v3

    const-wide/16 v5, -0x8000

    cmp-long v0, v3, v5

    if-ltz v0, :cond_2b

    cmp-long v0, v3, v1

    if-gtz v0, :cond_2b

    :goto_28
    long-to-int v0, v3

    :goto_29
    int-to-short v0, v0

    return v0

    .line 904
    :cond_2b
    invoke-static {v3, v4}, Lorg/msgpack/core/MessageUnpacker;->overflowI64(J)Lorg/msgpack/core/MessageIntegerOverflowException;

    move-result-object v0

    throw v0

    .line 896
    :pswitch_30
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readInt()I

    move-result v0

    const/16 v1, -0x8000

    if-lt v0, v1, :cond_3c

    if-gt v0, v3, :cond_3c

    int-to-short v0, v0

    return v0

    .line 898
    :cond_3c
    invoke-static {v0}, Lorg/msgpack/core/MessageUnpacker;->overflowI32(I)Lorg/msgpack/core/MessageIntegerOverflowException;

    move-result-object v0

    throw v0

    .line 893
    :pswitch_41
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readShort()S

    move-result v0

    return v0

    .line 890
    :pswitch_46
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    goto :goto_29

    .line 884
    :pswitch_4b
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readLong()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-ltz v0, :cond_5a

    cmp-long v0, v3, v1

    if-gtz v0, :cond_5a

    goto :goto_28

    .line 886
    :cond_5a
    invoke-static {v3, v4}, Lorg/msgpack/core/MessageUnpacker;->overflowU64(J)Lorg/msgpack/core/MessageIntegerOverflowException;

    move-result-object v0

    throw v0

    .line 878
    :pswitch_5f
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readInt()I

    move-result v0

    if-ltz v0, :cond_69

    if-gt v0, v3, :cond_69

    int-to-short v0, v0

    return v0

    .line 880
    :cond_69
    invoke-static {v0}, Lorg/msgpack/core/MessageUnpacker;->overflowU32(I)Lorg/msgpack/core/MessageIntegerOverflowException;

    move-result-object v0

    throw v0

    .line 872
    :pswitch_6e
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readShort()S

    move-result v0

    if-ltz v0, :cond_75

    return v0

    .line 874
    :cond_75
    invoke-static {v0}, Lorg/msgpack/core/MessageUnpacker;->overflowU16(S)Lorg/msgpack/core/MessageIntegerOverflowException;

    move-result-object v0

    throw v0

    .line 869
    :pswitch_7a
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    goto :goto_29

    nop

    :pswitch_data_82
    .packed-switch -0x34
        :pswitch_7a
        :pswitch_6e
        :pswitch_5f
        :pswitch_4b
        :pswitch_46
        :pswitch_41
        :pswitch_30
        :pswitch_1a
    .end packed-switch
.end method

.method public unpackString()Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "Unexpected UTF-8 multibyte sequence"

    .line 1144
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackRawStringHeader()I

    move-result v1

    if-nez v1, :cond_b

    const-string v0, ""

    return-object v0

    .line 1148
    :cond_b
    iget v2, p0, Lorg/msgpack/core/MessageUnpacker;->stringSizeLimit:I

    const/4 v3, 0x0

    if-gt v1, v2, :cond_124

    .line 1152
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->resetDecoder()V

    .line 1154
    iget-object v2, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v2}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v2

    iget v4, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    sub-int/2addr v2, v4

    if-lt v2, v1, :cond_23

    .line 1155
    invoke-direct {p0, v1}, Lorg/msgpack/core/MessageUnpacker;->decodeStringFastPath(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_23
    :goto_23
    if-lez v1, :cond_116

    .line 1161
    :try_start_25
    iget-object v2, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v2}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v2

    iget v4, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    sub-int/2addr v2, v4

    if-lt v2, v1, :cond_3b

    .line 1163
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->decodeStringBuffer:Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lorg/msgpack/core/MessageUnpacker;->decodeStringFastPath(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_116

    :cond_3b
    if-nez v2, :cond_41

    .line 1167
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->nextBuffer()V

    goto :goto_23

    .line 1170
    :cond_41
    iget-object v5, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v5, v4, v2}, Lorg/msgpack/core/buffer/MessageBuffer;->sliceAsByteBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 1171
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    .line 1172
    iget-object v6, p0, Lorg/msgpack/core/MessageUnpacker;->decodeBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v6}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 1174
    iget-object v6, p0, Lorg/msgpack/core/MessageUnpacker;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v7, p0, Lorg/msgpack/core/MessageUnpacker;->decodeBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v6, v4, v7, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v6

    .line 1175
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    sub-int/2addr v4, v5

    .line 1176
    iget v5, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    add-int/2addr v5, v4

    iput v5, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    sub-int/2addr v1, v4

    .line 1178
    iget-object v5, p0, Lorg/msgpack/core/MessageUnpacker;->decodeStringBuffer:Ljava/lang/StringBuilder;

    iget-object v7, p0, Lorg/msgpack/core/MessageUnpacker;->decodeBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1180
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_77

    .line 1181
    invoke-direct {p0, v6}, Lorg/msgpack/core/MessageUnpacker;->handleCoderError(Ljava/nio/charset/CoderResult;)V

    .line 1183
    :cond_77
    invoke-virtual {v6}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v5

    if-eqz v5, :cond_23

    if-ge v4, v2, :cond_23

    .line 1185
    iget-object v2, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    iget v4, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    invoke-virtual {v2, v4}, Lorg/msgpack/core/buffer/MessageBuffer;->getByte(I)B

    move-result v2

    invoke-static {v2}, Lorg/msgpack/core/MessageUnpacker;->utf8MultibyteCharacterSize(B)I

    move-result v2

    .line 1186
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1187
    iget-object v4, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    iget v5, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    invoke-virtual {v4}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v6

    iget v7, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v6, v2}, Lorg/msgpack/core/buffer/MessageBuffer;->getBytes(IILjava/nio/ByteBuffer;)V

    .line 1191
    :goto_9d
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->nextBuffer()V

    .line 1193
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 1194
    iget-object v5, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v5}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v5

    if-lt v5, v4, :cond_104

    .line 1195
    iget-object v5, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v5, v3, v4, v2}, Lorg/msgpack/core/buffer/MessageBuffer;->getBytes(IILjava/nio/ByteBuffer;)V

    .line 1196
    iput v4, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    .line 1204
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1205
    iget-object v4, p0, Lorg/msgpack/core/MessageUnpacker;->decodeBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->clear()Ljava/nio/Buffer;

    .line 1206
    iget-object v4, p0, Lorg/msgpack/core/MessageUnpacker;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v5, p0, Lorg/msgpack/core/MessageUnpacker;->decodeBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4, v2, v5, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v4

    .line 1207
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 1208
    invoke-direct {p0, v4}, Lorg/msgpack/core/MessageUnpacker;->handleCoderError(Ljava/nio/charset/CoderResult;)V

    .line 1210
    :cond_cc
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v5

    if-nez v5, :cond_f4

    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v5

    if-eqz v5, :cond_e2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v6

    if-lt v5, v6, :cond_f4

    .line 1220
    :cond_e2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    sub-int/2addr v1, v2

    .line 1221
    iget-object v2, p0, Lorg/msgpack/core/MessageUnpacker;->decodeStringBuffer:Ljava/lang/StringBuilder;

    iget-object v4, p0, Lorg/msgpack/core/MessageUnpacker;->decodeBuffer:Ljava/nio/CharBuffer;

    invoke-virtual {v4}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
    :try_end_f2
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_25 .. :try_end_f2} :catch_11d

    goto/16 :goto_23

    .line 1213
    :cond_f4
    :try_start_f4
    invoke-virtual {v4}, Ljava/nio/charset/CoderResult;->throwException()V

    .line 1214
    new-instance v1, Lorg/msgpack/core/MessageFormatException;

    invoke-direct {v1, v0}, Lorg/msgpack/core/MessageFormatException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_fd
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_fd} :catch_fd
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_f4 .. :try_end_fd} :catch_11d

    :catch_fd
    move-exception v1

    .line 1217
    :try_start_fe
    new-instance v2, Lorg/msgpack/core/MessageFormatException;

    invoke-direct {v2, v0, v1}, Lorg/msgpack/core/MessageFormatException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 1200
    :cond_104
    iget-object v4, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v4}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v5

    invoke-virtual {v4, v3, v5, v2}, Lorg/msgpack/core/buffer/MessageBuffer;->getBytes(IILjava/nio/ByteBuffer;)V

    .line 1201
    iget-object v4, p0, Lorg/msgpack/core/MessageUnpacker;->buffer:Lorg/msgpack/core/buffer/MessageBuffer;

    invoke-virtual {v4}, Lorg/msgpack/core/buffer/MessageBuffer;->size()I

    move-result v4

    iput v4, p0, Lorg/msgpack/core/MessageUnpacker;->position:I

    goto :goto_9d

    .line 1225
    :cond_116
    :goto_116
    iget-object v0, p0, Lorg/msgpack/core/MessageUnpacker;->decodeStringBuffer:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_11c
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_fe .. :try_end_11c} :catch_11d

    return-object v0

    :catch_11d
    move-exception v0

    .line 1228
    new-instance v1, Lorg/msgpack/core/MessageStringCodingException;

    invoke-direct {v1, v0}, Lorg/msgpack/core/MessageStringCodingException;-><init>(Ljava/nio/charset/CharacterCodingException;)V

    throw v1

    .line 1149
    :cond_124
    new-instance v0, Lorg/msgpack/core/MessageSizeException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v4, p0, Lorg/msgpack/core/MessageUnpacker;->stringSizeLimit:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const-string v3, "cannot unpack a String of size larger than %,d: %,d"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v1

    invoke-direct {v0, v2, v3, v4}, Lorg/msgpack/core/MessageSizeException;-><init>(Ljava/lang/String;J)V

    throw v0
.end method

.method public unpackValue()Lorg/msgpack/value/ImmutableValue;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 602
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->getNextFormat()Lorg/msgpack/core/MessageFormat;

    move-result-object v0

    .line 603
    sget-object v1, Lorg/msgpack/core/MessageUnpacker$1;->$SwitchMap$org$msgpack$value$ValueType:[I

    invoke-virtual {v0}, Lorg/msgpack/core/MessageFormat;->getValueType()Lorg/msgpack/value/ValueType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/msgpack/value/ValueType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    const/4 v3, 0x1

    packed-switch v1, :pswitch_data_ba

    .line 654
    new-instance v0, Lorg/msgpack/core/MessageNeverUsedFormatException;

    const-string v1, "Unknown value type"

    invoke-direct {v0, v1}, Lorg/msgpack/core/MessageNeverUsedFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 650
    :pswitch_1d
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackExtensionTypeHeader()Lorg/msgpack/core/ExtensionTypeHeader;

    move-result-object v0

    .line 651
    invoke-virtual {v0}, Lorg/msgpack/core/ExtensionTypeHeader;->getType()B

    move-result v1

    invoke-virtual {v0}, Lorg/msgpack/core/ExtensionTypeHeader;->getLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->readPayload(I)[B

    move-result-object v0

    invoke-static {v1, v0}, Lorg/msgpack/value/ValueFactory;->newExtension(B[B)Lorg/msgpack/value/ImmutableExtensionValue;

    move-result-object v0

    return-object v0

    .line 639
    :pswitch_32
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackMapHeader()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    .line 640
    new-array v1, v0, [Lorg/msgpack/value/Value;

    :goto_3a
    if-ge v2, v0, :cond_4c

    .line 642
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackValue()Lorg/msgpack/value/ImmutableValue;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    .line 644
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackValue()Lorg/msgpack/value/ImmutableValue;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/2addr v2, v3

    goto :goto_3a

    .line 647
    :cond_4c
    invoke-static {v1, v3}, Lorg/msgpack/value/ValueFactory;->newMap([Lorg/msgpack/value/Value;Z)Lorg/msgpack/value/ImmutableMapValue;

    move-result-object v0

    return-object v0

    .line 631
    :pswitch_51
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackArrayHeader()I

    move-result v0

    .line 632
    new-array v1, v0, [Lorg/msgpack/value/Value;

    :goto_57
    if-ge v2, v0, :cond_62

    .line 634
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackValue()Lorg/msgpack/value/ImmutableValue;

    move-result-object v4

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_57

    .line 636
    :cond_62
    invoke-static {v1, v3}, Lorg/msgpack/value/ValueFactory;->newArray([Lorg/msgpack/value/Value;Z)Lorg/msgpack/value/ImmutableArrayValue;

    move-result-object v0

    return-object v0

    .line 623
    :pswitch_67
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackBinaryHeader()I

    move-result v0

    if-lez v0, :cond_76

    .line 625
    invoke-virtual {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->readPayload(I)[B

    move-result-object v0

    invoke-static {v0, v3}, Lorg/msgpack/value/ValueFactory;->newBinary([BZ)Lorg/msgpack/value/ImmutableBinaryValue;

    move-result-object v0

    return-object v0

    :cond_76
    new-array v0, v2, [B

    .line 627
    invoke-static {v0, v3}, Lorg/msgpack/value/ValueFactory;->newBinary([BZ)Lorg/msgpack/value/ImmutableBinaryValue;

    move-result-object v0

    return-object v0

    .line 619
    :pswitch_7d
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackRawStringHeader()I

    move-result v0

    .line 620
    invoke-virtual {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->readPayload(I)[B

    move-result-object v0

    invoke-static {v0, v3}, Lorg/msgpack/value/ValueFactory;->newString([BZ)Lorg/msgpack/value/ImmutableStringValue;

    move-result-object v0

    return-object v0

    .line 617
    :pswitch_8a
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/msgpack/value/ValueFactory;->newFloat(D)Lorg/msgpack/value/ImmutableFloatValue;

    move-result-object v0

    return-object v0

    .line 610
    :pswitch_93
    sget-object v1, Lorg/msgpack/core/MessageFormat;->UINT64:Lorg/msgpack/core/MessageFormat;

    if-ne v0, v1, :cond_a0

    .line 611
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lorg/msgpack/value/ValueFactory;->newInteger(Ljava/math/BigInteger;)Lorg/msgpack/value/ImmutableIntegerValue;

    move-result-object v0

    return-object v0

    .line 614
    :cond_a0
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/msgpack/value/ValueFactory;->newInteger(J)Lorg/msgpack/value/ImmutableIntegerValue;

    move-result-object v0

    return-object v0

    .line 608
    :pswitch_a9
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackBoolean()Z

    move-result v0

    invoke-static {v0}, Lorg/msgpack/value/ValueFactory;->newBoolean(Z)Lorg/msgpack/value/ImmutableBooleanValue;

    move-result-object v0

    return-object v0

    .line 605
    :pswitch_b2
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    .line 606
    invoke-static {}, Lorg/msgpack/value/ValueFactory;->newNil()Lorg/msgpack/value/ImmutableNilValue;

    move-result-object v0

    return-object v0

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_b2
        :pswitch_a9
        :pswitch_93
        :pswitch_8a
        :pswitch_7d
        :pswitch_67
        :pswitch_51
        :pswitch_32
        :pswitch_1d
    .end packed-switch
.end method

.method public unpackValue(Lorg/msgpack/value/Variable;)Lorg/msgpack/value/Variable;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 661
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->getNextFormat()Lorg/msgpack/core/MessageFormat;

    move-result-object v0

    .line 662
    sget-object v1, Lorg/msgpack/core/MessageUnpacker$1;->$SwitchMap$org$msgpack$value$ValueType:[I

    invoke-virtual {v0}, Lorg/msgpack/core/MessageFormat;->getValueType()Lorg/msgpack/value/ValueType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/msgpack/value/ValueType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x0

    packed-switch v1, :pswitch_data_b2

    .line 718
    new-instance p1, Lorg/msgpack/core/MessageFormatException;

    const-string v0, "Unknown value type"

    invoke-direct {p1, v0}, Lorg/msgpack/core/MessageFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 713
    :pswitch_1c
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackExtensionTypeHeader()Lorg/msgpack/core/ExtensionTypeHeader;

    move-result-object v0

    .line 714
    invoke-virtual {v0}, Lorg/msgpack/core/ExtensionTypeHeader;->getType()B

    move-result v1

    invoke-virtual {v0}, Lorg/msgpack/core/ExtensionTypeHeader;->getLength()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->readPayload(I)[B

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lorg/msgpack/value/Variable;->setExtensionValue(B[B)Lorg/msgpack/value/Variable;

    return-object p1

    .line 702
    :pswitch_30
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackMapHeader()I

    move-result v0

    .line 703
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_39
    if-ge v2, v0, :cond_49

    .line 705
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackValue()Lorg/msgpack/value/ImmutableValue;

    move-result-object v3

    .line 706
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackValue()Lorg/msgpack/value/ImmutableValue;

    move-result-object v4

    .line 707
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_39

    .line 709
    :cond_49
    invoke-virtual {p1, v1}, Lorg/msgpack/value/Variable;->setMapValue(Ljava/util/Map;)Lorg/msgpack/value/Variable;

    return-object p1

    .line 693
    :pswitch_4d
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackArrayHeader()I

    move-result v0

    .line 694
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_56
    if-ge v2, v0, :cond_62

    .line 696
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackValue()Lorg/msgpack/value/ImmutableValue;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_56

    .line 698
    :cond_62
    invoke-virtual {p1, v1}, Lorg/msgpack/value/Variable;->setArrayValue(Ljava/util/List;)Lorg/msgpack/value/Variable;

    return-object p1

    .line 688
    :pswitch_66
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackBinaryHeader()I

    move-result v0

    .line 689
    invoke-virtual {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->readPayload(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/msgpack/value/Variable;->setBinaryValue([B)Lorg/msgpack/value/Variable;

    return-object p1

    .line 683
    :pswitch_72
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackRawStringHeader()I

    move-result v0

    .line 684
    invoke-virtual {p0, v0}, Lorg/msgpack/core/MessageUnpacker;->readPayload(I)[B

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/msgpack/value/Variable;->setStringValue([B)Lorg/msgpack/value/Variable;

    return-object p1

    .line 680
    :pswitch_7e
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackDouble()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/value/Variable;->setFloatValue(D)Lorg/msgpack/value/Variable;

    return-object p1

    .line 671
    :pswitch_86
    sget-object v1, Lorg/msgpack/core/MessageUnpacker$1;->$SwitchMap$org$msgpack$core$MessageFormat:[I

    invoke-virtual {v0}, Lorg/msgpack/core/MessageFormat;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_9a

    .line 676
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/value/Variable;->setIntegerValue(J)Lorg/msgpack/value/Variable;

    return-object p1

    .line 673
    :cond_9a
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/msgpack/value/Variable;->setIntegerValue(Ljava/math/BigInteger;)Lorg/msgpack/value/Variable;

    return-object p1

    .line 668
    :pswitch_a2
    invoke-virtual {p0}, Lorg/msgpack/core/MessageUnpacker;->unpackBoolean()Z

    move-result v0

    invoke-virtual {p1, v0}, Lorg/msgpack/value/Variable;->setBooleanValue(Z)Lorg/msgpack/value/Variable;

    return-object p1

    .line 664
    :pswitch_aa
    invoke-direct {p0}, Lorg/msgpack/core/MessageUnpacker;->readByte()B

    .line 665
    invoke-virtual {p1}, Lorg/msgpack/value/Variable;->setNilValue()Lorg/msgpack/value/Variable;

    return-object p1

    nop

    :pswitch_data_b2
    .packed-switch 0x1
        :pswitch_aa
        :pswitch_a2
        :pswitch_86
        :pswitch_7e
        :pswitch_72
        :pswitch_66
        :pswitch_4d
        :pswitch_30
        :pswitch_1c
    .end packed-switch
.end method
