.class public Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;
.super Ljava/lang/Object;
.source "RsaSsaPssPrivateKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# static fields
.field private static final PRIME_CERTAINTY:I = 0xa


# instance fields
.field private d:Lcom/google/crypto/tink/util/SecretBigInteger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private dP:Lcom/google/crypto/tink/util/SecretBigInteger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private dQ:Lcom/google/crypto/tink/util/SecretBigInteger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private p:Lcom/google/crypto/tink/util/SecretBigInteger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private publicKey:Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private q:Lcom/google/crypto/tink/util/SecretBigInteger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private qInv:Lcom/google/crypto/tink/util/SecretBigInteger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    .line 46
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 47
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 48
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 49
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 50
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 51
    iput-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$1;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    if-eqz v0, :cond_144

    .line 123
    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    if-eqz v1, :cond_13c

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    if-eqz v1, :cond_13c

    .line 126
    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    if-eqz v1, :cond_134

    .line 129
    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    if-eqz v1, :cond_12c

    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    if-eqz v1, :cond_12c

    .line 132
    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    if-eqz v1, :cond_124

    .line 135
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    invoke-virtual {v1}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    .line 138
    iget-object v2, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/util/SecretBigInteger;->getBigInteger(Lcom/google/crypto/tink/SecretKeyAccess;)Ljava/math/BigInteger;

    move-result-object v2

    .line 139
    iget-object v3, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/crypto/tink/util/SecretBigInteger;->getBigInteger(Lcom/google/crypto/tink/SecretKeyAccess;)Ljava/math/BigInteger;

    move-result-object v3

    .line 140
    iget-object v4, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/crypto/tink/util/SecretBigInteger;->getBigInteger(Lcom/google/crypto/tink/SecretKeyAccess;)Ljava/math/BigInteger;

    move-result-object v4

    .line 141
    iget-object v5, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/crypto/tink/util/SecretBigInteger;->getBigInteger(Lcom/google/crypto/tink/SecretKeyAccess;)Ljava/math/BigInteger;

    move-result-object v5

    .line 142
    iget-object v6, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/crypto/tink/util/SecretBigInteger;->getBigInteger(Lcom/google/crypto/tink/SecretKeyAccess;)Ljava/math/BigInteger;

    move-result-object v6

    .line 143
    iget-object v7, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/google/crypto/tink/util/SecretBigInteger;->getBigInteger(Lcom/google/crypto/tink/SecretKeyAccess;)Ljava/math/BigInteger;

    move-result-object v7

    const/16 v8, 0xa

    .line 145
    invoke-virtual {v2, v8}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v9

    if-eqz v9, :cond_11c

    .line 148
    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->isProbablePrime(I)Z

    move-result v8

    if-eqz v8, :cond_114

    .line 151
    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10c

    .line 156
    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    .line 157
    sget-object v8, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v3, v8}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v8

    .line 158
    invoke-virtual {v1, v8}, Ljava/math/BigInteger;->gcd(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v9

    .line 159
    invoke-virtual {v0, v4}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    sget-object v9, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v4, v9}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_104

    .line 162
    invoke-virtual {v0, v5}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v4, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_fc

    .line 165
    invoke-virtual {v0, v6}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f4

    .line 168
    invoke-virtual {v3, v7}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_ec

    .line 171
    new-instance v0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    iget-object v2, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    iget-object v3, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v4, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v5, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v6, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v7, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    iget-object v8, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;-><init>(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$1;)V

    return-object v0

    .line 169
    :cond_ec
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "qInv is invalid."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 166
    :cond_f4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "dQ is invalid."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 163
    :cond_fc
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "dP is invalid."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_104
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "D is invalid."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 152
    :cond_10c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Prime p times prime q is not equal to the public key\'s modulus"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_114
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "q is not a prime"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 146
    :cond_11c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "p is not a prime"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_124
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without CRT coefficient"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 130
    :cond_12c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without prime exponents"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 127
    :cond_134
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without private exponent"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_13c
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without prime factors"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_144
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without a RSA SSA PKCS1 public key"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCrtCoefficient(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qInv"
        }
    .end annotation

    .line 112
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->qInv:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object p0
.end method

.method public setPrimeExponents(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dP",
            "dQ"
        }
    .end annotation

    .line 98
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->dP:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 99
    iput-object p2, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->dQ:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object p0
.end method

.method public setPrimes(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "p",
            "q"
        }
    .end annotation

    .line 73
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->p:Lcom/google/crypto/tink/util/SecretBigInteger;

    .line 74
    iput-object p2, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->q:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object p0
.end method

.method public setPrivateExponent(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 85
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->d:Lcom/google/crypto/tink/util/SecretBigInteger;

    return-object p0
.end method

.method public setPublicKey(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .line 62
    iput-object p1, p0, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->publicKey:Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    return-object p0
.end method
