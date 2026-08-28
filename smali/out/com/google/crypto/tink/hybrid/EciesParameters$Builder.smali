.class public final Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;
.super Ljava/lang/Object;
.source "EciesParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/hybrid/EciesParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

.field private demParameters:Lcom/google/crypto/tink/Parameters;

.field private hashType:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

.field private nistCurvePointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

.field private salt:Lcom/google/crypto/tink/util/Bytes;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 195
    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    .line 196
    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->hashType:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    .line 197
    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->nistCurvePointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    .line 198
    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->demParameters:Lcom/google/crypto/tink/Parameters;

    .line 199
    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    iput-object v1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    .line 200
    iput-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->salt:Lcom/google/crypto/tink/util/Bytes;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/hybrid/EciesParameters$1;)V
    .registers 2

    .line 194
    invoke-direct {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/hybrid/EciesParameters;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    if-eqz v0, :cond_60

    .line 262
    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->hashType:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    if-eqz v1, :cond_58

    .line 265
    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->demParameters:Lcom/google/crypto/tink/Parameters;

    if-eqz v1, :cond_50

    .line 268
    iget-object v1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    if-eqz v1, :cond_48

    .line 272
    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->X25519:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    if-eq v0, v1, :cond_21

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->nistCurvePointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    if-eqz v0, :cond_19

    goto :goto_21

    .line 273
    :cond_19
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Point format is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 275
    :cond_21
    :goto_21
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->X25519:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    if-ne v0, v1, :cond_34

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->nistCurvePointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    if-nez v0, :cond_2c

    goto :goto_34

    .line 276
    :cond_2c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "For Curve25519 point format must not be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 278
    :cond_34
    :goto_34
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesParameters;

    iget-object v3, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    iget-object v4, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->hashType:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    iget-object v5, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->nistCurvePointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    iget-object v6, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->demParameters:Lcom/google/crypto/tink/Parameters;

    iget-object v7, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    iget-object v8, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->salt:Lcom/google/crypto/tink/util/Bytes;

    const/4 v9, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/google/crypto/tink/hybrid/EciesParameters;-><init>(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;Lcom/google/crypto/tink/Parameters;Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/hybrid/EciesParameters$1;)V

    return-object v0

    .line 269
    :cond_48
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Variant is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 266
    :cond_50
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "DEM parameters are not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 263
    :cond_58
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Hash type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 260
    :cond_60
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Elliptic curve type is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCurveType(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curveType"
        }
    .end annotation

    .line 206
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->curveType:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    return-object p0
.end method

.method public setDemParameters(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "demParameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 228
    invoke-static {}, Lcom/google/crypto/tink/hybrid/EciesParameters;->access$000()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 236
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->demParameters:Lcom/google/crypto/tink/Parameters;

    return-object p0

    .line 229
    :cond_d
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid DEM parameters "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "; only AES128_GCM_RAW, AES256_GCM_RAW, AES128_CTR_HMAC_SHA256_RAW, AES256_CTR_HMAC_SHA256_RAW XCHACHA20_POLY1305_RAW and AES256_SIV_RAW are currently supported."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setHashType(Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hashType"
        }
    .end annotation

    .line 212
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->hashType:Lcom/google/crypto/tink/hybrid/EciesParameters$HashType;

    return-object p0
.end method

.method public setNistCurvePointFormat(Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointFormat"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->nistCurvePointFormat:Lcom/google/crypto/tink/hybrid/EciesParameters$PointFormat;

    return-object p0
.end method

.method public setSalt(Lcom/google/crypto/tink/util/Bytes;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "salt"
        }
    .end annotation

    .line 249
    invoke-virtual {p1}, Lcom/google/crypto/tink/util/Bytes;->size()I

    move-result v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    .line 250
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->salt:Lcom/google/crypto/tink/util/Bytes;

    return-object p0

    .line 254
    :cond_a
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->salt:Lcom/google/crypto/tink/util/Bytes;

    return-object p0
.end method

.method public setVariant(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;)Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    .line 242
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesParameters$Builder;->variant:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    return-object p0
.end method
