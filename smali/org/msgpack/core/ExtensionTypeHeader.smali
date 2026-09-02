.class public Lorg/msgpack/core/ExtensionTypeHeader;
.super Ljava/lang/Object;
.source "ExtensionTypeHeader.java"


# instance fields
.field private final length:I

.field private final type:B


# direct methods
.method public constructor <init>(BI)V
    .registers 5

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p2, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "length must be >= 0"

    .line 46
    invoke-static {v0, v1}, Lorg/msgpack/core/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 47
    iput-byte p1, p0, Lorg/msgpack/core/ExtensionTypeHeader;->type:B

    .line 48
    iput p2, p0, Lorg/msgpack/core/ExtensionTypeHeader;->length:I

    return-void
.end method

.method public static checkedCastToByte(I)B
    .registers 3

    const/16 v0, -0x80

    if-gt v0, p0, :cond_a

    const/16 v0, 0x7f

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    const-string v1, "Extension type code must be within the range of byte"

    .line 53
    invoke-static {v0, v1}, Lorg/msgpack/core/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    int-to-byte p0, p0

    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 5

    .line 76
    instance-of v0, p1, Lorg/msgpack/core/ExtensionTypeHeader;

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 77
    check-cast p1, Lorg/msgpack/core/ExtensionTypeHeader;

    .line 78
    iget-byte v0, p0, Lorg/msgpack/core/ExtensionTypeHeader;->type:B

    iget-byte v2, p1, Lorg/msgpack/core/ExtensionTypeHeader;->type:B

    if-ne v0, v2, :cond_14

    iget v0, p0, Lorg/msgpack/core/ExtensionTypeHeader;->length:I

    iget p1, p1, Lorg/msgpack/core/ExtensionTypeHeader;->length:I

    if-ne v0, p1, :cond_14

    const/4 v1, 0x1

    :cond_14
    return v1
.end method

.method public getLength()I
    .registers 2

    .line 64
    iget v0, p0, Lorg/msgpack/core/ExtensionTypeHeader;->length:I

    return v0
.end method

.method public getType()B
    .registers 2

    .line 59
    iget-byte v0, p0, Lorg/msgpack/core/ExtensionTypeHeader;->type:B

    return v0
.end method

.method public hashCode()I
    .registers 3

    .line 70
    iget-byte v0, p0, Lorg/msgpack/core/ExtensionTypeHeader;->type:B

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lorg/msgpack/core/ExtensionTypeHeader;->length:I

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 86
    iget-byte v1, p0, Lorg/msgpack/core/ExtensionTypeHeader;->type:B

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget v1, p0, Lorg/msgpack/core/ExtensionTypeHeader;->length:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "ExtensionTypeHeader(type:%d, length:%,d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
