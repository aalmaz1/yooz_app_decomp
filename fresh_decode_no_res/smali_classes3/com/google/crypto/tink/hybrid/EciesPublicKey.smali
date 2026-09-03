.class public final Lcom/google/crypto/tink/hybrid/EciesPublicKey;
.super Lcom/google/crypto/tink/hybrid/HybridPublicKey;
.source "EciesPublicKey.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final idRequirement:Ljava/lang/Integer;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final nistPublicPoint:Ljava/security/spec/ECPoint;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final outputPrefix:Lcom/google/crypto/tink/util/Bytes;

.field private final parameters:Lcom/google/crypto/tink/hybrid/EciesParameters;

.field private final x25519PublicPointBytes:Lcom/google/crypto/tink/util/Bytes;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/hybrid/EciesParameters;Ljava/security/spec/ECPoint;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V
    .locals 0
    .param p2    # Ljava/security/spec/ECPoint;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/crypto/tink/util/Bytes;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "nistPublicPoint",
            "x25519PublicPointBytes",
            "outputPrefix",
            "idRequirement"
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Lcom/google/crypto/tink/hybrid/HybridPublicKey;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->parameters:Lcom/google/crypto/tink/hybrid/EciesParameters;

    .line 56
    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->nistPublicPoint:Ljava/security/spec/ECPoint;

    .line 57
    iput-object p3, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->x25519PublicPointBytes:Lcom/google/crypto/tink/util/Bytes;

    .line 58
    iput-object p4, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    .line 59
    iput-object p5, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->idRequirement:Ljava/lang/Integer;

    return-void
.end method

.method public static createForCurveX25519(Lcom/google/crypto/tink/hybrid/EciesParameters;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)Lcom/google/crypto/tink/hybrid/EciesPublicKey;
    .locals 7
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "publicPointBytes",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 121
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getCurveType()Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->X25519:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getVariant()Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->validateIdRequirement(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;Ljava/lang/Integer;)V

    .line 126
    invoke-virtual {p1}, Lcom/google/crypto/tink/util/Bytes;->size()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getVariant()Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->createOutputPrefix(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;Ljava/lang/Integer;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v5

    .line 133
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;

    const/4 v3, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v4, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;-><init>(Lcom/google/crypto/tink/hybrid/EciesParameters;Ljava/security/spec/ECPoint;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    return-object v0

    .line 127
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Encoded public point byte length for X25519 curve must be 32"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 122
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "createForCurveX25519 may only be called with parameters for curve X25519"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createForNistCurve(Lcom/google/crypto/tink/hybrid/EciesParameters;Ljava/security/spec/ECPoint;Ljava/lang/Integer;)Lcom/google/crypto/tink/hybrid/EciesPublicKey;
    .locals 7
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "publicPoint",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getCurveType()Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->X25519:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getVariant()Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->validateIdRequirement(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;Ljava/lang/Integer;)V

    .line 153
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getCurveType()Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->getParameterSpecNistCurve(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Ljava/security/spec/EllipticCurve;

    move-result-object v0

    .line 152
    invoke-static {p1, v0}, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->checkPointOnCurve(Ljava/security/spec/ECPoint;Ljava/security/spec/EllipticCurve;)V

    .line 155
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getVariant()Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->createOutputPrefix(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;Ljava/lang/Integer;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v5

    .line 157
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;

    const/4 v4, 0x0

    move-object v1, v0

    move-object v2, p0

    move-object v3, p1

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;-><init>(Lcom/google/crypto/tink/hybrid/EciesParameters;Ljava/security/spec/ECPoint;Lcom/google/crypto/tink/util/Bytes;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)V

    return-object v0

    .line 148
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "createForNistCurve may only be called with parameters for NIST curve"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createOutputPrefix(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;Ljava/lang/Integer;)Lcom/google/crypto/tink/util/Bytes;
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variant",
            "idRequirement"
        }
    .end annotation

    .line 89
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    if-ne p0, v0, :cond_0

    .line 90
    sget-object p0, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->EMPTY_PREFIX:Lcom/google/crypto/tink/util/Bytes;

    return-object p0

    :cond_0
    if-eqz p1, :cond_3

    .line 96
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    if-ne p0, v0, :cond_1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getLegacyOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    return-object p0

    .line 99
    :cond_1
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->TINK:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    if-ne p0, v0, :cond_2

    .line 100
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/crypto/tink/internal/OutputPrefixUtil;->getTinkOutputPrefix(I)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    return-object p0

    .line 102
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown EciesParameters.Variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 93
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "idRequirement must be non-null for EciesParameters.Variant: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getParameterSpecNistCurve(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Ljava/security/spec/EllipticCurve;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curveType"
        }
    .end annotation

    .line 75
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    if-ne p0, v0, :cond_0

    .line 76
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistP256Params()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    return-object p0

    .line 78
    :cond_0
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P384:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    if-ne p0, v0, :cond_1

    .line 79
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistP384Params()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    return-object p0

    .line 81
    :cond_1
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P521:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    if-ne p0, v0, :cond_2

    .line 82
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistP521Params()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    invoke-virtual {p0}, Ljava/security/spec/ECParameterSpec;->getCurve()Ljava/security/spec/EllipticCurve;

    move-result-object p0

    return-object p0

    .line 84
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to determine NIST curve type for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static validateIdRequirement(Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;Ljava/lang/Integer;)V
    .locals 2
    .param p1    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variant",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 65
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\'idRequirement\' must be non-null for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " variant."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 69
    :cond_1
    :goto_0
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/EciesParameters$Variant;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    if-nez p1, :cond_2

    goto :goto_1

    .line 70
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "\'idRequirement\' must be null for NO_PREFIX variant."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public equalsKey(Lcom/google/crypto/tink/Key;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 208
    instance-of v0, p1, Lcom/google/crypto/tink/hybrid/EciesPublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 211
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/hybrid/EciesPublicKey;

    .line 213
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->parameters:Lcom/google/crypto/tink/hybrid/EciesParameters;

    iget-object v2, p1, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->parameters:Lcom/google/crypto/tink/hybrid/EciesParameters;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/hybrid/EciesParameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->x25519PublicPointBytes:Lcom/google/crypto/tink/util/Bytes;

    iget-object v2, p1, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->x25519PublicPointBytes:Lcom/google/crypto/tink/util/Bytes;

    .line 214
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->nistPublicPoint:Ljava/security/spec/ECPoint;

    iget-object v2, p1, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->nistPublicPoint:Ljava/security/spec/ECPoint;

    .line 215
    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->idRequirement:Ljava/lang/Integer;

    iget-object p1, p1, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->idRequirement:Ljava/lang/Integer;

    .line 216
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->idRequirement:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNistCurvePoint()Ljava/security/spec/ECPoint;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->nistPublicPoint:Ljava/security/spec/ECPoint;

    return-object v0
.end method

.method public getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->outputPrefix:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->getParameters()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/hybrid/EciesParameters;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->parameters:Lcom/google/crypto/tink/hybrid/EciesParameters;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/hybrid/HybridParameters;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->getParameters()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v0

    return-object v0
.end method

.method public getX25519CurvePointBytes()Lcom/google/crypto/tink/util/Bytes;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->x25519PublicPointBytes:Lcom/google/crypto/tink/util/Bytes;

    return-object v0
.end method
