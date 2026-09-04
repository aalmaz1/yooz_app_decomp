.class public Lcom/google/crypto/tink/mac/HmacKey$Builder;
.super Ljava/lang/Object;
.source "HmacKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/mac/HmacKey;
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

.field private parameters:Lcom/google/crypto/tink/mac/HmacParameters;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    .line 42
    iput-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 43
    iput-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/mac/HmacKey$1;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/google/crypto/tink/mac/HmacKey$Builder;-><init>()V

    return-void
.end method

.method private getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters;->getVariant()Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-ne v0, v1, :cond_0

    .line 67
    sget-object v0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    return-object v0

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters;->getVariant()Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->LEGACY:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    .line 70
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters;->getVariant()Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters;->getVariant()Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/mac/HmacParameters$Variant;->TINK:Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    if-ne v0, v1, :cond_2

    .line 74
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getTinkOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0

    .line 76
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown HmacParameters.Variant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    invoke-virtual {v2}, Lcom/google/crypto/tink/mac/HmacParameters;->getVariant()Lcom/google/crypto/tink/mac/HmacParameters$Variant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 71
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getLegacyOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/mac/HmacKey;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    if-eqz v0, :cond_5

    iget-object v1, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    if-eqz v1, :cond_5

    .line 84
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters;->getKeySizeBytes()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    invoke-virtual {v1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 88
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters;->hasIdRequirement()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 89
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 93
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacParameters;->hasIdRequirement()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_1

    .line 94
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/google/crypto/tink/mac/HmacKey$Builder;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v5

    .line 98
    new-instance v0, Lcom/google/crypto/tink/mac/HmacKey;

    iget-object v3, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    iget-object v4, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object v6, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/mac/HmacKey;-><init>(Lcom/google/crypto/tink/mac/HmacParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/mac/HmacKey$1;)V

    return-object v0

    .line 85
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Key size mismatch"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 81
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters and/or key material"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/mac/HmacKey$Builder;
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

    .line 61
    iput-object p1, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-object p0
.end method

.method public setKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/mac/HmacKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyBytes"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object p0
.end method

.method public setParameters(Lcom/google/crypto/tink/mac/HmacParameters;)Lcom/google/crypto/tink/mac/HmacKey$Builder;
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
    iput-object p1, p0, Lcom/google/crypto/tink/mac/HmacKey$Builder;->parameters:Lcom/google/crypto/tink/mac/HmacParameters;

    return-object p0
.end method
