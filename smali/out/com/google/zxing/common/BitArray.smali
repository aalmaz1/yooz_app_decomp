.class public final Lcom/google/zxing/common/BitArray;
.super Ljava/lang/Object;
.source "BitArray.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static final EMPTY_BITS:[I

.field private static final LOAD_FACTOR:F = 0.75f


# instance fields
.field private bits:[I

.field private size:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    .line 28
    sput-object v0, Lcom/google/zxing/common/BitArray;->EMPTY_BITS:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 36
    sget-object v0, Lcom/google/zxing/common/BitArray;->EMPTY_BITS:[I

    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    .line 41
    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-void
.end method

.method constructor <init>([II)V
    .registers 3

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    .line 47
    iput p2, p0, Lcom/google/zxing/common/BitArray;->size:I

    return-void
.end method

.method private ensureCapacity(I)V
    .registers 5

    .line 59
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x20

    if-le p1, v0, :cond_1e

    int-to-float p1, p1

    const/high16 v0, 0x3f400000    # 0.75f

    div-float/2addr p1, v0

    float-to-double v0, p1

    .line 60
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    invoke-static {p1}, Lcom/google/zxing/common/BitArray;->makeArray(I)[I

    move-result-object p1

    .line 61
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, v0

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 62
    iput-object p1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    :cond_1e
    return-void
.end method

.method private static makeArray(I)[I
    .registers 1

    add-int/lit8 p0, p0, 0x1f

    .line 325
    div-int/lit8 p0, p0, 0x20

    new-array p0, p0, [I

    return-object p0
.end method


# virtual methods
.method public appendBit(Z)V
    .registers 6

    .line 220
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    if-eqz p1, :cond_18

    .line 222
    iget-object p1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    div-int/lit8 v2, v0, 0x20

    aget v3, p1, v2

    and-int/lit8 v0, v0, 0x1f

    shl-int v0, v1, v0

    or-int/2addr v0, v3

    aput v0, p1, v2

    .line 224
    :cond_18
    iget p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    return-void
.end method

.method public appendBitArray(Lcom/google/zxing/common/BitArray;)V
    .registers 5

    .line 251
    iget v0, p1, Lcom/google/zxing/common/BitArray;->size:I

    .line 252
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_15

    .line 254
    invoke-virtual {p1, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    invoke-virtual {p0, v2}, Lcom/google/zxing/common/BitArray;->appendBit(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_15
    return-void
.end method

.method public appendBits(II)V
    .registers 9

    if-ltz p2, :cond_2b

    const/16 v0, 0x20

    if-gt p2, v0, :cond_2b

    .line 239
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int v1, v0, p2

    .line 240
    invoke-direct {p0, v1}, Lcom/google/zxing/common/BitArray;->ensureCapacity(I)V

    const/4 v1, 0x1

    sub-int/2addr p2, v1

    :goto_f
    if-ltz p2, :cond_28

    shl-int v2, v1, p2

    and-int/2addr v2, p1

    if-eqz v2, :cond_23

    .line 243
    iget-object v2, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v3, v0, 0x20

    aget v4, v2, v3

    and-int/lit8 v5, v0, 0x1f

    shl-int v5, v1, v5

    or-int/2addr v4, v5

    aput v4, v2, v3

    :cond_23
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p2, p2, -0x1

    goto :goto_f

    .line 247
    :cond_28
    iput v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    return-void

    .line 237
    :cond_2b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Num bits must be between 0 and 32"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .registers 5

    .line 179
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_5
    if-ge v2, v0, :cond_e

    .line 181
    iget-object v3, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aput v1, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_e
    return-void
.end method

.method public clone()Lcom/google/zxing/common/BitArray;
    .registers 4

    .line 356
    new-instance v0, Lcom/google/zxing/common/BitArray;

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-virtual {v1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-direct {v0, v1, v2}, Lcom/google/zxing/common/BitArray;-><init>([II)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Lcom/google/zxing/common/BitArray;->clone()Lcom/google/zxing/common/BitArray;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 330
    instance-of v0, p1, Lcom/google/zxing/common/BitArray;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 333
    :cond_6
    check-cast p1, Lcom/google/zxing/common/BitArray;

    .line 334
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    iget v2, p1, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v0, v2, :cond_19

    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    iget-object p1, p1, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-eqz p1, :cond_19

    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method public flip(I)V
    .registers 6

    .line 89
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v3, 0x1

    shl-int p1, v3, p1

    xor-int/2addr p1, v2

    aput p1, v0, v1

    return-void
.end method

.method public get(I)Z
    .registers 4

    .line 71
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v0, v0, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v1, 0x1

    shl-int p1, v1, p1

    and-int/2addr p1, v0

    if-eqz p1, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method

.method public getBitArray()[I
    .registers 2

    .line 295
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-object v0
.end method

.method public getNextSet(I)I
    .registers 5

    .line 99
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-lt p1, v0, :cond_5

    return v0

    .line 102
    :cond_5
    div-int/lit8 v0, p1, 0x20

    .line 103
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v1, v1, v0

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    neg-int p1, p1

    and-int/2addr p1, v1

    :goto_12
    if-nez p1, :cond_21

    add-int/lit8 v0, v0, 0x1

    .line 107
    iget-object p1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, p1

    if-ne v0, v1, :cond_1e

    .line 108
    iget p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    return p1

    .line 110
    :cond_1e
    aget p1, p1, v0

    goto :goto_12

    :cond_21
    mul-int/lit8 v0, v0, 0x20

    .line 112
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p1

    add-int/2addr v0, p1

    .line 113
    iget p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public getNextUnset(I)I
    .registers 5

    .line 122
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-lt p1, v0, :cond_5

    return v0

    .line 125
    :cond_5
    div-int/lit8 v0, p1, 0x20

    .line 126
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v1, v1, v0

    not-int v1, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v2, 0x1

    shl-int p1, v2, p1

    neg-int p1, p1

    and-int/2addr p1, v1

    :goto_13
    if-nez p1, :cond_23

    add-int/lit8 v0, v0, 0x1

    .line 130
    iget-object p1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v1, p1

    if-ne v0, v1, :cond_1f

    .line 131
    iget p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    return p1

    .line 133
    :cond_1f
    aget p1, p1, v0

    not-int p1, p1

    goto :goto_13

    :cond_23
    mul-int/lit8 v0, v0, 0x20

    .line 135
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p1

    add-int/2addr v0, p1

    .line 136
    iget p1, p0, Lcom/google/zxing/common/BitArray;->size:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    return p1
.end method

.method public getSize()I
    .registers 2

    .line 51
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    return v0
.end method

.method public getSizeInBytes()I
    .registers 2

    .line 55
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 339
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public isRange(IIZ)Z
    .registers 12

    if-lt p2, p1, :cond_38

    if-ltz p1, :cond_38

    .line 195
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-gt p2, v0, :cond_38

    const/4 v0, 0x1

    if-ne p2, p1, :cond_c

    return v0

    :cond_c
    add-int/lit8 p2, p2, -0x1

    .line 202
    div-int/lit8 v1, p1, 0x20

    .line 203
    div-int/lit8 v2, p2, 0x20

    move v3, v1

    :goto_13
    if-gt v3, v2, :cond_37

    const/4 v4, 0x0

    const/16 v5, 0x1f

    if-le v3, v1, :cond_1c

    move v6, v4

    goto :goto_1e

    :cond_1c
    and-int/lit8 v6, p1, 0x1f

    :goto_1e
    if-ge v3, v2, :cond_21

    goto :goto_22

    :cond_21
    and-int/2addr v5, p2

    :goto_22
    const/4 v7, 0x2

    shl-int v5, v7, v5

    shl-int v6, v0, v6

    sub-int/2addr v5, v6

    .line 212
    iget-object v6, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v6, v6, v3

    and-int/2addr v6, v5

    if-eqz p3, :cond_30

    goto :goto_31

    :cond_30
    move v5, v4

    :goto_31
    if-eq v6, v5, :cond_34

    return v4

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_37
    return v0

    .line 196
    :cond_38
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public reverse()V
    .registers 9

    .line 302
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v0, v0

    new-array v0, v0, [I

    .line 304
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x20

    add-int/lit8 v3, v1, 0x1

    const/4 v4, 0x0

    move v5, v4

    :goto_f
    if-ge v5, v3, :cond_20

    sub-int v6, v1, v5

    .line 307
    iget-object v7, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v7, v7, v5

    invoke-static {v7}, Ljava/lang/Integer;->reverse(I)I

    move-result v7

    aput v7, v0, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    .line 310
    :cond_20
    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    mul-int/lit8 v5, v3, 0x20

    if-eq v1, v5, :cond_40

    sub-int/2addr v5, v1

    .line 312
    aget v1, v0, v4

    ushr-int/2addr v1, v5

    move v4, v2

    :goto_2b
    if-ge v4, v3, :cond_3d

    .line 314
    aget v6, v0, v4

    rsub-int/lit8 v7, v5, 0x20

    shl-int v7, v6, v7

    or-int/2addr v1, v7

    add-int/lit8 v7, v4, -0x1

    .line 316
    aput v1, v0, v7

    ushr-int v1, v6, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_3d
    sub-int/2addr v3, v2

    .line 319
    aput v1, v0, v3

    .line 321
    :cond_40
    iput-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    return-void
.end method

.method public set(I)V
    .registers 6

    .line 80
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 v1, p1, 0x20

    aget v2, v0, v1

    and-int/lit8 p1, p1, 0x1f

    const/4 v3, 0x1

    shl-int p1, v3, p1

    or-int/2addr p1, v2

    aput p1, v0, v1

    return-void
.end method

.method public setBulk(II)V
    .registers 4

    .line 147
    iget-object v0, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    div-int/lit8 p1, p1, 0x20

    aput p2, v0, p1

    return-void
.end method

.method public setRange(II)V
    .registers 9

    if-lt p2, p1, :cond_32

    if-ltz p1, :cond_32

    .line 157
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-gt p2, v0, :cond_32

    if-ne p2, p1, :cond_b

    return-void

    :cond_b
    add-int/lit8 p2, p2, -0x1

    .line 164
    div-int/lit8 v0, p1, 0x20

    .line 165
    div-int/lit8 v1, p2, 0x20

    move v2, v0

    :goto_12
    if-gt v2, v1, :cond_31

    const/16 v3, 0x1f

    if-le v2, v0, :cond_1a

    const/4 v4, 0x0

    goto :goto_1c

    :cond_1a
    and-int/lit8 v4, p1, 0x1f

    :goto_1c
    if-ge v2, v1, :cond_1f

    goto :goto_20

    :cond_1f
    and-int/2addr v3, p2

    :goto_20
    const/4 v5, 0x2

    shl-int v3, v5, v3

    const/4 v5, 0x1

    shl-int v4, v5, v4

    sub-int/2addr v3, v4

    .line 171
    iget-object v4, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v5, v4, v2

    or-int/2addr v3, v5

    aput v3, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    :cond_31
    return-void

    .line 158
    :cond_32
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public toBytes(I[BII)V
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    if-ge v1, p4, :cond_23

    move v2, v0

    move v3, v2

    :goto_6
    const/16 v4, 0x8

    if-ge v2, v4, :cond_1b

    .line 281
    invoke-virtual {p0, p1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v4

    if-eqz v4, :cond_16

    rsub-int/lit8 v4, v2, 0x7

    const/4 v5, 0x1

    shl-int v4, v5, v4

    or-int/2addr v3, v4

    :cond_16
    add-int/lit8 p1, p1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_1b
    add-int v2, p3, v1

    int-to-byte v3, v3

    .line 286
    aput-byte v3, p2, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/google/zxing/common/BitArray;->size:I

    div-int/lit8 v2, v1, 0x8

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    .line 345
    :goto_d
    iget v2, p0, Lcom/google/zxing/common/BitArray;->size:I

    if-ge v1, v2, :cond_2b

    and-int/lit8 v2, v1, 0x7

    if-nez v2, :cond_1a

    const/16 v2, 0x20

    .line 347
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 349
    :cond_1a
    invoke-virtual {p0, v1}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v2

    if-eqz v2, :cond_23

    const/16 v2, 0x58

    goto :goto_25

    :cond_23
    const/16 v2, 0x2e

    :goto_25
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 351
    :cond_2b
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public xor(Lcom/google/zxing/common/BitArray;)V
    .registers 6

    .line 259
    iget v0, p0, Lcom/google/zxing/common/BitArray;->size:I

    iget v1, p1, Lcom/google/zxing/common/BitArray;->size:I

    if-ne v0, v1, :cond_19

    const/4 v0, 0x0

    .line 262
    :goto_7
    iget-object v1, p0, Lcom/google/zxing/common/BitArray;->bits:[I

    array-length v2, v1

    if-ge v0, v2, :cond_18

    .line 265
    aget v2, v1, v0

    iget-object v3, p1, Lcom/google/zxing/common/BitArray;->bits:[I

    aget v3, v3, v0

    xor-int/2addr v2, v3

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_18
    return-void

    .line 260
    :cond_19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Sizes don\'t match"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
