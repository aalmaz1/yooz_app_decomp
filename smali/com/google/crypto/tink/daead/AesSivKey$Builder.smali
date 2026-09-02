.class public Lcom/google/crypto/tink/daead/AesSivKey$Builder;
.super Ljava/lang/Object;
.source "AesSivKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/daead/AesSivKey;
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

.field private parameters:Lcom/google/crypto/tink/daead/AesSivParameters;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-object v0, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->parameters:Lcom/google/crypto/tink/daead/AesSivParameters;

    .line 45
    iput-object v0, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    .line 46
    iput-object v0, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/daead/AesSivKey$1;)V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcom/google/crypto/tink/daead/AesSivKey$Builder;-><init>()V

    return-void
.end method

.method private getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .registers 4

    .line 91
    iget-object v0, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->parameters:Lcom/google/crypto/tink/daead/AesSivParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/daead/AesSivParameters;->getVariant()Lcom/google/crypto/tink/daead/AesSivParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/daead/AesSivParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/daead/AesSivParameters$Variant;

    if-ne v0, v1, :cond_d

    .line 92
    sget-object v0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    return-object v0

    .line 94
    :cond_d
    iget-object v0, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->parameters:Lcom/google/crypto/tink/daead/AesSivParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/daead/AesSivParameters;->getVariant()Lcom/google/crypto/tink/daead/AesSivParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/daead/AesSivParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/daead/AesSivParameters$Variant;

    if-ne v0, v1, :cond_22

    .line 95
    iget-object v0, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->idRequirement:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getLegacyOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0

    .line 97
    :cond_22
    iget-object v0, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->parameters:Lcom/google/crypto/tink/daead/AesSivParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/daead/AesSivParameters;->getVariant()Lcom/google/crypto/tink/daead/AesSivParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/daead/AesSivParameters$Variant;->TINK:Lcom/google/crypto/tink/daead/AesSivParameters$Variant;

    if-ne v0, v1, :cond_37

    .line 98
    iget-object v0, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->idRequirement:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getTinkOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0

    .line 100
    :cond_37
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown AesSivParameters.Variant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->parameters:Lcom/google/crypto/tink/daead/AesSivParameters;

    .line 101
    invoke-virtual {v2}, Lcom/google/crypto/tink/daead/AesSivParameters;->getVariant()Lcom/google/crypto/tink/daead/AesSivParameters$Variant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/daead/AesSivKey;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->parameters:Lcom/google/crypto/tink/daead/AesSivParameters;

    if-eqz v0, :cond_58

    iget-object v1, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    if-eqz v1, :cond_58

    .line 73
    invoke-virtual {v0}, Lcom/google/crypto/tink/daead/AesSivParameters;->getKeySizeBytes()I

    move-result v0

    iget-object v1, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    invoke-virtual {v1}, Lcom/google/crypto/tink/util/SecretBytes;->size()I

    move-result v1

    if-ne v0, v1, :cond_50

    .line 77
    iget-object v0, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->parameters:Lcom/google/crypto/tink/daead/AesSivParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/daead/AesSivParameters;->hasIdRequirement()Z

    move-result v0

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-eqz v0, :cond_21

    goto :goto_29

    .line 78
    :cond_21
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_29
    :goto_29
    iget-object v0, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->parameters:Lcom/google/crypto/tink/daead/AesSivParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/daead/AesSivParameters;->hasIdRequirement()Z

    move-result v0

    if-nez v0, :cond_3e

    iget-object v0, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-nez v0, :cond_36

    goto :goto_3e

    .line 83
    :cond_36
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_3e
    :goto_3e
    invoke-direct {p0}, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v5

    .line 87
    new-instance v0, Lcom/google/crypto/tink/daead/AesSivKey;

    iget-object v3, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->parameters:Lcom/google/crypto/tink/daead/AesSivParameters;

    iget-object v4, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    iget-object v6, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->idRequirement:Ljava/lang/Integer;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/daead/AesSivKey;-><init>(Lcom/google/crypto/tink/daead/AesSivParameters;Lcom/google/crypto/tink/util/SecretBytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/daead/AesSivKey$1;)V

    return-object v0

    .line 74
    :cond_50
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Key size mismatch"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 70
    :cond_58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot build without parameters and/or key material"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/daead/AesSivKey$Builder;
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

    .line 64
    iput-object p1, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-object p0
.end method

.method public setKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/daead/AesSivKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyBytes"
        }
    .end annotation

    .line 58
    iput-object p1, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->keyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object p0
.end method

.method public setParameters(Lcom/google/crypto/tink/daead/AesSivParameters;)Lcom/google/crypto/tink/daead/AesSivKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 52
    iput-object p1, p0, Lcom/google/crypto/tink/daead/AesSivKey$Builder;->parameters:Lcom/google/crypto/tink/daead/AesSivParameters;

    return-object p0
.end method
