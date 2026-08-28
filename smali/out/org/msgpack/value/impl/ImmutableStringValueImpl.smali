.class public Lorg/msgpack/value/impl/ImmutableStringValueImpl;
.super Lorg/msgpack/value/impl/AbstractImmutableRawValue;
.source "ImmutableStringValueImpl.java"

# interfaces
.implements Lorg/msgpack/value/ImmutableStringValue;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 43
    invoke-direct {p0, p1}, Lorg/msgpack/value/impl/AbstractImmutableRawValue;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 38
    invoke-direct {p0, p1}, Lorg/msgpack/value/impl/AbstractImmutableRawValue;-><init>([B)V

    return-void
.end method


# virtual methods
.method public asStringValue()Lorg/msgpack/value/ImmutableStringValue;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic asStringValue()Lorg/msgpack/value/StringValue;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lorg/msgpack/value/impl/ImmutableStringValueImpl;->asStringValue()Lorg/msgpack/value/ImmutableStringValue;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    return p1

    .line 78
    :cond_4
    instance-of v0, p1, Lorg/msgpack/value/Value;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 81
    :cond_a
    check-cast p1, Lorg/msgpack/value/Value;

    .line 82
    invoke-interface {p1}, Lorg/msgpack/value/Value;->isStringValue()Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 86
    :cond_13
    instance-of v0, p1, Lorg/msgpack/value/impl/ImmutableStringValueImpl;

    if-eqz v0, :cond_22

    .line 87
    check-cast p1, Lorg/msgpack/value/impl/ImmutableStringValueImpl;

    .line 88
    iget-object v0, p0, Lorg/msgpack/value/impl/ImmutableStringValueImpl;->data:[B

    iget-object p1, p1, Lorg/msgpack/value/impl/ImmutableStringValueImpl;->data:[B

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1

    .line 91
    :cond_22
    iget-object v0, p0, Lorg/msgpack/value/impl/ImmutableStringValueImpl;->data:[B

    invoke-interface {p1}, Lorg/msgpack/value/Value;->asStringValue()Lorg/msgpack/value/StringValue;

    move-result-object p1

    invoke-interface {p1}, Lorg/msgpack/value/StringValue;->asByteArray()[B

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method public getValueType()Lorg/msgpack/value/ValueType;
    .registers 2

    .line 49
    sget-object v0, Lorg/msgpack/value/ValueType;->STRING:Lorg/msgpack/value/ValueType;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 98
    iget-object v0, p0, Lorg/msgpack/value/impl/ImmutableStringValueImpl;->data:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    return v0
.end method

.method public immutableValue()Lorg/msgpack/value/ImmutableStringValue;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic immutableValue()Lorg/msgpack/value/ImmutableValue;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lorg/msgpack/value/impl/ImmutableStringValueImpl;->immutableValue()Lorg/msgpack/value/ImmutableStringValue;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lorg/msgpack/core/MessagePacker;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lorg/msgpack/value/impl/ImmutableStringValueImpl;->data:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packRawStringHeader(I)Lorg/msgpack/core/MessagePacker;

    .line 69
    iget-object v0, p0, Lorg/msgpack/value/impl/ImmutableStringValueImpl;->data:[B

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->writePayload([B)Lorg/msgpack/core/MessagePacker;

    return-void
.end method
