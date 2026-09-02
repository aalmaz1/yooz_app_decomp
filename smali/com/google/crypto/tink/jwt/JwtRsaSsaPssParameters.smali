.class public final Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;
.super Lcom/google/crypto/tink/jwt/JwtSignatureParameters;
.source "JwtRsaSsaPssParameters.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;,
        Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;,
        Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;
    }
.end annotation


# static fields
.field public static final F4:Ljava/math/BigInteger;


# instance fields
.field private final algorithm:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

.field private final kidStrategy:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

.field private final modulusSizeBits:I

.field private final publicExponent:Ljava/math/BigInteger;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-wide/32 v0, 0x10001

    .line 113
    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->F4:Ljava/math/BigInteger;

    return-void
.end method

.method private constructor <init>(ILjava/math/BigInteger;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "modulusSizeBits",
            "publicExponent",
            "kidStrategy",
            "algorithm"
        }
    .end annotation

    .line 209
    invoke-direct {p0}, Lcom/google/crypto/tink/jwt/JwtSignatureParameters;-><init>()V

    .line 210
    iput p1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->modulusSizeBits:I

    .line 211
    iput-object p2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->publicExponent:Ljava/math/BigInteger;

    .line 212
    iput-object p3, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    .line 213
    iput-object p4, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    return-void
.end method

.method synthetic constructor <init>(ILjava/math/BigInteger;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$1;)V
    .registers 6

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;-><init>(ILjava/math/BigInteger;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;)V

    return-void
.end method

.method public static builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;
    .registers 2

    .line 217
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;-><init>(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$1;)V

    return-object v0
.end method


# virtual methods
.method public allowKidAbsent()Z
    .registers 3

    .line 238
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;->CUSTOM:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 v0, 0x1

    :goto_18
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "o"
        }
    .end annotation

    .line 243
    instance-of v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    .line 246
    :cond_6
    check-cast p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    .line 247
    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->getModulusSizeBits()I

    move-result v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->getModulusSizeBits()I

    move-result v2

    if-ne v0, v2, :cond_35

    .line 248
    invoke-virtual {p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v2

    invoke-static {v0, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object v0, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    .line 249
    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35

    iget-object p1, p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    .line 250
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_35

    const/4 v1, 0x1

    :cond_35
    return v1
.end method

.method public getAlgorithm()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;
    .registers 2

    .line 233
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    return-object v0
.end method

.method public getKidStrategy()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;
    .registers 2

    .line 229
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    return-object v0
.end method

.method public getModulusSizeBits()I
    .registers 2

    .line 221
    iget v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->modulusSizeBits:I

    return v0
.end method

.method public getPublicExponent()Ljava/math/BigInteger;
    .registers 2

    .line 225
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->publicExponent:Ljava/math/BigInteger;

    return-object v0
.end method

.method public hasIdRequirement()Z
    .registers 3

    .line 261
    iget-object v0, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .registers 4

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 255
    const-class v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    aput-object v2, v0, v1

    iget v1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->modulusSizeBits:I

    .line 256
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->publicExponent:Ljava/math/BigInteger;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    aput-object v2, v0, v1

    .line 255
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 266
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "JWT RSA SSA PSS Parameters (kidStrategy: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->kidStrategy:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", algorithm "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->algorithm:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", publicExponent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->publicExponent:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", and "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->modulusSizeBits:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-bit modulus)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
