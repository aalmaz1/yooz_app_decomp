.class public Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;
.super Ljava/lang/Object;
.source "AesCtrHmacAeadKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private hmacKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private idRequirement:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private parameters:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    .line 41
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 42
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->hmacKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 43
    iput-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$1;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;-><init>()V

    return-void
.end method

.method private getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getVariant()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    if-ne v0, v1, :cond_0

    .line 73
    sget-object v0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    return-object v0

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getVariant()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    if-ne v0, v1, :cond_1

    .line 76
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->idRequirement:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getLegacyOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getVariant()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    if-ne v0, v1, :cond_2

    .line 79
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->idRequirement:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getTinkOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0

    .line 81
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown AesCtrHmacAeadParameters.Variant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    .line 82
    invoke-virtual {v2}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getVariant()Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters$Variant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    if-eqz v0, :cond_7

    .line 90
    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->hmacKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    if-eqz v1, :cond_6

    .line 94
    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getAesKeySizeBytes()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    invoke-virtual {v1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 98
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->getHmacKeySizeBytes()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->hmacKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    invoke-virtual {v1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 102
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->hasIdRequirement()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 103
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;->hasIdRequirement()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_1

    .line 108
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v6

    .line 112
    new-instance v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;

    iget-object v3, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    iget-object v4, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object v5, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->hmacKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object v7, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->idRequirement:Ljava/lang/Integer;

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;-><init>(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$1;)V

    return-object v0

    .line 99
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "HMAC key size mismatch"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "AES key size mismatch"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without key material"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_7
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAesKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aesKeyBytes"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->aesKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object p0
.end method

.method public setHmacKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hmacKeyBytes"
        }
    .end annotation

    .line 61
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->hmacKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object p0
.end method

.method public setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;
    .locals 0
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

    .line 67
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-object p0
.end method

.method public setParameters(Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;)Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey$Builder;->parameters:Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    return-object p0
.end method
