.class public Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;
.super Ljava/lang/Object;
.source "EcdsaPublicKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/EcdsaPublicKey;
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

.field private parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private publicPoint:Ljava/security/spec/ECPoint;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    .line 44
    iput-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->publicPoint:Ljava/security/spec/ECPoint;

    .line 45
    iput-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/signature/EcdsaPublicKey$1;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;-><init>()V

    return-void
.end method

.method private getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .locals 3

    .line 68
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getVariant()Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    if-ne v0, v1, :cond_0

    .line 69
    sget-object v0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    return-object v0

    .line 71
    :cond_0
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getVariant()Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->LEGACY:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    .line 72
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getVariant()Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getVariant()Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->TINK:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    if-ne v0, v1, :cond_2

    .line 76
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getTinkOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown EcdsaParameters.Variant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    .line 79
    invoke-virtual {v2}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getVariant()Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getLegacyOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/signature/EcdsaPublicKey;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    if-eqz v0, :cond_5

    .line 86
    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->publicPoint:Ljava/security/spec/ECPoint;

    if-eqz v1, :cond_4

    .line 90
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->getCurveType()Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->toParameterSpec()Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object v0

    .line 89
    invoke-static {v1, v0}, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->checkPointOnCurve(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 91
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->hasIdRequirement()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 92
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/EcdsaParameters;->hasIdRequirement()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    if-nez v0, :cond_2

    goto :goto_1

    .line 96
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 99
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v5

    .line 100
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    iget-object v3, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    iget-object v4, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->publicPoint:Ljava/security/spec/ECPoint;

    iget-object v6, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/signature/EcdsaPublicKey;-><init>(Lcom/google/crypto/tink/signature/EcdsaParameters;Ljava/security/spec/ECPoint;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;Lcom/google/crypto/tink/signature/EcdsaPublicKey$1;)V

    return-object v0

    .line 87
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without public point"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 84
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;
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

    .line 63
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->idRequirement:Ljava/lang/Integer;

    return-object p0
.end method

.method public setParameters(Lcom/google/crypto/tink/signature/EcdsaParameters;)Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 51
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->parameters:Lcom/google/crypto/tink/signature/EcdsaParameters;

    return-object p0
.end method

.method public setPublicPoint(Ljava/security/spec/ECPoint;)Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicPoint"
        }
    .end annotation

    .line 57
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaPublicKey$Builder;->publicPoint:Ljava/security/spec/ECPoint;

    return-object p0
.end method
