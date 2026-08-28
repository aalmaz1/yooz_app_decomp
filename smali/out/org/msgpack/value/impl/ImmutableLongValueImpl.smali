.class public Lorg/msgpack/value/impl/ImmutableLongValueImpl;
.super Lorg/msgpack/value/impl/AbstractImmutableValue;
.source "ImmutableLongValueImpl.java"

# interfaces
.implements Lorg/msgpack/value/ImmutableIntegerValue;


# static fields
.field private static final BYTE_MAX:J = 0x7fL

.field private static final BYTE_MIN:J = -0x80L

.field private static final INT_MAX:J = 0x7fffffffL

.field private static final INT_MIN:J = -0x80000000L

.field private static final SHORT_MAX:J = 0x7fffL

.field private static final SHORT_MIN:J = -0x8000L


# instance fields
.field private final value:J


# direct methods
.method public constructor <init>(J)V
    .registers 3

    .line 42
    invoke-direct {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;-><init>()V

    .line 43
    iput-wide p1, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    return-void
.end method


# virtual methods
.method public bridge synthetic asArrayValue()Lorg/msgpack/value/ImmutableArrayValue;
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asArrayValue()Lorg/msgpack/value/ImmutableArrayValue;

    move-result-object v0

    return-object v0
.end method

.method public asBigInteger()Ljava/math/BigInteger;
    .registers 3

    .line 185
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asBinaryValue()Lorg/msgpack/value/ImmutableBinaryValue;
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asBinaryValue()Lorg/msgpack/value/ImmutableBinaryValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asBooleanValue()Lorg/msgpack/value/ImmutableBooleanValue;
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asBooleanValue()Lorg/msgpack/value/ImmutableBooleanValue;

    move-result-object v0

    return-object v0
.end method

.method public asByte()B
    .registers 4

    .line 152
    invoke-virtual {p0}, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->isInByteRange()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 155
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0

    .line 153
    :cond_b
    new-instance v0, Lorg/msgpack/core/MessageIntegerOverflowException;

    iget-wide v1, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    invoke-direct {v0, v1, v2}, Lorg/msgpack/core/MessageIntegerOverflowException;-><init>(J)V

    throw v0
.end method

.method public bridge synthetic asExtensionValue()Lorg/msgpack/value/ImmutableExtensionValue;
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asExtensionValue()Lorg/msgpack/value/ImmutableExtensionValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asFloatValue()Lorg/msgpack/value/ImmutableFloatValue;
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asFloatValue()Lorg/msgpack/value/ImmutableFloatValue;

    move-result-object v0

    return-object v0
.end method

.method public asInt()I
    .registers 4

    .line 170
    invoke-virtual {p0}, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->isInIntRange()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 173
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    long-to-int v0, v0

    return v0

    .line 171
    :cond_a
    new-instance v0, Lorg/msgpack/core/MessageIntegerOverflowException;

    iget-wide v1, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    invoke-direct {v0, v1, v2}, Lorg/msgpack/core/MessageIntegerOverflowException;-><init>(J)V

    throw v0
.end method

.method public asIntegerValue()Lorg/msgpack/value/ImmutableIntegerValue;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic asIntegerValue()Lorg/msgpack/value/IntegerValue;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->asIntegerValue()Lorg/msgpack/value/ImmutableIntegerValue;

    move-result-object v0

    return-object v0
.end method

.method public asLong()J
    .registers 3

    .line 179
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    return-wide v0
.end method

.method public bridge synthetic asMapValue()Lorg/msgpack/value/ImmutableMapValue;
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asMapValue()Lorg/msgpack/value/ImmutableMapValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asNilValue()Lorg/msgpack/value/ImmutableNilValue;
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asNilValue()Lorg/msgpack/value/ImmutableNilValue;

    move-result-object v0

    return-object v0
.end method

.method public asNumberValue()Lorg/msgpack/value/ImmutableNumberValue;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic asNumberValue()Lorg/msgpack/value/NumberValue;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->asNumberValue()Lorg/msgpack/value/ImmutableNumberValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asRawValue()Lorg/msgpack/value/ImmutableRawValue;
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asRawValue()Lorg/msgpack/value/ImmutableRawValue;

    move-result-object v0

    return-object v0
.end method

.method public asShort()S
    .registers 4

    .line 161
    invoke-virtual {p0}, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->isInShortRange()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 164
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0

    .line 162
    :cond_b
    new-instance v0, Lorg/msgpack/core/MessageIntegerOverflowException;

    iget-wide v1, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    invoke-direct {v0, v1, v2}, Lorg/msgpack/core/MessageIntegerOverflowException;-><init>(J)V

    throw v0
.end method

.method public bridge synthetic asStringValue()Lorg/msgpack/value/ImmutableStringValue;
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asStringValue()Lorg/msgpack/value/ImmutableStringValue;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 201
    :cond_4
    instance-of v1, p1, Lorg/msgpack/value/Value;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 204
    :cond_a
    check-cast p1, Lorg/msgpack/value/Value;

    .line 205
    invoke-interface {p1}, Lorg/msgpack/value/Value;->isIntegerValue()Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    .line 209
    :cond_13
    invoke-interface {p1}, Lorg/msgpack/value/Value;->asIntegerValue()Lorg/msgpack/value/IntegerValue;

    move-result-object p1

    .line 210
    invoke-interface {p1}, Lorg/msgpack/value/IntegerValue;->isInLongRange()Z

    move-result v1

    if-nez v1, :cond_1e

    return v2

    .line 213
    :cond_1e
    iget-wide v3, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    invoke-interface {p1}, Lorg/msgpack/value/IntegerValue;->toLong()J

    move-result-wide v5

    cmp-long p1, v3, v5

    if-nez p1, :cond_29

    goto :goto_2a

    :cond_29
    move v0, v2

    :goto_2a
    return v0
.end method

.method public getValueType()Lorg/msgpack/value/ValueType;
    .registers 2

    .line 56
    sget-object v0, Lorg/msgpack/value/ValueType;->INTEGER:Lorg/msgpack/value/ValueType;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 219
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    const-wide/32 v2, -0x80000000

    cmp-long v2, v2, v0

    if-gtz v2, :cond_12

    const-wide/32 v2, 0x7fffffff

    cmp-long v2, v0, v2

    if-gtz v2, :cond_12

    long-to-int v0, v0

    return v0

    :cond_12
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public immutableValue()Lorg/msgpack/value/ImmutableIntegerValue;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic immutableValue()Lorg/msgpack/value/ImmutableValue;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->immutableValue()Lorg/msgpack/value/ImmutableIntegerValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isArrayValue()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isArrayValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isBinaryValue()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isBinaryValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isBooleanValue()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isBooleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isExtensionValue()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isExtensionValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFloatValue()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isFloatValue()Z

    move-result v0

    return v0
.end method

.method public isInByteRange()Z
    .registers 5

    .line 122
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    const-wide/16 v2, -0x80

    cmp-long v2, v2, v0

    if-gtz v2, :cond_10

    const-wide/16 v2, 0x7f

    cmp-long v0, v0, v2

    if-gtz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public isInIntRange()Z
    .registers 5

    .line 134
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    const-wide/32 v2, -0x80000000

    cmp-long v2, v2, v0

    if-gtz v2, :cond_12

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public isInLongRange()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public isInShortRange()Z
    .registers 5

    .line 128
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    const-wide/16 v2, -0x8000

    cmp-long v2, v2, v0

    if-gtz v2, :cond_10

    const-wide/16 v2, 0x7fff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public bridge synthetic isIntegerValue()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isIntegerValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isMapValue()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isMapValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isNilValue()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isNilValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isNumberValue()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isNumberValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRawValue()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isRawValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isStringValue()Z
    .registers 2

    .line 35
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isStringValue()Z

    move-result v0

    return v0
.end method

.method public mostSuccinctMessageFormat()Lorg/msgpack/core/MessageFormat;
    .registers 2

    .line 146
    invoke-static {p0}, Lorg/msgpack/value/impl/ImmutableBigIntegerValueImpl;->mostSuccinctMessageFormat(Lorg/msgpack/value/IntegerValue;)Lorg/msgpack/core/MessageFormat;

    move-result-object v0

    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .registers 3

    .line 104
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toByte()B
    .registers 3

    .line 80
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    long-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public toDouble()D
    .registers 3

    .line 116
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    long-to-double v0, v0

    return-wide v0
.end method

.method public toFloat()F
    .registers 3

    .line 110
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    long-to-float v0, v0

    return v0
.end method

.method public toInt()I
    .registers 3

    .line 92
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    long-to-int v0, v0

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .registers 3

    .line 230
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toLong()J
    .registers 3

    .line 98
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    return-wide v0
.end method

.method public toShort()S
    .registers 3

    .line 86
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    long-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 236
    invoke-virtual {p0}, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->toJson()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lorg/msgpack/core/MessagePacker;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableLongValueImpl;->value:J

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    return-void
.end method
