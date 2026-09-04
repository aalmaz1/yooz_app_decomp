.class public final Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;
.super Ljava/lang/Object;
.source "HpkePrivateKeyManager.java"


# static fields
.field private static final HYBRID_DECRYPT_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/hybrid/HpkePrivateKey;",
            "Lcom/google/crypto/tink/HybridDecrypt;",
            ">;"
        }
    .end annotation
.end field

.field private static final HYBRID_ENCRYPT_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/hybrid/HpkePublicKey;",
            "Lcom/google/crypto/tink/HybridEncrypt;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator<",
            "Lcom/google/crypto/tink/hybrid/HpkeParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final legacyPrivateKeyManager:Lcom/google/crypto/tink/PrivateKeyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/PrivateKeyManager<",
            "Lcom/google/crypto/tink/HybridDecrypt;",
            ">;"
        }
    .end annotation
.end field

.field private static final legacyPublicKeyManager:Lcom/google/crypto/tink/KeyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/KeyManager<",
            "Lcom/google/crypto/tink/HybridEncrypt;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$iB8Z3NFgqzPh9Aqn8VIOXCErgf0(Lcom/google/crypto/tink/hybrid/HpkeParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/hybrid/HpkePrivateKey;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;->createKey(Lcom/google/crypto/tink/hybrid/HpkeParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/hybrid/HpkePrivateKey;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 58
    new-instance v0, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda18;

    invoke-direct {v0}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda18;-><init>()V

    const-class v1, Lcom/google/crypto/tink/hybrid/HpkePrivateKey;

    const-class v2, Lcom/google/crypto/tink/HybridDecrypt;

    .line 59
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;->HYBRID_DECRYPT_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 63
    new-instance v0, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda17;-><init>()V

    const-class v1, Lcom/google/crypto/tink/hybrid/HpkePublicKey;

    const-class v2, Lcom/google/crypto/tink/HybridEncrypt;

    .line 64
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;->HYBRID_ENCRYPT_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 69
    invoke-static {}, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/HybridDecrypt;

    invoke-static {}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v2

    .line 68
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->createPrivateKeyManager(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/PrivateKeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;->legacyPrivateKeyManager:Lcom/google/crypto/tink/PrivateKeyManager;

    .line 73
    invoke-static {}, Lcom/google/crypto/tink/hybrid/internal/HpkePublicKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/HybridEncrypt;

    sget-object v2, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PUBLIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    .line 76
    invoke-static {}, Lcom/google/crypto/tink/proto/HpkePublicKey;->parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v3

    .line 72
    invoke-static {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->create(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/KeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;->legacyPublicKeyManager:Lcom/google/crypto/tink/KeyManager;

    .line 113
    new-instance v0, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createKey(Lcom/google/crypto/tink/hybrid/HpkeParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/hybrid/HpkePrivateKey;
    .locals 4
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "parameters",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKemId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_X25519_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    invoke-static {}, Lcom/google/crypto/tink/subtle/X25519;->generatePrivateKey()[B

    move-result-object v0

    .line 86
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/util/SecretBytes;->copyFrom([BLcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v1

    .line 87
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/X25519;->publicFromPrivate([B)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    goto :goto_1

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKemId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P256_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKemId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P384_HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 90
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKemId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P521_HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 106
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Unknown KEM ID"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 91
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKemId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->nistHpkeKemToCurve(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;

    move-result-object v0

    .line 92
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->generateKeyPair(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;)Ljava/security/KeyPair;

    move-result-object v1

    .line 93
    sget-object v2, Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;->UNCOMPRESSED:Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;

    .line 98
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v3

    check-cast v3, Ljava/security/interfaces/ECPublicKey;

    invoke-interface {v3}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v3

    .line 95
    invoke-static {v0, v2, v3}, Lcom/google/crypto/tink/subtle/EllipticCurves;->pointEncode(Lcom/google/crypto/tink/subtle/EllipticCurves$CurveType;Lcom/google/crypto/tink/subtle/EllipticCurves$PointFormatType;Ljava/security/spec/ECPoint;)[B

    move-result-object v0

    .line 94
    invoke-static {v0}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    .line 102
    invoke-virtual {v1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {v1}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object v1

    .line 103
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKemId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->getEncodedPrivateKeyLength(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)I

    move-result v2

    .line 101
    invoke-static {v1, v2}, Lcom/google/crypto/tink/internal/BigIntegerEncoding;->toBigEndianBytesOfFixedLength(Ljava/math/BigInteger;I)[B

    move-result-object v1

    .line 104
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    .line 100
    invoke-static {v1, v2}, Lcom/google/crypto/tink/util/SecretBytes;->copyFrom([BLcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v1

    .line 108
    :goto_1
    invoke-static {p0, v0, p1}, Lcom/google/crypto/tink/hybrid/HpkePublicKey;->create(Lcom/google/crypto/tink/hybrid/HpkeParameters;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)Lcom/google/crypto/tink/hybrid/HpkePublicKey;

    move-result-object p0

    .line 109
    invoke-static {p0, v1}, Lcom/google/crypto/tink/hybrid/HpkePrivateKey;->create(Lcom/google/crypto/tink/hybrid/HpkePublicKey;Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/hybrid/HpkePrivateKey;

    move-result-object p0

    return-object p0
.end method

.method static getKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    return-object v0
.end method

.method private static namedParameters()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/crypto/tink/Parameters;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 142
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 145
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->TINK:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 146
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_X25519_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 147
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 148
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_128_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 149
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    const-string v2, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_128_GCM"

    .line 143
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 154
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_X25519_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 155
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 156
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_128_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 157
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    .line 158
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    const-string v2, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_128_GCM_RAW"

    .line 151
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->TINK:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 162
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_X25519_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 163
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 164
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_256_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 165
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    const-string v2, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_256_GCM"

    .line 159
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 170
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_X25519_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 171
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 172
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_256_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 173
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    .line 174
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    const-string v2, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_AES_256_GCM_RAW"

    .line 167
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->TINK:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 178
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_X25519_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 179
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 180
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->CHACHA20_POLY1305:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 181
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    .line 182
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    const-string v2, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_CHACHA20_POLY1305"

    .line 175
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 186
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_X25519_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 187
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 188
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->CHACHA20_POLY1305:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 189
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    .line 190
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    const-string v2, "DHKEM_X25519_HKDF_SHA256_HKDF_SHA256_CHACHA20_POLY1305_RAW"

    .line 183
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->TINK:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 194
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P256_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 195
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 196
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_128_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 197
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    const-string v2, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_128_GCM"

    .line 191
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 202
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P256_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 203
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 204
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_128_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 205
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    const-string v2, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_128_GCM_RAW"

    .line 199
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->TINK:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 210
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P256_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 211
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 212
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_256_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 213
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    const-string v2, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_256_GCM"

    .line 207
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 218
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P256_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 219
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 220
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_256_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 221
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    const-string v2, "DHKEM_P256_HKDF_SHA256_HKDF_SHA256_AES_256_GCM_RAW"

    .line 215
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->TINK:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 226
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P384_HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 227
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 228
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_128_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 229
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    .line 230
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    const-string v2, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_128_GCM"

    .line 223
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 234
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P384_HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 235
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 236
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_128_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 237
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    .line 238
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    const-string v2, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_128_GCM_RAW"

    .line 231
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->TINK:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 242
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P384_HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 243
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 244
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_256_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 245
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    .line 246
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    const-string v2, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_256_GCM"

    .line 239
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 250
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P384_HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 251
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 252
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_256_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 253
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    .line 254
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    const-string v2, "DHKEM_P384_HKDF_SHA384_HKDF_SHA384_AES_256_GCM_RAW"

    .line 247
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->TINK:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 258
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P521_HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 259
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 260
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_128_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 261
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    .line 262
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    const-string v2, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_128_GCM"

    .line 255
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 266
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P521_HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 267
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 268
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_128_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 269
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    .line 270
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    const-string v2, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_128_GCM_RAW"

    .line 263
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->TINK:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 274
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P521_HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 275
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 276
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_256_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 277
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    .line 278
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    const-string v2, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_256_GCM"

    .line 271
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 282
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P521_HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 283
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 284
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_256_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 285
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v1

    .line 286
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    const-string v2, "DHKEM_P521_HKDF_SHA512_HKDF_SHA512_AES_256_GCM_RAW"

    .line 279
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static registerPair(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newKeyAllowed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 121
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->register()V

    .line 126
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableParametersRegistry;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;->namedParameters()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->putAll(Ljava/util/Map;)V

    .line 127
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;->HYBRID_DECRYPT_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 128
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 129
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;->HYBRID_ENCRYPT_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 131
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    const-class v2, Lcom/google/crypto/tink/hybrid/HpkeParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->add(Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;Ljava/lang/Class;)V

    .line 132
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;->legacyPrivateKeyManager:Lcom/google/crypto/tink/PrivateKeyManager;

    invoke-virtual {v0, v1, p0}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManager(Lcom/google/crypto/tink/KeyManager;Z)V

    .line 133
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/hybrid/internal/HpkePrivateKeyManager;->legacyPublicKeyManager:Lcom/google/crypto/tink/KeyManager;

    const/4 v1, 0x0

    .line 134
    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManager(Lcom/google/crypto/tink/KeyManager;Z)V

    return-void

    .line 122
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering HPKE Hybrid Encryption is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
