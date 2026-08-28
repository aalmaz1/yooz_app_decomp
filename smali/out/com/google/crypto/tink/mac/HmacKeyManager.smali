.class public final Lcom/google/crypto/tink/mac/HmacKeyManager;
.super Ljava/lang/Object;
.source "HmacKeyManager.java"


# static fields
.field private static final CHUNKED_MAC_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/mac/HmacKey;",
            "Lcom/google/crypto/tink/mac/ChunkedMac;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field private static final KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator<",
            "Lcom/google/crypto/tink/mac/HmacParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_DERIVER:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator<",
            "Lcom/google/crypto/tink/mac/HmacParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAC_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/mac/HmacKey;",
            "Lcom/google/crypto/tink/Mac;",
            ">;"
        }
    .end annotation
.end field

.field private static final legacyKeyManager:Lcom/google/crypto/tink/KeyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/KeyManager<",
            "Lcom/google/crypto/tink/Mac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 53
    new-instance v0, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda3;-><init>()V

    const-class v1, Lcom/google/crypto/tink/mac/HmacKey;

    const-class v2, Lcom/google/crypto/tink/mac/ChunkedMac;

    .line 54
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/mac/HmacKeyManager;->CHUNKED_MAC_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 55
    new-instance v0, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda0;-><init>()V

    const-class v1, Lcom/google/crypto/tink/mac/HmacKey;

    const-class v2, Lcom/google/crypto/tink/Mac;

    .line 56
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/mac/HmacKeyManager;->MAC_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 58
    const-class v0, Lcom/google/crypto/tink/Mac;

    sget-object v1, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->SYMMETRIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    .line 63
    invoke-static {}, Lcom/google/crypto/tink/proto/HmacKey;->parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.HmacKey"

    .line 59
    invoke-static {v3, v0, v1, v2}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->create(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/KeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/mac/HmacKeyManager;->legacyKeyManager:Lcom/google/crypto/tink/KeyManager;

    .line 71
    new-instance v0, Lcom/google/crypto/tink/mac/HmacKeyManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/crypto/tink/mac/HmacKeyManager$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/mac/HmacKeyManager;->KEY_DERIVER:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;

    .line 89
    new-instance v0, Lcom/google/crypto/tink/mac/HmacKeyManager$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/google/crypto/tink/mac/HmacKeyManager$$ExternalSyntheticLambda5;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/mac/HmacKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    .line 173
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/mac/HmacKeyManager;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 281
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createHmacKeyFromRandomness(Lcom/google/crypto/tink/mac/HmacParameters;Ljava/io/InputStream;Ljava/lang/Integer;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/mac/HmacKey;
    .registers 5
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

    .line 81
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacKey;->builder()Lcom/google/crypto/tink/mac/HmacKey$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/mac/HmacKey$Builder;->setParameters(Lcom/google/crypto/tink/mac/HmacParameters;)Lcom/google/crypto/tink/mac/HmacKey$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacParameters;->getKeySizeBytes()I

    move-result p0

    invoke-static {p1, p0, p3}, Lcom/google/crypto/tink/internal/Util;->readIntoSecretBytes(Ljava/io/InputStream;ILcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/mac/HmacKey$Builder;->setKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/mac/HmacKey$Builder;

    move-result-object p0

    .line 84
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/mac/HmacKey$Builder;->setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/mac/HmacKey$Builder;

    move-result-object p0

    .line 85
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacKey$Builder;->build()Lcom/google/crypto/tink/mac/HmacKey;

    move-result-object p0

    return-object p0
.end method

.method static createNewHmacKey(Lcom/google/crypto/tink/mac/HmacParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/mac/HmacKey;
    .registers 3
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

    .line 95
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacKey;->builder()Lcom/google/crypto/tink/mac/HmacKey$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/mac/HmacKey$Builder;->setParameters(Lcom/google/crypto/tink/mac/HmacParameters;)Lcom/google/crypto/tink/mac/HmacKey$Builder;

    move-result-object v0

    .line 97
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacParameters;->getKeySizeBytes()I

    move-result p0

    invoke-static {p0}, Lcom/google/crypto/tink/util/SecretBytes;->randomBytes(I)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/mac/HmacKey$Builder;->setKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/mac/HmacKey$Builder;

    move-result-object p0

    .line 98
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/mac/HmacKey$Builder;->setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/mac/HmacKey$Builder;

    move-result-object p0

    .line 99
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/HmacKey$Builder;->build()Lcom/google/crypto/tink/mac/HmacKey;

    move-result-object p0

    return-object p0
.end method

.method static getKeyType()Ljava/lang/String;
    .registers 1

    const-string v0, "type.googleapis.com/google.crypto.tink.HmacKey"

    return-object v0
.end method

.method public static final hmacSha256HalfDigestTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .registers 1

    .line 204
    new-instance v0, Lcom/google/crypto/tink/mac/HmacKeyManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/crypto/tink/mac/HmacKeyManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method public static final hmacSha256Template()Lcom/google/crypto/tink/KeyTemplate;
    .registers 1

    .line 226
    new-instance v0, Lcom/google/crypto/tink/mac/HmacKeyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/mac/HmacKeyManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method public static final hmacSha512HalfDigestTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .registers 1

    .line 248
    new-instance v0, Lcom/google/crypto/tink/mac/HmacKeyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/crypto/tink/mac/HmacKeyManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method public static final hmacSha512Template()Lcom/google/crypto/tink/KeyTemplate;
    .registers 1

    .line 270
    new-instance v0, Lcom/google/crypto/tink/mac/HmacKeyManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/crypto/tink/mac/HmacKeyManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method static synthetic lambda$hmacSha256HalfDigestTemplate$0()Lcom/google/crypto/tink/KeyTemplate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 207
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacParameters;->builder()Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    const/16 v1, 0x20

    .line 208
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 209
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA256:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 210
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setHashType(Lcom/google/crypto/tink/mac/HmacParameters$HashType;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 211
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setVariant(Lcom/google/crypto/tink/mac/HmacParameters$Variant;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    .line 212
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->build()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v0

    .line 206
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$hmacSha256Template$1()Lcom/google/crypto/tink/KeyTemplate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 229
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacParameters;->builder()Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    const/16 v1, 0x20

    .line 230
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    .line 231
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA256:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 232
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setHashType(Lcom/google/crypto/tink/mac/HmacParameters$HashType;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 233
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setVariant(Lcom/google/crypto/tink/mac/HmacParameters$Variant;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    .line 234
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->build()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v0

    .line 228
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$hmacSha512HalfDigestTemplate$2()Lcom/google/crypto/tink/KeyTemplate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 251
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacParameters;->builder()Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    const/16 v1, 0x40

    .line 252
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    const/16 v1, 0x20

    .line 253
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA512:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 254
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setHashType(Lcom/google/crypto/tink/mac/HmacParameters$HashType;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 255
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setVariant(Lcom/google/crypto/tink/mac/HmacParameters$Variant;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    .line 256
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->build()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v0

    .line 250
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$hmacSha512Template$3()Lcom/google/crypto/tink/KeyTemplate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 273
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacParameters;->builder()Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    const/16 v1, 0x40

    .line 274
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    .line 275
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA512:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 276
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setHashType(Lcom/google/crypto/tink/mac/HmacParameters$HashType;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 277
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setVariant(Lcom/google/crypto/tink/mac/HmacParameters$Variant;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->build()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v0

    .line 272
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method private static namedParameters()Ljava/util/Map;
    .registers 6
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

    .line 103
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "HMAC_SHA256_128BITTAG"

    .line 104
    sget-object v2, Lcom/google/crypto/tink/mac/PredefinedMacParameters;->HMAC_SHA256_128BITTAG:Lcom/google/crypto/tink/mac/HmacParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacParameters;->builder()Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    const/16 v2, 0x20

    .line 108
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    const/16 v3, 0x10

    .line 109
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 110
    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setVariant(Lcom/google/crypto/tink/mac/HmacParameters$Variant;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA256:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 111
    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setHashType(Lcom/google/crypto/tink/mac/HmacParameters$HashType;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 112
    invoke-virtual {v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->build()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v1

    const-string v4, "HMAC_SHA256_128BITTAG_RAW"

    .line 105
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacParameters;->builder()Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 116
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 118
    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setVariant(Lcom/google/crypto/tink/mac/HmacParameters$Variant;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA256:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 119
    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setHashType(Lcom/google/crypto/tink/mac/HmacParameters$HashType;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 120
    invoke-virtual {v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->build()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v1

    const-string v4, "HMAC_SHA256_256BITTAG"

    .line 113
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacParameters;->builder()Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 124
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 125
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 126
    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setVariant(Lcom/google/crypto/tink/mac/HmacParameters$Variant;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA256:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 127
    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setHashType(Lcom/google/crypto/tink/mac/HmacParameters$HashType;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->build()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v1

    const-string v4, "HMAC_SHA256_256BITTAG_RAW"

    .line 121
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacParameters;->builder()Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    const/16 v4, 0x40

    .line 132
    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 133
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    sget-object v5, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 134
    invoke-virtual {v1, v5}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setVariant(Lcom/google/crypto/tink/mac/HmacParameters$Variant;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    sget-object v5, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA512:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 135
    invoke-virtual {v1, v5}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setHashType(Lcom/google/crypto/tink/mac/HmacParameters$HashType;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 136
    invoke-virtual {v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->build()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v1

    const-string v5, "HMAC_SHA512_128BITTAG"

    .line 129
    invoke-interface {v0, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacParameters;->builder()Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 140
    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 141
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 142
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setVariant(Lcom/google/crypto/tink/mac/HmacParameters$Variant;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA512:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 143
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setHashType(Lcom/google/crypto/tink/mac/HmacParameters$HashType;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 144
    invoke-virtual {v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->build()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v1

    const-string v3, "HMAC_SHA512_128BITTAG_RAW"

    .line 137
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacParameters;->builder()Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 148
    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 149
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 150
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setVariant(Lcom/google/crypto/tink/mac/HmacParameters$Variant;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA512:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 151
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setHashType(Lcom/google/crypto/tink/mac/HmacParameters$HashType;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 152
    invoke-virtual {v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->build()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v1

    const-string v3, "HMAC_SHA512_256BITTAG"

    .line 145
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacParameters;->builder()Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 156
    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 157
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 158
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setVariant(Lcom/google/crypto/tink/mac/HmacParameters$Variant;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA512:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 159
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setHashType(Lcom/google/crypto/tink/mac/HmacParameters$HashType;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 160
    invoke-virtual {v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->build()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v1

    const-string v2, "HMAC_SHA512_256BITTAG_RAW"

    .line 153
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "HMAC_SHA512_512BITTAG"

    .line 161
    sget-object v2, Lcom/google/crypto/tink/mac/PredefinedMacParameters;->HMAC_SHA512_512BITTAG:Lcom/google/crypto/tink/mac/HmacParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacParameters;->builder()Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 165
    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 166
    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    .line 167
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setVariant(Lcom/google/crypto/tink/mac/HmacParameters$Variant;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA512:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    .line 168
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setHashType(Lcom/google/crypto/tink/mac/HmacParameters$HashType;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 169
    invoke-virtual {v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->build()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v1

    const-string v2, "HMAC_SHA512_512BITTAG_RAW"

    .line 162
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static register(Z)V
    .registers 5
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

    .line 177
    sget-object v0, Lcom/google/crypto/tink/mac/HmacKeyManager;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v1

    if-eqz v1, :cond_48

    .line 181
    invoke-static {}, Lcom/google/crypto/tink/mac/internal/HmacProtoSerialization;->register()V

    .line 182
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/mac/HmacKeyManager;->CHUNKED_MAC_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 183
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 184
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/mac/HmacKeyManager;->MAC_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 185
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 186
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableParametersRegistry;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/mac/HmacKeyManager;->namedParameters()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->putAll(Ljava/util/Map;)V

    .line 187
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/mac/HmacKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    const-class v3, Lcom/google/crypto/tink/mac/HmacParameters;

    invoke-virtual {v1, v2, v3}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->add(Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;Ljava/lang/Class;)V

    .line 188
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/mac/HmacKeyManager;->KEY_DERIVER:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;

    const-class v3, Lcom/google/crypto/tink/mac/HmacParameters;

    invoke-virtual {v1, v2, v3}, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->add(Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;Ljava/lang/Class;)V

    .line 189
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/mac/HmacKeyManager;->legacyKeyManager:Lcom/google/crypto/tink/KeyManager;

    .line 190
    invoke-virtual {v1, v2, v0, p0}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManagerWithFipsCompatibility(Lcom/google/crypto/tink/KeyManager;Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;Z)V

    return-void

    .line 178
    :cond_48
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
