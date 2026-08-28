.class public Lcom/sun/mail/util/UUDecoderStream;
.super Ljava/io/FilterInputStream;
.source "UUDecoderStream.java"


# instance fields
.field private buffer:[B

.field private bufsize:I

.field private gotEnd:Z

.field private gotPrefix:Z

.field private ignoreErrors:Z

.field private ignoreMissingBeginEnd:Z

.field private index:I

.field private lin:Lcom/sun/mail/util/LineInputStream;

.field private mode:I

.field private name:Ljava/lang/String;

.field private readAhead:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 4

    .line 80
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x2d

    new-array v0, v0, [B

    .line 59
    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 61
    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    .line 62
    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    .line 63
    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    .line 81
    new-instance v1, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v1, p1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v1, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    const-string p1, "mail.mime.uudecode.ignoreerrors"

    .line 83
    invoke-static {p1, v0}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreErrors:Z

    const-string p1, "mail.mime.uudecode.ignoremissingbeginend"

    .line 86
    invoke-static {p1, v0}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreMissingBeginEnd:Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;ZZ)V
    .registers 5

    .line 98
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/16 v0, 0x2d

    new-array v0, v0, [B

    .line 59
    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 61
    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    .line 62
    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    .line 63
    iput-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    .line 99
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    .line 100
    iput-boolean p2, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreErrors:Z

    .line 101
    iput-boolean p3, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreMissingBeginEnd:Z

    return-void
.end method

.method private decode()Z
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 239
    iget-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    return v1

    .line 241
    :cond_6
    iput v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    .line 249
    :goto_8
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->readAhead:Ljava/lang/String;

    if-eqz v0, :cond_10

    const/4 v2, 0x0

    .line 251
    iput-object v2, p0, Lcom/sun/mail/util/UUDecoderStream;->readAhead:Ljava/lang/String;

    goto :goto_16

    .line 253
    :cond_10
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    :goto_16
    const/4 v2, 0x1

    if-nez v0, :cond_28

    .line 261
    iget-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreMissingBeginEnd:Z

    if-eqz v0, :cond_20

    .line 264
    iput-boolean v2, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    return v1

    .line 262
    :cond_20
    new-instance v0, Lcom/sun/mail/util/DecodingException;

    const-string v1, "UUDecoder: Missing end at EOF"

    invoke-direct {v0, v1}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    const-string v3, "end"

    .line 267
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_33

    .line 268
    iput-boolean v2, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    return v1

    .line 271
    :cond_33
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3a

    goto :goto_8

    .line 273
    :cond_3a
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x20

    if-ge v4, v5, :cond_4f

    .line 275
    iget-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreErrors:Z

    if-eqz v0, :cond_47

    goto :goto_8

    .line 276
    :cond_47
    new-instance v0, Lcom/sun/mail/util/DecodingException;

    const-string v1, "UUDecoder: Buffer format error"

    invoke-direct {v0, v1}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    add-int/lit8 v4, v4, -0x20

    and-int/lit8 v4, v4, 0x3f

    if-nez v4, :cond_72

    .line 290
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 291
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_67

    .line 292
    :cond_63
    iget-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreMissingBeginEnd:Z

    if-eqz v0, :cond_6a

    .line 296
    :cond_67
    iput-boolean v2, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    return v1

    .line 293
    :cond_6a
    new-instance v0, Lcom/sun/mail/util/DecodingException;

    const-string v1, "UUDecoder: Missing End after count 0 line"

    invoke-direct {v0, v1}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_72
    mul-int/lit8 v3, v4, 0x8

    add-int/lit8 v3, v3, 0x5

    .line 300
    div-int/lit8 v3, v3, 0x6

    .line 302
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v3, v2

    if-ge v6, v3, :cond_8c

    .line 303
    iget-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreErrors:Z

    if-eqz v0, :cond_84

    goto :goto_8

    .line 304
    :cond_84
    new-instance v0, Lcom/sun/mail/util/DecodingException;

    const-string v1, "UUDecoder: Short buffer error"

    invoke-direct {v0, v1}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8c
    move v1, v2

    .line 321
    :cond_8d
    :goto_8d
    iget v3, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-ge v3, v4, :cond_fe

    add-int/lit8 v3, v1, 0x1

    .line 323
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v5

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    add-int/lit8 v6, v3, 0x1

    .line 324
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sub-int/2addr v3, v5

    and-int/lit8 v3, v3, 0x3f

    int-to-byte v3, v3

    .line 325
    iget-object v7, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v8, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v1, v1, 0x2

    and-int/lit16 v1, v1, 0xfc

    ushr-int/lit8 v10, v3, 0x4

    and-int/lit8 v10, v10, 0x3

    or-int/2addr v1, v10

    int-to-byte v1, v1

    aput-byte v1, v7, v8

    if-ge v9, v4, :cond_db

    add-int/lit8 v1, v6, 0x1

    .line 329
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    sub-int/2addr v6, v5

    and-int/lit8 v6, v6, 0x3f

    int-to-byte v6, v6

    .line 330
    iget-object v7, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v8, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v3, v3, 0x4

    and-int/lit16 v3, v3, 0xf0

    ushr-int/lit8 v9, v6, 0x2

    and-int/lit8 v9, v9, 0xf

    or-int/2addr v3, v9

    int-to-byte v3, v3

    aput-byte v3, v7, v8

    move v3, v6

    goto :goto_dc

    :cond_db
    move v1, v6

    .line 334
    :goto_dc
    iget v6, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-ge v6, v4, :cond_8d

    add-int/lit8 v6, v1, 0x1

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sub-int/2addr v1, v5

    and-int/lit8 v1, v1, 0x3f

    int-to-byte v1, v1

    .line 337
    iget-object v7, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v8, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    add-int/lit8 v9, v8, 0x1

    iput v9, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    shl-int/lit8 v3, v3, 0x6

    and-int/lit16 v3, v3, 0xc0

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v1, v3

    int-to-byte v1, v1

    aput-byte v1, v7, v8

    move v1, v6

    goto :goto_8d

    :cond_fe
    return v2
.end method

.method private readPrefix()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    iget-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/16 v0, 0x1b6

    .line 187
    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->mode:I

    const-string v0, "encoder.buf"

    .line 188
    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->name:Ljava/lang/String;

    .line 192
    :cond_d
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->lin:Lcom/sun/mail/util/LineInputStream;

    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x1

    if-nez v0, :cond_28

    .line 194
    iget-boolean v0, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreMissingBeginEnd:Z

    if-eqz v0, :cond_20

    .line 197
    iput-boolean v7, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    .line 198
    iput-boolean v7, p0, Lcom/sun/mail/util/UUDecoderStream;->gotEnd:Z

    goto/16 :goto_b2

    .line 195
    :cond_20
    new-instance v0, Lcom/sun/mail/util/DecodingException;

    const-string v1, "UUDecoder: Missing begin"

    invoke-direct {v0, v1}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_28
    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v4, "begin"

    const/4 v5, 0x0

    const/4 v6, 0x5

    move-object v1, v0

    .line 201
    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v1

    const/4 v2, 0x6

    if-eqz v1, :cond_8c

    const/16 v1, 0x9

    .line 203
    :try_start_38
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/sun/mail/util/UUDecoderStream;->mode:I
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_42} :catch_43

    goto :goto_48

    :catch_43
    move-exception v1

    .line 205
    iget-boolean v2, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreErrors:Z

    if-eqz v2, :cond_73

    .line 209
    :goto_48
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-le v1, v2, :cond_57

    .line 210
    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->name:Ljava/lang/String;

    goto :goto_5b

    .line 212
    :cond_57
    iget-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreErrors:Z

    if-eqz v1, :cond_5e

    .line 216
    :goto_5b
    iput-boolean v7, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    goto :goto_b2

    .line 213
    :cond_5e
    new-instance v1, Lcom/sun/mail/util/DecodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UUDecoder: Missing name: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 206
    :cond_73
    new-instance v0, Lcom/sun/mail/util/DecodingException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "UUDecoder: Error in mode: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/mail/util/DecodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 218
    :cond_8c
    iget-boolean v1, p0, Lcom/sun/mail/util/UUDecoderStream;->ignoreMissingBeginEnd:Z

    if-eqz v1, :cond_d

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_d

    const/4 v1, 0x0

    .line 219
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x20

    and-int/lit8 v1, v1, 0x3f

    mul-int/lit8 v1, v1, 0x8

    add-int/lit8 v1, v1, 0x5

    .line 221
    div-int/2addr v1, v2

    if-eqz v1, :cond_ae

    .line 222
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    if-lt v2, v1, :cond_d

    .line 229
    :cond_ae
    iput-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->readAhead:Ljava/lang/String;

    .line 230
    iput-boolean v7, p0, Lcom/sun/mail/util/UUDecoderStream;->gotPrefix:Z

    :goto_b2
    return-void
.end method


# virtual methods
.method public available()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 151
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    iget v2, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    sub-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0
.end method

.method public getMode()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 174
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    .line 175
    iget v0, p0, Lcom/sun/mail/util/UUDecoderStream;->mode:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    .line 163
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->name:Ljava/lang/String;

    return-object v0
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

    .line 119
    iget v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->bufsize:I

    if-lt v0, v1, :cond_14

    .line 120
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->readPrefix()V

    .line 121
    invoke-direct {p0}, Lcom/sun/mail/util/UUDecoderStream;->decode()Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, -0x1

    return v0

    :cond_11
    const/4 v0, 0x0

    .line 123
    iput v0, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    .line 125
    :cond_14
    iget-object v0, p0, Lcom/sun/mail/util/UUDecoderStream;->buffer:[B

    iget v1, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/util/UUDecoderStream;->index:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public read([BII)I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_16

    .line 132
    invoke-virtual {p0}, Lcom/sun/mail/util/UUDecoderStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_e

    if-nez v0, :cond_16

    move v0, v2

    goto :goto_16

    :cond_e
    add-int v2, p2, v0

    int-to-byte v1, v1

    .line 137
    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_16
    :goto_16
    return v0
.end method
