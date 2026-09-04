.class public final Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;
.super Ljava/lang/Object;
.source "XChaCha20Poly1305KeyManager.java"


# static fields
.field private static final KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator<",
            "Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_DERIVER:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator<",
            "Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_SIZE_IN_BYTES:I = 0x20

.field private static final X_CHA_CHA_20_POLY_1305_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;",
            "Lcom/google/crypto/tink/Aead;",
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
.method public static synthetic $r8$lambda$TfRvT4e_m4tEJxoDIdfWf16KHzM(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->createAead(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 62
    new-instance v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$$ExternalSyntheticLambda0;-><init>()V

    const-class v1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;

    const-class v2, Lcom/google/crypto/tink/Aead;

    .line 63
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->X_CHA_CHA_20_POLY_1305_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 74
    invoke-static {}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/Aead;

    sget-object v2, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->SYMMETRIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    .line 77
    invoke-static {}, Lcom/google/crypto/tink/proto/XChaCha20Poly1305Key;->parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v3

    .line 73
    invoke-static {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->create(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/KeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->legacyKeyManager:Lcom/google/crypto/tink/KeyManager;

    .line 81
    new-instance v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->KEY_DERIVER:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;

    .line 98
    new-instance v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAead(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;
    .locals 1
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

    .line 55
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-static {p0}, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;

    move-result-object p0

    return-object p0

    .line 58
    :cond_0
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/XChaCha20Poly1305;->create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;

    move-result-object p0

    return-object p0
.end method

.method static createXChaChaKey(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;
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

    .line 105
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->getVariant()Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    move-result-object p0

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/google/crypto/tink/util/SecretBytes;->randomBytes(I)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v0

    .line 104
    invoke-static {p0, v0, p1}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;Lcom/google/crypto/tink/util/SecretBytes;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;

    move-result-object p0

    return-object p0
.end method

.method static createXChaChaKeyFromRandomness(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;Ljava/io/InputStream;Ljava/lang/Integer;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;
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

    .line 91
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->getVariant()Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    move-result-object p0

    const/16 v0, 0x20

    .line 92
    invoke-static {p1, v0, p3}, Lcom/google/crypto/tink/internal/Util;->readIntoSecretBytes(Ljava/io/InputStream;ILcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p1

    .line 90
    invoke-static {p0, p1, p2}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;->create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;Lcom/google/crypto/tink/util/SecretBytes;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;

    move-result-object p0

    return-object p0
.end method

.method static getKeyType()Ljava/lang/String;
    .locals 1

    const-string v0, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    return-object v0
.end method

.method static synthetic lambda$rawXChaCha20Poly1305Template$1()Lcom/google/crypto/tink/KeyTemplate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 152
    sget-object v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    .line 153
    invoke-static {v0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    move-result-object v0

    .line 152
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$xChaCha20Poly1305Template$0()Lcom/google/crypto/tink/KeyTemplate;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 140
    sget-object v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;->TINK:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    .line 141
    invoke-static {v0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    move-result-object v0

    .line 140
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

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

    .line 109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 110
    sget-object v1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;->TINK:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    .line 112
    invoke-static {v1}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    move-result-object v1

    const-string v2, "XCHACHA20_POLY1305"

    .line 110
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    .line 115
    invoke-static {v1}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    move-result-object v1

    const-string v2, "XCHACHA20_POLY1305_RAW"

    .line 113
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static final rawXChaCha20Poly1305Template()Lcom/google/crypto/tink/KeyTemplate;
    .locals 1

    .line 150
    new-instance v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method public static register(Z)V
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

    .line 120
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_NOT_FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305ProtoSerialization;->register()V

    .line 125
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->X_CHA_CHA_20_POLY_1305_PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 126
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 127
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableParametersRegistry;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->namedParameters()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->putAll(Ljava/util/Map;)V

    .line 128
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    const-class v2, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->add(Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;Ljava/lang/Class;)V

    .line 129
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->KEY_DERIVER:Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;

    const-class v2, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    .line 130
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry;->add(Lcom/google/crypto/tink/internal/MutableKeyDerivationRegistry$InsecureKeyCreator;Ljava/lang/Class;)V

    .line 131
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->legacyKeyManager:Lcom/google/crypto/tink/KeyManager;

    invoke-virtual {v0, v1, p0}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManager(Lcom/google/crypto/tink/KeyManager;Z)V

    return-void

    .line 121
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Registering XChaCha20Poly1305 is not supported in FIPS mode"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final xChaCha20Poly1305Template()Lcom/google/crypto/tink/KeyTemplate;
    .locals 1

    .line 138
    new-instance v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method
