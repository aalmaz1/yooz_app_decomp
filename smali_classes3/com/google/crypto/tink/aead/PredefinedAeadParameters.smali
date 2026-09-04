.class public final Lcom/google/crypto/tink/aead/PredefinedAeadParameters;
.super Ljava/lang/Object;
.source "PredefinedAeadParameters.java"


# static fields
.field public static final AES128_CTR_HMAC_SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

.field public static final AES128_EAX:Lcom/google/crypto/tink/aead/AesEaxParameters;

.field public static final AES128_GCM:Lcom/google/crypto/tink/aead/AesGcmParameters;

.field public static final AES256_CTR_HMAC_SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

.field public static final AES256_EAX:Lcom/google/crypto/tink/aead/AesEaxParameters;

.field public static final AES256_GCM:Lcom/google/crypto/tink/aead/AesGcmParameters;

.field public static final CHACHA20_POLY1305:Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters;

.field public static final XAES_256_GCM_160_BIT_NONCE_NO_PREFIX:Lcom/google/crypto/tink/aead/XAesGcmParameters;

.field public static final XAES_256_GCM_192_BIT_NONCE:Lcom/google/crypto/tink/aead/XAesGcmParameters;

.field public static final XAES_256_GCM_192_BIT_NONCE_NO_PREFIX:Lcom/google/crypto/tink/aead/XAesGcmParameters;

.field public static final XCHACHA20_POLY1305:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

.field public static final X_AES_GCM_8_BYTE_SALT_NO_PREFIX:Lcom/google/crypto/tink/aead/XAesGcmParameters;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/PredefinedAeadParameters$$ExternalSyntheticLambda0;-><init>()V

    .line 42
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/aead/AesGcmParameters;

    sput-object v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->AES128_GCM:Lcom/google/crypto/tink/aead/AesGcmParameters;

    .line 63
    new-instance v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/PredefinedAeadParameters$$ExternalSyntheticLambda1;-><init>()V

    .line 64
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/aead/AesGcmParameters;

    sput-object v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->AES256_GCM:Lcom/google/crypto/tink/aead/AesGcmParameters;

    .line 82
    new-instance v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/PredefinedAeadParameters$$ExternalSyntheticLambda2;-><init>()V

    .line 83
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/aead/AesEaxParameters;

    sput-object v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->AES128_EAX:Lcom/google/crypto/tink/aead/AesEaxParameters;

    .line 101
    new-instance v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/PredefinedAeadParameters$$ExternalSyntheticLambda3;-><init>()V

    .line 102
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/aead/AesEaxParameters;

    sput-object v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->AES256_EAX:Lcom/google/crypto/tink/aead/AesEaxParameters;

    .line 123
    new-instance v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/PredefinedAeadParameters$$ExternalSyntheticLambda4;-><init>()V

    .line 124
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    sput-object v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->AES128_CTR_HMAC_SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    .line 147
    new-instance v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/PredefinedAeadParameters$$ExternalSyntheticLambda5;-><init>()V

    .line 148
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    sput-object v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->AES256_CTR_HMAC_SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    .line 163
    sget-object v0, Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters$Variant;->TINK:Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters$Variant;

    .line 164
    invoke-static {v0}, Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters;->create(Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters$Variant;)Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->CHACHA20_POLY1305:Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters;

    .line 170
    sget-object v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;->TINK:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;

    .line 171
    invoke-static {v0}, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;->create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters$Variant;)Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->XCHACHA20_POLY1305:Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    .line 186
    new-instance v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/PredefinedAeadParameters$$ExternalSyntheticLambda6;-><init>()V

    .line 187
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/aead/XAesGcmParameters;

    sput-object v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->XAES_256_GCM_192_BIT_NONCE:Lcom/google/crypto/tink/aead/XAesGcmParameters;

    .line 203
    new-instance v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/PredefinedAeadParameters$$ExternalSyntheticLambda7;-><init>()V

    .line 204
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/aead/XAesGcmParameters;

    sput-object v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->XAES_256_GCM_192_BIT_NONCE_NO_PREFIX:Lcom/google/crypto/tink/aead/XAesGcmParameters;

    .line 224
    new-instance v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/google/crypto/tink/aead/PredefinedAeadParameters$$ExternalSyntheticLambda8;-><init>()V

    .line 225
    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/aead/XAesGcmParameters;

    sput-object v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->XAES_256_GCM_160_BIT_NONCE_NO_PREFIX:Lcom/google/crypto/tink/aead/XAesGcmParameters;

    .line 234
    sput-object v0, Lcom/google/crypto/tink/aead/PredefinedAeadParameters;->X_AES_GCM_8_BYTE_SALT_NO_PREFIX:Lcom/google/crypto/tink/aead/XAesGcmParameters;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$static$0()Lcom/google/crypto/tink/aead/AesGcmParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmParameters;->builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 45
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 46
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 48
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    .line 49
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$1()Lcom/google/crypto/tink/aead/AesGcmParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 66
    invoke-static {}, Lcom/google/crypto/tink/aead/AesGcmParameters;->builder()Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    const/16 v1, 0xc

    .line 67
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    const/16 v1, 0x20

    .line 68
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 69
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    .line 70
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesGcmParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$2()Lcom/google/crypto/tink/aead/AesEaxParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 85
    invoke-static {}, Lcom/google/crypto/tink/aead/AesEaxParameters;->builder()Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 86
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;

    .line 89
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;)Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;

    move-result-object v0

    .line 90
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesEaxParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$3()Lcom/google/crypto/tink/aead/AesEaxParameters;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 104
    invoke-static {}, Lcom/google/crypto/tink/aead/AesEaxParameters;->builder()Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 105
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;

    move-result-object v0

    const/16 v2, 0x20

    .line 106
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;

    move-result-object v0

    .line 107
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;

    .line 108
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesEaxParameters$Variant;)Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesEaxParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesEaxParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$4()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 126
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 127
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setAesKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    const/16 v2, 0x20

    .line 128
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHmacKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 131
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHashType(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 132
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$5()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 150
    invoke-static {}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->builder()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    const/16 v1, 0x20

    .line 151
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setAesKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHmacKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    const/16 v1, 0x10

    .line 154
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;->SHA256:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;

    .line 155
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setHashType(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$HashType;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    .line 156
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;

    move-result-object v0

    .line 157
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Builder;->build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$6()Lcom/google/crypto/tink/aead/XAesGcmParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 188
    sget-object v0, Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->create(Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;I)Lcom/google/crypto/tink/aead/XAesGcmParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$7()Lcom/google/crypto/tink/aead/XAesGcmParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 206
    sget-object v0, Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    const/16 v1, 0xc

    invoke-static {v0, v1}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->create(Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;I)Lcom/google/crypto/tink/aead/XAesGcmParameters;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$8()Lcom/google/crypto/tink/aead/XAesGcmParameters;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 227
    sget-object v0, Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->create(Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;I)Lcom/google/crypto/tink/aead/XAesGcmParameters;

    move-result-object v0

    return-object v0
.end method
