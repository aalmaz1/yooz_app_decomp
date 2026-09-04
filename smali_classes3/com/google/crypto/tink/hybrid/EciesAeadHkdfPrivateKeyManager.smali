.class public final Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;
.super Ljava/lang/Object;
.source "EciesAeadHkdfPrivateKeyManager.java"


# static fields
.field private static final HYBRID_DECRYPT_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/hybrid/EciesPrivateKey;",
            "Lcom/google/crypto/tink/HybridDecrypt;",
            ">;"
        }
    .end annotation
.end field

.field private static final HYBRID_ENCRYPT_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/hybrid/EciesPublicKey;",
            "Lcom/google/crypto/tink/HybridEncrypt;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator<",
            "Lcom/google/crypto/tink/hybrid/EciesParameters;",
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
.method public static synthetic $r8$lambda$owfqQZpcTRMb9UJzphhTUhh7lIg(Lcom/google/crypto/tink/hybrid/EciesParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/hybrid/EciesPrivateKey;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->createKey(Lcom/google/crypto/tink/hybrid/EciesParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/hybrid/EciesPrivateKey;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 61
    new-instance v0, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda16;

    invoke-direct {v0}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda16;-><init>()V

    const-class v1, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;

    const-class v2, Lcom/google/crypto/tink/HybridDecrypt;

    .line 62
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->HYBRID_DECRYPT_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 66
    new-instance v0, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda15;

    invoke-direct {v0}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda15;-><init>()V

    const-class v1, Lcom/google/crypto/tink/hybrid/EciesPublicKey;

    const-class v2, Lcom/google/crypto/tink/HybridEncrypt;

    .line 67
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->HYBRID_ENCRYPT_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 72
    invoke-static {}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/HybridDecrypt;

    .line 74
    invoke-static {}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPrivateKey;->parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v2

    .line 71
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->createPrivateKeyManager(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/PrivateKeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->legacyPrivateKeyManager:Lcom/google/crypto/tink/PrivateKeyManager;

    .line 78
    invoke-static {}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPublicKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/HybridEncrypt;

    sget-object v2, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PUBLIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    .line 81
    invoke-static {}, Lcom/google/crypto/tink/proto/EciesAeadHkdfPublicKey;->parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v3

    .line 77
    invoke-static {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->create(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/KeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->legacyPublicKeyManager:Lcom/google/crypto/tink/KeyManager;

    .line 113
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createKey(Lcom/google/crypto/tink/hybrid/EciesParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/hybrid/EciesPrivateKey;
    .locals 2
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

    .line 101
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getCurveType()Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->toParameterSpec(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/EllipticCurves;->generateKeyPair(Ljava/security/spec/ECParameterSpec;)Ljava/security/KeyPair;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/ECPublicKey;

    .line 103
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/ECPrivateKey;

    .line 106
    invoke-interface {v1}, Ljava/security/interfaces/ECPublicKey;->getW()Ljava/security/spec/ECPoint;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->createForNistCurve(Lcom/google/crypto/tink/hybrid/EciesParameters;Ljava/security/spec/ECPoint;Ljava/lang/Integer;)Lcom/google/crypto/tink/hybrid/EciesPublicKey;

    move-result-object p0

    .line 109
    invoke-interface {v0}, Ljava/security/interfaces/ECPrivateKey;->getS()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object p1

    .line 107
    invoke-static {p0, p1}, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->createForNistCurve(Lcom/google/crypto/tink/hybrid/EciesPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/hybrid/EciesPrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static final eciesP256HkdfHmacSha256Aes128CtrHmacSha256Template()Lcom/google/crypto/tink/KeyTemplate;
    .locals 1

    .line 374
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method public static final eciesP256HkdfHmacSha256Aes128GcmTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .locals 1

    .line 305
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method static getKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.EciesAeadHkdfPrivateKey"

    return-object v0
.end method

.method static synthetic lambda$eciesP256HkdfHmacSha256Aes128CtrHmacSha256Template$2()Lcom/google/crypto/tink/KeyTemplate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 377
    invoke-static {}, Lcom/google/crypto/tink/hybrid/EciesParameters;->builder()Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    .line 378
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setCurveType(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;->SHA256:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    .line 379
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setHashType(Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->UNCOMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    .line 380
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setNistCurvePointFormat(Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->TINK:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    .line 381
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    .line 383
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    const/16 v2, 0x10

    .line 384
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setAesKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    const/16 v3, 0x20

    .line 385
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHmacKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 386
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 387
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 388
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHashType(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 389
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 390
    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v1

    .line 382
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setDemParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    .line 391
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v0

    .line 376
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$eciesP256HkdfHmacSha256Aes128GcmTemplate$0()Lcom/google/crypto/tink/KeyTemplate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 308
    invoke-static {}, Lcom/google/crypto/tink/hybrid/EciesParameters;->builder()Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    .line 309
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setCurveType(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;->SHA256:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    .line 310
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setHashType(Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->UNCOMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    .line 311
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setNistCurvePointFormat(Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->TINK:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    .line 312
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    .line 314
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmParameters;->builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    const/16 v2, 0xc

    .line 315
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    const/16 v2, 0x10

    .line 316
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    .line 317
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 318
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    .line 319
    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setDemParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v0

    .line 307
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$rawEciesP256HkdfHmacSha256Aes128CtrHmacSha256CompressedTemplate$3()Lcom/google/crypto/tink/KeyTemplate;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 416
    invoke-static {}, Lcom/google/crypto/tink/hybrid/EciesParameters;->builder()Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    .line 417
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setCurveType(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;->SHA256:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    .line 418
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setHashType(Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->COMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    .line 419
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setNistCurvePointFormat(Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    .line 420
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    .line 422
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    const/16 v2, 0x10

    .line 423
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setAesKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    const/16 v3, 0x20

    .line 424
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHmacKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 425
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 426
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 427
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHashType(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 428
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 429
    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v1

    .line 421
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setDemParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    .line 430
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v0

    .line 415
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$rawEciesP256HkdfHmacSha256Aes128GcmCompressedTemplate$1()Lcom/google/crypto/tink/KeyTemplate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 341
    invoke-static {}, Lcom/google/crypto/tink/hybrid/EciesParameters;->builder()Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    .line 342
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setCurveType(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;->SHA256:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    .line 343
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setHashType(Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->COMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    .line 344
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setNistCurvePointFormat(Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    .line 345
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    .line 347
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmParameters;->builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    const/16 v2, 0xc

    .line 348
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    const/16 v2, 0x10

    .line 349
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    .line 350
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 351
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    .line 352
    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v1

    .line 346
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setDemParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v0

    .line 353
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v0

    .line 340
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method private static namedParameters()Ljava/util/Map;
    .locals 6
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

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 124
    invoke-static {}, Lcom/google/crypto/tink/hybrid/EciesParameters;->builder()Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    .line 125
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setCurveType(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;->SHA256:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    .line 126
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setHashType(Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->UNCOMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    .line 127
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setNistCurvePointFormat(Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->TINK:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    .line 128
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    .line 130
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmParameters;->builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    const/16 v3, 0xc

    .line 131
    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    const/16 v4, 0x10

    .line 132
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    .line 133
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    sget-object v5, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 134
    invoke-virtual {v2, v5}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    .line 135
    invoke-virtual {v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v2

    .line 129
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setDemParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v1

    const-string v2, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM"

    .line 122
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {}, Lcom/google/crypto/tink/hybrid/EciesParameters;->builder()Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    .line 140
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setCurveType(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;->SHA256:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    .line 141
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setHashType(Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->UNCOMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    .line 142
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setNistCurvePointFormat(Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    .line 143
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    .line 145
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmParameters;->builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    .line 146
    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    .line 147
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    .line 148
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    sget-object v5, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 149
    invoke-virtual {v2, v5}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    .line 150
    invoke-virtual {v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v2

    .line 144
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setDemParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v1

    const-string v2, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_RAW"

    .line 137
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-static {}, Lcom/google/crypto/tink/hybrid/EciesParameters;->builder()Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    .line 155
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setCurveType(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;->SHA256:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    .line 156
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setHashType(Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->COMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    .line 157
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setNistCurvePointFormat(Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->TINK:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    .line 158
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    .line 160
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmParameters;->builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    .line 161
    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    .line 162
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    .line 163
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    sget-object v5, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 164
    invoke-virtual {v2, v5}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    .line 165
    invoke-virtual {v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v2

    .line 159
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setDemParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    .line 166
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v1

    const-string v2, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM"

    .line 152
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    invoke-static {}, Lcom/google/crypto/tink/hybrid/EciesParameters;->builder()Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    .line 170
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setCurveType(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;->SHA256:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    .line 171
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setHashType(Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->COMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    .line 172
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setNistCurvePointFormat(Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    .line 173
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    .line 175
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmParameters;->builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    .line 176
    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    .line 177
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    .line 178
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    sget-object v5, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 179
    invoke-virtual {v2, v5}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    .line 180
    invoke-virtual {v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v2

    .line 174
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setDemParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    .line 181
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v1

    const-string v2, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_GCM_RAW"

    .line 167
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    invoke-static {}, Lcom/google/crypto/tink/hybrid/EciesParameters;->builder()Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    .line 186
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setCurveType(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;->SHA256:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    .line 187
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setHashType(Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->COMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    .line 188
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setNistCurvePointFormat(Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    .line 189
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    .line 191
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmParameters;->builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    .line 192
    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    .line 193
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    .line 194
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 195
    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v2

    .line 196
    invoke-virtual {v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v2

    .line 190
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setDemParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v1

    const-string v2, "ECIES_P256_HKDF_HMAC_SHA256_AES128_GCM_COMPRESSED_WITHOUT_PREFIX"

    .line 183
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    invoke-static {}, Lcom/google/crypto/tink/hybrid/EciesParameters;->builder()Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    .line 201
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setCurveType(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;->SHA256:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    .line 202
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setHashType(Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->UNCOMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    .line 203
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setNistCurvePointFormat(Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->TINK:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    .line 204
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    .line 206
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    .line 207
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setAesKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    const/16 v3, 0x20

    .line 208
    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHmacKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    .line 209
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    .line 210
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    sget-object v5, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 211
    invoke-virtual {v2, v5}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHashType(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    sget-object v5, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 212
    invoke-virtual {v2, v5}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    .line 213
    invoke-virtual {v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v2

    .line 205
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setDemParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    .line 214
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v1

    const-string v2, "ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256"

    .line 198
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-static {}, Lcom/google/crypto/tink/hybrid/EciesParameters;->builder()Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    .line 218
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setCurveType(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;->SHA256:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    .line 219
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setHashType(Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->UNCOMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    .line 220
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setNistCurvePointFormat(Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    .line 221
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    .line 223
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    .line 224
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setAesKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    .line 225
    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHmacKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    .line 226
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    .line 227
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    sget-object v5, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 228
    invoke-virtual {v2, v5}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHashType(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    sget-object v5, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 229
    invoke-virtual {v2, v5}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    .line 230
    invoke-virtual {v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v2

    .line 222
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setDemParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    .line 231
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v1

    const-string v2, "ECIES_P256_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW"

    .line 215
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {}, Lcom/google/crypto/tink/hybrid/EciesParameters;->builder()Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    .line 235
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setCurveType(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;->SHA256:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    .line 236
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setHashType(Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->COMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    .line 237
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setNistCurvePointFormat(Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->TINK:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    .line 238
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    .line 240
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    .line 241
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setAesKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    .line 242
    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHmacKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    .line 243
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    .line 244
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    sget-object v5, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 245
    invoke-virtual {v2, v5}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHashType(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    sget-object v5, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 246
    invoke-virtual {v2, v5}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    .line 247
    invoke-virtual {v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v2

    .line 239
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setDemParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    .line 248
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v1

    const-string v2, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256"

    .line 232
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    invoke-static {}, Lcom/google/crypto/tink/hybrid/EciesParameters;->builder()Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    .line 252
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setCurveType(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;->SHA256:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    .line 253
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setHashType(Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;->COMPRESSED:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    .line 254
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setNistCurvePointFormat(Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    .line 255
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    .line 257
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    .line 258
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setAesKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    .line 259
    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHmacKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    .line 260
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    .line 261
    invoke-virtual {v2, v4}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 262
    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHashType(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 263
    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v2

    .line 264
    invoke-virtual {v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v2

    .line 256
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->setDemParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;

    move-result-object v1

    .line 265
    invoke-virtual {v1}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v1

    const-string v2, "ECIES_P256_COMPRESSED_HKDF_HMAC_SHA256_AES128_CTR_HMAC_SHA256_RAW"

    .line 249
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final rawEciesP256HkdfHmacSha256Aes128CtrHmacSha256CompressedTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .locals 1

    .line 413
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method public static final rawEciesP256HkdfHmacSha256Aes128GcmCompressedTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .locals 1

    .line 338
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

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

    .line 275
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    invoke-static {}, Lcom/google/crypto/tink/hybrid/internal/EciesProtoSerialization;->register()V

    .line 280
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableParametersRegistry;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->namedParameters()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->putAll(Ljava/util/Map;)V

    .line 281
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->HYBRID_DECRYPT_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 282
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 283
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->HYBRID_ENCRYPT_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 284
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 285
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    const-class v2, Lcom/google/crypto/tink/hybrid/EciesParameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->add(Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;Ljava/lang/Class;)V

    .line 286
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->legacyPrivateKeyManager:Lcom/google/crypto/tink/PrivateKeyManager;

    invoke-virtual {v0, v1, p0}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManager(Lcom/google/crypto/tink/KeyManager;Z)V

    .line 287
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesAeadHkdfPrivateKeyManager;->legacyPublicKeyManager:Lcom/google/crypto/tink/KeyManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManager(Lcom/google/crypto/tink/KeyManager;Z)V

    return-void

    .line 276
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering ECIES Hybrid Encryption is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final toParameterSpec(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Ljava/security/spec/ECParameterSpec;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curveType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 85
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    if-ne p0, v0, :cond_0

    .line 86
    sget-object p0, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->NIST_P256_PARAMS:Ljava/security/spec/ECParameterSpec;

    return-object p0

    .line 88
    :cond_0
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P384:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    if-ne p0, v0, :cond_1

    .line 89
    sget-object p0, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->NIST_P384_PARAMS:Ljava/security/spec/ECParameterSpec;

    return-object p0

    .line 91
    :cond_1
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P521:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    if-ne p0, v0, :cond_2

    .line 92
    sget-object p0, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->NIST_P521_PARAMS:Ljava/security/spec/ECParameterSpec;

    return-object p0

    .line 94
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported curve type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
