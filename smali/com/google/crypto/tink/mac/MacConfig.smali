.class public final Lcom/google/crypto/tink/mac/MacConfig;
.super Ljava/lang/Object;
.source "MacConfig.java"


# static fields
.field public static final HMAC_TYPE_URL:Ljava/lang/String;

.field public static final LATEST:Lcom/google/crypto/tink/proto/RegistryConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TINK_1_0_0:Lcom/google/crypto/tink/proto/RegistryConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TINK_1_1_0:Lcom/google/crypto/tink/proto/RegistryConfig;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.HmacKey"

    .line 42
    invoke-static {v0}, Lcom/google/crypto/tink/mac/MacConfig;->initializeClassReturnInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/mac/MacConfig;->HMAC_TYPE_URL:Ljava/lang/String;

    .line 48
    invoke-static {}, Lcom/google/crypto/tink/proto/RegistryConfig;->getDefaultInstance()Lcom/google/crypto/tink/proto/RegistryConfig;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/mac/MacConfig;->TINK_1_0_0:Lcom/google/crypto/tink/proto/RegistryConfig;

    .line 55
    sput-object v0, Lcom/google/crypto/tink/mac/MacConfig;->TINK_1_1_0:Lcom/google/crypto/tink/proto/RegistryConfig;

    .line 62
    sput-object v0, Lcom/google/crypto/tink/mac/MacConfig;->LATEST:Lcom/google/crypto/tink/proto/RegistryConfig;

    .line 66
    :try_start_12
    invoke-static {}, Lcom/google/crypto/tink/mac/MacConfig;->init()V
    :try_end_15
    .catch Ljava/security/GeneralSecurityException; {:try_start_12 .. :try_end_15} :catch_16

    return-void

    :catch_16
    move-exception v0

    .line 68
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static init()V
    .registers 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 102
    invoke-static {}, Lcom/google/crypto/tink/mac/MacConfig;->register()V

    return-void
.end method

.method private static initializeClassReturnInput(Ljava/lang/String;)Ljava/lang/String;
    .registers 1
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
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 113
    invoke-static {}, Lcom/google/crypto/tink/mac/MacWrapper;->register()V

    .line 114
    invoke-static {}, Lcom/google/crypto/tink/mac/ChunkedMacWrapper;->register()V

    const/4 v0, 0x1

    .line 115
    invoke-static {v0}, Lcom/google/crypto/tink/mac/HmacKeyManager;->register(Z)V

    .line 117
    invoke-static {}, Lcom/google/crypto/tink/config/TinkFips;->useOnlyFips()Z

    move-result v1

    if-eqz v1, :cond_11

    return-void

    .line 122
    :cond_11
    invoke-static {v0}, Lcom/google/crypto/tink/mac/AesCmacKeyManager;->register(Z)V

    return-void
.end method

.method public static registerStandardKeyTypes()V
    .registers 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 136
    invoke-static {}, Lcom/google/crypto/tink/mac/MacConfig;->register()V

    return-void
.end method
