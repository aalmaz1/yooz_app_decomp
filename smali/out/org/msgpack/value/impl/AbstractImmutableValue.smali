.class abstract Lorg/msgpack/value/impl/AbstractImmutableValue;
.super Ljava/lang/Object;
.source "AbstractImmutableValue.java"

# interfaces
.implements Lorg/msgpack/value/ImmutableValue;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic asArrayValue()Lorg/msgpack/value/ArrayValue;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asArrayValue()Lorg/msgpack/value/ImmutableArrayValue;

    move-result-object v0

    return-object v0
.end method

.method public asArrayValue()Lorg/msgpack/value/ImmutableArrayValue;
    .registers 2

    .line 152
    new-instance v0, Lorg/msgpack/core/MessageTypeCastException;

    invoke-direct {v0}, Lorg/msgpack/core/MessageTypeCastException;-><init>()V

    throw v0
.end method

.method public bridge synthetic asBinaryValue()Lorg/msgpack/value/BinaryValue;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asBinaryValue()Lorg/msgpack/value/ImmutableBinaryValue;

    move-result-object v0

    return-object v0
.end method

.method public asBinaryValue()Lorg/msgpack/value/ImmutableBinaryValue;
    .registers 2

    .line 140
    new-instance v0, Lorg/msgpack/core/MessageTypeCastException;

    invoke-direct {v0}, Lorg/msgpack/core/MessageTypeCastException;-><init>()V

    throw v0
.end method

.method public bridge synthetic asBooleanValue()Lorg/msgpack/value/BooleanValue;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asBooleanValue()Lorg/msgpack/value/ImmutableBooleanValue;

    move-result-object v0

    return-object v0
.end method

.method public asBooleanValue()Lorg/msgpack/value/ImmutableBooleanValue;
    .registers 2

    .line 110
    new-instance v0, Lorg/msgpack/core/MessageTypeCastException;

    invoke-direct {v0}, Lorg/msgpack/core/MessageTypeCastException;-><init>()V

    throw v0
.end method

.method public bridge synthetic asExtensionValue()Lorg/msgpack/value/ExtensionValue;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asExtensionValue()Lorg/msgpack/value/ImmutableExtensionValue;

    move-result-object v0

    return-object v0
.end method

.method public asExtensionValue()Lorg/msgpack/value/ImmutableExtensionValue;
    .registers 2

    .line 164
    new-instance v0, Lorg/msgpack/core/MessageTypeCastException;

    invoke-direct {v0}, Lorg/msgpack/core/MessageTypeCastException;-><init>()V

    throw v0
.end method

.method public bridge synthetic asFloatValue()Lorg/msgpack/value/FloatValue;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asFloatValue()Lorg/msgpack/value/ImmutableFloatValue;

    move-result-object v0

    return-object v0
.end method

.method public asFloatValue()Lorg/msgpack/value/ImmutableFloatValue;
    .registers 2

    .line 128
    new-instance v0, Lorg/msgpack/core/MessageTypeCastException;

    invoke-direct {v0}, Lorg/msgpack/core/MessageTypeCastException;-><init>()V

    throw v0
.end method

.method public asIntegerValue()Lorg/msgpack/value/ImmutableIntegerValue;
    .registers 2

    .line 122
    new-instance v0, Lorg/msgpack/core/MessageTypeCastException;

    invoke-direct {v0}, Lorg/msgpack/core/MessageTypeCastException;-><init>()V

    throw v0
.end method

.method public bridge synthetic asIntegerValue()Lorg/msgpack/value/IntegerValue;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asIntegerValue()Lorg/msgpack/value/ImmutableIntegerValue;

    move-result-object v0

    return-object v0
.end method

.method public asMapValue()Lorg/msgpack/value/ImmutableMapValue;
    .registers 2

    .line 158
    new-instance v0, Lorg/msgpack/core/MessageTypeCastException;

    invoke-direct {v0}, Lorg/msgpack/core/MessageTypeCastException;-><init>()V

    throw v0
.end method

.method public bridge synthetic asMapValue()Lorg/msgpack/value/MapValue;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asMapValue()Lorg/msgpack/value/ImmutableMapValue;

    move-result-object v0

    return-object v0
.end method

.method public asNilValue()Lorg/msgpack/value/ImmutableNilValue;
    .registers 2

    .line 104
    new-instance v0, Lorg/msgpack/core/MessageTypeCastException;

    invoke-direct {v0}, Lorg/msgpack/core/MessageTypeCastException;-><init>()V

    throw v0
