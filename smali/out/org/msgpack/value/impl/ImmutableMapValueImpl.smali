.class public Lorg/msgpack/value/impl/ImmutableMapValueImpl;
.super Lorg/msgpack/value/impl/AbstractImmutableValue;
.source "ImmutableMapValueImpl.java"

# interfaces
.implements Lorg/msgpack/value/ImmutableMapValue;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/msgpack/value/impl/ImmutableMapValueImpl$EntryIterator;,
        Lorg/msgpack/value/impl/ImmutableMapValueImpl$ValueCollection;,
        Lorg/msgpack/value/impl/ImmutableMapValueImpl$KeySet;,
        Lorg/msgpack/value/impl/ImmutableMapValueImpl$EntrySetIterator;,
        Lorg/msgpack/value/impl/ImmutableMapValueImpl$EntrySet;,
        Lorg/msgpack/value/impl/ImmutableMapValueImpl$ImmutableMapValueMap;
    }
.end annotation


# static fields
.field private static final EMPTY:Lorg/msgpack/value/impl/ImmutableMapValueImpl;


# instance fields
.field private final kvs:[Lorg/msgpack/value/Value;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 44
    new-instance v0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/msgpack/value/Value;

    invoke-direct {v0, v1}, Lorg/msgpack/value/impl/ImmutableMapValueImpl;-><init>([Lorg/msgpack/value/Value;)V

    sput-object v0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->EMPTY:Lorg/msgpack/value/impl/ImmutableMapValueImpl;

    return-void
.end method

.method public constructor <init>([Lorg/msgpack/value/Value;)V
    .registers 2

    .line 54
    invoke-direct {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;-><init>()V

    .line 55
    iput-object p1, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    return-void
.end method

.method private static appendJsonKey(Ljava/lang/StringBuilder;Lorg/msgpack/value/Value;)V
    .registers 3

    .line 173
    invoke-interface {p1}, Lorg/msgpack/value/Value;->isRawValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 174
    invoke-interface {p1}, Lorg/msgpack/value/Value;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 177
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/msgpack/value/impl/ImmutableStringValueImpl;->appendJsonString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_15
    return-void
.end method

.method private static appendString(Ljava/lang/StringBuilder;Lorg/msgpack/value/Value;)V
    .registers 3

    .line 204
    invoke-interface {p1}, Lorg/msgpack/value/Value;->isRawValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 205
    invoke-interface {p1}, Lorg/msgpack/value/Value;->toJson()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_15

    .line 208
    :cond_e
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_15
    return-void
.end method

.method public static empty()Lorg/msgpack/value/ImmutableMapValue;
    .registers 1

    .line 48
    sget-object v0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->EMPTY:Lorg/msgpack/value/impl/ImmutableMapValueImpl;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic asArrayValue()Lorg/msgpack/value/ImmutableArrayValue;
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asArrayValue()Lorg/msgpack/value/ImmutableArrayValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asBinaryValue()Lorg/msgpack/value/ImmutableBinaryValue;
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asBinaryValue()Lorg/msgpack/value/ImmutableBinaryValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asBooleanValue()Lorg/msgpack/value/ImmutableBooleanValue;
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asBooleanValue()Lorg/msgpack/value/ImmutableBooleanValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asExtensionValue()Lorg/msgpack/value/ImmutableExtensionValue;
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asExtensionValue()Lorg/msgpack/value/ImmutableExtensionValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asFloatValue()Lorg/msgpack/value/ImmutableFloatValue;
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asFloatValue()Lorg/msgpack/value/ImmutableFloatValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asIntegerValue()Lorg/msgpack/value/ImmutableIntegerValue;
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asIntegerValue()Lorg/msgpack/value/ImmutableIntegerValue;

    move-result-object v0

    return-object v0
.end method

.method public asMapValue()Lorg/msgpack/value/ImmutableMapValue;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic asMapValue()Lorg/msgpack/value/MapValue;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->asMapValue()Lorg/msgpack/value/ImmutableMapValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asNilValue()Lorg/msgpack/value/ImmutableNilValue;
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asNilValue()Lorg/msgpack/value/ImmutableNilValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asNumberValue()Lorg/msgpack/value/ImmutableNumberValue;
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asNumberValue()Lorg/msgpack/value/ImmutableNumberValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asRawValue()Lorg/msgpack/value/ImmutableRawValue;
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asRawValue()Lorg/msgpack/value/ImmutableRawValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asStringValue()Lorg/msgpack/value/ImmutableStringValue;
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asStringValue()Lorg/msgpack/value/ImmutableStringValue;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Lorg/msgpack/value/Value;",
            "Lorg/msgpack/value/Value;",
            ">;>;"
        }
    .end annotation

    .line 97
    new-instance v0, Lorg/msgpack/value/impl/ImmutableMapValueImpl$EntrySet;

    iget-object v1, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    invoke-direct {v0, v1}, Lorg/msgpack/value/impl/ImmutableMapValueImpl$EntrySet;-><init>([Lorg/msgpack/value/Value;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p1, p0, :cond_4

    const/4 p1, 0x1

    return p1

    .line 128
    :cond_4
    instance-of v0, p1, Lorg/msgpack/value/Value;

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 131
    :cond_a
    check-cast p1, Lorg/msgpack/value/Value;

    .line 133
    invoke-interface {p1}, Lorg/msgpack/value/Value;->isMapValue()Z

    move-result v0

    if-nez v0, :cond_13

    return v1

    .line 136
    :cond_13
    invoke-interface {p1}, Lorg/msgpack/value/Value;->asMapValue()Lorg/msgpack/value/MapValue;

    move-result-object p1

    .line 137
    invoke-virtual {p0}, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->map()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1}, Lorg/msgpack/value/MapValue;->map()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getKeyValueArray()[Lorg/msgpack/value/Value;
    .registers 3

    .line 79
    iget-object v0, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/msgpack/value/Value;

    return-object v0
.end method

.method public getValueType()Lorg/msgpack/value/ValueType;
    .registers 2

    .line 61
    sget-object v0, Lorg/msgpack/value/ValueType;->MAP:Lorg/msgpack/value/ValueType;

    return-object v0
.end method

.method public hashCode()I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 144
    :goto_2
    iget-object v2, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    array-length v3, v2

    if-ge v0, v3, :cond_1c

    .line 145
    aget-object v2, v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    iget-object v3, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    add-int/lit8 v4, v0, 0x1

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    xor-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_1c
    return v1
.end method

.method public immutableValue()Lorg/msgpack/value/ImmutableMapValue;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic immutableValue()Lorg/msgpack/value/ImmutableValue;
    .registers 2

    .line 40
    invoke-virtual {p0}, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->immutableValue()Lorg/msgpack/value/ImmutableMapValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isArrayValue()Z
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isArrayValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isBinaryValue()Z
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isBinaryValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isBooleanValue()Z
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isBooleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isExtensionValue()Z
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isExtensionValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFloatValue()Z
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isFloatValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isIntegerValue()Z
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isIntegerValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isMapValue()Z
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isMapValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isNilValue()Z
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isNilValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isNumberValue()Z
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isNumberValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRawValue()Z
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isRawValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isStringValue()Z
    .registers 2

    .line 40
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isStringValue()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/msgpack/value/Value;",
            ">;"
        }
    .end annotation

    .line 91
    new-instance v0, Lorg/msgpack/value/impl/ImmutableMapValueImpl$KeySet;

    iget-object v1, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    invoke-direct {v0, v1}, Lorg/msgpack/value/impl/ImmutableMapValueImpl$KeySet;-><init>([Lorg/msgpack/value/Value;)V

    return-object v0
.end method

.method public map()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/msgpack/value/Value;",
            "Lorg/msgpack/value/Value;",
            ">;"
        }
    .end annotation

    .line 109
    new-instance v0, Lorg/msgpack/value/impl/ImmutableMapValueImpl$ImmutableMapValueMap;

    iget-object v1, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    invoke-direct {v0, v1}, Lorg/msgpack/value/impl/ImmutableMapValueImpl$ImmutableMapValueMap;-><init>([Lorg/msgpack/value/Value;)V

    return-object v0
.end method

.method public size()I
    .registers 2

    .line 85
    iget-object v0, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .registers 6

    .line 153
    iget-object v0, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    array-length v0, v0

    if-nez v0, :cond_8

    const-string v0, "{}"

    return-object v0

    .line 156
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 157
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-object v1, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->appendJsonKey(Ljava/lang/StringBuilder;Lorg/msgpack/value/Value;)V

    const-string v1, ":"

    .line 159
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    iget-object v2, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-interface {v2}, Lorg/msgpack/value/Value;->toJson()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x2

    .line 161
    :goto_2c
    iget-object v3, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    array-length v3, v3

    if-ge v2, v3, :cond_50

    const-string v3, ","

    .line 162
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    iget-object v3, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    aget-object v3, v3, v2

    invoke-static {v0, v3}, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->appendJsonKey(Ljava/lang/StringBuilder;Lorg/msgpack/value/Value;)V

    .line 164
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    iget-object v3, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-interface {v3}, Lorg/msgpack/value/Value;->toJson()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x2

    goto :goto_2c

    :cond_50
    const-string v1, "}"

    .line 167
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 184
    iget-object v0, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    array-length v0, v0

    if-nez v0, :cond_8

    const-string v0, "{}"

    return-object v0

    .line 187
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{"

    .line 188
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    iget-object v1, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {v0, v1}, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->appendString(Ljava/lang/StringBuilder;Lorg/msgpack/value/Value;)V

    const-string v1, ":"

    .line 190
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    iget-object v2, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v0, v2}, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->appendString(Ljava/lang/StringBuilder;Lorg/msgpack/value/Value;)V

    const/4 v2, 0x2

    .line 192
    :goto_28
    iget-object v3, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    array-length v3, v3

    if-ge v2, v3, :cond_48

    const-string v3, ","

    .line 193
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v3, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    aget-object v3, v3, v2

    invoke-static {v0, v3}, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->appendString(Ljava/lang/StringBuilder;Lorg/msgpack/value/Value;)V

    .line 195
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    iget-object v3, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    add-int/lit8 v4, v2, 0x1

    aget-object v3, v3, v4

    invoke-static {v0, v3}, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->appendString(Ljava/lang/StringBuilder;Lorg/msgpack/value/Value;)V

    add-int/lit8 v2, v2, 0x2

    goto :goto_28

    :cond_48
    const-string v1, "}"

    .line 198
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public values()Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/msgpack/value/Value;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance v0, Lorg/msgpack/value/impl/ImmutableMapValueImpl$ValueCollection;

    iget-object v1, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    invoke-direct {v0, v1}, Lorg/msgpack/value/impl/ImmutableMapValueImpl$ValueCollection;-><init>([Lorg/msgpack/value/Value;)V

    return-object v0
.end method

.method public writeTo(Lorg/msgpack/core/MessagePacker;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    iget-object v0, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    array-length v0, v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packMapHeader(I)Lorg/msgpack/core/MessagePacker;

    const/4 v0, 0x0

    .line 117
    :goto_9
    iget-object v1, p0, Lorg/msgpack/value/impl/ImmutableMapValueImpl;->kvs:[Lorg/msgpack/value/Value;

    array-length v2, v1

    if-ge v0, v2, :cond_16

    .line 118
    aget-object v1, v1, v0

    invoke-interface {v1, p1}, Lorg/msgpack/value/Value;->writeTo(Lorg/msgpack/core/MessagePacker;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_16
    return-void
.end method
