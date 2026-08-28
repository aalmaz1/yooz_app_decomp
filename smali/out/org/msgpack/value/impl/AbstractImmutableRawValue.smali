.class public abstract Lorg/msgpack/value/impl/AbstractImmutableRawValue;
.super Lorg/msgpack/value/impl/AbstractImmutableValue;
.source "AbstractImmutableRawValue.java"

# interfaces
.implements Lorg/msgpack/value/ImmutableRawValue;


# static fields
.field private static final HEX_TABLE:[C


# instance fields
.field private volatile codingException:Ljava/nio/charset/CharacterCodingException;

.field protected final data:[B

.field private volatile decodedStringCache:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string v0, "0123456789ABCDEF"

    .line 175
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->HEX_TABLE:[C

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 42
    invoke-direct {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->decodedStringCache:Ljava/lang/String;

    .line 44
    sget-object v0, Lorg/msgpack/core/MessagePack;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    iput-object p1, p0, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->data:[B

    return-void
.end method

.method public constructor <init>([B)V
    .registers 2

    .line 37
    invoke-direct {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;-><init>()V

    .line 38
    iput-object p1, p0, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->data:[B

    return-void
.end method

.method static appendJsonString(Ljava/lang/StringBuilder;Ljava/lang/String;)V
    .registers 6

    const-string v0, "\""

    .line 125
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 126
    :goto_6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_69

    .line 127
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ge v2, v3, :cond_39

    packed-switch v2, :pswitch_data_6e

    .line 147
    :pswitch_17
    invoke-static {p0, v2}, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->escapeChar(Ljava/lang/StringBuilder;I)V

    goto :goto_66

    :pswitch_1b
    const-string v2, "\\r"

    .line 134
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    :pswitch_21
    const-string v2, "\\f"

    .line 140
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    :pswitch_27
    const-string v2, "\\n"

    .line 131
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    :pswitch_2d
    const-string v2, "\\t"

    .line 137
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    :pswitch_33
    const-string v2, "\\b"

    .line 143
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    :cond_39
    const/16 v3, 0x7f

    if-gt v2, v3, :cond_55

    const/16 v3, 0x22

    if-eq v2, v3, :cond_4f

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_49

    .line 160
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_66

    :cond_49
    const-string v2, "\\\\"

    .line 154
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    :cond_4f
    const-string v2, "\\\""

    .line 157
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    :cond_55
    const v3, 0xd800

    if-lt v2, v3, :cond_63

    const v3, 0xdfff

    if-gt v2, v3, :cond_63

    .line 166
    invoke-static {p0, v2}, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->escapeChar(Ljava/lang/StringBuilder;I)V

    goto :goto_66

    .line 169
    :cond_63
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_66
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 172
    :cond_69
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    nop

    :pswitch_data_6e
    .packed-switch 0x8
        :pswitch_33
        :pswitch_2d
        :pswitch_27
        :pswitch_17
        :pswitch_21
        :pswitch_1b
    .end packed-switch
.end method

.method private decodeString()V
    .registers 5

    .line 89
    iget-object v0, p0, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->data:[B

    monitor-enter v0

    .line 90
    :try_start_3
    iget-object v1, p0, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->decodedStringCache:Ljava/lang/String;

    if-eqz v1, :cond_9

    .line 91
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_56

    return-void

    .line 94
    :cond_9
    :try_start_9
    sget-object v1, Lorg/msgpack/core/MessagePack;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 95
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    sget-object v2, Ljava/nio/charset/CodingErrorAction;->REPORT:Ljava/nio/charset/CodingErrorAction;

    .line 96
    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v1

    .line 97
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->decodedStringCache:Ljava/lang/String;
    :try_end_29
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_9 .. :try_end_29} :catch_2a
    .catchall {:try_start_9 .. :try_end_29} :catchall_56

    goto :goto_4d

    :catch_2a
    move-exception v1

    .line 101
    :try_start_2b
    sget-object v2, Lorg/msgpack/core/MessagePack;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 102
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    sget-object v3, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 103
    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v2

    .line 104
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->asByteBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/CharBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->decodedStringCache:Ljava/lang/String;
    :try_end_4b
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_2b .. :try_end_4b} :catch_4f
    .catchall {:try_start_2b .. :try_end_4b} :catchall_56

    .line 109
    :try_start_4b
    iput-object v1, p0, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->codingException:Ljava/nio/charset/CharacterCodingException;

    .line 111
    :goto_4d
    monitor-exit v0

    return-void

    :catch_4f
    move-exception v1

    .line 107
    new-instance v2, Lorg/msgpack/core/MessageStringCodingException;

    invoke-direct {v2, v1}, Lorg/msgpack/core/MessageStringCodingException;-><init>(Ljava/nio/charset/CharacterCodingException;)V

    throw v2

    :catchall_56
    move-exception v1

    .line 111
    monitor-exit v0
    :try_end_58
    .catchall {:try_start_4b .. :try_end_58} :catchall_56

    throw v1
.end method

.method private static escapeChar(Ljava/lang/StringBuilder;I)V
    .registers 4

    const-string v0, "\\u"

    .line 179
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    sget-object v0, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->HEX_TABLE:[C

    shr-int/lit8 v1, p1, 0xc

    and-int/lit8 v1, v1, 0xf

    aget-char v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p1, 0x8

    and-int/lit8 v1, v1, 0xf

    .line 181
    aget-char v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0xf

    .line 182
    aget-char v1, v0, v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    and-int/lit8 p1, p1, 0xf

    .line 183
    aget-char p1, v0, p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public bridge synthetic asArrayValue()Lorg/msgpack/value/ImmutableArrayValue;
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asArrayValue()Lorg/msgpack/value/ImmutableArrayValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asBinaryValue()Lorg/msgpack/value/ImmutableBinaryValue;
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asBinaryValue()Lorg/msgpack/value/ImmutableBinaryValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asBooleanValue()Lorg/msgpack/value/ImmutableBooleanValue;
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asBooleanValue()Lorg/msgpack/value/ImmutableBooleanValue;

    move-result-object v0

    return-object v0
.end method

.method public asByteArray()[B
    .registers 3

    .line 56
    iget-object v0, p0, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->data:[B

    array-length v1, v0

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    return-object v0
.end method

.method public asByteBuffer()Ljava/nio/ByteBuffer;
    .registers 2

    .line 62
    iget-object v0, p0, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->data:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asExtensionValue()Lorg/msgpack/value/ImmutableExtensionValue;
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asExtensionValue()Lorg/msgpack/value/ImmutableExtensionValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asFloatValue()Lorg/msgpack/value/ImmutableFloatValue;
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asFloatValue()Lorg/msgpack/value/ImmutableFloatValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asIntegerValue()Lorg/msgpack/value/ImmutableIntegerValue;
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asIntegerValue()Lorg/msgpack/value/ImmutableIntegerValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asMapValue()Lorg/msgpack/value/ImmutableMapValue;
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asMapValue()Lorg/msgpack/value/ImmutableMapValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asNilValue()Lorg/msgpack/value/ImmutableNilValue;
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asNilValue()Lorg/msgpack/value/ImmutableNilValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic asNumberValue()Lorg/msgpack/value/ImmutableNumberValue;
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asNumberValue()Lorg/msgpack/value/ImmutableNumberValue;

    move-result-object v0

    return-object v0
.end method

.method public asRawValue()Lorg/msgpack/value/ImmutableRawValue;
    .registers 1

    return-object p0
.end method

.method public bridge synthetic asRawValue()Lorg/msgpack/value/RawValue;
    .registers 2

    .line 28
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->asRawValue()Lorg/msgpack/value/ImmutableRawValue;

    move-result-object v0

    return-object v0
.end method

.method public asString()Ljava/lang/String;
    .registers 3

    .line 68
    iget-object v0, p0, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->decodedStringCache:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 69
    invoke-direct {p0}, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->decodeString()V

    .line 71
    :cond_7
    iget-object v0, p0, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->codingException:Ljava/nio/charset/CharacterCodingException;

    if-nez v0, :cond_e

    .line 75
    iget-object v0, p0, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->decodedStringCache:Ljava/lang/String;

    return-object v0

    .line 72
    :cond_e
    new-instance v0, Lorg/msgpack/core/MessageStringCodingException;

    iget-object v1, p0, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->codingException:Ljava/nio/charset/CharacterCodingException;

    invoke-direct {v0, v1}, Lorg/msgpack/core/MessageStringCodingException;-><init>(Ljava/nio/charset/CharacterCodingException;)V

    throw v0
.end method

.method public bridge synthetic asStringValue()Lorg/msgpack/value/ImmutableStringValue;
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->asStringValue()Lorg/msgpack/value/ImmutableStringValue;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic isArrayValue()Z
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isArrayValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isBinaryValue()Z
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isBinaryValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isBooleanValue()Z
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isBooleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isExtensionValue()Z
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isExtensionValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isFloatValue()Z
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isFloatValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isIntegerValue()Z
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isIntegerValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isMapValue()Z
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isMapValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isNilValue()Z
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isNilValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isNumberValue()Z
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isNumberValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isRawValue()Z
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isRawValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isStringValue()Z
    .registers 2

    .line 28
    invoke-super {p0}, Lorg/msgpack/value/impl/AbstractImmutableValue;->isStringValue()Z

    move-result v0

    return v0
.end method

.method public toJson()Ljava/lang/String;
    .registers 3

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    invoke-virtual {p0}, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->appendJsonString(Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->decodedStringCache:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 118
    invoke-direct {p0}, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->decodeString()V

    .line 120
    :cond_7
    iget-object v0, p0, Lorg/msgpack/value/impl/AbstractImmutableRawValue;->decodedStringCache:Ljava/lang/String;

    return-object v0
.end method
