.class public final Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;
.super Ljava/lang/Object;
.source "JwtRsaSsaPssParameters.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# static fields
.field private static final PUBLIC_EXPONENT_UPPER_BOUND:Ljava/math/BigInteger;

.field private static final TWO:Ljava/math/BigInteger;


# instance fields
.field algorithm:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;",
            ">;"
        }
    .end annotation
.end field

.field kidStrategy:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;",
            ">;"
        }
    .end annotation
.end field

.field modulusSizeBits:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field publicExponent:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/math/BigInteger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/16 v0, 0x2

    .line 148
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->TWO:Ljava/math/BigInteger;

    const/16 v1, 0x100

    .line 149
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->PUBLIC_EXPONENT_UPPER_BOUND:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->modulusSizeBits:Ljava/util/Optional;

    .line 118
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->F4:Ljava/math/BigInteger;

    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->publicExponent:Ljava/util/Optional;

    .line 119
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->kidStrategy:Ljava/util/Optional;

    .line 120
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->algorithm:Ljava/util/Optional;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$1;)V
    .registers 2

    .line 116
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;-><init>()V

    return-void
.end method

.method private validatePublicExponent(Ljava/math/BigInteger;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicExponent"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 155
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->F4:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-nez v0, :cond_9

    return-void

    :cond_9
    if-ltz v0, :cond_32

    .line 164
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->TWO:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->mod(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v0

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 168
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->PUBLIC_EXPONENT_UPPER_BOUND:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result p1

    if-gtz p1, :cond_22

    return-void

    .line 170
    :cond_22
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Public exponent cannot be larger than 2^256."

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 166
    :cond_2a
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Invalid public exponent"

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 162
    :cond_32
    new-instance p1, Ljava/security/InvalidAlgorithmParameterException;

    const-string v0, "Public exponent must be at least 65537."

    invoke-direct {p1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->modulusSizeBits:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_9a

    .line 179
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->publicExponent:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_92

    .line 182
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->algorithm:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 185
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->kidStrategy:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_82

    .line 188
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->modulusSizeBits:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0x800

    if-lt v0, v1, :cond_6a

    .line 194
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->publicExponent:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->validatePublicExponent(Ljava/math/BigInteger;)V

    .line 195
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->modulusSizeBits:Ljava/util/Optional;

    .line 196
    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->publicExponent:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/math/BigInteger;

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->kidStrategy:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->algorithm:Ljava/util/Optional;

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;-><init>(ILjava/math/BigInteger;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$1;)V

    return-object v0

    .line 189
    :cond_6a
    new-instance v0, Ljava/security/InvalidAlgorithmParameterException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->modulusSizeBits:Ljava/util/Optional;

    .line 192
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Invalid modulus size in bits %d; must be at least 2048 bits"

    .line 190
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 186
    :cond_82
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "KidStrategy must be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 183
    :cond_8a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Algorithm must be set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 180
    :cond_92
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "publicExponent is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 177
    :cond_9a
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "key size is not set"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .line 144
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->algorithm:Ljava/util/Optional;

    return-object p0
.end method

.method public setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "kidStrategy"
        }
    .end annotation

    .line 138
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->kidStrategy:Ljava/util/Optional;

    return-object p0
.end method

.method public setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "modulusSizeBits"
        }
    .end annotation

    .line 126
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->modulusSizeBits:Ljava/util/Optional;

    return-object p0
.end method

.method public setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 132
    invoke-static {p1}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->publicExponent:Ljava/util/Optional;

    return-object p0
.end method
