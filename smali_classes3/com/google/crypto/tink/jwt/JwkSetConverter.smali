.class public final Lcom/google/crypto/tink/jwt/JwkSetConverter;
.super Ljava/lang/Object;
.source "JwkSetConverter.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 458
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static base64urlUInt(Ljava/math/BigInteger;)[B
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "n"
        }
    .end annotation

    .line 168
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [B

    const/4 v0, 0x0

    aput-byte v0, p0, v0

    return-object p0

    .line 171
    :cond_0
    invoke-static {p0}, Lcom/google/crypto/tink/internal/BigIntegerEncoding;->toUnsignedBigEndianBytes(Ljava/math/BigInteger;)[B

    move-result-object p0

    return-object p0
.end method

.method private static convertJwtEcdsaKey(Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;)Lcom/google/gson/JsonObject;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 129
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    move-result-object v0

    .line 130
    sget-object v1, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->ES256:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ES256"

    const-string v1, "P-256"

    const/16 v2, 0x20

    goto :goto_0

    .line 134
    :cond_0
    sget-object v1, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->ES384:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "ES384"

    const-string v1, "P-384"

    const/16 v2, 0x30

    goto :goto_0

    .line 138
    :cond_1
    sget-object v1, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->ES512:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "ES512"

    const-string v1, "P-521"

    const/16 v2, 0x42

    .line 145
    :goto_0
    new-instance v3, Lcom/google/gson/JsonObject;

    invoke-direct {v3}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v4, "kty"

    const-string v5, "EC"

    .line 146
    invoke-virtual {v3, v4, v5}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "crv"

    .line 147
    invoke-virtual {v3, v4, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->getPublicPoint()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECPoint;->getAffineX()Ljava/math/BigInteger;

    move-result-object v1

    .line 149
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->getPublicPoint()Ljava/security/spec/ECPoint;

    move-result-object v4

    invoke-virtual {v4}, Ljava/security/spec/ECPoint;->getAffineY()Ljava/math/BigInteger;

    move-result-object v4

    .line 151
    invoke-static {v1, v2}, Lcom/google/crypto/tink/internal/BigIntegerEncoding;->toBigEndianBytesOfFixedLength(Ljava/math/BigInteger;I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeEncode([B)Ljava/lang/String;

    move-result-object v1

    const-string v5, "x"

    .line 150
    invoke-virtual {v3, v5, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-static {v4, v2}, Lcom/google/crypto/tink/internal/BigIntegerEncoding;->toBigEndianBytesOfFixedLength(Ljava/math/BigInteger;I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeEncode([B)Ljava/lang/String;

    move-result-object v1

    const-string v2, "y"

    .line 152
    invoke-virtual {v3, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "use"

    const-string v2, "sig"

    .line 154
    invoke-virtual {v3, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "alg"

    .line 155
    invoke-virtual {v3, v1, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    const-string v1, "verify"

    .line 157
    invoke-virtual {v0, v1}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    const-string v1, "key_ops"

    .line 158
    invoke-virtual {v3, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 159
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->getKid()Ljava/util/Optional;

    move-result-object p0

    .line 160
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "kid"

    invoke-virtual {v3, v0, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v3

    .line 143
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown algorithm"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static convertJwtRsaSsaPkcs1Key(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;)Lcom/google/gson/JsonObject;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 177
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->getStandardName()Ljava/lang/String;

    move-result-object v0

    .line 178
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "kty"

    const-string v3, "RSA"

    .line 179
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->base64urlUInt(Ljava/math/BigInteger;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeEncode([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "n"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->base64urlUInt(Ljava/math/BigInteger;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeEncode([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "e"

    .line 181
    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "use"

    const-string v3, "sig"

    .line 183
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "alg"

    .line 184
    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    const-string v2, "verify"

    .line 186
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    const-string v2, "key_ops"

    .line 187
    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 188
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getKid()Ljava/util/Optional;

    move-result-object p0

    .line 189
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "kid"

    invoke-virtual {v1, v0, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method private static convertJwtRsaSsaPssKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;)Lcom/google/gson/JsonObject;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 198
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->getStandardName()Ljava/lang/String;

    move-result-object v0

    .line 199
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v2, "kty"

    const-string v3, "RSA"

    .line 200
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->base64urlUInt(Ljava/math/BigInteger;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeEncode([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "n"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->base64urlUInt(Ljava/math/BigInteger;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeEncode([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "e"

    .line 202
    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "use"

    const-string v3, "sig"

    .line 204
    invoke-virtual {v1, v2, v3}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "alg"

    .line 205
    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    const-string v2, "verify"

    .line 207
    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Ljava/lang/String;)V

    const-string v2, "key_ops"

    .line 208
    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 209
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->getKid()Ljava/util/Optional;

    move-result-object p0

    .line 210
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string v0, "kid"

    invoke-virtual {v1, v0, p0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-object v1
.end method

.method private static convertToEcdsaKey(Lcom/google/gson/JsonObject;)Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "alg"

    .line 384
    invoke-static {p0, v0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "ES512"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "ES384"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string v2, "ES256"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    const-string v1, "crv"

    packed-switch v4, :pswitch_data_0

    .line 398
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown Ecdsa Algorithm: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-static {p0, v0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    const-string v0, "P-521"

    .line 394
    invoke-static {p0, v1, v0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->expectStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->ES512:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    goto :goto_1

    :pswitch_1
    const-string v0, "P-384"

    .line 390
    invoke-static {p0, v1, v0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->expectStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->ES384:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    goto :goto_1

    :pswitch_2
    const-string v0, "P-256"

    .line 386
    invoke-static {p0, v1, v0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->expectStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;->ES256:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;

    :goto_1
    const-string v1, "d"

    .line 401
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "kty"

    const-string v2, "EC"

    .line 404
    invoke-static {p0, v1, v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->expectStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->validateUseIsSig(Lcom/google/gson/JsonObject;)V

    .line 406
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->validateKeyOpsIsVerify(Lcom/google/gson/JsonObject;)V

    .line 408
    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "x"

    invoke-static {p0, v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeDecode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 409
    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "y"

    invoke-static {p0, v4}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeDecode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 410
    new-instance v3, Ljava/security/spec/ECPoint;

    invoke-direct {v3, v1, v2}, Ljava/security/spec/ECPoint;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    const-string v1, "kid"

    .line 412
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 413
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->builder()Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;

    move-result-object v2

    .line 415
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->builder()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v4

    sget-object v5, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;->CUSTOM:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    .line 416
    invoke-virtual {v4, v5}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v4

    .line 417
    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v0

    .line 418
    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v0

    .line 414
    invoke-virtual {v2, v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->setParameters(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;)Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;

    move-result-object v0

    .line 419
    invoke-virtual {v0, v3}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->setPublicPoint(Ljava/security/spec/ECPoint;)Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;

    move-result-object v0

    .line 420
    invoke-static {p0, v1}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->setCustomKid(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;

    move-result-object p0

    .line 421
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->build()Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    move-result-object p0

    return-object p0

    .line 423
    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;->builder()Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;

    move-result-object p0

    .line 425
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;->builder()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;

    .line 426
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v1

    .line 427
    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;

    move-result-object v0

    .line 424
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->setParameters(Lcom/google/crypto/tink/jwt/JwtEcdsaParameters;)Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;

    move-result-object p0

    .line 429
    invoke-virtual {p0, v3}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->setPublicPoint(Ljava/security/spec/ECPoint;)Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;

    move-result-object p0

    .line 430
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey$Builder;->build()Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    move-result-object p0

    return-object p0

    .line 402
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "importing ECDSA private keys is not implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        0x3f2d2e5 -> :sswitch_2
        0x3f2d701 -> :sswitch_1
        0x3f2dda8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertToRsaSsaPkcs1Key(Lcom/google/gson/JsonObject;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "alg"

    .line 264
    invoke-static {p0, v0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "RS512"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "RS384"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string v2, "RS256"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 275
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown Rsa Algorithm: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    invoke-static {p0, v0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 272
    :pswitch_0
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS512:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    goto :goto_1

    .line 269
    :pswitch_1
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS384:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    goto :goto_1

    .line 266
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS256:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    :goto_1
    const-string v1, "p"

    .line 278
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "q"

    .line 279
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "dp"

    .line 280
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "dq"

    .line 281
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "d"

    .line 282
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "qi"

    .line 283
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "kty"

    const-string v2, "RSA"

    .line 286
    invoke-static {p0, v1, v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->expectStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 287
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->validateUseIsSig(Lcom/google/gson/JsonObject;)V

    .line 288
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->validateKeyOpsIsVerify(Lcom/google/gson/JsonObject;)V

    .line 290
    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "e"

    .line 291
    invoke-static {p0, v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeDecode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 292
    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "n"

    invoke-static {p0, v4}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeDecode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string v3, "kid"

    .line 294
    invoke-virtual {p0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 295
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v4

    .line 297
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v5

    .line 298
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v5

    .line 299
    invoke-virtual {v5, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    .line 300
    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->CUSTOM:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    .line 301
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v0

    .line 296
    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->setParameters(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v0

    .line 303
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->setModulus(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v0

    .line 304
    invoke-static {p0, v3}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->setCustomKid(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object p0

    .line 305
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    move-result-object p0

    return-object p0

    .line 307
    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object p0

    .line 309
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v3

    .line 310
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v3

    .line 311
    invoke-virtual {v3, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    .line 312
    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    .line 313
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v0

    .line 308
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->setParameters(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object p0

    .line 315
    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->setModulus(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object p0

    .line 316
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    move-result-object p0

    return-object p0

    .line 284
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "importing RSA private keys is not implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        0x4aa0472 -> :sswitch_2
        0x4aa088e -> :sswitch_1
        0x4aa0f35 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static convertToRsaSsaPssKey(Lcom/google/gson/JsonObject;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "alg"

    .line 324
    invoke-static {p0, v0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, -0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "PS512"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_1
    const-string v2, "PS384"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_0

    :sswitch_2
    const-string v2, "PS256"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 335
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Unknown Rsa Algorithm: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 336
    invoke-static {p0, v0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :pswitch_0
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->PS512:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    goto :goto_1

    .line 329
    :pswitch_1
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->PS384:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    goto :goto_1

    .line 326
    :pswitch_2
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->PS256:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    :goto_1
    const-string v1, "p"

    .line 338
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "q"

    .line 339
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "dq"

    .line 340
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 341
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "d"

    .line 342
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "qi"

    .line 343
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "kty"

    const-string v2, "RSA"

    .line 346
    invoke-static {p0, v1, v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->expectStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->validateUseIsSig(Lcom/google/gson/JsonObject;)V

    .line 348
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->validateKeyOpsIsVerify(Lcom/google/gson/JsonObject;)V

    .line 350
    new-instance v1, Ljava/math/BigInteger;

    const-string v2, "e"

    .line 351
    invoke-static {p0, v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeDecode(Ljava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v3, v2}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 352
    new-instance v2, Ljava/math/BigInteger;

    const-string v4, "n"

    invoke-static {p0, v4}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeDecode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    const-string v3, "kid"

    .line 354
    invoke-virtual {p0, v3}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 355
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;

    move-result-object v4

    .line 357
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v5

    .line 358
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v5

    .line 359
    invoke-virtual {v5, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    .line 360
    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;->CUSTOM:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    .line 361
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v0

    .line 362
    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v0

    .line 356
    invoke-virtual {v4, v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;->setParameters(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;

    move-result-object v0

    .line 363
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;->setModulus(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;

    move-result-object v0

    .line 364
    invoke-static {p0, v3}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;->setCustomKid(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;

    move-result-object p0

    .line 365
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    move-result-object p0

    return-object p0

    .line 367
    :cond_3
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;

    move-result-object p0

    .line 369
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v3

    .line 370
    invoke-virtual {v2}, Ljava/math/BigInteger;->bitLength()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v3

    .line 371
    invoke-virtual {v3, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    .line 372
    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    .line 373
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v0

    .line 368
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;->setParameters(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;

    move-result-object p0

    .line 375
    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;->setModulus(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;

    move-result-object p0

    .line 376
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    move-result-object p0

    return-object p0

    .line 344
    :cond_4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "importing RSA private keys is not implemented"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :sswitch_data_0
    .sparse-switch
        0x48dd570 -> :sswitch_2
        0x48dd98c -> :sswitch_1
        0x48de033 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static expectStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "obj",
            "name",
            "expectedValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 228
    invoke-static {p0, p1}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 229
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 230
    :cond_0
    new-instance p2, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unexpected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " value: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static fromKeysetHandle(Lcom/google/crypto/tink/KeysetHandle;Lcom/google/crypto/tink/tinkkey/KeyAccess;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "handle",
            "keyAccess"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 443
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->fromPublicKeysetHandle(Lcom/google/crypto/tink/KeysetHandle;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static fromPublicKeysetHandle(Lcom/google/crypto/tink/KeysetHandle;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "handle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 55
    invoke-static {p0}, Lcom/google/crypto/tink/KeysetHandle;->newBuilder(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/KeysetHandle$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder;->build()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    .line 57
    new-instance v0, Lcom/google/gson/JsonArray;

    invoke-direct {v0}, Lcom/google/gson/JsonArray;-><init>()V

    const/4 v1, 0x0

    .line 58
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 59
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/KeysetHandle;->getAt(I)Lcom/google/crypto/tink/KeysetHandle$Entry;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getStatus()Lcom/google/crypto/tink/KeyStatus;

    move-result-object v3

    sget-object v4, Lcom/google/crypto/tink/KeyStatus;->ENABLED:Lcom/google/crypto/tink/KeyStatus;

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 63
    :cond_0
    invoke-virtual {v2}, Lcom/google/crypto/tink/KeysetHandle$Entry;->getKey()Lcom/google/crypto/tink/Key;

    move-result-object v2

    .line 64
    instance-of v3, v2, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    if-eqz v3, :cond_1

    .line 65
    check-cast v2, Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    invoke-static {v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->convertJwtEcdsaKey(Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_1

    .line 66
    :cond_1
    instance-of v3, v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    if-eqz v3, :cond_2

    .line 67
    check-cast v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    invoke-static {v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->convertJwtRsaSsaPkcs1Key(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    goto :goto_1

    .line 68
    :cond_2
    instance-of v3, v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    if-eqz v3, :cond_3

    .line 69
    check-cast v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    invoke-static {v2}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->convertJwtRsaSsaPssKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;)Lcom/google/gson/JsonObject;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 71
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unsupported key with parameters "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v2}, Lcom/google/crypto/tink/Key;->getParameters()Lcom/google/crypto/tink/Parameters;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 75
    :cond_4
    new-instance p0, Lcom/google/gson/JsonObject;

    invoke-direct {p0}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v1, "keys"

    .line 76
    invoke-virtual {p0, v1, v0}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 77
    invoke-virtual {p0}, Lcom/google/gson/JsonObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "obj",
            "name"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 217
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {p0, p1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 221
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " is not a string"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 218
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " not found"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toKeysetHandle(Ljava/lang/String;Lcom/google/crypto/tink/tinkkey/KeyAccess;)Lcom/google/crypto/tink/KeysetHandle;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "jwkSet",
            "keyAccess"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 455
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->toPublicKeysetHandle(Ljava/lang/String;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    return-object p0
.end method

.method public static toPublicKeysetHandle(Ljava/lang/String;)Lcom/google/crypto/tink/KeysetHandle;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jwkSet"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 92
    :try_start_0
    invoke-static {p0}, Lcom/google/crypto/tink/internal/JsonParser;->parse(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    invoke-static {}, Lcom/google/crypto/tink/KeysetHandle;->newBuilder()Lcom/google/crypto/tink/KeysetHandle$Builder;

    move-result-object v0

    const-string v1, "keys"

    .line 97
    invoke-virtual {p0, v1}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p0

    .line 98
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/gson/JsonElement;

    .line 99
    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonObject()Lcom/google/gson/JsonObject;

    move-result-object v1

    const-string v3, "alg"

    .line 100
    invoke-static {v1, v3}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 101
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v6

    const/4 v7, -0x1

    sparse-switch v6, :sswitch_data_0

    :goto_1
    move v2, v7

    goto :goto_2

    :sswitch_0
    const-string v2, "RS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v5

    goto :goto_2

    :sswitch_1
    const-string v2, "PS"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x1

    goto :goto_2

    :sswitch_2
    const-string v5, "ES"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    goto :goto_1

    :cond_2
    :goto_2
    packed-switch v2, :pswitch_data_0

    .line 112
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unexpected alg value: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 113
    invoke-static {v1, v3}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->getStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 103
    :pswitch_0
    invoke-static {v1}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->convertToRsaSsaPkcs1Key(Lcom/google/gson/JsonObject;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/KeysetHandle;->importKey(Lcom/google/crypto/tink/Key;)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->withRandomId()Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/KeysetHandle$Builder;->addEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder;

    goto :goto_0

    .line 106
    :pswitch_1
    invoke-static {v1}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->convertToRsaSsaPssKey(Lcom/google/gson/JsonObject;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/KeysetHandle;->importKey(Lcom/google/crypto/tink/Key;)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->withRandomId()Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/KeysetHandle$Builder;->addEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder;

    goto/16 :goto_0

    .line 109
    :pswitch_2
    invoke-static {v1}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->convertToEcdsaKey(Lcom/google/gson/JsonObject;)Lcom/google/crypto/tink/jwt/JwtEcdsaPublicKey;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/KeysetHandle;->importKey(Lcom/google/crypto/tink/Key;)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->withRandomId()Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/KeysetHandle$Builder;->addEntry(Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;)Lcom/google/crypto/tink/KeysetHandle$Builder;

    goto/16 :goto_0

    .line 116
    :cond_3
    invoke-virtual {v0}, Lcom/google/crypto/tink/KeysetHandle$Builder;->size()I

    move-result p0

    if-lez p0, :cond_4

    .line 119
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/KeysetHandle$Builder;->getAt(I)Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;->makePrimary()Lcom/google/crypto/tink/KeysetHandle$Builder$Entry;

    .line 120
    invoke-virtual {v0}, Lcom/google/crypto/tink/KeysetHandle$Builder;->build()Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p0

    return-object p0

    .line 117
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "empty keyset"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 94
    :goto_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "JWK set is invalid JSON"

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x8ae -> :sswitch_2
        0xa03 -> :sswitch_1
        0xa41 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static validateKeyOpsIsVerify(Lcom/google/gson/JsonObject;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "key_ops"

    .line 242
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 245
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonArray()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 248
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsJsonArray()Lcom/google/gson/JsonArray;

    move-result-object p0

    .line 249
    invoke-virtual {p0}, Lcom/google/gson/JsonArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    .line 252
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->isJsonPrimitive()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsJsonPrimitive()Lcom/google/gson/JsonPrimitive;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonPrimitive;->isString()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 255
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "verify"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 256
    :cond_1
    new-instance v1, Ljava/security/GeneralSecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected keyOps value: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gson/JsonArray;->get(I)Lcom/google/gson/JsonElement;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "key_ops is not a string"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 250
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "key_ops must contain exactly one element"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 246
    :cond_4
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "key_ops is not an array"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateUseIsSig(Lcom/google/gson/JsonObject;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "jsonKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "use"

    .line 235
    invoke-virtual {p0, v0}, Lcom/google/gson/JsonObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "sig"

    .line 238
    invoke-static {p0, v0, v1}, Lcom/google/crypto/tink/jwt/JwkSetConverter;->expectStringItem(Lcom/google/gson/JsonObject;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
