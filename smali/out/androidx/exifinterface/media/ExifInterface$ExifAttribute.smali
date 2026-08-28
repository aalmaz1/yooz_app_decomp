.class Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/exifinterface/media/ExifInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExifAttribute"
.end annotation


# static fields
.field public static final BYTES_OFFSET_UNKNOWN:J = -0x1L


# instance fields
.field public final bytes:[B

.field public final bytesOffset:J

.field public final format:I

.field public final numberOfComponents:I


# direct methods
.method constructor <init>(IIJ[B)V
    .registers 6

    .line 3123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3124
    iput p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    .line 3125
    iput p2, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    .line 3126
    iput-wide p3, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytesOffset:J

    .line 3127
    iput-object p5, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    return-void
.end method

.method constructor <init>(II[B)V
    .registers 10

    const-wide/16 v3, -0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v5, p3

    .line 3119
    invoke-direct/range {v0 .. v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(IIJ[B)V

    return-void
.end method

.method public static createByte(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 6

    .line 3174
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-lt v2, v3, :cond_28

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x31

    if-gt v2, v4, :cond_28

    new-array v2, v1, [B

    .line 3175
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result p0

    sub-int/2addr p0, v3

    int-to-byte p0, p0

    aput-byte p0, v2, v0

    .line 3176
    new-instance p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    invoke-direct {p0, v1, v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p0

    .line 3178
    :cond_28
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3179
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length v2, p0

    invoke-direct {v0, v1, v2, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method public static createDouble(DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [D

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    .line 3228
    invoke-static {v0, p2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createDouble([DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 7

    .line 3218
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3220
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3221
    array-length p1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, p1, :cond_1d

    aget-wide v3, p0, v2

    .line 3222
    invoke-virtual {v0, v3, v4}, Ljava/nio/ByteBuffer;->putDouble(D)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 3224
    :cond_1d
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createSLong(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 3169
    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createSLong([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 6

    .line 3159
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0x9

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3161
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3162
    array-length p1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, p1, :cond_1d

    aget v3, p0, v2

    .line 3163
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 3165
    :cond_1d
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createSRational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 3214
    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSRational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createSRational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 8

    .line 3203
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/16 v1, 0xa

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3205
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3206
    array-length p1, p0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, p1, :cond_26

    aget-object v3, p0, v2

    .line 3207
    iget-wide v4, v3, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3208
    iget-wide v3, v3, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 3210
    :cond_26
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 4

    .line 3183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    .line 3184
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const/4 v1, 0x2

    array-length v2, p0

    invoke-direct {v0, v1, v2, p0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object v0
.end method

.method public static createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    aput-wide p0, v0, v1

    .line 3155
    invoke-static {v0, p2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 7

    .line 3145
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x4

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3147
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3148
    array-length p1, p0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, p1, :cond_1d

    aget-wide v3, p0, v2

    long-to-int v3, v3

    .line 3149
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 3151
    :cond_1d
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createURational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Landroidx/exifinterface/media/ExifInterface$Rational;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 3199
    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 8

    .line 3188
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x5

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3190
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3191
    array-length p1, p0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, p1, :cond_25

    aget-object v3, p0, v2

    .line 3192
    iget-wide v4, v3, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-int v4, v4

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 3193
    iget-wide v3, v3, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-int v3, v3

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 3195
    :cond_25
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method

.method public static createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p0, v0, v1

    .line 3141
    invoke-static {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object p0

    return-object p0
.end method

.method public static createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .registers 6

    .line 3131
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    array-length v2, p0

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 3133
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 3134
    array-length p1, p0

    const/4 v2, 0x0

    :goto_12
    if-ge v2, p1, :cond_1d

    aget v3, p0, v2

    int-to-short v3, v3

    .line 3135
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_12

    .line 3137
    :cond_1d
    new-instance p1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    array-length p0, p0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-direct {p1, v1, p0, v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[B)V

    return-object p1
.end method


# virtual methods
.method public getDoubleValue(Ljava/nio/ByteOrder;)D
    .registers 6

    .line 3360
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6b

    .line 3364
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 3365
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    return-wide v0

    .line 3367
    :cond_11
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const-string v2, "There are more than one component"

    const/4 v3, 0x1

    if-eqz v0, :cond_28

    .line 3368
    check-cast p1, [J

    .line 3369
    array-length v0, p1

    if-ne v0, v3, :cond_22

    .line 3370
    aget-wide v0, p1, v1

    long-to-double v0, v0

    return-wide v0

    .line 3372
    :cond_22
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3374
    :cond_28
    instance-of v0, p1, [I

    if-eqz v0, :cond_3b

    .line 3375
    check-cast p1, [I

    .line 3376
    array-length v0, p1

    if-ne v0, v3, :cond_35

    .line 3377
    aget p1, p1, v1

    int-to-double v0, p1

    return-wide v0

    .line 3379
    :cond_35
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3381
    :cond_3b
    instance-of v0, p1, [D

    if-eqz v0, :cond_4d

    .line 3382
    check-cast p1, [D

    .line 3383
    array-length v0, p1

    if-ne v0, v3, :cond_47

    .line 3384
    aget-wide v0, p1, v1

    return-wide v0

    .line 3386
    :cond_47
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3388
    :cond_4d
    instance-of v0, p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz v0, :cond_63

    .line 3389
    check-cast p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3390
    array-length v0, p1

    if-ne v0, v3, :cond_5d

    .line 3391
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$Rational;->calculate()D

    move-result-wide v0

    return-wide v0

    .line 3393
    :cond_5d
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3395
    :cond_63
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3362
    :cond_6b
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a double value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getIntValue(Ljava/nio/ByteOrder;)I
    .registers 6

    .line 3399
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 3403
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 3404
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 3406
    :cond_11
    instance-of v0, p1, [J

    const/4 v1, 0x0

    const-string v2, "There are more than one component"

    const/4 v3, 0x1

    if-eqz v0, :cond_28

    .line 3407
    check-cast p1, [J

    .line 3408
    array-length v0, p1

    if-ne v0, v3, :cond_22

    .line 3409
    aget-wide v0, p1, v1

    long-to-int p1, v0

    return p1

    .line 3411
    :cond_22
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3413
    :cond_28
    instance-of v0, p1, [I

    if-eqz v0, :cond_3a

    .line 3414
    check-cast p1, [I

    .line 3415
    array-length v0, p1

    if-ne v0, v3, :cond_34

    .line 3416
    aget p1, p1, v1

    return p1

    .line 3418
    :cond_34
    new-instance p1, Ljava/lang/NumberFormatException;

    invoke-direct {p1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3420
    :cond_3a
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "Couldn\'t find a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3401
    :cond_42
    new-instance p1, Ljava/lang/NumberFormatException;

    const-string v0, "NULL can\'t be converted to a integer value"

    invoke-direct {p1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;
    .registers 9

    .line 3424
    invoke-virtual {p0, p1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return-object v0

    .line 3428
    :cond_8
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_f

    .line 3429
    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 3432
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3433
    instance-of v2, p1, [J

    const-string v3, ","

    const/4 v4, 0x0

    if-eqz v2, :cond_33

    .line 3434
    check-cast p1, [J

    .line 3435
    :cond_1d
    :goto_1d
    array-length v0, p1

    if-ge v4, v0, :cond_2e

    .line 3436
    aget-wide v5, p1, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 3437
    array-length v0, p1

    if-eq v4, v0, :cond_1d

    .line 3438
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1d

    .line 3441
    :cond_2e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3443
    :cond_33
    instance-of v2, p1, [I

    if-eqz v2, :cond_4f

    .line 3444
    check-cast p1, [I

    .line 3445
    :cond_39
    :goto_39
    array-length v0, p1

    if-ge v4, v0, :cond_4a

    .line 3446
    aget v0, p1, v4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 3447
    array-length v0, p1

    if-eq v4, v0, :cond_39

    .line 3448
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_39

    .line 3451
    :cond_4a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3453
    :cond_4f
    instance-of v2, p1, [D

    if-eqz v2, :cond_6b

    .line 3454
    check-cast p1, [D

    .line 3455
    :cond_55
    :goto_55
    array-length v0, p1

    if-ge v4, v0, :cond_66

    .line 3456
    aget-wide v5, p1, v4

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 3457
    array-length v0, p1

    if-eq v4, v0, :cond_55

    .line 3458
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_55

    .line 3461
    :cond_66
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3463
    :cond_6b
    instance-of v2, p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    if-eqz v2, :cond_95

    .line 3464
    check-cast p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3465
    :cond_71
    :goto_71
    array-length v0, p1

    if-ge v4, v0, :cond_90

    .line 3466
    aget-object v0, p1, v4

    iget-wide v5, v0, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v0, 0x2f

    .line 3467
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3468
    aget-object v0, p1, v4

    iget-wide v5, v0, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    .line 3469
    array-length v0, p1

    if-eq v4, v0, :cond_71

    .line 3470
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_71

    .line 3473
    :cond_90
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_95
    return-object v0
.end method

.method getValue(Ljava/nio/ByteOrder;)Ljava/lang/Object;
    .registers 12

    const-string v0, "IOException occurred while closing InputStream"

    const-string v1, "ExifInterface"

    const/4 v2, 0x0

    .line 3240
    :try_start_5
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_c} :catch_18f
    .catchall {:try_start_5 .. :try_end_c} :catchall_18d

    .line 3241
    :try_start_c
    invoke-virtual {v3, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 3242
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_1ae

    goto/16 :goto_182

    .line 3336
    :pswitch_18
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [D

    .line 3337
    :goto_1c
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v4, :cond_29

    .line 3338
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readDouble()D

    move-result-wide v6

    aput-wide v6, p1, v5
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_26} :catch_18b
    .catchall {:try_start_c .. :try_end_26} :catchall_1a1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1c

    .line 3351
    :cond_29
    :try_start_29
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_31

    :catch_2d
    move-exception v2

    .line 3353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_31
    return-object p1

    .line 3329
    :pswitch_32
    :try_start_32
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [D

    .line 3330
    :goto_36
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v4, :cond_44

    .line 3331
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFloat()F

    move-result v4

    float-to-double v6, v4

    aput-wide v6, p1, v5
    :try_end_41
    .catch Ljava/io/IOException; {:try_start_32 .. :try_end_41} :catch_18b
    .catchall {:try_start_32 .. :try_end_41} :catchall_1a1

    add-int/lit8 v5, v5, 0x1

    goto :goto_36

    .line 3351
    :cond_44
    :try_start_44
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_47} :catch_48

    goto :goto_4c

    :catch_48
    move-exception v2

    .line 3353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_4c
    return-object p1

    .line 3320
    :pswitch_4d
    :try_start_4d
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3321
    :goto_51
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v4, :cond_69

    .line 3322
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    int-to-long v6, v4

    .line 3323
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    int-to-long v8, v4

    .line 3324
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$Rational;

    invoke-direct {v4, v6, v7, v8, v9}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    aput-object v4, p1, v5
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_66} :catch_18b
    .catchall {:try_start_4d .. :try_end_66} :catchall_1a1

    add-int/lit8 v5, v5, 0x1

    goto :goto_51

    .line 3351
    :cond_69
    :try_start_69
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_69 .. :try_end_6c} :catch_6d

    goto :goto_71

    :catch_6d
    move-exception v2

    .line 3353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_71
    return-object p1

    .line 3313
    :pswitch_72
    :try_start_72
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 3314
    :goto_76
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v4, :cond_83

    .line 3315
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    aput v4, p1, v5
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_72 .. :try_end_80} :catch_18b
    .catchall {:try_start_72 .. :try_end_80} :catchall_1a1

    add-int/lit8 v5, v5, 0x1

    goto :goto_76

    .line 3351
    :cond_83
    :try_start_83
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_86} :catch_87

    goto :goto_8b

    :catch_87
    move-exception v2

    .line 3353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8b
    return-object p1

    .line 3306
    :pswitch_8c
    :try_start_8c
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 3307
    :goto_90
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v4, :cond_9d

    .line 3308
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v4

    aput v4, p1, v5
    :try_end_9a
    .catch Ljava/io/IOException; {:try_start_8c .. :try_end_9a} :catch_18b
    .catchall {:try_start_8c .. :try_end_9a} :catchall_1a1

    add-int/lit8 v5, v5, 0x1

    goto :goto_90

    .line 3351
    :cond_9d
    :try_start_9d
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_a0
    .catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a1

    goto :goto_a5

    :catch_a1
    move-exception v2

    .line 3353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_a5
    return-object p1

    .line 3297
    :pswitch_a6
    :try_start_a6
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3298
    :goto_aa
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v4, :cond_c0

    .line 3299
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    .line 3300
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v8

    .line 3301
    new-instance v4, Landroidx/exifinterface/media/ExifInterface$Rational;

    invoke-direct {v4, v6, v7, v8, v9}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJ)V

    aput-object v4, p1, v5
    :try_end_bd
    .catch Ljava/io/IOException; {:try_start_a6 .. :try_end_bd} :catch_18b
    .catchall {:try_start_a6 .. :try_end_bd} :catchall_1a1

    add-int/lit8 v5, v5, 0x1

    goto :goto_aa

    .line 3351
    :cond_c0
    :try_start_c0
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_c3
    .catch Ljava/io/IOException; {:try_start_c0 .. :try_end_c3} :catch_c4

    goto :goto_c8

    :catch_c4
    move-exception v2

    .line 3353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c8
    return-object p1

    .line 3290
    :pswitch_c9
    :try_start_c9
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [J

    .line 3291
    :goto_cd
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v4, :cond_da

    .line 3292
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v6

    aput-wide v6, p1, v5
    :try_end_d7
    .catch Ljava/io/IOException; {:try_start_c9 .. :try_end_d7} :catch_18b
    .catchall {:try_start_c9 .. :try_end_d7} :catchall_1a1

    add-int/lit8 v5, v5, 0x1

    goto :goto_cd

    .line 3351
    :cond_da
    :try_start_da
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_de

    goto :goto_e2

    :catch_de
    move-exception v2

    .line 3353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_e2
    return-object p1

    .line 3283
    :pswitch_e3
    :try_start_e3
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    new-array p1, p1, [I

    .line 3284
    :goto_e7
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v4, :cond_f4

    .line 3285
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    aput v4, p1, v5
    :try_end_f1
    .catch Ljava/io/IOException; {:try_start_e3 .. :try_end_f1} :catch_18b
    .catchall {:try_start_e3 .. :try_end_f1} :catchall_1a1

    add-int/lit8 v5, v5, 0x1

    goto :goto_e7

    .line 3351
    :cond_f4
    :try_start_f4
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_f7
    .catch Ljava/io/IOException; {:try_start_f4 .. :try_end_f7} :catch_f8

    goto :goto_fc

    :catch_f8
    move-exception v2

    .line 3353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_fc
    return-object p1

    .line 3254
    :pswitch_fd
    :try_start_fd
    iget p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    array-length v6, v6

    if-lt p1, v6, :cond_11e

    move p1, v5

    .line 3256
    :goto_105
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    array-length v6, v6

    if-ge p1, v6, :cond_119

    .line 3257
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v6, v6, p1

    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    aget-byte v7, v7, p1

    if-eq v6, v7, :cond_116

    move v4, v5

    goto :goto_119

    :cond_116
    add-int/lit8 p1, p1, 0x1

    goto :goto_105

    :cond_119
    :goto_119
    if-eqz v4, :cond_11e

    .line 3263
    sget-object p1, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    array-length v5, p1

    .line 3267
    :cond_11e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3268
    :goto_123
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    if-ge v5, v4, :cond_13f

    .line 3269
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v4, v4, v5

    if-nez v4, :cond_12e

    goto :goto_13f

    :cond_12e
    const/16 v6, 0x20

    if-lt v4, v6, :cond_137

    int-to-char v4, v4

    .line 3274
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_13c

    :cond_137
    const/16 v4, 0x3f

    .line 3276
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_13c
    add-int/lit8 v5, v5, 0x1

    goto :goto_123

    .line 3280
    :cond_13f
    :goto_13f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_143
    .catch Ljava/io/IOException; {:try_start_fd .. :try_end_143} :catch_18b
    .catchall {:try_start_fd .. :try_end_143} :catchall_1a1

    .line 3351
    :try_start_143
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_146
    .catch Ljava/io/IOException; {:try_start_143 .. :try_end_146} :catch_147

    goto :goto_14b

    :catch_147
    move-exception v2

    .line 3353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_14b
    return-object p1

    .line 3246
    :pswitch_14c
    :try_start_14c
    iget-object p1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v6, p1

    if-ne v6, v4, :cond_170

    aget-byte p1, p1, v5

    if-ltz p1, :cond_170

    if-gt p1, v4, :cond_170

    .line 3247
    new-instance p1, Ljava/lang/String;

    new-array v4, v4, [C

    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    aget-byte v6, v6, v5

    add-int/lit8 v6, v6, 0x30

    int-to-char v6, v6

    aput-char v6, v4, v5

    invoke-direct {p1, v4}, Ljava/lang/String;-><init>([C)V
    :try_end_167
    .catch Ljava/io/IOException; {:try_start_14c .. :try_end_167} :catch_18b
    .catchall {:try_start_14c .. :try_end_167} :catchall_1a1

    .line 3351
    :try_start_167
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_16a
    .catch Ljava/io/IOException; {:try_start_167 .. :try_end_16a} :catch_16b

    goto :goto_16f

    :catch_16b
    move-exception v2

    .line 3353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_16f
    return-object p1

    .line 3249
    :cond_170
    :try_start_170
    new-instance p1, Ljava/lang/String;

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p1, v4, v5}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_179
    .catch Ljava/io/IOException; {:try_start_170 .. :try_end_179} :catch_18b
    .catchall {:try_start_170 .. :try_end_179} :catchall_1a1

    .line 3351
    :try_start_179
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_17c
    .catch Ljava/io/IOException; {:try_start_179 .. :try_end_17c} :catch_17d

    goto :goto_181

    :catch_17d
    move-exception v2

    .line 3353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_181
    return-object p1

    .line 3351
    :goto_182
    :try_start_182
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_185
    .catch Ljava/io/IOException; {:try_start_182 .. :try_end_185} :catch_186

    goto :goto_18a

    :catch_186
    move-exception p1

    .line 3353
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_18a
    return-object v2

    :catch_18b
    move-exception p1

    goto :goto_191

    :catchall_18d
    move-exception p1

    goto :goto_1a3

    :catch_18f
    move-exception p1

    move-object v3, v2

    :goto_191
    :try_start_191
    const-string v4, "IOException occurred during reading a value"

    .line 3346
    invoke-static {v1, v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_196
    .catchall {:try_start_191 .. :try_end_196} :catchall_1a1

    if-eqz v3, :cond_1a0

    .line 3351
    :try_start_198
    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_19b
    .catch Ljava/io/IOException; {:try_start_198 .. :try_end_19b} :catch_19c

    goto :goto_1a0

    :catch_19c
    move-exception p1

    .line 3353
    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1a0
    :goto_1a0
    return-object v2

    :catchall_1a1
    move-exception p1

    move-object v2, v3

    :goto_1a3
    if-eqz v2, :cond_1ad

    .line 3351
    :try_start_1a5
    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V
    :try_end_1a8
    .catch Ljava/io/IOException; {:try_start_1a5 .. :try_end_1a8} :catch_1a9

    goto :goto_1ad

    :catch_1a9
    move-exception v2

    .line 3353
    invoke-static {v1, v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3356
    :cond_1ad
    :goto_1ad
    throw p1

    :pswitch_data_1ae
    .packed-switch 0x1
        :pswitch_14c
        :pswitch_fd
        :pswitch_e3
        :pswitch_c9
        :pswitch_a6
        :pswitch_14c
        :pswitch_fd
        :pswitch_8c
        :pswitch_72
        :pswitch_4d
        :pswitch_32
        :pswitch_18
    .end packed-switch
.end method

.method public size()I
    .registers 3

    .line 3479
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    aget v0, v0, v1

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 3233
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v2, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", data length:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
