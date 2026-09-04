.class Lcom/google/crypto/tink/streamingaead/StreamingAeadConfigurationV0;
.super Ljava/lang/Object;
.source "StreamingAeadConfigurationV0.java"


# static fields
.field private static final INTERNAL_CONFIGURATION:Lcom/google/crypto/tink/internal/InternalConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    invoke-static {}, Lcom/google/crypto/tink/streamingaead/StreamingAeadConfigurationV0;->create()Lcom/google/crypto/tink/internal/InternalConfiguration;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/streamingaead/StreamingAeadConfigurationV0;->INTERNAL_CONFIGURATION:Lcom/google/crypto/tink/internal/InternalConfiguration;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static create()Lcom/google/crypto/tink/internal/InternalConfiguration;
    .locals 4

    .line 44
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->builder()Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    move-result-object v0

    .line 47
    invoke-static {v0}, Lcom/google/crypto/tink/streamingaead/StreamingAeadWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 48
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda14;-><init>()V

    const-class v2, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingKey;

    const-class v3, Lcom/google/crypto/tink/StreamingAead;

    .line 49
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 51
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda13;-><init>()V

    const-class v2, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKey;

    const-class v3, Lcom/google/crypto/tink/StreamingAead;

    .line 52
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 51
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 55
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->build()Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/InternalConfiguration;->createFromPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry;)Lcom/google/crypto/tink/internal/InternalConfiguration;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 57
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static get()Lcom/google/crypto/tink/Configuration;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;->useOnlyFips()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    sget-object v0, Lcom/google/crypto/tink/streamingaead/StreamingAeadConfigurationV0;->INTERNAL_CONFIGURATION:Lcom/google/crypto/tink/internal/InternalConfiguration;

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot use non-FIPS-compliant StreamingAead in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
