.class public final Lcom/google/crypto/tink/aead/AeadConfig;
.super Ljava/lang/Object;
.source "AeadConfig.java"


# static fields
.field public static final AES_CTR_HMAC_AEAD_TYPE_URL:Ljava/lang/String;

.field public static final AES_EAX_TYPE_URL:Ljava/lang/String;

.field public static final AES_GCM_SIV_TYPE_URL:Ljava/lang/String;

.field public static final AES_GCM_TYPE_URL:Ljava/lang/String;

.field public static final CHACHA20_POLY1305_TYPE_URL:Ljava/lang/String;

.field public static final KMS_AEAD_TYPE_URL:Ljava/lang/String;

.field public static final KMS_ENVELOPE_AEAD_TYPE_URL:Ljava/lang/String;

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

.field public static final XCHACHA20_POLY1305_TYPE_URL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.AesCtrHmacAeadKey"

    .line 40
    invoke-static {v0}, Lcom/google/crypto/tink/aead/AeadConfig;->initializeClassReturnInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/AeadConfig;->AES_CTR_HMAC_AEAD_TYPE_URL:Ljava/lang/String;

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmKey"

    .line 42
    invoke-static {v0}, Lcom/google/crypto/tink/aead/AeadConfig;->initializeClassReturnInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/AeadConfig;->AES_GCM_TYPE_URL:Ljava/lang/String;

    const-string v0, "type.googleapis.com/google.crypto.tink.AesGcmSivKey"

    .line 44
    invoke-static {v0}, Lcom/google/crypto/tink/aead/AeadConfig;->initializeClassReturnInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/AeadConfig;->AES_GCM_SIV_TYPE_URL:Ljava/lang/String;

    const-string v0, "type.googleapis.com/google.crypto.tink.AesEaxKey"

    .line 46
    invoke-static {v0}, Lcom/google/crypto/tink/aead/AeadConfig;->initializeClassReturnInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/AeadConfig;->AES_EAX_TYPE_URL:Ljava/lang/String;

    const-string v0, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    .line 48
    invoke-static {v0}, Lcom/google/crypto/tink/aead/AeadConfig;->initializeClassReturnInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/AeadConfig;->KMS_AEAD_TYPE_URL:Ljava/lang/String;

    const-string v0, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 50
    invoke-static {v0}, Lcom/google/crypto/tink/aead/AeadConfig;->initializeClassReturnInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/AeadConfig;->KMS_ENVELOPE_AEAD_TYPE_URL:Ljava/lang/String;

    const-string v0, "type.googleapis.com/google.crypto.tink.ChaCha20Poly1305Key"

    .line 52
    invoke-static {v0}, Lcom/google/crypto/tink/aead/AeadConfig;->initializeClassReturnInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/AeadConfig;->CHACHA20_POLY1305_TYPE_URL:Ljava/lang/String;

    const-string v0, "type.googleapis.com/google.crypto.tink.XChaCha20Poly1305Key"

    .line 54
    invoke-static {v0}, Lcom/google/crypto/tink/aead/AeadConfig;->initializeClassReturnInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/AeadConfig;->XCHACHA20_POLY1305_TYPE_URL:Ljava/lang/String;

    .line 60
    invoke-static {}, Lcom/google/crypto/tink/proto/RegistryConfig;->getDefaultInstance()Lcom/google/crypto/tink/proto/RegistryConfig;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/AeadConfig;->TINK_1_0_0:Lcom/google/crypto/tink/proto/RegistryConfig;

    .line 67
    sput-object v0, Lcom/google/crypto/tink/aead/AeadConfig;->TINK_1_1_0:Lcom/google/crypto/tink/proto/RegistryConfig;

    .line 74
    sput-object v0, Lcom/google/crypto/tink/aead/AeadConfig;->LATEST:Lcom/google/crypto/tink/proto/RegistryConfig;

    .line 78
    :try_start_4a
    invoke-static {}, Lcom/google/crypto/tink/aead/AeadConfig;->init()V
    :try_end_4d
    .catch Ljava/security/GeneralSecurityException; {:try_start_4a .. :try_end_4d} :catch_4e

    return-void

    :catch_4e
    move-exception v0

    .line 80
    new-instance v1, Ljava/lang/ExceptionInInitializerError;

    invoke-direct {v1, v0}, Ljava/lang/ExceptionInInitializerError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>()V
    .registers 1

    .line 165
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

    .line 117
    invoke-static {}, Lcom/google/crypto/tink/aead/AeadConfig;->register()V

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

    .line 131
    invoke-static {}, Lcom/google/crypto/tink/aead/AeadWrapper;->register()V

    .line 133
    invoke-static {}, Lcom/google/crypto/tink/mac/MacConfig;->register()V

    const/4 v0, 0x1

    .line 134
    invoke-static {v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKeyManager;->register(Z)V

    .line 135
    invoke-static {v0}, Lcom/google/crypto/tink/aead/AesGcmKeyManager;->register(Z)V

    .line 137
    invoke-static {}, Lcom/google/crypto/tink/config/TinkFips;->useOnlyFips()Z

    move-result v1

    if-eqz v1, :cond_14

    return-void

    .line 142
    :cond_14
    invoke-static {v0}, Lcom/google/crypto/tink/aead/AesEaxKeyManager;->register(Z)V

    .line 143
    invoke-static {v0}, Lcom/google/crypto/tink/aead/AesGcmSivKeyManager;->register(Z)V

    .line 144
    invoke-static {v0}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305KeyManager;->register(Z)V

    .line 145
    invoke-static {v0}, Lcom/google/crypto/tink/aead/KmsAeadKeyManager;->register(Z)V

    .line 146
    invoke-static {v0}, Lcom/google/crypto/tink/aead/KmsEnvelopeAeadKeyManager;->register(Z)V

    .line 147
    invoke-static {v0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305KeyManager;->register(Z)V

    .line 148
    invoke-static {v0}, Lcom/google/crypto/tink/aead/XAesGcmKeyManager;->register(Z)V

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

    .line 162
    invoke-static {}, Lcom/google/crypto/tink/aead/AeadConfig;->register()V

    return-void
.end method
