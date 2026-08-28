.class public Lcom/sun/mail/util/BASE64DecoderStream;
.super Ljava/io/FilterInputStream;
.source "BASE64DecoderStream.java"


# static fields
.field private static final pem_array:[C

.field private static final pem_convert_array:[B


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private ignoreErrors:Z

.field private index:I

.field private input_buffer:[B

.field private input_len:I

.field private input_pos:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/16 v0, 0x40

    new-array v0, v0, [C

    .line 209
    fill-array-data v0, :array_2e

    sput-object v0, Lcom/sun/mail/util/BASE64DecoderStream;->pem_array:[C

    const/16 v0, 0x100

    new-array v0, v0, [B

    .line 220
    sput-object v0, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    const/4 v0, 0x0

    move v1, v0

    :goto_11
    const/16 v2, 0xff

    if-ge v1, v2, :cond_1d

    .line 224
    sget-object v2, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    const/4 v3, -0x1

    aput-byte v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_11

    .line 225
    :cond_1d
    :goto_1d
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_array:[C

    array-length v2, v1

    if-ge v0, v2, :cond_2c

    .line 226
    sget-object v2, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    aget-char v1, v1, v0

    int-to-byte v3, v0

    aput-byte v3, v2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1d

    :cond_2c
    return-void

    nop

    :array_2e
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
        0x67s
        0x68s
        0x69s
        0x6as
        0x6bs
        0x6cs
        0x6ds
        0x6es
        0x6fs
        0x70s
        0x71s
        0x72s
        0x73s
        0x74s
        0x75s
        0x76s
        0x77s
        0x78s
        0x79s
        0x7as
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x2bs
        0x2fs
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3

    .line 78
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x3

    new-array p1, p1, [B

    .line 57
    iput-object p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    .line 59
    iput p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    const/16 v0, 0x1ffe

    new-array v0, v0, [B

    .line 63
    iput-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    .line 64
    iput p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    .line 65
    iput p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    .line 67
    iput-boolean p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    const-string v0, "mail.mime.base64.ignoreerrors"

    .line 80
    invoke-static {v0, p1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 4

    .line 91
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, 0x3

    new-array p1, p1, [B

    .line 57
    iput-object p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    const/4 p1, 0x0

    .line 58
    iput p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    .line 59
    iput p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    const/16 v0, 0x1ffe

    new-array v0, v0, [B

    .line 63
    iput-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    .line 64
    iput p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    .line 65
    iput p1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    .line 92
    iput-boolean p2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    return-void
.end method

.method private decode([BII)I
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p2

    :goto_1
    const/4 v1, 0x3

    if-lt p3, v1, :cond_101

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_7
    const/4 v4, 0x4

    if-ge v2, v4, :cond_e4

    .line 254
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->getByte()I

    move-result v5

    const/4 v6, -0x2

    const/4 v7, -0x1

    if-eq v5, v7, :cond_1b

    if-ne v5, v6, :cond_15

    goto :goto_1b

    :cond_15
    shl-int/lit8 v3, v3, 0x6

    add-int/lit8 v2, v2, 0x1

    or-int/2addr v3, v5

    goto :goto_7

    :cond_1b
    :goto_1b
    const/4 p3, 0x2

    const/4 v8, 0x1

    if-ne v5, v7, :cond_4c

    if-nez v2, :cond_23

    sub-int/2addr v0, p2

    return v0

    .line 260
    :cond_23
    iget-boolean v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-eqz v1, :cond_29

    move v1, v8

    goto :goto_7a

    .line 261
    :cond_29
    new-instance p1, Lcom/sun/mail/util/DecodingException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "BASE64Decoder: Error in encoded stream: needed 4 valid base64 characters but only got "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " before EOF"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 265
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4c
    if-ge v2, p3, :cond_76

    .line 270
    iget-boolean v5, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-eqz v5, :cond_53

    goto :goto_76

    .line 271
    :cond_53
    new-instance p1, Lcom/sun/mail/util/DecodingException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "BASE64Decoder: Error in encoded stream: needed at least 2 valid base64 characters, but only got "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " before padding character (=)"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 276
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_76
    :goto_76
    if-nez v2, :cond_7a

    sub-int/2addr v0, p2

    return v0

    :cond_7a
    :goto_7a
    add-int/lit8 v5, v2, -0x1

    if-nez v5, :cond_7f

    move v5, v8

    :cond_7f
    add-int/2addr v2, v8

    shl-int/lit8 v3, v3, 0x6

    :goto_82
    if-ge v2, v4, :cond_cf

    if-nez v1, :cond_ca

    .line 300
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->getByte()I

    move-result v8

    if-ne v8, v7, :cond_aa

    .line 302
    iget-boolean v8, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-eqz v8, :cond_91

    goto :goto_ca

    .line 303
    :cond_91
    new-instance p1, Lcom/sun/mail/util/DecodingException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "BASE64Decoder: Error in encoded stream: hit EOF while looking for padding characters (=)"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 307
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_aa
    if-eq v8, v6, :cond_ca

    .line 309
    iget-boolean v8, p0, Lcom/sun/mail/util/BASE64DecoderStream;->ignoreErrors:Z

    if-eqz v8, :cond_b1

    goto :goto_ca

    .line 310
    :cond_b1
    new-instance p1, Lcom/sun/mail/util/DecodingException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "BASE64Decoder: Error in encoded stream: found valid base64 character after a padding character (=)"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->recentChars()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_ca
    :goto_ca
    shl-int/lit8 v3, v3, 0x6

    add-int/lit8 v2, v2, 0x1

    goto :goto_82

    :cond_cf
    shr-int/lit8 v1, v3, 0x8

    if-ne v5, p3, :cond_da

    add-int/lit8 p3, v0, 0x1

    and-int/lit16 v2, v1, 0xff

    int-to-byte v2, v2

    .line 324
    aput-byte v2, p1, p3

    :cond_da
    shr-int/lit8 p3, v1, 0x8

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    .line 326
    aput-byte p3, p1, v0

    add-int/2addr v0, v5

    sub-int/2addr v0, p2

    return v0

    :cond_e4
    add-int/lit8 v1, v0, 0x2

    and-int/lit16 v2, v3, 0xff

    int-to-byte v2, v2

    .line 339
    aput-byte v2, p1, v1

    shr-int/lit8 v1, v3, 0x8

    add-int/lit8 v2, v0, 0x1

    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    .line 341
    aput-byte v3, p1, v2

    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 343
    aput-byte v1, p1, v0

    add-int/lit8 p3, p3, -0x3

    add-int/lit8 v0, v0, 0x3

    goto/16 :goto_1

    :cond_101
    sub-int/2addr v0, p2

    return v0
.end method

.method public static decode([B)[B
    .registers 13

    .line 425
    array-length v0, p0

    div-int/lit8 v0, v0, 0x4

    const/4 v1, 0x3

    mul-int/2addr v0, v1

    if-nez v0, :cond_8

    return-object p0

    .line 429
    :cond_8
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aget-byte v2, p0, v2

    const/4 v4, 0x2

    const/16 v5, 0x3d

    if-ne v2, v5, :cond_1c

    add-int/lit8 v0, v0, -0x1

    .line 431
    array-length v2, p0

    sub-int/2addr v2, v4

    aget-byte v2, p0, v2

    if-ne v2, v5, :cond_1c

    add-int/lit8 v0, v0, -0x1

    .line 434
    :cond_1c
    new-array v0, v0, [B

    .line 437
    array-length v2, p0

    const/4 v6, 0x0

    move v7, v6

    :goto_21
    if-lez v2, :cond_78

    .line 441
    sget-object v8, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    add-int/lit8 v9, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    aget-byte v6, v8, v6

    shl-int/lit8 v6, v6, 0x6

    add-int/lit8 v10, v9, 0x1

    .line 443
    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    aget-byte v9, v8, v9

    or-int/2addr v6, v9

    shl-int/lit8 v6, v6, 0x6

    .line 445
    aget-byte v9, p0, v10

    if-eq v9, v5, :cond_47

    add-int/lit8 v10, v10, 0x1

    and-int/lit16 v9, v9, 0xff

    .line 446
    aget-byte v9, v8, v9

    or-int/2addr v6, v9

    move v9, v1

    goto :goto_48

    :cond_47
    move v9, v4

    :goto_48
    shl-int/lit8 v6, v6, 0x6

    .line 450
    aget-byte v11, p0, v10

    if-eq v11, v5, :cond_56

    add-int/lit8 v10, v10, 0x1

    and-int/lit16 v11, v11, 0xff

    .line 451
    aget-byte v8, v8, v11

    or-int/2addr v6, v8

    goto :goto_58

    :cond_56
    add-int/lit8 v9, v9, -0x1

    :goto_58
    if-le v9, v4, :cond_61

    add-int/lit8 v8, v7, 0x2

    and-int/lit16 v11, v6, 0xff

    int-to-byte v11, v11

    .line 455
    aput-byte v11, v0, v8

    :cond_61
    shr-int/lit8 v6, v6, 0x8

    if-le v9, v3, :cond_6c

    add-int/lit8 v8, v7, 0x1

    and-int/lit16 v11, v6, 0xff

    int-to-byte v11, v11

    .line 458
    aput-byte v11, v0, v8

    :cond_6c
    shr-int/lit8 v6, v6, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    .line 460
    aput-byte v6, v0, v7

    add-int/2addr v7, v9

    add-int/lit8 v2, v2, -0x4

    move v6, v10

    goto :goto_21

    :cond_78
    return-object v0
.end method

.method private getByte()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 361
    :cond_0
    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I

    const/4 v2, -0x1

    if-lt v0, v1, :cond_19

    .line 363
    :try_start_7
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_len:I
    :try_end_11
    .catch Ljava/io/EOFException; {:try_start_7 .. :try_end_11} :catch_18

    if-gtz v0, :cond_14

    return v2

    :cond_14
    const/4 v0, 0x0

    .line 369
    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    goto :goto_19

    :catch_18
    return v2

    .line 372
    :cond_19
    :goto_19
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_2b

    const/4 v0, -0x2

    return v0

    .line 377
    :cond_2b
    sget-object v1, Lcom/sun/mail/util/BASE64DecoderStream;->pem_convert_array:[B

    aget-byte v0, v1, v0

    if-eq v0, v2, :cond_0

    return v0
.end method

.method private recentChars()Ljava/lang/String;
    .registers 6

    .line 390
    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_7

    move v0, v1

    :cond_7
    if-lez v0, :cond_bc

    .line 392
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, ", the "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " most recent characters were: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 394
    iget v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    sub-int/2addr v3, v0

    :goto_21
    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_pos:I

    if-ge v3, v0, :cond_a8

    .line 395
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->input_buffer:[B

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    const/16 v4, 0x9

    if-eq v0, v4, :cond_90

    if-eq v0, v1, :cond_7c

    const/16 v4, 0xd

    if-eq v0, v4, :cond_68

    const/16 v4, 0x20

    if-lt v0, v4, :cond_50

    const/16 v4, 0x7f

    if-ge v0, v4, :cond_50

    .line 402
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a3

    .line 404
    :cond_50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\\"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a3

    .line 397
    :cond_68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\\r"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a3

    .line 398
    :cond_7c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a3

    .line 399
    :cond_90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_a3
    move-object v2, v0

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_21

    .line 407
    :cond_a8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_be

    :cond_bc
    const-string v0, ""

    :goto_be
    return-object v0
.end method


# virtual methods
.method public available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public markSupported()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 110
    iget v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-lt v0, v1, :cond_16

    .line 111
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([BII)I

    move-result v0

    iput v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-gtz v0, :cond_14

    const/4 v0, -0x1

    return v0

    .line 114
    :cond_14
    iput v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    .line 116
    :cond_16
    iget-object v0, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p2

    .line 137
    :goto_1
    iget v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iget v2, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    if-ge v1, v2, :cond_19

    if-lez p3, :cond_19

    add-int/lit8 v2, v0, 0x1

    .line 138
    iget-object v3, p0, Lcom/sun/mail/util/BASE64DecoderStream;->buffer:[B

    add-int/lit8 v4, v1, 0x1

    iput v4, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    aget-byte v1, v3, v1

    aput-byte v1, p1, v0

    add-int/lit8 p3, p3, -0x1

    move v0, v2

    goto :goto_1

    :cond_19
    if-lt v1, v2, :cond_20

    const/4 v1, 0x0

    .line 142
    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->index:I

    iput v1, p0, Lcom/sun/mail/util/BASE64DecoderStream;->bufsize:I

    .line 144
    :cond_20
    div-int/lit8 v1, p3, 0x3

    mul-int/lit8 v1, v1, 0x3

    const/4 v2, -0x1

    if-lez v1, :cond_34

    .line 146
    invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/util/BASE64DecoderStream;->decode([BII)I

    move-result v3

    add-int/2addr v0, v3

    sub-int/2addr p3, v3

    if-eq v3, v1, :cond_34

    if-ne v0, p2, :cond_32

    return v2

    :cond_32
    sub-int/2addr v0, p2

    return v0

    :cond_34
    :goto_34
    if-lez p3, :cond_46

    .line 160
    invoke-virtual {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->read()I

    move-result v1

    if-ne v1, v2, :cond_3d

    goto :goto_46

    :cond_3d
    add-int/lit8 v3, v0, 0x1

    int-to-byte v1, v1

    .line 163
    aput-byte v1, p1, v0

    add-int/lit8 p3, p3, -0x1

    move v0, v3

    goto :goto_34

    :cond_46
    :goto_46
    if-ne v0, p2, :cond_49

    return v2

    :cond_49
    sub-int/2addr v0, p2

    return v0
.end method

.method public skip(J)J
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_3
    const-wide/16 v4, 0x1

    sub-long v6, p1, v4

    cmp-long p1, p1, v0

    if-lez p1, :cond_14

    .line 178
    invoke-virtual {p0}, Lcom/sun/mail/util/BASE64DecoderStream;->read()I

    move-result p1

    if-ltz p1, :cond_14

    add-long/2addr v2, v4

    move-wide p1, v6

    goto :goto_3

    :cond_14
    return-wide v2
.end method
