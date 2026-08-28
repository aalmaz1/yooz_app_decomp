.class public final Lcom/google/crypto/tink/aead/AesGcmKeyManager;
.super Ljava/lang/Object;
.source "AesGcmKeyManager.java"


# static fields
.field private static final AES_GCM_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/aead/AesGcmKey;",
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
            "Lcom/google/crypto/tink/aead/AesGcmParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_DERIVER:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator<",
            "Lcom/google/crypto/tink/aead/AesGcmParameters;",
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
.method public static synthetic $r8$lambda$TDBJgmRZG0mLRtQkbnwbZr3b3fs(Lcom/google/crypto/tink/aead/AesGcmParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/AesGcmKey;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->createAesGcmKey(Lcom/google/crypto/tink/aead/AesGcmParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/AesGcmKey;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 58
    new-instance v0, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda5;-><init>()V

    const-class v1, Lcom/google/crypto/tink/aead/AesGcmKey;

    const-class v2, Lcom/google/crypto/tink/Aead;

    .line 59
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->AES_GCM_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 67
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/Aead;

    sget-object v2, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->SYMMETRIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    .line 70
    invoke-static {}, Lcom/google/crypto/tink/proto/AesGcmKey;->parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v3

    .line 66
    invoke-static {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->create(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/KeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->legacyKeyManager:Lcom/google/crypto/tink/KeyManager;

    .line 97
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmKeyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/AesGcmKeyManager$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->KEY_DERIVER:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;

    .line 115
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmKeyManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/AesGcmKeyManager$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    .line 130
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 244
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final aes128GcmTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .registers 1

    .line 160
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmKeyManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/AesGcmKeyManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method public static final aes256GcmTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .registers 1

    .line 208
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmKeyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/AesGcmKeyManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method private static createAesGcmKey(Lcom/google/crypto/tink/aead/AesGcmParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/AesGcmKey;
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

    .line 122
    invoke-static {p0}, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->validate(Lcom/google/crypto/tink/aead/AesGcmParameters;)V

    .line 123
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmKey;->builder()Lcom/google/crypto/tink/aead/AesGcmKey$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->setParameters(Lcom/google/crypto/tink/aead/AesGcmParameters;)Lcom/google/crypto/tink/aead/AesGcmKey$Builder;

    move-result-object v0

    .line 125
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/AesGcmKey$Builder;

    move-result-object p1

    .line 126
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getKeySizeBytes()I

    move-result p0

    invoke-static {p0}, Lcom/google/crypto/tink/util/SecretBytes;->randomBytes(I)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->setKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/aead/AesGcmKey$Builder;

    move-result-object p0

    .line 127
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmKey;

    move-result-object p0

    return-object p0
.end method

.method static createAesGcmKeyFromRandomness(Lcom/google/crypto/tink/aead/AesGcmParameters;Ljava/io/InputStream;Ljava/lang/Integer;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/aead/AesGcmKey;
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

    .line 106
    invoke-static {p0}, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->validate(Lcom/google/crypto/tink/aead/AesGcmParameters;)V

    .line 107
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmKey;->builder()Lcom/google/crypto/tink/aead/AesGcmKey$Builder;

    move-result-object v0

    .line 108
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->setParameters(Lcom/google/crypto/tink/aead/AesGcmParameters;)Lcom/google/crypto/tink/aead/AesGcmKey$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p2}, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/AesGcmKey$Builder;

    move-result-object p2

    .line 110
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getKeySizeBytes()I

    move-result p0

    invoke-static {p1, p0, p3}, Lcom/google/crypto/tink/internal/Util;->readIntoSecretBytes(Ljava/io/InputStream;ILcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->setKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/aead/AesGcmKey$Builder;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmKey$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmKey;

    move-result-object p0

    return-object p0
.end method

.method static getKeyType()Ljava/lang/String;
    .registers 1

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    return-object v0
.end method

.method static synthetic lambda$aes128GcmTemplate$0()Lcom/google/crypto/tink/KeyTemplate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 163
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmParameters;->builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 164
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 165
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    .line 166
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 167
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    .line 168
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v0

    .line 162
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$aes256GcmTemplate$2()Lcom/google/crypto/tink/KeyTemplate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 211
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmParameters;->builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 212
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    const/16 v1, 0x20

    .line 213
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 214
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 215
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v0

    .line 210
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$rawAes128GcmTemplate$1()Lcom/google/crypto/tink/KeyTemplate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmParameters;->builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 189
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 190
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 192
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v0

    .line 187
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$rawAes256GcmTemplate$3()Lcom/google/crypto/tink/KeyTemplate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 236
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmParameters;->builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 237
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    const/16 v1, 0x20

    .line 238
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 239
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 240
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v0

    .line 235
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method private static namedParameters()Ljava/util/Map;
    .registers 5
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

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "AES128_GCM"

    .line 74
    sget-object v2, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->AES128_GCM:Lcom/google/crypto/tink/aead/AesGcmParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmParameters;->builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    const/16 v2, 0xc

    .line 78
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    const/16 v3, 0x10

    .line 79
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    .line 80
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    sget-object v4, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 81
    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    .line 82
    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v1

    const-string v4, "AES128_GCM_RAW"

    .line 75
    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "AES256_GCM"

    .line 83
    sget-object v4, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->AES256_GCM:Lcom/google/crypto/tink/aead/AesGcmParameters;

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmParameters;->builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    .line 87
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    const/16 v2, 0x20

    .line 88
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    .line 89
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 90
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v1

    .line 91
    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v1

    const-string v2, "AES256_GCM_RAW"

    .line 84
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final rawAes128GcmTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .registers 1

    .line 185
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmKeyManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/AesGcmKeyManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method public static final rawAes256GcmTemplate()Lcom/google/crypto/tink/KeyTemplate;
    .registers 1

    .line 233
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmKeyManager$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/AesGcmKeyManager$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

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

    .line 134
    sget-object v0, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v1

    if-eqz v1, :cond_3f

    .line 138
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/AesGcmProtoSerialization;->register()V

    .line 139
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->AES_GCM_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 140
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 141
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableParametersRegistry;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->namedParameters()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->putAll(Ljava/util/Map;)V

    .line 142
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->KEY_DERIVER:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;

    const-class v3, Lcom/google/crypto/tink/aead/AesGcmParameters;

    invoke-virtual {v1, v2, v3}, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->add(Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;Ljava/lang/Class;)V

    .line 143
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    const-class v3, Lcom/google/crypto/tink/aead/AesGcmParameters;

    invoke-virtual {v1, v2, v3}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->add(Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;Ljava/lang/Class;)V

    .line 144
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->legacyKeyManager:Lcom/google/crypto/tink/KeyManager;

    .line 145
    invoke-virtual {v1, v2, v0, p0}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManagerWithFipsCompatibility(Lcom/google/crypto/tink/KeyManager;Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;Z)V

    return-void

    .line 135
    :cond_3f
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static final validate(Lcom/google/crypto/tink/aead/AesGcmParameters;)V
    .registers 2
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

    .line 53
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/AesGcmParameters;->getKeySizeBytes()I

    move-result p0

    const/16 v0, 0x18

    if-eq p0, v0, :cond_9

    return-void

    .line 54
    :cond_9
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "192 bit AES GCM Parameters are not valid"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
