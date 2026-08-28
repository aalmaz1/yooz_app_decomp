.class final Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;
.super Ljava/lang/Object;
.source "RsaSsaPssSignJce.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeySign;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalImpl"
.end annotation


# static fields
.field private static final RAW_RSA_ALGORITHM:Ljava/lang/String; = "RSA/ECB/NOPADDING"


# instance fields
.field private final messageSuffix:[B

.field private final mgf1Hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

.field private final outputPrefix:[B

.field private final privateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

.field private final publicKey:Ljava/security/interfaces/RSAPublicKey;

.field private final saltLength:I

.field private final sigHash:Lcom/google/crypto/tink/subtle/Enums$HashType;


# direct methods
.method private constructor <init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/Enums$HashType;I[B[B)V
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "priv",
            "sigHash",
            "mgf1Hash",
            "saltLength",
            "outputPrefix",
            "messageSuffix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-static {}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;->useOnlyFips()Z

    move-result v0

    if-nez v0, :cond_58

    .line 90
    invoke-static {p2}, Lcom/google/crypto/tink/subtle/Validators;->validateSignatureHash(Lcom/google/crypto/tink/subtle/Enums$HashType;)V

    .line 91
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/subtle/Enums$HashType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 94
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaModulusSize(I)V

    .line 95
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaPublicExponent(Ljava/math/BigInteger;)V

    .line 96
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->privateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 97
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_FACTORY:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    .line 98
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    .line 100
    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-interface {p1}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object p1

    check-cast p1, Ljava/security/interfaces/RSAPublicKey;

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 101
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->sigHash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    .line 102
    iput-object p3, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->mgf1Hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    .line 103
    iput p4, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->saltLength:I

    .line 104
    iput-object p5, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->outputPrefix:[B

    .line 105
    iput-object p6, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->messageSuffix:[B

    return-void

    .line 92
    :cond_50
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "sigHash and mgf1Hash must be the same"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_58
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use RSA PSS in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/Enums$HashType;I[B[BLcom/google/crypto/tink/subtle/RsaSsaPssSignJce$1;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 57
    invoke-direct/range {p0 .. p6}, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;-><init>(Ljava/security/interfaces/RSAPrivateCrtKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/Enums$HashType;I[B[B)V

    return-void
.end method

.method private emsaPssEncode([BI)[B
    .registers 21
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "message",
            "emBits"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 148
    iget-object v2, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->sigHash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    invoke-static {v2}, Lcom/google/crypto/tink/subtle/Validators;->validateSignatureHash(Lcom/google/crypto/tink/subtle/Enums$HashType;)V

    .line 149
    sget-object v2, Lcom/google/crypto/tink/subtle/EngineFactory;->MESSAGE_DIGEST:Lcom/google/crypto/tink/subtle/EngineFactory;

    iget-object v3, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->sigHash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    .line 150
    invoke-static {v3}, Lcom/google/crypto/tink/subtle/SubtleUtil;->toDigestAlgo(Lcom/google/crypto/tink/subtle/Enums$HashType;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/MessageDigest;

    move-object/from16 v3, p1

    .line 152
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 153
    iget-object v3, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->messageSuffix:[B

    array-length v4, v3

    if-eqz v4, :cond_24

    .line 154
    invoke-virtual {v2, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 156
    :cond_24
    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    .line 159
    invoke-virtual {v2}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v4

    add-int/lit8 v5, v1, -0x1

    const/16 v6, 0x8

    .line 160
    div-int/2addr v5, v6

    const/4 v7, 0x1

    add-int/2addr v5, v7

    .line 161
    iget v8, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->saltLength:I

    add-int v9, v4, v8

    add-int/lit8 v9, v9, 0x2

    if-lt v5, v9, :cond_b0

    .line 166
    invoke-static {v8}, Lcom/google/crypto/tink/subtle/Random;->randBytes(I)[B

    move-result-object v8

    add-int/lit8 v9, v4, 0x8

    .line 169
    iget v10, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->saltLength:I

    add-int/2addr v10, v9

    new-array v10, v10, [B

    const/4 v11, 0x0

    .line 170
    invoke-static {v3, v11, v10, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 171
    array-length v3, v8

    invoke-static {v8, v11, v10, v9, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    invoke-virtual {v2, v10}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    sub-int v3, v5, v4

    sub-int/2addr v3, v7

    .line 177
    new-array v6, v3, [B

    .line 178
    iget v9, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->saltLength:I

    sub-int v10, v5, v9

    sub-int/2addr v10, v4

    add-int/lit8 v10, v10, -0x2

    aput-byte v7, v6, v10

    sub-int v9, v5, v9

    sub-int/2addr v9, v4

    sub-int/2addr v9, v7

    .line 179
    array-length v10, v8

    invoke-static {v8, v11, v6, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 182
    iget-object v8, v0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->mgf1Hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    invoke-static {v2, v3, v8}, Lcom/google/crypto/tink/subtle/SubtleUtil;->mgf1([BILcom/google/crypto/tink/subtle/Enums$HashType;)[B

    move-result-object v8

    .line 185
    new-array v9, v3, [B

    move v10, v11

    :goto_71
    if-ge v10, v3, :cond_7e

    .line 187
    aget-byte v12, v6, v10

    aget-byte v13, v8, v10

    xor-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_71

    :cond_7e
    move v6, v11

    :goto_7f
    int-to-long v12, v6

    int-to-long v14, v5

    const-wide/16 v16, 0x8

    mul-long v14, v14, v16

    int-to-long v7, v1

    sub-long/2addr v14, v7

    cmp-long v7, v12, v14

    if-gez v7, :cond_9f

    .line 193
    div-int/lit8 v7, v6, 0x8

    .line 194
    rem-int/lit8 v8, v6, 0x8

    rsub-int/lit8 v8, v8, 0x7

    .line 195
    aget-byte v10, v9, v7

    const/4 v12, 0x1

    shl-int v8, v12, v8

    not-int v8, v8

    and-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v9, v7

    add-int/lit8 v6, v6, 0x1

    move v7, v12

    goto :goto_7f

    :cond_9f
    add-int/2addr v4, v3

    add-int/lit8 v1, v4, 0x1

    .line 199
    new-array v1, v1, [B

    .line 200
    invoke-static {v9, v11, v1, v11, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    array-length v5, v2

    invoke-static {v2, v11, v1, v3, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, -0x44

    .line 202
    aput-byte v2, v1, v4

    return-object v1

    .line 162
    :cond_b0
    new-instance v1, Ljava/security/GeneralSecurityException;

    const-string v2, "encoding error"

    invoke-direct {v1, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private noPrefixSign([B)[B
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 112
    invoke-direct {p0, p1, v0}, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->emsaPssEncode([BI)[B

    move-result-object p1

    .line 113
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->rsasp1([B)[B

    move-result-object p1

    return-object p1
.end method

.method private rsasp1([B)[B
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "m"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 127
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->CIPHER:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "RSA/ECB/NOPADDING"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/crypto/Cipher;

    const/4 v2, 0x2

    .line 128
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->privateKey:Ljava/security/interfaces/RSAPrivateCrtKey;

    invoke-virtual {v0, v2, v3}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 129
    invoke-virtual {v0, p1}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v0

    .line 132
    sget-object v2, Lcom/google/crypto/tink/subtle/EngineFactory;->CIPHER:Lcom/google/crypto/tink/subtle/EngineFactory;

    invoke-virtual {v2, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/crypto/Cipher;

    .line 133
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 134
    invoke-virtual {v1, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    .line 135
    new-instance v2, Ljava/math/BigInteger;

    invoke-direct {v2, v3, p1}, Ljava/math/BigInteger;-><init>(I[B)V

    new-instance p1, Ljava/math/BigInteger;

    invoke-direct {p1, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-virtual {v2, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_37

    return-object v0

    .line 136
    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Security bug: RSA signature computation error"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public sign([B)[B
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 118
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->noPrefixSign([B)[B

    move-result-object p1

    .line 119
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce$InternalImpl;->outputPrefix:[B

    array-length v1, v0

    if-nez v1, :cond_a

    return-object p1

    :cond_a
    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v0, 0x1

    aput-object p1, v1, v0

    .line 122
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p1

    return-object p1
.end method
