.class public final Lcom/google/crypto/tink/aead/XAesGcmKeyManager;
.super Ljava/lang/Object;
.source "XAesGcmKeyManager.java"


# static fields
.field private static final KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator<",
            "Lcom/google/crypto/tink/aead/XAesGcmParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final X_AES_GCM_PRIMITVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/aead/XAesGcmKey;",
            "Lcom/google/crypto/tink/Aead;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$IMpPBou9JZ06zGAZBNcecPn3Tcs(Lcom/google/crypto/tink/aead/XAesGcmParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/XAesGcmKey;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/crypto/tink/aead/XAesGcmKeyManager;->createXAesGcmKey(Lcom/google/crypto/tink/aead/XAesGcmParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/XAesGcmKey;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 39
    new-instance v0, Lcom/google/crypto/tink/aead/XAesGcmKeyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/XAesGcmKeyManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/aead/XAesGcmKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    .line 42
    new-instance v0, Lcom/google/crypto/tink/aead/AeadConfigurationV0$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/AeadConfigurationV0$$ExternalSyntheticLambda2;-><init>()V

    const-class v1, Lcom/google/crypto/tink/aead/XAesGcmKey;

    const-class v2, Lcom/google/crypto/tink/Aead;

    .line 43
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/XAesGcmKeyManager;->X_AES_GCM_PRIMITVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createXAesGcmKey(Lcom/google/crypto/tink/aead/XAesGcmParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/XAesGcmKey;
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

    const/16 v0, 0x20

    .line 64
    invoke-static {v0}, Lcom/google/crypto/tink/util/SecretBytes;->randomBytes(I)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/google/crypto/tink/aead/XAesGcmKey;->create(Lcom/google/crypto/tink/aead/XAesGcmParameters;Lcom/google/crypto/tink/util/SecretBytes;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/XAesGcmKey;

    move-result-object p0

    return-object p0
.end method

.method private static namedParameters()Ljava/util/Map;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/crypto/tink/Parameters;",
            ">;"
        }
    .end annotation

    .line 46
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "XAES_256_GCM_192_BIT_NONCE"

    .line 47
    sget-object v2, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->XAES_256_GCM_192_BIT_NONCE:Lcom/google/crypto/tink/aead/XAesGcmParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "XAES_256_GCM_192_BIT_NONCE_NO_PREFIX"

    .line 48
    sget-object v2, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->XAES_256_GCM_192_BIT_NONCE_NO_PREFIX:Lcom/google/crypto/tink/aead/XAesGcmParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "XAES_256_GCM_160_BIT_NONCE_NO_PREFIX"

    .line 51
    sget-object v2, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->XAES_256_GCM_160_BIT_NONCE_NO_PREFIX:Lcom/google/crypto/tink/aead/XAesGcmParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "X_AES_GCM_8_BYTE_SALT_NO_PREFIX"

    .line 54
    sget-object v2, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->X_AES_GCM_8_BYTE_SALT_NO_PREFIX:Lcom/google/crypto/tink/aead/XAesGcmParameters;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static register(Z)V
    .registers 3
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

    .line 68
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->register()V

    .line 69
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableParametersRegistry;

    move-result-object p0

    invoke-static {}, Lcom/google/crypto/tink/aead/XAesGcmKeyManager;->namedParameters()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->putAll(Ljava/util/Map;)V

    .line 70
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/aead/XAesGcmKeyManager;->X_AES_GCM_PRIMITVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 71
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 72
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/aead/XAesGcmKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    const-class v1, Lcom/google/crypto/tink/aead/XAesGcmParameters;

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->add(Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;Ljava/lang/Class;)V

    return-void
.end method
