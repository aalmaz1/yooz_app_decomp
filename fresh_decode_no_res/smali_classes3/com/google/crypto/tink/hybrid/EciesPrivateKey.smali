.class public final Lcom/google/crypto/tink/hybrid/EciesPrivateKey;
.super Lcom/google/crypto/tink/hybrid/HybridPrivateKey;
.source "EciesPrivateKey.java"


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation


# instance fields
.field private final nistPrivateKeyValue:Lcom/google/crypto/tink/util/SecretBigInteger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final publicKey:Lcom/google/crypto/tink/hybrid/EciesPublicKey;

.field private final x25519PrivateKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/hybrid/EciesPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBytes;)V
    .locals 0
    .param p2    # Lcom/google/crypto/tink/util/SecretBigInteger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/google/crypto/tink/util/SecretBytes;
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
            "publicKey",
            "nistPrivateKeyValue",
            "x25519PrivateKeyBytes"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lcom/google/crypto/tink/hybrid/HybridPrivateKey;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->publicKey:Lcom/google/crypto/tink/hybrid/EciesPublicKey;

    .line 51
    iput-object p2, p0, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->nistPrivateKeyValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 52
    iput-object p3, p0, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->x25519PrivateKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-void
.end method

.method public static createForCurveX25519(Lcom/google/crypto/tink/hybrid/EciesPublicKey;Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/hybrid/EciesPrivateKey;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "x25519PrivateKeyBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 111
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->getX25519CurvePointBytes()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 119
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->getX25519CurvePointBytes()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v1

    .line 118
    invoke-static {v0, v1}, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->validateX25519PrivateKeyBytes([B[B)V

    .line 122
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;-><init>(Lcom/google/crypto/tink/hybrid/EciesPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBytes;)V

    return-object v0

    .line 116
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ECIES private key cannot be constructed without secret"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 112
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ECIES private key for X25519 curve cannot be constructed with NIST-curve public key"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 108
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ECIES private key cannot be constructed without an ECIES public key"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createForNistCurve(Lcom/google/crypto/tink/hybrid/EciesPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/hybrid/EciesPrivateKey;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "nistPrivateKeyValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-eqz p0, :cond_2

    .line 144
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->getNistCurvePoint()Ljava/security/spec/ECPoint;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 152
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/util/SecretBigInteger;->getBigInteger(Lcom/google/crypto/tink/SecretKeyAccess;)Ljava/math/BigInteger;

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->getNistCurvePoint()Ljava/security/spec/ECPoint;

    move-result-object v1

    .line 154
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->getParameters()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/hybrid/EciesParameters;->getCurveType()Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    move-result-object v2

    .line 151
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->validateNistPrivateKeyValue(Ljava/math/BigInteger;Ljava/security/spec/ECPoint;Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)V

    .line 156
    new-instance v0, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;-><init>(Lcom/google/crypto/tink/hybrid/EciesPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBytes;)V

    return-object v0

    .line 149
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ECIES private key cannot be constructed without secret"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 145
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ECIES private key for NIST curve cannot be constructed with X25519-curve public key"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 141
    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "ECIES private key cannot be constructed without an ECIES public key"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static toParameterSpecNistCurve(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Ljava/security/spec/ECParameterSpec;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "curveType"
        }
    .end annotation

    .line 56
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P256:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    if-ne p0, v0, :cond_0

    .line 57
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistP256Params()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    return-object p0

    .line 59
    :cond_0
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P384:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    if-ne p0, v0, :cond_1

    .line 60
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistP384Params()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    return-object p0

    .line 62
    :cond_1
    sget-object v0, Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;->NIST_P521:Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;

    if-ne p0, v0, :cond_2

    .line 63
    invoke-static {}, Lcom/google/crypto/tink/subtle/EllipticCurves;->getNistP521Params()Ljava/security/spec/ECParameterSpec;

    move-result-object p0

    return-object p0

    .line 65
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

.method private static validateNistPrivateKeyValue(Ljava/math/BigInteger;Ljava/security/spec/ECPoint;Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "privateValue",
            "publicPoint",
            "curveType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 71
    invoke-static {p2}, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->toParameterSpecNistCurve(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Ljava/security/spec/ECParameterSpec;

    move-result-object v0

    invoke-virtual {v0}, Ljava/security/spec/ECParameterSpec;->getOrder()Ljava/math/BigInteger;

    move-result-object v0

    .line 72
    invoke-virtual {p0}, Ljava/math/BigInteger;->signum()I

    move-result v1

    const-string v2, "Invalid private value"

    if-lez v1, :cond_1

    invoke-virtual {p0, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gez v0, :cond_1

    .line 76
    invoke-static {p2}, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->toParameterSpecNistCurve(Lcom/google/crypto/tink/hybrid/EciesParameters$CurveType;)Ljava/security/spec/ECParameterSpec;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/google/crypto/tink/internal/EllipticCurvesUtil;->multiplyByGenerator(Ljava/math/BigInteger;Ljava/security/spec/ECParameterSpec;)Ljava/security/spec/ECPoint;

    move-result-object p0

    .line 77
    invoke-virtual {p0, p1}, Ljava/security/spec/ECPoint;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 78
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 73
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validateX25519PrivateKeyBytes([B[B)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "privateKeyBytes",
            "publicKeyBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 84
    array-length v0, p0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 87
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/X25519;->publicFromPrivate([B)[B

    move-result-object p0

    .line 88
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 89
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Invalid private key for public key."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 85
    :cond_1
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Private key bytes length for X25519 curve must be 32"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
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

    .line 191
    instance-of v0, p1, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 194
    :cond_0
    check-cast p1, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;

    .line 195
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->publicKey:Lcom/google/crypto/tink/hybrid/EciesPublicKey;

    iget-object v2, p1, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->publicKey:Lcom/google/crypto/tink/hybrid/EciesPublicKey;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->equalsKey(Lcom/google/crypto/tink/Key;)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    .line 198
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->x25519PrivateKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    if-nez v0, :cond_2

    iget-object v1, p1, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->x25519PrivateKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    if-nez v1, :cond_2

    .line 199
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->nistPrivateKeyValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object p1, p1, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->nistPrivateKeyValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result p1

    return p1

    .line 202
    :cond_2
    iget-object p1, p1, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->x25519PrivateKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/util/SecretBytes;->equalsSecretBytes(Lcom/google/crypto/tink/util/SecretBytes;)Z

    move-result p1

    return p1
.end method

.method public getNistPrivateKeyValue()Lcom/google/crypto/tink/util/SecretBigInteger;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->nistPrivateKeyValue:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->getParameters()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/hybrid/EciesParameters;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->publicKey:Lcom/google/crypto/tink/hybrid/EciesPublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/EciesPublicKey;->getParameters()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/hybrid/HybridParameters;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->getParameters()Lcom/google/crypto/tink/hybrid/EciesParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/Key;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->getPublicKey()Lcom/google/crypto/tink/hybrid/EciesPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/hybrid/EciesPublicKey;
    .locals 1

    .line 186
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->publicKey:Lcom/google/crypto/tink/hybrid/EciesPublicKey;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/hybrid/HybridPublicKey;
    .locals 1

    .line 37
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->getPublicKey()Lcom/google/crypto/tink/hybrid/EciesPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getX25519PrivateKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;->x25519PrivateKeyBytes:Lcom/google/crypto/tink/util/SecretBytes;

    return-object v0
.end method