.end method

.method public bridge synthetic asNilValue()Lorg/msgpack/value/NilValue;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asNilValue()Lorg/msgpack/value/ImmutableNilValue;

    move-result-object v0

    return-object v0
.end method

.method public asNumberValue()Lorg/msgpack/value/ImmutableNumberValue;
    .registers 2

    .line 116
    new-instance v0, Lorg/msgpack/core/MessageTypeCastException;

    invoke-direct {v0}, Lorg/msgpack/core/MessageTypeCastException;-><init>()V

    throw v0
.end method

.method public bridge synthetic asNumberValue()Lorg/msgpack/value/NumberValue;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asNumberValue()Lorg/msgpack/value/ImmutableNumberValue;

    move-result-object v0

    return-object v0
.end method

.method public asRawValue()Lorg/msgpack/value/ImmutableRawValue;
    .registers 2

    .line 134
    new-instance v0, Lorg/msgpack/core/MessageTypeCastException;

    invoke-direct {v0}, Lorg/msgpack/core/MessageTypeCastException;-><init>()V

    throw v0
.end method

.method public bridge synthetic asRawValue()Lorg/msgpack/value/RawValue;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asRawValue()Lorg/msgpack/value/ImmutableRawValue;

    move-result-object v0

    return-object v0
.end method

.method public asStringValue()Lorg/msgpack/value/ImmutableStringValue;
    .registers 2

    .line 146
    new-instance v0, Lorg/msgpack/core/MessageTypeCastException;

    invoke-direct {v0}, Lorg/msgpack/core/MessageTypeCastException;-><init>()V

    throw v0
.end method

.method public bridge synthetic asStringValue()Lorg/msgpack/value/StringValue;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asStringValue()Lorg/msgpack/value/ImmutableStringValue;

    move-result-object v0

    return-object v0
.end method

.method public isArrayValue()Z
    .registers 2

    .line 86
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->getValueType()Lorg/msgpack/value/ValueType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/msgpack/value/ValueType;->isArrayType()Z

    move-result v0

    return v0
.end method

.method public isBinaryValue()Z
    .registers 2

    .line 74
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->getValueType()Lorg/msgpack/value/ValueType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/msgpack/value/ValueType;->isBinaryType()Z

    move-result v0

    return v0
.end method

.method public isBooleanValue()Z
    .registers 2

    .line 44
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->getValueType()Lorg/msgpack/value/ValueType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/msgpack/value/ValueType;->isBooleanType()Z

    move-result v0

    return v0
.end method

.method public isExtensionValue()Z
    .registers 2

    .line 98
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->getValueType()Lorg/msgpack/value/ValueType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/msgpack/value/ValueType;->isExtensionType()Z

    move-result v0

    return v0
.end method

.method public isFloatValue()Z
    .registers 2

    .line 62
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->getValueType()Lorg/msgpack/value/ValueType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/msgpack/value/ValueType;->isFloatType()Z

    move-result v0

    return v0
.end method

.method public isIntegerValue()Z
    .registers 2

    .line 56
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->getValueType()Lorg/msgpack/value/ValueType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/msgpack/value/ValueType;->isIntegerType()Z

    move-result v0

    return v0
.end method

.method public isMapValue()Z
    .registers 2

    .line 92
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->getValueType()Lorg/msgpack/value/ValueType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/msgpack/value/ValueType;->isMapType()Z

    move-result v0

    return v0
.end method

.method public isNilValue()Z
    .registers 2

    .line 38
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->getValueType()Lorg/msgpack/value/ValueType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/msgpack/value/ValueType;->isNilType()Z

    move-result v0

    return v0
.end method

.method public isNumberValue()Z
    .registers 2

    .line 50
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->getValueType()Lorg/msgpack/value/ValueType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/msgpack/value/ValueType;->isNumberType()Z

    move-result v0

    return v0
.end method

.method public isRawValue()Z
    .registers 2

    .line 68
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->getValueType()Lorg/msgpack/value/ValueType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/msgpack/value/ValueType;->isRawType()Z

    move-result v0

    return v0
.end method

.method public isStringValue()Z
    .registers 2

    .line 80
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->getValueType()Lorg/msgpack/value/ValueType;

    move-result-object v0

    invoke-virtual {v0}, Lorg/msgpack/value/ValueType;->isStringType()Z

    move-result v0

    return v0
.end method
