.class public Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;
.super Ljava/lang/Object;
.source "JwtRsaSsaPkcs1PublicKey.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private customKid:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private idRequirement:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private modulus:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field

.field private parameters:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->parameters:Ljava/util/Optional;

    .line 44
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->modulus:Ljava/util/Optional;

    .line 45
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->idRequirement:Ljava/util/Optional;

    .line 46
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->customKid:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$1;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;-><init>()V

    return-void
.end method

.method private computeKid()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->parameters:Ljava/util/Optional;

    .line 76
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    .line 77
    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getKidStrategy()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->customKid:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 83
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->idRequirement:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 84
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/Base64;->urlSafeEncode([B)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 80
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "customKid must not be set for KidStrategy BASE64_ENCODED_KEY_ID"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_1
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->parameters:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getKidStrategy()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->CUSTOM:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->customKid:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 90
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->customKid:Ljava/util/Optional;

    return-object v0

    .line 88
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "customKid needs to be set for KidStrategy CUSTOM"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_3
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->parameters:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getKidStrategy()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 93
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->customKid:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_4

    .line 96
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    return-object v0

    .line 94
    :cond_4
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "customKid must not be set for KidStrategy IGNORED"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unknown kid strategy"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->parameters:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 106
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->modulus:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 109
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->modulus:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    .line 110
    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->parameters:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getModulusSizeBits()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 121
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->parameters:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->hasIdRequirement()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->idRequirement:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 126
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->parameters:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->hasIdRequirement()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->idRequirement:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 127
    :cond_2
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot create key with ID requirement with parameters without ID requirement"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_3
    :goto_1
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->parameters:Ljava/util/Optional;

    .line 132
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->modulus:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/math/BigInteger;

    iget-object v5, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->idRequirement:Ljava/util/Optional;

    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->computeKid()Ljava/util/Optional;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;-><init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;Ljava/math/BigInteger;Ljava/util/Optional;Ljava/util/Optional;Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$1;)V

    return-object v0

    .line 114
    :cond_4
    new-instance v2, Ljava/security/GeneralSecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Got modulus size "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", but parameters requires modulus size "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 107
    :cond_5
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without modulus"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :cond_6
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot build without parameters"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setCustomKid(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "customKid"
        }
    .end annotation

    .line 70
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->customKid:Ljava/util/Optional;

    return-object p0
.end method

.method public setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "idRequirement"
        }
    .end annotation

    .line 64
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->idRequirement:Ljava/util/Optional;

    return-object p0
.end method

.method public setModulus(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modulus"
        }
    .end annotation

    .line 58
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->modulus:Ljava/util/Optional;

    return-object p0
.end method

.method public setParameters(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 52
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->parameters:Ljava/util/Optional;

    return-object p0
.end method
