.class final Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$InternalJavaImpl;
.super Ljava/lang/Object;
.source "RsaSsaPkcs1VerifyJce.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeyVerify;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InternalJavaImpl"
.end annotation


# static fields
.field private static final ASN_PREFIX_SHA256:Ljava/lang/String; = "3031300d060960864801650304020105000420"

.field private static final ASN_PREFIX_SHA384:Ljava/lang/String; = "3041300d060960864801650304020205000430"

.field private static final ASN_PREFIX_SHA512:Ljava/lang/String; = "3051300d060960864801650304020305000440"


# instance fields
.field private final hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

.field private final messageSuffix:[B

.field private final outputPrefix:[B

.field private final publicKey:Ljava/security/interfaces/RSAPublicKey;


# direct methods
.method private constructor <init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/crypto/tink/subtle/Enums$HashType;[B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pubKey",
            "hash",
            "outputPrefix",
            "messageSuffix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-static {}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;->useOnlyFips()Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    invoke-static {p2}, Lcom/google/crypto/tink/subtle/Validators;->validateSignatureHash(Lcom/google/crypto/tink/subtle/Enums$HashType;)V

    .line 89
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaModulusSize(I)V

    .line 90
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaPublicExponent(Ljava/math/BigInteger;)V

    .line 91
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$InternalJavaImpl;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 92
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$InternalJavaImpl;->hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    .line 93
    iput-object p3, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$InternalJavaImpl;->outputPrefix:[B

    .line 94
    iput-object p4, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$InternalJavaImpl;->messageSuffix:[B

    return-void

    .line 83
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Conscrypt is not available, and we cannot use Java Implementation of RSA-PKCS1.5 in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method synthetic constructor <init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/crypto/tink/subtle/Enums$HashType;[B[BLcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$InternalJavaImpl;-><init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/crypto/tink/subtle/Enums$HashType;[B[B)V

    return-void
.end method

.method private emsaPkcs1([BILcom/google/crypto/tink/subtle/Enums$HashType;)[B
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "m",
            "emLen",
            "hash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 131
    invoke-static {p3}, Lcom/google/crypto/tink/subtle/Validators;->validateSignatureHash(Lcom/google/crypto/tink/subtle/Enums$HashType;)V

    .line 132
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->MESSAGE_DIGEST:Lcom/google/crypto/tink/subtle/EngineFactory;

    iget-object v1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$InternalJavaImpl;->hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    .line 133
    invoke-static {v1}, Lcom/google/crypto/tink/subtle/SubtleUtil;->toDigestAlgo(Lcom/google/crypto/tink/subtle/Enums$HashType;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/MessageDigest;

    .line 134
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 135
    iget-object p1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$InternalJavaImpl;->messageSuffix:[B

    array-length v1, p1

    if-eqz v1, :cond_0

    .line 136
    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update([B)V

    .line 138
    :cond_0
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p1

    .line 139
    invoke-direct {p0, p3}, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$InternalJavaImpl;->toAsnPrefix(Lcom/google/crypto/tink/subtle/Enums$HashType;)[B

    move-result-object p3

    .line 140
    array-length v0, p3

    array-length v1, p1

    add-int/2addr v0, v1

    add-int/lit8 v1, v0, 0xb

    if-lt p2, v1, :cond_2

    .line 144
    new-array v1, p2, [B

    const/4 v2, 0x0

    .line 146
    aput-byte v2, v1, v2

    const/4 v3, 0x1

    .line 147
    aput-byte v3, v1, v3

    const/4 v3, 0x2

    move v4, v2

    :goto_0
    sub-int v5, p2, v0

    add-int/lit8 v5, v5, -0x3

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v3, 0x1

    const/4 v6, -0x1

    .line 149
    aput-byte v6, v1, v3

    add-int/lit8 v4, v4, 0x1

    move v3, v5

    goto :goto_0

    :cond_1
    add-int/lit8 p2, v3, 0x1

    .line 151
    aput-byte v2, v1, v3

    .line 152
    array-length v0, p3

    invoke-static {p3, v2, v1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 153
    array-length p3, p3

    add-int/2addr p2, p3

    array-length p3, p1

    invoke-static {p1, v2, v1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    .line 142
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "intended encoded message length too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private noPrefixVerify([B[B)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "signature",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$InternalJavaImpl;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v0}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$InternalJavaImpl;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 105
    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v2

    add-int/lit8 v2, v2, 0x7

    div-int/lit8 v2, v2, 0x8

    .line 108
    array-length v3, p1

    if-ne v2, v3, :cond_2

    .line 113
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/SubtleUtil;->bytes2Integer([B)Ljava/math/BigInteger;

    move-result-object p1

    .line 114
    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v3

    if-gez v3, :cond_1

    .line 117
    invoke-virtual {p1, v0, v1}, Ljava/math/BigInteger;->modPow(Ljava/math/BigInteger;Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p1

    .line 118
    invoke-static {p1, v2}, Lcom/google/crypto/tink/subtle/SubtleUtil;->integer2Bytes(Ljava/math/BigInteger;I)[B

    move-result-object p1

    .line 121
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$InternalJavaImpl;->hash:Lcom/google/crypto/tink/subtle/Enums$HashType;

    invoke-direct {p0, p2, v2, v0}, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$InternalJavaImpl;->emsaPkcs1([BILcom/google/crypto/tink/subtle/Enums$HashType;)[B

    move-result-object p2

    .line 124
    invoke-static {p1, p2}, Lcom/google/crypto/tink/subtle/Bytes;->equal([B[B)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 125
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid signature"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 115
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "signature out of range"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 109
    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid signature\'s length"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private toAsnPrefix(Lcom/google/crypto/tink/subtle/Enums$HashType;)[B
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 158
    sget-object v0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$1;->$SwitchMap$com$google$crypto$tink$subtle$Enums$HashType:[I

    invoke-virtual {p1}, Lcom/google/crypto/tink/subtle/Enums$HashType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const-string p1, "3051300d060960864801650304020305000440"

    .line 164
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    .line 166
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported hash "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string p1, "3041300d060960864801650304020205000430"

    .line 162
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "3031300d060960864801650304020105000420"

    .line 160
    invoke-static {p1}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public verify([B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "signature",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$InternalJavaImpl;->outputPrefix:[B

    array-length v1, v0

    if-nez v1, :cond_0

    .line 173
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$InternalJavaImpl;->noPrefixVerify([B[B)V

    return-void

    .line 176
    :cond_0
    invoke-static {v0, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 179
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$InternalJavaImpl;->outputPrefix:[B

    array-length v0, v0

    array-length v1, p1

    .line 180
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 181
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce$InternalJavaImpl;->noPrefixVerify([B[B)V

    return-void

    .line 177
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature (output prefix mismatch)"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
