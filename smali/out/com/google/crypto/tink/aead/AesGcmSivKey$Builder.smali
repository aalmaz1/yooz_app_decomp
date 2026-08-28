.class public Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;
.super Ljava/lang/Object;
.source "AesGcmSivKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/AesGcmSivKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private idRequirement:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private keyBytes:Lcom/google/crypto/tink/util/SecretBytes;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private parameters:Lcom/google/crypto/tink/aead/AesGcmSivParameters;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    .line 42
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 43
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/aead/AesGcmSivKey$1;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;-><init>()V

    return-void
.end method

.method private getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .registers 4

    .line 66
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->getVariant()Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    if-ne v0, v1, :cond_d

    .line 67
    sget-object v0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    return-object v0

    .line 69
    :cond_d
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->getVariant()Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    if-ne v0, v1, :cond_22

    .line 70
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->idRequirement:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getLegacyOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0

    .line 72
    :cond_22
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->getVariant()Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    if-ne v0, v1, :cond_37

    .line 73
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->idRequirement:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getTinkOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0

    .line 75
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown AesGcmSivParameters.Variant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    .line 76
    invoke-virtual {v2}, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->getVariant()Lcom/google/crypto/tink/aead/AesGcmSivParameters$Variant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/aead/AesGcmSivKey;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    if-eqz v0, :cond_58

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    if-eqz v1, :cond_58

    .line 84
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->getKeySizeBytes()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    invoke-virtual {v1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result v1

    if-ne v0, v1, :cond_50

    .line 88
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->hasIdRequirement()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-eqz v0, :cond_21

    goto :goto_29

    .line 89
    :cond_21
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesGcmSivParameters;->hasIdRequirement()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-nez v0, :cond_36

    goto :goto_3e

    .line 94
    :cond_36
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_3e
    :goto_3e
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v5

    .line 98
    new-instance v0, Lcom/google/crypto/tink/aead/AesGcmSivKey;

    iget-object v3, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    iget-object v4, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object v6, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->idRequirement:Ljava/lang/Integer;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/aead/AesGcmSivKey;-><init>(Lcom/google/crypto/tink/aead/AesGcmSivParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/aead/AesGcmSivKey$1;)V

    return-object v0

    .line 85
    :cond_50
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Key size mismatch"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_58
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters and/or key material"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;
    .registers 2
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idRequirement"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-object p0
.end method

.method public setKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyBytes"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object p0
.end method

.method public setParameters(Lcom/google/crypto/tink/aead/AesGcmSivParameters;)Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesGcmSivKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    return-object p0
.end method
