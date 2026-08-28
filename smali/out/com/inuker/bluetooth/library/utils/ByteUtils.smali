.class public Lcom/inuker/bluetooth/library/utils/ByteUtils;
.super Ljava/lang/Object;
.source "ByteUtils.java"


# static fields
.field public static final BYTE_MAX:I = 0xff

.field public static final EMPTY_BYTES:[B


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 10
    sput-object v0, Lcom/inuker/bluetooth/library/utils/ByteUtils;->EMPTY_BYTES:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static byteEquals([B[B)Z
    .registers 8

    const/4 v0, 0x1

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    return v0

    :cond_6
    const/4 v1, 0x0

    if-eqz p0, :cond_1f

    if-nez p1, :cond_c

    goto :goto_1f

    .line 74
    :cond_c
    array-length v2, p0

    .line 75
    array-length v3, p1

    if-eq v2, v3, :cond_11

    return v1

    :cond_11
    move v3, v1

    :goto_12
    if-ge v3, v2, :cond_1e

    .line 82
    aget-byte v4, p0, v3

    aget-byte v5, p1, v3

    if-eq v4, v5, :cond_1b

    return v1

    :cond_1b
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    :cond_1e
    return v0

    :cond_1f
    :goto_1f
    return v1
.end method

.method public static byteToString([B)Ljava/lang/String;
    .registers 6

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->isEmpty([B)Z

    move-result v1

    if-nez v1, :cond_27

    const/4 v1, 0x0

    move v2, v1

    .line 22
    :goto_d
    array-length v3, p0

    if-ge v2, v3, :cond_27

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 23
    aget-byte v4, p0, v2

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "%02X"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 27
    :cond_27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static copy([B[BII)V
    .registers 5

    if-eqz p0, :cond_15

    if-eqz p1, :cond_15

    if-ltz p2, :cond_15

    .line 192
    :goto_6
    array-length v0, p1

    if-ge p3, v0, :cond_15

    array-length v0, p0

    if-ge p2, v0, :cond_15

    .line 193
    aget-byte v0, p1, p3

    aput-byte v0, p0, p2

    add-int/lit8 p2, p2, 0x1

    add-int/lit8 p3, p3, 0x1

    goto :goto_6

    :cond_15
    return-void
.end method

.method public static cutAfterBytes([BB)[B
    .registers 4

    .line 125
    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    .line 129
    :cond_7
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_a
    if-ltz v0, :cond_1b

    .line 130
    aget-byte v1, p0, v0

    if-eq v1, p1, :cond_18

    const/4 p1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 131
    invoke-static {p0, p1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_18
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 135
    :cond_1b
    sget-object p0, Lcom/inuker/bluetooth/library/utils/ByteUtils;->EMPTY_BYTES:[B

    return-object p0
.end method

.method public static cutBeforeBytes([BB)[B
    .registers 4

    .line 111
    invoke-static {p0}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    const/4 v0, 0x0

    .line 115
    :goto_8
    array-length v1, p0

    if-ge v0, v1, :cond_18

    .line 116
    aget-byte v1, p0, v0

    if-eq v1, p1, :cond_15

    .line 117
    array-length p1, p0

    invoke-static {p0, v0, p1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0

    :cond_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 121
    :cond_18
    sget-object p0, Lcom/inuker/bluetooth/library/utils/ByteUtils;->EMPTY_BYTES:[B

    return-object p0
.end method

.method public static equals([B[B)Z
    .registers 4

    .line 199
    array-length v0, p0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->equals([B[BI)Z

    move-result p0

    return p0
.end method

.method public static equals([B[BI)Z
    .registers 8

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p0, :cond_1e

    if-eqz p1, :cond_1e

    .line 206
    array-length v2, p0

    if-lt v2, p2, :cond_1e

    array-length v2, p1

    if-ge v2, p2, :cond_10

    goto :goto_1e

    :cond_10
    move v2, v1

    :goto_11
    if-ge v2, p2, :cond_1d

    .line 210
    aget-byte v3, p0, v2

    aget-byte v4, p1, v2

    if-eq v3, v4, :cond_1a

    return v1

    :cond_1a
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_1d
    return v0

    :cond_1e
    :goto_1e
    return v1
.end method

.method public static fillBeforeBytes([BIB)[B
    .registers 6

    if-eqz p0, :cond_4

    .line 93
    array-length v0, p0

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-ge v0, p1, :cond_1e

    .line 96
    new-array v1, p1, [B

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, -0x1

    :goto_d
    if-ltz p1, :cond_1d

    if-ltz v0, :cond_16

    .line 100
    aget-byte v2, p0, v0

    aput-byte v2, v1, p1

    goto :goto_18

    .line 102
    :cond_16
    aput-byte p2, v1, p1

    :goto_18
    add-int/lit8 p1, p1, -0x1

    add-int/lit8 v0, v0, -0x1

    goto :goto_d

    :cond_1d
    move-object p0, v1

    :cond_1e
    return-object p0
.end method

.method public static fromInt(I)[B
    .registers 5

    const/4 v0, 0x4

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v0, :cond_10

    mul-int/lit8 v3, v2, 0x8

    ushr-int v3, p0, v3

    int-to-byte v3, v3

    .line 59
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_10
    return-object v1
.end method

.method public static fromLong(J)[B
    .registers 7

    const/16 v0, 0x8

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_12

    mul-int/lit8 v3, v2, 0x8

    ushr-long v3, p0, v3

    long-to-int v3, v3

    int-to-byte v3, v3

    .line 184
    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_12
    return-object v1
.end method

.method public static fromShort(S)[B
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    int-to-byte v2, p0

    aput-byte v2, v0, v1

    ushr-int/lit8 p0, p0, 0x8

    int-to-byte p0, p0

    const/4 v1, 0x1

    aput-byte p0, v0, v1

    return-object v0
.end method

.method public static get([BI)[B
    .registers 3

    .line 218
    array-length v0, p0

    sub-int/2addr v0, p1

    invoke-static {p0, p1, v0}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->get([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static get([BII)[B
    .registers 5

    .line 222
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 223
    invoke-static {p0, p1, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public static getBytes([BII)[B
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    :cond_4
    if-ltz p1, :cond_25

    .line 143
    array-length v1, p0

    if-lt p1, v1, :cond_a

    goto :goto_25

    :cond_a
    if-ltz p2, :cond_25

    .line 147
    array-length v1, p0

    if-lt p2, v1, :cond_10

    goto :goto_25

    :cond_10
    if-le p1, p2, :cond_13

    return-object v0

    :cond_13
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    .line 155
    new-array v0, v0, [B

    move v1, p1

    :goto_1a
    if-gt v1, p2, :cond_25

    sub-int v2, v1, p1

    .line 158
    aget-byte v3, p0, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1a

    :cond_25
    :goto_25
    return-object v0
.end method

.method public static getNonEmptyByte([B)[B
    .registers 1

    if-eqz p0, :cond_3

    goto :goto_5

    .line 15
    :cond_3
    sget-object p0, Lcom/inuker/bluetooth/library/utils/ByteUtils;->EMPTY_BYTES:[B

    :goto_5
    return-object p0
.end method

.method public static isAllFF([B)Z
    .registers 6

    const/4 v0, 0x0

    if-eqz p0, :cond_5

    .line 169
    array-length v1, p0

    goto :goto_6

    :cond_5
    move v1, v0

    :goto_6
    move v2, v0

    :goto_7
    if-ge v2, v1, :cond_17

    .line 172
    aget-byte v3, p0, v2

    invoke-static {v3}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->ubyteToInt(B)I

    move-result v3

    const/16 v4, 0xff

    if-eq v3, v4, :cond_14

    return v0

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method public static isEmpty([B)Z
    .registers 1

    if-eqz p0, :cond_8

    .line 52
    array-length p0, p0

    if-nez p0, :cond_6

    goto :goto_8

    :cond_6
    const/4 p0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 p0, 0x1

    :goto_9
    return p0
.end method

.method public static stringToBytes(Ljava/lang/String;)[B
    .registers 8

    .line 41
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    const/4 v2, 0x2

    .line 42
    div-int/2addr v1, v2

    new-array v1, v1, [B

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v0, :cond_26

    sub-int v4, v0, v3

    .line 44
    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    add-int/2addr v4, v3

    .line 45
    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 46
    div-int/lit8 v5, v3, 0x2

    const/16 v6, 0x10

    invoke-static {v4, v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    int-to-byte v4, v4

    aput-byte v4, v1, v5

    add-int/lit8 v3, v3, 0x2

    goto :goto_b

    :cond_26
    return-object v1
.end method

.method public static trimLast([B)[B
    .registers 3

    .line 31
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_d

    .line 33
    aget-byte v1, p0, v0

    if-eqz v1, :cond_a

    goto :goto_d

    :cond_a
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_d
    :goto_d
    const/4 v1, 0x0

    add-int/lit8 v0, v0, 0x1

    .line 37
    invoke-static {p0, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p0

    return-object p0
.end method

.method public static ubyteToInt(B)I
    .registers 1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method
