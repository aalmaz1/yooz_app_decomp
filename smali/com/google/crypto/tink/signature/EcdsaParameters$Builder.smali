.class public final Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;
.super Ljava/lang/Object;
.source "EcdsaParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/EcdsaParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

.field private hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

.field private signatureEncoding:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

.field private variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 135
    iput-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->signatureEncoding:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    .line 136
    iput-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    .line 137
    iput-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    .line 138
    sget-object v0, Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    iput-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/signature/EcdsaParameters$1;)V
    .registers 2

    .line 134
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/signature/EcdsaParameters;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->signatureEncoding:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    if-eqz v0, :cond_7b

    .line 170
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    if-eqz v0, :cond_73

    .line 173
    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    if-eqz v1, :cond_6b

    .line 176
    iget-object v1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    if-eqz v1, :cond_63

    .line 180
    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    if-ne v0, v1, :cond_23

    .line 181
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    if-ne v0, v1, :cond_1b

    goto :goto_23

    .line 182
    :cond_1b
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "NIST_P256 requires SHA256"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 185
    :cond_23
    :goto_23
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->NIST_P384:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    if-ne v0, v1, :cond_3e

    .line 186
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->SHA384:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    if-eq v0, v1, :cond_3e

    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    if-ne v0, v1, :cond_36

    goto :goto_3e

    .line 187
    :cond_36
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "NIST_P384 requires SHA384 or SHA512"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_3e
    :goto_3e
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;->NIST_P521:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    if-ne v0, v1, :cond_53

    .line 191
    iget-object v0, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    sget-object v1, Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    if-ne v0, v1, :cond_4b

    goto :goto_53

    .line 192
    :cond_4b
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "NIST_P521 requires SHA512"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 195
    :cond_53
    :goto_53
    new-instance v0, Lcom/google/crypto/tink/signature/EcdsaParameters;

    iget-object v3, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->signatureEncoding:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    iget-object v4, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    iget-object v5, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    iget-object v6, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/signature/EcdsaParameters;-><init>(Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;Lcom/google/crypto/tink/signature/EcdsaParameters$1;)V

    return-object v0

    .line 177
    :cond_63
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 174
    :cond_6b
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_73
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "EC curve type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 168
    :cond_7b
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "signature encoding is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCurveType(Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curveType"
        }
    .end annotation

    .line 150
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->curveType:Lcom/google/crypto/tink/signature/EcdsaParameters$CurveType;

    return-object p0
.end method

.method public setHashType(Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hashType"
        }
    .end annotation

    .line 156
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->hashType:Lcom/google/crypto/tink/signature/EcdsaParameters$HashType;

    return-object p0
.end method

.method public setSignatureEncoding(Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signatureEncoding"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->signatureEncoding:Lcom/google/crypto/tink/signature/EcdsaParameters$SignatureEncoding;

    return-object p0
.end method

.method public setVariant(Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;)Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    .line 162
    iput-object p1, p0, Lcom/google/crypto/tink/signature/EcdsaParameters$Builder;->variant:Lcom/google/crypto/tink/signature/EcdsaParameters$Variant;

    return-object p0
.end method
