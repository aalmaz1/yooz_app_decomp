.class public final Lcom/google/crypto/tink/daead/DeterministicAeadConfig;
.super Ljava/lang/Object;
.source "DeterministicAeadConfig.java"


# static fields
.field public static final AES_SIV_TYPE_URL:Ljava/lang/String;

.field public static final LATEST:Lcom/google/crypto/tink/proto/RegistryConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TINK_1_1_0:Lcom/google/crypto/tink/proto/RegistryConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "type.googleapis.com/google.crypto.tink.AesSivKey"

    .line 43
    invoke-static {v0}, Lcom/google/crypto/tink/daead/DeterministicAeadConfig;->initializeClassReturnInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/daead/DeterministicAeadConfig;->AES_SIV_TYPE_URL:Ljava/lang/String;

    .line 49
    invoke-static {}, Lcom/google/crypto/tink/proto/RegistryConfig;->getDefaultInstance()Lcom/google/crypto/tink/proto/RegistryConfig;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/daead/DeterministicAeadConfig;->TINK_1_1_0:Lcom/google/crypto/tink/proto/RegistryConfig;

    .line 56
    invoke-static {}, Lcom/google/crypto/tink/proto/RegistryConfig;->getDefaultInstance()Lcom/google/crypto/tink/proto/RegistryConfig;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/daead/DeterministicAeadConfig;->LATEST:Lcom/google/crypto/tink/proto/RegistryConfig;

    .line 60
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/daead/DeterministicAeadConfig;->register()V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 62
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-static {}, Lcom/google/crypto/tink/daead/DeterministicAeadConfig;->register()V

    return-void
.end method

.method private static initializeClassReturnInput(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    return-object p0
.end method

.method public static register()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 113
    invoke-static {}, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper;->register()V

    .line 115
    invoke-static {}, Lcom/google/crypto/tink/config/TinkFips;->useOnlyFips()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 121
    invoke-static {v0}, Lcom/google/crypto/tink/daead/AesSivKeyManager;->register(Z)V

    return-void
.end method
