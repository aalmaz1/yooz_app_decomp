.class public Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;
.super Lorg/msgpack/value/impl/AbstractImmutableValue;
.source "ImmutableDoubleValueImpl.java"

# interfaces
.implements Lorg/msgpack/value/ImmutableFloatValue;


# instance fields
.field private final value:D


# direct methods
.method public constructor <init>(D)V
    .registers 3

    .line 40
    invoke-direct {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;-><init>()V

    .line 41
    iput-wide p1, p0, Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;->value:D

    return-void
.end method


# virtual methods
.method public bridge synthetic asArrayValue()Lorg/msgpack/value/ImmutableArrayValue;
    .registers 2

    .line 33
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asArrayValue()Lorg/msgpack/value/ImmutableArrayValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asBinaryValue()Lorg/msgpack/value/ImmutableBinaryValue;
    .registers 2

    .line 33
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asBinaryValue()Lorg/msgpack/value/ImmutableBinaryValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asBooleanValue()Lorg/msgpack/value/ImmutableBooleanValue;
    .registers 2

    .line 33
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asBooleanValue()Lorg/msgpack/value/ImmutableBooleanValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asExtensionValue()Lorg/msgpack/value/ImmutableExtensionValue;
    .registers 2

    .line 33
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asExtensionValue()Lorg/msgpack/value/ImmutableExtensionValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asFloatValue()Lorg/msgpack/value/FloatValue;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;->asFloatValue()Lorg/msgpack/value/ImmutableFloatValue;

    move-result-object v0

    return-object v0
.end method

.method public asFloatValue()Lorg/msgpack/value/ImmutableFloatValue;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic asIntegerValue()Lorg/msgpack/value/ImmutableIntegerValue;
    .registers 2

    .line 33
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asIntegerValue()Lorg/msgpack/value/ImmutableIntegerValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asMapValue()Lorg/msgpack/value/ImmutableMapValue;
    .registers 2

    .line 33
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asMapValue()Lorg/msgpack/value/ImmutableMapValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asNilValue()Lorg/msgpack/value/ImmutableNilValue;
    .registers 2

    .line 33
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

    .line 33
    invoke-virtual {p0}, Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;->asNumberValue()Lorg/msgpack/value/ImmutableNumberValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asRawValue()Lorg/msgpack/value/ImmutableRawValue;
    .registers 2

    .line 33
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asRawValue()Lorg/msgpack/value/ImmutableRawValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asStringValue()Lorg/msgpack/value/ImmutableStringValue;
    .registers 2

    .line 33
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asStringValue()Lorg/msgpack/value/ImmutableStringValue;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 123
    :cond_4
    instance-of v1, p1, Lorg/msgpack/value/Value;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 126
    :cond_a
    check-cast p1, Lorg/msgpack/value/Value;

    .line 128
    invoke-interface {p1}, Lorg/msgpack/value/Value;->isFloatValue()Z

    move-result v1

    if-nez v1, :cond_13

    return v2

    .line 131
    :cond_13
    iget-wide v3, p0, Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;->value:D

    invoke-interface {p1}, Lorg/msgpack/value/Value;->asFloatValue()Lorg/msgpack/value/FloatValue;

    move-result-object p1

    invoke-interface {p1}, Lorg/msgpack/value/FloatValue;->toDouble()D

    move-result-wide v5

    cmpl-double p1, v3, v5

    if-nez p1, :cond_22

    goto :goto_23

    :cond_22
    move v0, v2

    :goto_23
    return v0
.end method

.method public getValueType()Lorg/msgpack/value/ValueType;
    .registers 2

    .line 47
    sget-object v0, Lorg/msgpack/value/ValueType;->FLOAT:Lorg/msgpack/value/ValueType;

    return-object v0
.end method

.method public hashCode()I
    .registers 5

    .line 137
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    const/16 v2, 0x20

    ushr-long v2, v0, v2

    xor-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public bridge synthetic immutableValue()Lorg/msgpack/value/ImmutableValue;
    .registers 2

    .line 33
    invoke-virtual {p0}, Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;->immutableValue()Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;

    move-result-object v0

    return-object v0
.end method

.method public immutableValue()Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic isArrayValue()Z
    .registers 2

    .line 33
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isArrayValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isBinaryValue()Z
    .registers 2

    .line 33
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isBinaryValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isBooleanValue()Z
    .registers 2

    .line 33
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isBooleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isExtensionValue()Z
    .registers 2

    .line 33
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isExtensionValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFloatValue()Z
    .registers 2

    .line 33
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isFloatValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isIntegerValue()Z
    .registers 2

    .line 33
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isIntegerValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isMapValue()Z
    .registers 2

    .line 33
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isMapValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isNilValue()Z
    .registers 2

    .line 33
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isNilValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isNumberValue()Z
    .registers 2

    .line 33
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isNumberValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRawValue()Z
    .registers 2

    .line 33
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isRawValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isStringValue()Z
    .registers 2

    .line 33
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isStringValue()Z

    move-result v0

    return v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .registers 4

    .line 95
    new-instance v0, Ljava/math/BigDecimal;

    iget-wide v1, p0, Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;->value:D

    invoke-direct {v0, v1, v2}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v0}, Ljava/math/BigDecimal;->toBigInteger()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public toByte()B
    .registers 3

    .line 71
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;->value:D

    double-to-int v0, v0

    int-to-byte v0, v0

    return v0
.end method

.method public toDouble()D
    .registers 3

    .line 107
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;->value:D

    return-wide v0
.end method

.method public toFloat()F
    .registers 3

    .line 101
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;->value:D

    double-to-float v0, v0

    return v0
.end method

.method public toInt()I
    .registers 3

    .line 83
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;->value:D

    double-to-int v0, v0

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .registers 3

    .line 144
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_18

    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_18

    .line 148
    :cond_11
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_18
    :goto_18
    const-string v0, "null"

    return-object v0
.end method

.method public toLong()J
    .registers 3

    .line 89
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;->value:D

    double-to-long v0, v0

    return-wide v0
.end method

.method public toShort()S
    .registers 3

    .line 77
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;->value:D

    double-to-int v0, v0

    int-to-short v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 155
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;->value:D

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

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

    .line 114
    iget-wide v0, p0, Lorg/msgpack/value/impl/ImmutableDoubleValueImpl;->value:D

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packDouble(D)Lorg/msgpack/core/MessagePacker;

    return-void
.end method
