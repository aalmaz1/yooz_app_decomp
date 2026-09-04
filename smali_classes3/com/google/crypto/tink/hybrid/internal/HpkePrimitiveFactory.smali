.class public final Lcom/google/crypto/tink/hybrid/internal/HpkePrimitiveFactory;
.super Ljava/lang/Object;
.source "HpkePrimitiveFactory.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAead(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/internal/HpkeAead;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aeadId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 95
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_128_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    if-ne p0, v0, :cond_0

    .line 96
    new-instance p0, Lcom/google/crypto/tink/hybrid/internal/AesGcmHpkeAead;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/hybrid/internal/AesGcmHpkeAead;-><init>(I)V

    return-object p0

    .line 97
    :cond_0
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_256_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    if-ne p0, v0, :cond_1

    .line 98
    new-instance p0, Lcom/google/crypto/tink/hybrid/internal/AesGcmHpkeAead;

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/hybrid/internal/AesGcmHpkeAead;-><init>(I)V

    return-object p0

    .line 99
    :cond_1
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->CHACHA20_POLY1305:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    if-ne p0, v0, :cond_2

    .line 100
    new-instance p0, Lcom/google/crypto/tink/hybrid/internal/ChaCha20Poly1305HpkeAead;

    invoke-direct {p0}, Lcom/google/crypto/tink/hybrid/internal/ChaCha20Poly1305HpkeAead;-><init>()V

    return-object p0

    .line 102
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized HPKE AEAD identifier"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createAead([B)Lcom/google/crypto/tink/hybrid/internal/HpkeAead;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aeadId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 83
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->AES_128_GCM_AEAD_ID:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    new-instance p0, Lcom/google/crypto/tink/hybrid/internal/AesGcmHpkeAead;

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/hybrid/internal/AesGcmHpkeAead;-><init>(I)V

    return-object p0

    .line 85
    :cond_0
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->AES_256_GCM_AEAD_ID:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    new-instance p0, Lcom/google/crypto/tink/hybrid/internal/AesGcmHpkeAead;

    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/hybrid/internal/AesGcmHpkeAead;-><init>(I)V

    return-object p0

    .line 87
    :cond_1
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->CHACHA20_POLY1305_AEAD_ID:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 88
    new-instance p0, Lcom/google/crypto/tink/hybrid/internal/ChaCha20Poly1305HpkeAead;

    invoke-direct {p0}, Lcom/google/crypto/tink/hybrid/internal/ChaCha20Poly1305HpkeAead;-><init>()V

    return-object p0

    .line 90
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized HPKE AEAD identifier"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createKdf(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kdfId"
        }
    .end annotation

    .line 71
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    if-ne p0, v0, :cond_0

    .line 72
    new-instance p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;

    const-string v0, "HmacSha256"

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 73
    :cond_0
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    if-ne p0, v0, :cond_1

    .line 74
    new-instance p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;

    const-string v0, "HmacSha384"

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 75
    :cond_1
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    if-ne p0, v0, :cond_2

    .line 76
    new-instance p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;

    const-string v0, "HmacSha512"

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 78
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized HPKE KDF identifier"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createKdf([B)Lcom/google/crypto/tink/hybrid/internal/HpkeKdf;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kdfId"
        }
    .end annotation

    .line 59
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HKDF_SHA256_KDF_ID:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    new-instance p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;

    const-string v0, "HmacSha256"

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 61
    :cond_0
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HKDF_SHA384_KDF_ID:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    new-instance p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;

    const-string v0, "HmacSha384"

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 63
    :cond_1
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HKDF_SHA512_KDF_ID:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 64
    new-instance p0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;

    const-string v0, "HmacSha512"

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;-><init>(Ljava/lang/String;)V

    return-object p0

    .line 66
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized HPKE KDF identifier"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createKem(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/internal/HpkeKem;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kemId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 45
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_X25519_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-ne p0, v0, :cond_0

    .line 46
    new-instance p0, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;

    new-instance v0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;

    const-string v1, "HmacSha256"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;-><init>(Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;)V

    return-object p0

    .line 47
    :cond_0
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P256_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-ne p0, v0, :cond_1

    .line 48
    sget-object p0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P256:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    invoke-static {p0}, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->fromCurve(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;

    move-result-object p0

    return-object p0

    .line 49
    :cond_1
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P384_HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-ne p0, v0, :cond_2

    .line 50
    sget-object p0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P384:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    invoke-static {p0}, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->fromCurve(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;

    move-result-object p0

    return-object p0

    .line 51
    :cond_2
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P521_HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-ne p0, v0, :cond_3

    .line 52
    sget-object p0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P521:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    invoke-static {p0}, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->fromCurve(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;

    move-result-object p0

    return-object p0

    .line 54
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized HPKE KEM identifier"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createKem([B)Lcom/google/crypto/tink/hybrid/internal/HpkeKem;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kemId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 31
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->X25519_HKDF_SHA256_KEM_ID:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance p0, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;

    new-instance v0, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;

    const-string v1, "HmacSha256"

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/hybrid/internal/X25519HpkeKem;-><init>(Lcom/google/crypto/tink/hybrid/internal/HkdfHpkeKdf;)V

    return-object p0

    .line 33
    :cond_0
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->P256_HKDF_SHA256_KEM_ID:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    sget-object p0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P256:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    invoke-static {p0}, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->fromCurve(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;

    move-result-object p0

    return-object p0

    .line 35
    :cond_1
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->P384_HKDF_SHA384_KEM_ID:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 36
    sget-object p0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P384:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    invoke-static {p0}, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->fromCurve(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;

    move-result-object p0

    return-object p0

    .line 37
    :cond_2
    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->P521_HKDF_SHA512_KEM_ID:[B

    invoke-static {p0, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 38
    sget-object p0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P521:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    invoke-static {p0}, Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;->fromCurve(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Lcom/google/crypto/tink/hybrid/internal/NistCurvesHpkeKem;

    move-result-object p0

    return-object p0

    .line 40
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unrecognized HPKE KEM identifier"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
