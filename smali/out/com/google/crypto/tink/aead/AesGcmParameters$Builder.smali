.class public final Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;
.super Ljava/lang/Object;
.source "AesGcmParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/AesGcmParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private ivSizeBytes:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private keySizeBytes:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private tagSizeBytes:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 59
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    .line 60
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    .line 61
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    .line 62
    sget-object v0, Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/aead/AesGcmParameters$1;)V
    .registers 2

    .line 58
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/aead/AesGcmParameters;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_44

    .line 112
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    if-eqz v0, :cond_3c

    .line 115
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_34

    .line 119
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    if-eqz v0, :cond_2c

    .line 123
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmParameters;

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/crypto/tink/aead/AesGcmParameters;-><init>(IIILcom/google/crypto/tink/aead/AesGcmParameters$Variant;Lcom/google/crypto/tink/aead/AesGcmParameters$1;)V

    return-object v0

    .line 120
    :cond_2c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Tag size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 116
    :cond_34
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "IV size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_3c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_44
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIvSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ivSizeBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-lez p1, :cond_9

    .line 86
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->ivSizeBytes:Ljava/lang/Integer;

    return-object p0

    .line 83
    :cond_9
    new-instance v0, Ljava/security/GeneralSecurityException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 84
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Invalid IV size in bytes %d; IV size must be positive"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setKeySizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keySizeBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0x10

    if-eq p1, v0, :cond_23

    const/16 v0, 0x18

    if-eq p1, v0, :cond_23

    const/16 v0, 0x20

    if-ne p1, v0, :cond_d

    goto :goto_23

    .line 70
    :cond_d
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Invalid key size %d; only 16-byte, 24-byte and 32-byte AES keys are supported"

    .line 71
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_23
    :goto_23
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->keySizeBytes:Ljava/lang/Integer;

    return-object p0
.end method

.method public setTagSizeBytes(I)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tagSizeBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const/16 v0, 0xc

    if-lt p1, v0, :cond_f

    const/16 v0, 0x10

    if-gt p1, v0, :cond_f

    .line 98
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->tagSizeBytes:Ljava/lang/Integer;

    return-object p0

    .line 93
    :cond_f
    new-instance v0, Ljava/security/GeneralSecurityException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 96
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v2

    const-string p1, "Invalid tag size in bytes %d; value must be between 12 and 16 bytes"

    .line 94
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setVariant(Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;)Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    .line 104
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmParameters$Builder;->variant:Lcom/google/crypto/tink/aead/AesGcmParameters$Variant;

    return-object p0
.end method
