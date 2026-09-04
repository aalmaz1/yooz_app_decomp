.class public final Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;
.super Ljava/lang/Object;
.source "AesCtrHmacAeadKeyManager.java"


# static fields
.field private static final AES_CTR_HMAC_AEAD_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;",
            "Lcom/google/crypto/tink/Aead;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field private static final KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator<",
            "Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_DERIVER:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator<",
            "Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final legacyKeyManager:Lcom/google/crypto/tink/KeyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/KeyManager<",
            "Lcom/google/crypto/tink/Aead;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 60
    new-instance v0, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda4;-><init>()V

    const-class v1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;

    const-class v2, Lcom/google/crypto/tink/Aead;

    .line 61
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->AES_CTR_HMAC_AEAD_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 68
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/Aead;

    sget-object v2, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->SYMMETRIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    .line 71
    invoke-static {}, Lcom/google/crypto/tink/proto/AesCtrHmacAeadKey;->parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v3

    .line 67
    invoke-static {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->create(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/KeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->legacyKeyManager:Lcom/google/crypto/tink/KeyManager;

    .line 79
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->KEY_DERIVER:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;

    .line 106
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    .line 152
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final aes128CtrHmacSha256Template()Lcom/google/crypto/tink/KeyTemplate;
    .locals 1

    .line 182
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method public static final aes256CtrHmacSha256Template()Lcom/google/crypto/tink/KeyTemplate;
    .locals 1

    .line 207
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method static createAesCtrHmacAeadKey(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;
    .locals 1
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

    .line 113
    invoke-static {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->validate(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;)V

    .line 114
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->setParameters(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;

    move-result-object p1

    .line 117
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getAesKeySizeBytes()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/util/SecretBytes;->randomBytes(I)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->setAesKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;

    move-result-object p1

    .line 118
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getHmacKeySizeBytes()I

    move-result p0

    invoke-static {p0}, Lcom/google/crypto/tink/util/SecretBytes;->randomBytes(I)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->setHmacKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;

    move-result-object p0

    return-object p0
.end method

.method static createAesCtrHmacAeadKeyFromRandomness(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;Ljava/io/InputStream;Ljava/lang/Integer;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;
    .locals 1
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "stream",
            "idRequirement",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 97
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;->builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->setParameters(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;

    move-result-object p2

    .line 100
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getAesKeySizeBytes()I

    move-result v0

    invoke-static {p1, v0, p3}, Lcom/google/crypto/tink/internal/Util;->readIntoSecretBytes(Ljava/io/InputStream;ILcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->setAesKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;

    move-result-object p2

    .line 101
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getHmacKeySizeBytes()I

    move-result p0

    invoke-static {p1, p0, p3}, Lcom/google/crypto/tink/internal/Util;->readIntoSecretBytes(Ljava/io/InputStream;ILcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->setHmacKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;

    move-result-object p0

    .line 102
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;

    move-result-object p0

    return-object p0
.end method

.method static getKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    return-object v0
.end method

.method static synthetic lambda$aes128CtrHmacSha256Template$0()Lcom/google/crypto/tink/KeyTemplate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 185
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 186
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setAesKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    const/16 v2, 0x20

    .line 187
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHmacKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    .line 189
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 190
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHashType(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 191
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v0

    .line 184
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$aes256CtrHmacSha256Template$1()Lcom/google/crypto/tink/KeyTemplate;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 210
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    const/16 v1, 0x20

    .line 211
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setAesKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHmacKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    const/16 v2, 0x10

    .line 213
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    .line 214
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 215
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHashType(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 216
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v0

    .line 209
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method private static namedParameters()Ljava/util/Map;
    .locals 5
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

    .line 123
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "AES128_CTR_HMAC_SHA256"

    .line 125
    sget-object v2, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->AES128_CTR_HMAC_SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    const/16 v2, 0x10

    .line 129
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setAesKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    const/16 v3, 0x20

    .line 130
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHmacKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 131
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 132
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 133
    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHashType(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 134
    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v1

    const-string v4, "AES128_CTR_HMAC_SHA256_RAW"

    .line 126
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AES256_CTR_HMAC_SHA256"

    .line 137
    sget-object v4, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->AES256_CTR_HMAC_SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 141
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setAesKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 142
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHmacKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 143
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 144
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 145
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHashType(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 146
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v1

    .line 147
    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v1

    const-string v2, "AES256_CTR_HMAC_SHA256_RAW"

    .line 138
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static register(Z)V
    .locals 4
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

    .line 156
    sget-object v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 160
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/AesCtrHmacAeadProtoSerialization;->register()V

    .line 161
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->AES_CTR_HMAC_AEAD_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 162
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 163
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableParametersRegistry;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->namedParameters()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->putAll(Ljava/util/Map;)V

    .line 164
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->KEY_DERIVER:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;

    const-class v3, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    invoke-virtual {v1, v2, v3}, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->add(Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;Ljava/lang/Class;)V

    .line 165
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    const-class v3, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    invoke-virtual {v1, v2, v3}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->add(Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;Ljava/lang/Class;)V

    .line 166
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->legacyKeyManager:Lcom/google/crypto/tink/KeyManager;

    .line 167
    invoke-virtual {v1, v2, v0, p0}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManagerWithFipsCompatibility(Lcom/google/crypto/tink/KeyManager;Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;Z)V

    return-void

    .line 157
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-CTR-HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validate(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getAesKeySizeBytes()I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getAesKeySizeBytes()I

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_0

    goto :goto_0

    .line 55
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "AES key size must be 16 or 32 bytes"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method
