.class public final Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;
.super Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;
.source "JwtRsaSsaPkcs1PublicKey.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;
    }
.end annotation


# instance fields
.field private final idRequirement:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final kid:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final modulus:Ljava/math/BigInteger;

.field private final parameters:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;Ljava/math/BigInteger;Ljava/util/Optional;Ljava/util/Optional;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "parameters",
            "modulus",
            "idRequirement",
            "kid"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;",
            "Ljava/math/BigInteger;",
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 140
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtSignaturePublicKey;-><init>()V

    .line 141
    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->parameters:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    .line 142
    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->modulus:Ljava/math/BigInteger;

    .line 143
    iput-object p3, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->idRequirement:Ljava/util/Optional;

    .line 144
    iput-object p4, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->kid:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;Ljava/math/BigInteger;Ljava/util/Optional;Ljava/util/Optional;Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$1;)V
    .registers 6

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;-><init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;Ljava/math/BigInteger;Ljava/util/Optional;Ljava/util/Optional;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;
    .registers 2

    .line 153
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;-><init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$1;)V

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

    .line 193
    instance-of v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 196
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    .line 197
    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->parameters:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->parameters:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->modulus:Ljava/math/BigInteger;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->modulus:Ljava/math/BigInteger;

    .line 198
    invoke-virtual {v0, v2}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->kid:Ljava/util/Optional;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->kid:Ljava/util/Optional;

    .line 199
    invoke-virtual {v0, v2}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_31

    iget-object p1, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->idRequirement:Ljava/util/Optional;

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->idRequirement:Ljava/util/Optional;

    .line 200
    invoke-virtual {p1, v0}, Ljava/util/Optional;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_31

    const/4 v1, 0x1

    :cond_31
    return v1
.end method

.method public getIdRequirementOrNull()Ljava/lang/Integer;
    .registers 3
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .line 188
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->idRequirement:Ljava/util/Optional;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    return-object v0
.end method

.method public getKid()Ljava/util/Optional;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->kid:Ljava/util/Optional;

    return-object v0
.end method

.method public getModulus()Ljava/math/BigInteger;
    .registers 2

    .line 163
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->modulus:Ljava/math/BigInteger;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/Parameters;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v0

    return-object v0
.end method

.method public getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;
    .registers 2

    .line 182
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->parameters:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    return-object v0
.end method

.method public bridge synthetic getParameters()Lcom/google/crypto/tink/jwt/JwtSignatureParameters;
    .registers 2

    .line 35
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v0

    return-object v0
.end method
