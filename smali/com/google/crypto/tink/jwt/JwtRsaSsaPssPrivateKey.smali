.class public final Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;
.super Lcom/google/crypto/tink/jwt/JwtSignaturePrivateKey;
.source "JwtRsaSsaPssPrivateKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;
    }
.end annotation


# instance fields
.field private final d:Lcom/google/crypto/tink/util/SecretBigInteger;

.field private final dP:Lcom/google/crypto/tink/util/SecretBigInteger;

.field private final dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

.field private final p:Lcom/google/crypto/tink/util/SecretBigInteger;

.field private final publicKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

.field private final q:Lcom/google/crypto/tink/util/SecretBigInteger;

.field private final qInv:Lcom/google/crypto/tink/util/SecretBigInteger;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)V
    .registers 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "publicKey",
            "p",
            "q",
            "d",
            "dP",
            "dQ",
            "qInv"
        }
    .end annotation

    .line 187
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtSignaturePrivateKey;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    .line 189
    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 190
    iput-object p3, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 191
    iput-object p4, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 192
    iput-object p5, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 193
    iput-object p6, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 194
    iput-object p7, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$1;)V
    .registers 9

    .line 34
    invoke-direct/range {p0 .. p7}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;-><init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;
    .registers 2

    .line 203
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;-><init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$1;)V

    return-object v0
.end method


# virtual methods
.method public equalsKey(Lcom/google/crypto/tink/Key;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 260
    instance-of v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 263
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;

    .line 264
    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->equalsKey(Lcom/google/crypto/tink/Key;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v2, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 265
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v2, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 266
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v2, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 267
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v2, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 268
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v2, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 269
    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result v0

    if-eqz v0, :cond_4f

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object p1, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 270
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/util/SecretBigInteger;->equalsSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;)Z

    move-result p1

    if-eqz p1, :cond_4f

    const/4 v1, 0x1

    :cond_4f
    return v1
.end method

.method public getCrtCoefficient()Lcom/google/crypto/tink/util/SecretBigInteger;
    .registers 2

    .line 255
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/jwt/JwtSignatureParameters;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v0

    return-object v0
.end method

.method public getPrimeExponentP()Lcom/google/crypto/tink/util/SecretBigInteger;
    .registers 2

    .line 245
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public getPrimeExponentQ()Lcom/google/crypto/tink/util/SecretBigInteger;
    .registers 2

    .line 250
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public getPrimeP()Lcom/google/crypto/tink/util/SecretBigInteger;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public getPrimeQ()Lcom/google/crypto/tink/util/SecretBigInteger;
    .registers 2

    .line 235
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public getPrivateExponent()Lcom/google/crypto/tink/util/SecretBigInteger;
    .registers 2

    .line 240
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/Key;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;
    .registers 2

    .line 215
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->publicKey:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    return-object v0
.end method

.method public bridge synthetic getPublicKey()Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;
    .registers 2

    .line 34
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    move-result-object v0

    return-object v0
.end method
