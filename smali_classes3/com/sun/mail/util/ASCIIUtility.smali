.class public Lcom/sun/mail/util/ASCIIUtility;
.super Ljava/lang/Object;
.source "ASCIIUtility.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBytes(Ljava/io/InputStream;)[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 294
    instance-of v0, p0, Ljava/io/ByteArrayInputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 295
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v0

    .line 296
    new-array v2, v0, [B

    .line 297
    invoke-virtual {p0, v2, v1, v0}, Ljava/io/InputStream;->read([BII)I

    goto :goto_1

    .line 300
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v2, 0x400

    new-array v3, v2, [B

    .line 302
    :goto_0
    invoke-virtual {p0, v3, v1, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 303
    invoke-virtual {v0, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 304
    :cond_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    :goto_1
    return-object v2
.end method

.method public static getBytes(Ljava/lang/String;)[B
    .locals 5

    .line 278
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object p0

    .line 279
    array-length v0, p0

    .line 280
    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 283
    aget-char v4, p0, v2

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    move v2, v3

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static parseInt([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 140
    invoke-static {p0, p1, p2, v0}, Lcom/sun/mail/util/ASCIIUtility;->parseInt([BIII)I

    move-result p0

    return p0
.end method

.method public static parseInt([BIII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    if-eqz p0, :cond_a

    const-string v0, "illegal number"

    if-le p2, p1, :cond_9

    .line 80
    aget-byte v1, p0, p1

    const/16 v2, 0x2d

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v2, :cond_0

    add-int/lit8 v1, p1, 0x1

    const/high16 v2, -0x80000000

    move v5, v4

    goto :goto_0

    :cond_0
    const v2, -0x7fffffff

    move v1, p1

    move v5, v3

    .line 87
    :goto_0
    div-int v6, v2, p3

    if-ge v1, p2, :cond_2

    add-int/lit8 v3, v1, 0x1

    .line 89
    aget-byte v1, p0, v1

    int-to-char v1, v1

    invoke-static {v1, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-ltz v1, :cond_1

    neg-int v1, v1

    move v9, v3

    move v3, v1

    move v1, v9

    goto :goto_1

    .line 91
    :cond_1
    new-instance p3, Ljava/lang/NumberFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "illegal number: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-static {p0, p1, p2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p3

    :cond_2
    :goto_1
    if-ge v1, p2, :cond_6

    add-int/lit8 v7, v1, 0x1

    .line 100
    aget-byte v1, p0, v1

    int-to-char v1, v1

    invoke-static {v1, p3}, Ljava/lang/Character;->digit(CI)I

    move-result v1

    if-ltz v1, :cond_5

    if-lt v3, v6, :cond_4

    mul-int/2addr v3, p3

    add-int v8, v2, v1

    if-lt v3, v8, :cond_3

    sub-int/2addr v3, v1

    move v1, v7

    goto :goto_1

    .line 109
    :cond_3
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 105
    :cond_4
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 102
    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-eqz v5, :cond_8

    add-int/2addr p1, v4

    if-le v1, p1, :cond_7

    return v3

    .line 120
    :cond_7
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    neg-int p0, v3

    return p0

    .line 114
    :cond_9
    new-instance p0, Ljava/lang/NumberFormatException;

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 70
    :cond_a
    new-instance p0, Ljava/lang/NumberFormatException;

    const-string p1, "null"

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static parseLong([BII)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v0, 0xa

    .line 230
    invoke-static {p0, p1, p2, v0}, Lcom/sun/mail/util/ASCIIUtility;->parseLong([BIII)J

    move-result-wide p0

    return-wide p0
.end method

.method public static parseLong([BIII)J
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    if-eqz p0, :cond_a

    const-string v3, "illegal number"

    if-le v1, v0, :cond_9

    .line 170
    aget-byte v4, p0, v0

    const/16 v5, 0x2d

    const/4 v6, 0x1

    if-ne v4, v5, :cond_0

    add-int/lit8 v4, v0, 0x1

    const-wide/high16 v7, -0x8000000000000000L

    move v5, v6

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    move v5, v4

    move v4, v0

    :goto_0
    int-to-long v9, v2

    .line 177
    div-long v11, v7, v9

    if-ge v4, v1, :cond_2

    add-int/lit8 v13, v4, 0x1

    .line 179
    aget-byte v4, p0, v4

    int-to-char v4, v4

    invoke-static {v4, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-ltz v4, :cond_1

    neg-int v4, v4

    int-to-long v14, v4

    :goto_1
    move v4, v13

    goto :goto_2

    .line 181
    :cond_1
    new-instance v2, Ljava/lang/NumberFormatException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "illegal number: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-static/range {p0 .. p2}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const-wide/16 v14, 0x0

    :goto_2
    if-ge v4, v1, :cond_6

    add-int/lit8 v13, v4, 0x1

    .line 190
    aget-byte v4, p0, v4

    int-to-char v4, v4

    invoke-static {v4, v2}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    if-ltz v4, :cond_5

    cmp-long v16, v14, v11

    if-ltz v16, :cond_4

    mul-long/2addr v14, v9

    int-to-long v1, v4

    add-long v16, v7, v1

    cmp-long v4, v14, v16

    if-ltz v4, :cond_3

    sub-long/2addr v14, v1

    move/from16 v1, p2

    move/from16 v2, p3

    goto :goto_1

    .line 199
    :cond_3
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_4
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 192
    :cond_5
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    if-eqz v5, :cond_8

    add-int/2addr v0, v6

    if-le v4, v0, :cond_7

    return-wide v14

    .line 210
    :cond_7
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    neg-long v0, v14

    return-wide v0

    .line 204
    :cond_9
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, v3}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_a
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "null"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static toString(Ljava/io/ByteArrayInputStream;)Ljava/lang/String;
    .locals 5

    .line 265
    invoke-virtual {p0}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v0

    .line 266
    new-array v1, v0, [C

    .line 267
    new-array v2, v0, [B

    const/4 v3, 0x0

    .line 269
    invoke-virtual {p0, v2, v3, v0}, Ljava/io/ByteArrayInputStream;->read([BII)I

    :goto_0
    if-ge v3, v0, :cond_0

    add-int/lit8 p0, v3, 0x1

    .line 271
    aget-byte v4, v2, v3

    and-int/lit16 v4, v4, 0xff

    int-to-char v4, v4

    aput-char v4, v1, v3

    move v3, p0

    goto :goto_0

    .line 273
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v1}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method

.method public static toString([B)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    .line 261
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lcom/sun/mail/util/ASCIIUtility;->toString([BII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toString([BII)Ljava/lang/String;
    .locals 4

    sub-int/2addr p2, p1

    .line 245
    new-array v0, p2, [C

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    add-int/lit8 v2, v1, 0x1

    add-int/lit8 v3, p1, 0x1

    .line 248
    aget-byte p1, p0, p1

    and-int/lit16 p1, p1, 0xff

    int-to-char p1, p1

    aput-char p1, v0, v1

    move v1, v2

    move p1, v3

    goto :goto_0

    .line 250
    :cond_0
    new-instance p0, Ljava/lang/String;

    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    return-object p0
.end method
