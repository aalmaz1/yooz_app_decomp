.class public final Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;
.super Ljava/lang/Object;
.source "HpkeUtil.java"


# static fields
.field public static final AES_128_GCM_AEAD_ID:[B

.field public static final AES_256_GCM_AEAD_ID:[B

.field public static final AUTH_MODE:[B

.field public static final BASE_MODE:[B

.field public static final CHACHA20_POLY1305_AEAD_ID:[B

.field public static final EMPTY_SALT:[B

.field public static final HKDF_SHA256_KDF_ID:[B

.field public static final HKDF_SHA384_KDF_ID:[B

.field public static final HKDF_SHA512_KDF_ID:[B

.field private static final HPKE:[B

.field private static final HPKE_V1:[B

.field private static final KEM:[B

.field public static final P256_HKDF_SHA256_KEM_ID:[B

.field public static final P384_HKDF_SHA384_KEM_ID:[B

.field public static final P521_HKDF_SHA512_KEM_ID:[B

.field public static final X25519_HKDF_SHA256_KEM_ID:[B


# direct methods
.method static constructor <clinit>()V
    .registers 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 29
    invoke-static {v0, v1}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->BASE_MODE:[B

    const/4 v2, 0x2

    .line 30
    invoke-static {v0, v2}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->AUTH_MODE:[B

    const/16 v3, 0x20

    .line 33
    invoke-static {v2, v3}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->X25519_HKDF_SHA256_KEM_ID:[B

    const/16 v3, 0x10

    .line 34
    invoke-static {v2, v3}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->P256_HKDF_SHA256_KEM_ID:[B

    const/16 v3, 0x11

    .line 35
    invoke-static {v2, v3}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->P384_HKDF_SHA384_KEM_ID:[B

    const/16 v3, 0x12

    .line 36
    invoke-static {v2, v3}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->P521_HKDF_SHA512_KEM_ID:[B

    .line 39
    invoke-static {v2, v0}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HKDF_SHA256_KDF_ID:[B

    .line 40
    invoke-static {v2, v2}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v3

    sput-object v3, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HKDF_SHA384_KDF_ID:[B

    const/4 v3, 0x3

    .line 41
    invoke-static {v2, v3}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v4

    sput-object v4, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HKDF_SHA512_KDF_ID:[B

    .line 44
    invoke-static {v2, v0}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->AES_128_GCM_AEAD_ID:[B

    .line 45
    invoke-static {v2, v2}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->AES_256_GCM_AEAD_ID:[B

    .line 46
    invoke-static {v2, v3}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->CHACHA20_POLY1305_AEAD_ID:[B

    new-array v0, v1, [B

    .line 48
    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->EMPTY_SALT:[B

    const-string v0, "KEM"

    .line 50
    sget-object v1, Lcom/google/crypto/tink/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->KEM:[B

    const-string v0, "HPKE"

    .line 51
    sget-object v1, Lcom/google/crypto/tink/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HPKE:[B

    const-string v0, "HPKE-v1"

    .line 52
    sget-object v1, Lcom/google/crypto/tink/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HPKE_V1:[B

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encodingSizeInBytes(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kemId"
        }
    .end annotation

    .line 165
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_X25519_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-ne p0, v0, :cond_7

    const/16 p0, 0x20

    return p0

    .line 168
    :cond_7
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P256_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-ne p0, v0, :cond_e

    const/16 p0, 0x41

    return p0

    .line 171
    :cond_e
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P384_HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-ne p0, v0, :cond_15

    const/16 p0, 0x61

    return p0

    .line 174
    :cond_15
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P521_HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-ne p0, v0, :cond_1c

    const/16 p0, 0x85

    return p0

    .line 177
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to determine KEM-encoding length for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getEncodedPrivateKeyLength(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)I
    .registers 3
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

    .line 183
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_X25519_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    const/16 v1, 0x20

    if-ne p0, v0, :cond_7

    return v1

    .line 186
    :cond_7
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P256_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-ne p0, v0, :cond_c

    return v1

    .line 189
    :cond_c
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P384_HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-ne p0, v0, :cond_13

    const/16 p0, 0x30

    return p0

    .line 192
    :cond_13
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P521_HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-ne p0, v0, :cond_1a

    const/16 p0, 0x42

    return p0

    .line 195
    :cond_1a
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Unrecognized HPKE KEM identifier"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getEncodedPublicKeyLength(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)I
    .registers 2
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

    .line 143
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_X25519_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-ne p0, v0, :cond_7

    const/16 p0, 0x20

    return p0

    .line 146
    :cond_7
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P256_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-ne p0, v0, :cond_e

    const/16 p0, 0x41

    return p0

    .line 149
    :cond_e
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P384_HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-ne p0, v0, :cond_15

    const/16 p0, 0x61

    return p0

    .line 152
    :cond_15
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P521_HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-ne p0, v0, :cond_1c

    const/16 p0, 0x85

    return p0

    .line 155
    :cond_1c
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Unrecognized HPKE KEM identifier"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static hpkeSuiteId([B[B[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "kemId",
            "kdfId",
            "aeadId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 101
    sget-object v2, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HPKE:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    const/4 p0, 0x2

    aput-object p1, v0, p0

    const/4 p0, 0x3

    aput-object p2, v0, p0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p0

    return-object p0
.end method

.method public static intToByteArray(II)[B
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "capacity",
            "value"
        }
    .end annotation

    const/4 v0, 0x4

    if-gt p0, v0, :cond_2d

    if-ltz p0, :cond_2d

    if-ltz p1, :cond_25

    const/4 v1, 0x1

    if-ge p0, v0, :cond_10

    mul-int/lit8 v0, p0, 0x8

    shl-int v0, v1, v0

    if-ge p1, v0, :cond_25

    .line 75
    :cond_10
    new-array v0, p0, [B

    const/4 v2, 0x0

    :goto_13
    if-ge v2, p0, :cond_24

    sub-int v3, p0, v2

    sub-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x8

    shr-int v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 77
    aput-byte v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_24
    return-object v0

    .line 73
    :cond_25
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "value too large"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 68
    :cond_2d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "capacity must be between 0 and 4"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static kemSuiteId([B)[B
    .registers 4
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

    const/4 v0, 0x2

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 89
    sget-object v2, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->KEM:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p0

    return-object p0
.end method

.method static labelIkm(Ljava/lang/String;[B[B)[B
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "ikm",
            "suiteId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x4

    new-array v0, v0, [[B

    const/4 v1, 0x0

    .line 111
    sget-object v2, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HPKE_V1:[B

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p2, v0, v1

    sget-object p2, Lcom/google/crypto/tink/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 p2, 0x2

    aput-object p0, v0, p2

    const/4 p0, 0x3

    aput-object p1, v0, p0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p0

    return-object p0
.end method

.method static labelInfo(Ljava/lang/String;[B[BI)[B
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "label",
            "info",
            "suiteId",
            "length"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/4 v0, 0x5

    new-array v0, v0, [[B

    const/4 v1, 0x2

    .line 123
    invoke-static {v1, p3}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->intToByteArray(II)[B

    move-result-object p3

    const/4 v2, 0x0

    aput-object p3, v0, v2

    const/4 p3, 0x1

    sget-object v2, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->HPKE_V1:[B

    aput-object v2, v0, p3

    aput-object p2, v0, v1

    sget-object p2, Lcom/google/crypto/tink/internal/Util;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    const/4 p2, 0x3

    aput-object p0, v0, p2

    const/4 p0, 0x4

    aput-object p1, v0, p0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Bytes;->concat([[B)[B

    move-result-object p0

    return-object p0
.end method

.method static nistHpkeKemToCurve(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;
    .registers 2
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

    .line 128
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P256_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-ne p0, v0, :cond_7

    .line 129
    sget-object p0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P256:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    return-object p0

    .line 131
    :cond_7
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P384_HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-ne p0, v0, :cond_e

    .line 132
    sget-object p0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P384:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    return-object p0

    .line 134
    :cond_e
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P521_HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    if-ne p0, v0, :cond_15

    .line 135
    sget-object p0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;->NIST_P521:Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    return-object p0

    .line 137
    :cond_15
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Unrecognized NIST HPKE KEM identifier"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
