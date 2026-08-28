.class public final Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;
.super Ljava/lang/Object;
.source "RsaSsaPkcs1VerifyConscrypt.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeyVerify;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# static fields
.field private static final EMPTY:[B

.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field private static final LEGACY_MESSAGE_SUFFIX:[B


# instance fields
.field private final conscrypt:Ljava/security/Provider;

.field private final messageSuffix:[B

.field private final outputPrefix:[B

.field private final publicKey:Ljava/security/interfaces/RSAPublicKey;

.field private final signatureAlgorithm:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 46
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 49
    sput-object v1, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->EMPTY:[B

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    .line 50
    sput-object v1, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->LEGACY_MESSAGE_SUFFIX:[B

    return-void
.end method

.method private constructor <init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;[B[BLjava/security/Provider;)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pubKey",
            "hashType",
            "outputPrefix",
            "messageSuffix",
            "conscrypt"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    sget-object v0, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 132
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaModulusSize(I)V

    .line 133
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Validators;->validateRsaPublicExponent(Ljava/math/BigInteger;)V

    .line 134
    iput-object p1, p0, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    .line 135
    invoke-static {p2}, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->toRsaSsaPkcs1Algo(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->signatureAlgorithm:Ljava/lang/String;

    .line 136
    iput-object p3, p0, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->outputPrefix:[B

    .line 137
    iput-object p4, p0, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->messageSuffix:[B

    .line 138
    iput-object p5, p0, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->conscrypt:Ljava/security/Provider;

    return-void

    .line 129
    :cond_2c
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use RSA-PKCS1.5 in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static conscryptProviderOrNull()Ljava/security/Provider;
    .registers 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 55
    invoke-static {}, Lcom/google/crypto/tink/internal/Util;->isAndroid()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/google/crypto/tink/internal/Util;->getAndroidApiLevel()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x15

    if-gt v0, v1, :cond_14

    const/4 v0, 0x0

    return-object v0

    .line 60
    :cond_14
    invoke-static {}, Lcom/google/crypto/tink/internal/ConscryptUtil;->providerOrNull()Ljava/security/Provider;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;
    .registers 8
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

    .line 101
    invoke-static {}, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->conscryptProviderOrNull()Ljava/security/Provider;

    move-result-object v5

    if-eqz v5, :cond_51

    const-string v0, "RSA"

    .line 105
    invoke-static {v0, v5}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    .line 109
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 108
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 111
    new-instance v6, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;

    .line 113
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getHashType()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    move-result-object v2

    .line 114
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v3

    .line 115
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getVariant()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->LEGACY:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_49

    .line 116
    sget-object p0, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->LEGACY_MESSAGE_SUFFIX:[B

    goto :goto_4b

    .line 117
    :cond_49
    sget-object p0, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->EMPTY:[B

    :goto_4b
    move-object v4, p0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;-><init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;[B[BLjava/security/Provider;)V

    return-object v6

    .line 103
    :cond_51
    new-instance p0, Ljava/security/NoSuchProviderException;

    const-string v0, "RSA-PKCS1.5 using Conscrypt is not supported."

    invoke-direct {p0, v0}, Ljava/security/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static toRsaSsaPkcs1Algo(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;)Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hashType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 79
    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    if-ne p0, v0, :cond_7

    const-string p0, "SHA256withRSA"

    return-object p0

    .line 82
    :cond_7
    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA384:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    if-ne p0, v0, :cond_e

    const-string p0, "SHA384withRSA"

    return-object p0

    .line 85
    :cond_e
    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    if-ne p0, v0, :cond_15

    const-string p0, "SHA512withRSA"

    return-object p0

    .line 88
    :cond_15
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown hash type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public verify([B[B)V
    .registers 5
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

    .line 143
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->outputPrefix:[B

    invoke-static {v0, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 146
    iget-object v0, p0, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->signatureAlgorithm:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->conscrypt:Ljava/security/Provider;

    invoke-static {v0, v1}, Ljava/security/Signature;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljava/security/Signature;

    move-result-object v0

    .line 147
    iget-object v1, p0, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->publicKey:Ljava/security/interfaces/RSAPublicKey;

    invoke-virtual {v0, v1}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 148
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 149
    iget-object p2, p0, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->messageSuffix:[B

    array-length v1, p2

    if-lez v1, :cond_20

    .line 150
    invoke-virtual {v0, p2}, Ljava/security/Signature;->update([B)V

    .line 154
    :cond_20
    :try_start_20
    iget-object p2, p0, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->outputPrefix:[B

    array-length p2, p2

    array-length v1, p1

    .line 155
    invoke-static {p1, p2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    .line 156
    invoke-virtual {v0, p1}, Ljava/security/Signature;->verify([B)Z

    move-result p1
    :try_end_2c
    .catch Ljava/lang/RuntimeException; {:try_start_20 .. :try_end_2c} :catch_2d

    goto :goto_2e

    :catch_2d
    const/4 p1, 0x0

    :goto_2e
    if-eqz p1, :cond_31

    return-void

    .line 161
    :cond_31
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 144
    :cond_39
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature (output prefix mismatch)"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
