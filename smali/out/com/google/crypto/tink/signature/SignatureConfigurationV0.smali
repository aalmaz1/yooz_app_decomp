.class Lcom/google/crypto/tink/signature/SignatureConfigurationV0;
.super Ljava/lang/Object;
.source "SignatureConfigurationV0.java"


# static fields
.field private static final INTERNAL_CONFIGURATION:Lcom/google/crypto/tink/internal/InternalConfiguration;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 49
    invoke-static {}, Lcom/google/crypto/tink/signature/SignatureConfigurationV0;->create()Lcom/google/crypto/tink/internal/InternalConfiguration;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/signature/SignatureConfigurationV0;->INTERNAL_CONFIGURATION:Lcom/google/crypto/tink/internal/InternalConfiguration;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create()Lcom/google/crypto/tink/internal/InternalConfiguration;
    .registers 4

    .line 53
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->builder()Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    move-result-object v0

    .line 56
    invoke-static {v0}, Lcom/google/crypto/tink/signature/PublicKeySignWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 57
    invoke-static {v0}, Lcom/google/crypto/tink/signature/PublicKeyVerifyWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 58
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda7;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeySign;

    .line 59
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 61
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda8;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeyVerify;

    .line 62
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 61
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 64
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda5;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeySign;

    .line 65
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 64
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 67
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda6;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeyVerify;

    .line 68
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 70
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda3;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeySign;

    .line 71
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 73
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda4;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeyVerify;

    .line 74
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 76
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda1;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeySign;

    .line 77
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 76
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 79
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda2;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/Ed25519PublicKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeyVerify;

    .line 80
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 83
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->build()Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/InternalConfiguration;->createFromPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry;)Lcom/google/crypto/tink/internal/InternalConfiguration;

    move-result-object v0
    :try_end_92
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_92} :catch_93

    return-object v0

    :catch_93
    move-exception v0

    .line 85
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static get()Lcom/google/crypto/tink/Configuration;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 91
    invoke-static {}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;->useOnlyFips()Z

    move-result v0

    if-nez v0, :cond_9

    .line 95
    sget-object v0, Lcom/google/crypto/tink/signature/SignatureConfigurationV0;->INTERNAL_CONFIGURATION:Lcom/google/crypto/tink/internal/InternalConfiguration;

    return-object v0

    .line 92
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot use non-FIPS-compliant SignatureConfigurationV0 in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
