.class final Lcom/google/crypto/tink/jwt/JwtFormat;
.super Ljava/lang/Object;
.source "JwtFormat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/jwt/JwtFormat$Parts;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createHeader(Ljava/lang/String;Ljava/util/Optional;Ljava/util/Optional;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "typeHeader",
            "kid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 105
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtFormat;->validateAlgorithm(Ljava/lang/String;)V

    .line 106
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 107
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_19

    .line 108
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string v1, "kid"

    invoke-virtual {v0, v1, p2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_19
    const-string p2, "alg"

    .line 110
    invoke-virtual {v0, p2, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_2f

    .line 112
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p1, "typ"

    invoke-virtual {v0, p1, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    :cond_2f
    invoke-virtual {v0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Lcom/google/crypto/tink/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeEncode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static createSignedCompact(Ljava/lang/String;[B)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "unsignedCompact",
            "signature"
        }
    .end annotation

    .line 294
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {p1}, Lcom/google/crypto/tink/jwt/JwtFormat;->encodeSignature([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static createUnsignedCompact(Ljava/lang/String;Ljava/util/Optional;Lcom/google/crypto/tink/jwt/RawJwt;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "algorithm",
            "kid",
            "rawJwt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/crypto/tink/jwt/RawJwt;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Lcom/google/crypto/tink/jwt/JwtInvalidException;
        }
    .end annotation

    .line 287
    invoke-virtual {p2}, Lcom/google/crypto/tink/jwt/RawJwt;->getJsonPayload()Ljava/lang/String;

    move-result-object v0

    .line 289
    invoke-virtual {p2}, Lcom/google/crypto/tink/jwt/RawJwt;->hasTypeHeader()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-virtual {p2}, Lcom/google/crypto/tink/jwt/RawJwt;->getTypeHeader()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p2

    goto :goto_17

    :cond_13
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p2

    .line 290
    :goto_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0, p2, p1}, Lcom/google/crypto/tink/jwt/JwtFormat;->createHeader(Ljava/lang/String;Ljava/util/Optional;Ljava/util/Optional;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {v0}, Lcom/google/crypto/tink/jwt/JwtFormat;->encodePayload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static decodeHeader(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "headerStr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/jwt/JwtInvalidException;
        }
    .end annotation

    .line 217
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtFormat;->strictUrlSafeDecode(Ljava/lang/String;)[B

    move-result-object p0

    .line 218
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtFormat;->validateUtf8([B)V

    .line 219
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/crypto/tink/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method static decodePayload(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "payloadStr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/jwt/JwtInvalidException;
        }
    .end annotation

    .line 227
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtFormat;->strictUrlSafeDecode(Ljava/lang/String;)[B

    move-result-object p0

    .line 228
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtFormat;->validateUtf8([B)V

    .line 229
    new-instance v0, Ljava/lang/String;

    sget-object v1, Lcom/google/crypto/tink/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0
.end method

.method static decodeSignature(Ljava/lang/String;)[B
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signatureStr"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/jwt/JwtInvalidException;
        }
    .end annotation

    .line 237
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtFormat;->strictUrlSafeDecode(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method static encodePayload(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonPayload"
        }
    .end annotation

    .line 223
    sget-object v0, Lcom/google/crypto/tink/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeEncode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static encodeSignature([B)Ljava/lang/String;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    .line 233
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeEncode([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getKeyId(Ljava/lang/String;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 252
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeDecode(Ljava/lang/String;)[B

    move-result-object p0

    .line 253
    array-length v0, p0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_d

    .line 254
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 256
    :cond_d
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static getKid(ILcom/google/crypto/tink/proto/OutputPrefixType;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyId",
            "prefix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/crypto/tink/proto/OutputPrefixType;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/jwt/JwtInvalidException;
        }
    .end annotation

    .line 241
    sget-object v0, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    if-ne p1, v0, :cond_9

    .line 242
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 244
    :cond_9
    sget-object v0, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    if-ne p1, v0, :cond_23

    const/4 p1, 0x4

    .line 245
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p0

    .line 246
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeEncode([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 248
    :cond_23
    new-instance p0, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    const-string p1, "unsupported output prefix type"

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/jwt/JwtInvalidException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static getStringHeader(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "header",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/jwt/JwtInvalidException;
        }
    .end annotation

    .line 207
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "header "

    if-eqz v0, :cond_42

    .line 210
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 213
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 211
    :cond_29
    new-instance p0, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not a string"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/jwt/JwtInvalidException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 208
    :cond_42
    new-instance p0, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " does not exist"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/jwt/JwtInvalidException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static getTypeHeader(Lcom/google/gson/JsonObject;)Ljava/util/Optional;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "header"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            ")",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/jwt/JwtInvalidException;
        }
    .end annotation

    const-string v0, "typ"

    .line 200
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 201
    invoke-static {p0, v0}, Lcom/google/crypto/tink/jwt/JwtFormat;->getStringHeader(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    return-object p0

    .line 203
    :cond_11
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static isValidUrlsafeBase64Char(C)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "c"
        }
    .end annotation

    const/16 v0, 0x61

    if-lt p0, v0, :cond_8

    const/16 v0, 0x7a

    if-le p0, v0, :cond_23

    :cond_8
    const/16 v0, 0x41

    if-lt p0, v0, :cond_10

    const/16 v0, 0x5a

    if-le p0, v0, :cond_23

    :cond_10
    const/16 v0, 0x30

    if-lt p0, v0, :cond_18

    const/16 v0, 0x39

    if-le p0, v0, :cond_23

    :cond_18
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_23

    const/16 v0, 0x5f

    if-ne p0, v0, :cond_21

    goto :goto_23

    :cond_21
    const/4 p0, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 p0, 0x1

    :goto_24
    return p0
.end method

.method static splitSignedCompact(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/JwtFormat$Parts;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signedCompact"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/jwt/JwtInvalidException;
        }
    .end annotation

    .line 260
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtFormat;->validateASCII(Ljava/lang/String;)V

    const/16 v0, 0x2e

    .line 261
    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const-string v2, "only tokens in JWS compact serialization format are supported"

    if-ltz v1, :cond_4c

    const/4 v3, 0x0

    .line 266
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v1, v1, 0x1

    .line 267
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 268
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtFormat;->decodeSignature(Ljava/lang/String;)[B

    move-result-object p0

    .line 269
    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-ltz v1, :cond_46

    .line 274
    invoke-virtual {v4, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    .line 275
    invoke-virtual {v4, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 276
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gtz v0, :cond_40

    .line 280
    invoke-static {v3}, Lcom/google/crypto/tink/jwt/JwtFormat;->decodeHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    invoke-static {v1}, Lcom/google/crypto/tink/jwt/JwtFormat;->decodePayload(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 282
    new-instance v2, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;

    invoke-direct {v2, v4, p0, v0, v1}, Lcom/google/crypto/tink/jwt/JwtFormat$Parts;-><init>(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 277
    :cond_40
    new-instance p0, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    invoke-direct {p0, v2}, Lcom/google/crypto/tink/jwt/JwtInvalidException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 271
    :cond_46
    new-instance p0, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    invoke-direct {p0, v2}, Lcom/google/crypto/tink/jwt/JwtInvalidException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 263
    :cond_4c
    new-instance p0, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    invoke-direct {p0, v2}, Lcom/google/crypto/tink/jwt/JwtInvalidException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static strictUrlSafeDecode(Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encodedData"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/jwt/JwtInvalidException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 70
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 71
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 72
    invoke-static {v1}, Lcom/google/crypto/tink/jwt/JwtFormat;->isValidUrlsafeBase64Char(C)Z

    move-result v1

    if-eqz v1, :cond_14

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 73
    :cond_14
    new-instance p0, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    const-string v0, "invalid encoding"

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/jwt/JwtInvalidException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 77
    :cond_1c
    :try_start_1c
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeDecode(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_20
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_20} :catch_21

    return-object p0

    :catch_21
    move-exception p0

    .line 79
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid encoding: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/jwt/JwtInvalidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static validateASCII(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/jwt/JwtInvalidException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 298
    :goto_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1a

    .line 299
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    and-int/lit16 v1, v1, 0x80

    if-gtz v1, :cond_12

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 301
    :cond_12
    new-instance p0, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    const-string v0, "Non ascii character"

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/jwt/JwtInvalidException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1a
    return-void
.end method

.method private static validateAlgorithm(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_b6

    goto/16 :goto_9c

    :sswitch_d
    const-string v0, "RS512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_9c

    :cond_17
    const/16 v1, 0xb

    goto/16 :goto_9c

    :sswitch_1b
    const-string v0, "RS384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_9c

    :cond_25
    const/16 v1, 0xa

    goto/16 :goto_9c

    :sswitch_29
    const-string v0, "RS256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_9c

    :cond_33
    const/16 v1, 0x9

    goto/16 :goto_9c

    :sswitch_37
    const-string v0, "PS512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_9c

    :cond_41
    const/16 v1, 0x8

    goto/16 :goto_9c

    :sswitch_45
    const-string v0, "PS384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4e

    goto :goto_9c

    :cond_4e
    const/4 v1, 0x7

    goto :goto_9c

    :sswitch_50
    const-string v0, "PS256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_9c

    :cond_59
    const/4 v1, 0x6

    goto :goto_9c

    :sswitch_5b
    const-string v0, "HS512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_64

    goto :goto_9c

    :cond_64
    const/4 v1, 0x5

    goto :goto_9c

    :sswitch_66
    const-string v0, "HS384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto :goto_9c

    :cond_6f
    const/4 v1, 0x4

    goto :goto_9c

    :sswitch_71
    const-string v0, "HS256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7a

    goto :goto_9c

    :cond_7a
    const/4 v1, 0x3

    goto :goto_9c

    :sswitch_7c
    const-string v0, "ES512"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_85

    goto :goto_9c

    :cond_85
    const/4 v1, 0x2

    goto :goto_9c

    :sswitch_87
    const-string v0, "ES384"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_90

    goto :goto_9c

    :cond_90
    const/4 v1, 0x1

    goto :goto_9c

    :sswitch_92
    const-string v0, "ES256"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9b

    goto :goto_9c

    :cond_9b
    const/4 v1, 0x0

    :goto_9c
    packed-switch v1, :pswitch_data_e8

    .line 99
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid algorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b4
    return-void

    nop

    :sswitch_data_b6
    .sparse-switch
        0x3f2d2e5 -> :sswitch_92
        0x3f2d701 -> :sswitch_87
        0x3f2dda8 -> :sswitch_7c
        0x41d1968 -> :sswitch_71
        0x41d1d84 -> :sswitch_66
        0x41d242b -> :sswitch_5b
        0x48dd570 -> :sswitch_50
        0x48dd98c -> :sswitch_45
        0x48de033 -> :sswitch_37
        0x4aa0472 -> :sswitch_29
        0x4aa088e -> :sswitch_1b
        0x4aa0f35 -> :sswitch_d
    .end sparse-switch

    :pswitch_data_e8
    .packed-switch 0x0
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
        :pswitch_b4
    .end packed-switch
.end method

.method static validateHeader(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/util/Optional;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parsedHeader",
            "algorithmFromKey",
            "kidFromKey",
            "allowKidAbsent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/JsonObject;",
            "Ljava/lang/String;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "alg"

    .line 131
    invoke-static {p0, v0}, Lcom/google/crypto/tink/jwt/JwtFormat;->getStringHeader(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 132
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_52

    const-string p1, "crit"

    .line 137
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4a

    const-string p1, "kid"

    .line 140
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1f

    if-eqz p3, :cond_1f

    return-void

    :cond_1f
    if-nez v0, :cond_2c

    if-eqz p3, :cond_24

    goto :goto_2c

    .line 145
    :cond_24
    new-instance p0, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    const-string p1, "missing kid in header"

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/jwt/JwtInvalidException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 148
    :cond_2c
    :goto_2c
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p3

    if-nez p3, :cond_33

    return-void

    .line 153
    :cond_33
    invoke-static {p0, p1}, Lcom/google/crypto/tink/jwt/JwtFormat;->getStringHeader(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 154
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_42

    return-void

    .line 155
    :cond_42
    new-instance p0, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    const-string p1, "invalid kid in header"

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/jwt/JwtInvalidException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 138
    :cond_4a
    new-instance p0, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    const-string p1, "all tokens with crit headers are rejected"

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/jwt/JwtInvalidException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 133
    :cond_52
    new-instance p0, Ljava/security/InvalidAlgorithmParameterException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p1, p2, p3

    const/4 p1, 0x1

    aput-object v0, p2, p1

    const-string p1, "invalid algorithm; expected %s, got %s"

    .line 134
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateHeader(Ljava/lang/String;Ljava/util/Optional;Ljava/util/Optional;Lcom/google/gson/JsonObject;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "expectedAlgorithm",
            "tinkKid",
            "customKid",
            "parsedHeader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/gson/JsonObject;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;,
            Lcom/google/crypto/tink/jwt/JwtInvalidException;
        }
    .end annotation

    .line 171
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtFormat;->validateAlgorithm(Ljava/lang/String;)V

    const-string v0, "alg"

    .line 172
    invoke-static {p3, v0}, Lcom/google/crypto/tink/jwt/JwtFormat;->getStringHeader(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 173
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_66

    const-string p0, "crit"

    .line 178
    invoke-virtual {p3, p0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_5e

    .line 181
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_2c

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-nez p0, :cond_24

    goto :goto_2c

    .line 182
    :cond_24
    new-instance p0, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    const-string p1, "custom_kid can only be set for RAW keys."

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/jwt/JwtInvalidException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2c
    :goto_2c
    const-string p0, "kid"

    .line 184
    invoke-virtual {p3, p0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result p0

    .line 185
    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4c

    if-eqz p0, :cond_44

    .line 190
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1, p3}, Lcom/google/crypto/tink/jwt/JwtFormat;->validateKidInHeader(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    goto :goto_4c

    .line 188
    :cond_44
    new-instance p0, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    const-string p1, "missing kid in header"

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/jwt/JwtInvalidException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 192
    :cond_4c
    :goto_4c
    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_5d

    if-eqz p0, :cond_5d

    .line 194
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-static {p0, p3}, Lcom/google/crypto/tink/jwt/JwtFormat;->validateKidInHeader(Ljava/lang/String;Lcom/google/gson/JsonObject;)V

    :cond_5d
    return-void

    .line 179
    :cond_5e
    new-instance p0, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    const-string p1, "all tokens with crit headers are rejected"

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/jwt/JwtInvalidException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 174
    :cond_66
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    const/4 p3, 0x0

    aput-object p0, p2, p3

    const/4 p0, 0x1

    aput-object v0, p2, p0

    const-string p0, "invalid algorithm; expected %s, got %s"

    .line 175
    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static validateKidInHeader(Ljava/lang/String;Lcom/google/gson/JsonObject;)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "expectedKid",
            "parsedHeader"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/jwt/JwtInvalidException;
        }
    .end annotation

    const-string v0, "kid"

    .line 119
    invoke-static {p1, v0}, Lcom/google/crypto/tink/jwt/JwtFormat;->getStringHeader(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 120
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    return-void

    .line 121
    :cond_d
    new-instance p0, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    const-string p1, "invalid kid in header"

    invoke-direct {p0, p1}, Lcom/google/crypto/tink/jwt/JwtInvalidException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static validateUtf8([B)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/crypto/tink/jwt/JwtInvalidException;
        }
    .end annotation

    .line 61
    sget-object v0, Lcom/google/crypto/tink/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 63
    :try_start_6
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;
    :try_end_d
    .catch Ljava/nio/charset/CharacterCodingException; {:try_start_6 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p0

    .line 65
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtInvalidException;

    invoke-virtual {p0}, Ljava/nio/charset/CharacterCodingException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/jwt/JwtInvalidException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
