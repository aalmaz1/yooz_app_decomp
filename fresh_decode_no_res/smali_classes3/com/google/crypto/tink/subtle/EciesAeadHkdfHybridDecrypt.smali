.class public final Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;
.super Ljava/lang/Object;
.source "EciesAeadHkdfHybridDecrypt.java"

# interfaces
.implements Lcom/google/crypto/tink/HybridDecrypt;


# instance fields
.field private final dem:Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$Dem;

.field private final ecPointFormat:Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;

.field private final hkdfHmacAlgo:Ljava/lang/String;

.field private final hkdfSalt:[B

.field private final outputPrefix:[B

.field private final recipientKem:Lcom/google/crypto/tink/subtle/EciesHkdfRecipientKem;

.field private final recipientPrivateKey:Ljava/security/interfaces/ECPrivateKey;


# direct methods
.method private constructor <init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$Dem;[B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "recipientPrivateKey",
            "hkdfSalt",
            "hkdfHmacAlgo",
            "ecPointFormat",
            "dem",
            "outputPrefix"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    iput-object p1, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->recipientPrivateKey:Ljava/security/interfaces/ECPrivateKey;

    .line 55
    new-instance v0, Lcom/google/crypto/tink/subtle/EciesHkdfRecipientKem;

    invoke-direct {v0, p1}, Lcom/google/crypto/tink/subtle/EciesHkdfRecipientKem;-><init>(Ljava/security/interfaces/ECPrivateKey;)V

    iput-object v0, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->recipientKem:Lcom/google/crypto/tink/subtle/EciesHkdfRecipientKem;

    .line 56
    iput-object p2, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->hkdfSalt:[B

    .line 57
    iput-object p3, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->hkdfHmacAlgo:Ljava/lang/String;

    .line 58
    iput-object p4, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->ecPointFormat:Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;

    .line 59
    iput-object p5, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->dem:Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$Dem;

    .line 60
    iput-object p6, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->outputPrefix:[B

    return-void
.end method

.method public static create(Lcom/google/crypto/tink/hybrid/EciesPrivateKey;)Lcom/google/crypto/tink/HybridDecrypt;
    .locals 9
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

    .line 65
    sget-object v0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridEncrypt;->CURVE_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 67
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->getParameters()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getCurveType()Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    move-result-object v1

    .line 66
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    .line 72
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->getNistPrivateKeyValue()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->getBigInteger(Lcom/google/crypto/tink/SecretKeyAccess;)Ljava/math/BigInteger;

    move-result-object v1

    .line 71
    invoke-static {v1}, Lcom/google/crypto/tink/internal/BigIntegerEncoding;->toBigEndianBytes(Ljava/math/BigInteger;)[B

    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getEcPrivateKey(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;[B)Ljava/security/interfaces/ECPrivateKey;

    move-result-object v3

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 74
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->getParameters()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getSalt()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->getParameters()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getSalt()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v0

    :cond_0
    move-object v4, v0

    .line 77
    new-instance v0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;

    .line 80
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->getParameters()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getHashType()Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridEncrypt;->toHmacAlgo(Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;)Ljava/lang/String;

    move-result-object v5

    sget-object v1, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridEncrypt;->POINT_FORMAT_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 82
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->getParameters()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getNistCurvePointFormat()Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    move-result-object v2

    .line 81
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;

    .line 83
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->getParameters()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper;->getDem(Lcom/google/crypto/tink/hybrid/EciesParameters;)Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$Dem;

    move-result-object v7

    .line 84
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v8

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;-><init>(Ljava/security/interfaces/ECPrivateKey;[BLjava/lang/String;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$Dem;[B)V

    return-object v0
.end method


# virtual methods
.method public decrypt([B[B)[B
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "ciphertext",
            "contextInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->outputPrefix:[B

    invoke-static {v0, p1}, Lcom/google/crypto/tink/internal/Util;->isPrefix([B[B)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 93
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->outputPrefix:[B

    array-length v0, v0

    .line 94
    iget-object v1, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->recipientPrivateKey:Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    invoke-virtual {v1}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v1

    .line 95
    iget-object v2, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->ecPointFormat:Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;

    invoke-static {v1, v2}, Lcom/google/crypto/tink/subtle/EllipticCurves;->encodingSizeInBytes(Ljava/security/spec/EllipticCurve;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;)I

    move-result v1

    .line 96
    array-length v2, p1

    add-int/2addr v1, v0

    if-lt v2, v1, :cond_0

    .line 99
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    .line 100
    iget-object v3, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->recipientKem:Lcom/google/crypto/tink/subtle/EciesHkdfRecipientKem;

    iget-object v5, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->hkdfHmacAlgo:Ljava/lang/String;

    iget-object v6, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->hkdfSalt:[B

    iget-object v0, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->dem:Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$Dem;

    .line 106
    invoke-interface {v0}, Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$Dem;->getSymmetricKeySizeInBytes()I

    move-result v8

    iget-object v9, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->ecPointFormat:Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;

    move-object v7, p2

    .line 101
    invoke-virtual/range {v3 .. v9}, Lcom/google/crypto/tink/subtle/EciesHkdfRecipientKem;->generateKey([BLjava/lang/String;[B[BILcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;)[B

    move-result-object p2

    .line 108
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/EciesAeadHkdfHybridDecrypt;->dem:Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$Dem;

    invoke-interface {v0, p2, p1, v1}, Lcom/google/crypto/tink/hybrid/internal/EciesDemHelper$Dem;->decrypt([B[BI)[B

    move-result-object p1

    return-object p1

    .line 97
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 91
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid ciphertext (output prefix mismatch)"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
