.class final Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1VerifyKeyManager;
.super Ljava/lang/Object;
.source "JwtRsaSsaPkcs1VerifyKeyManager.java"


# static fields
.field static final PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;",
            "Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 94
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1VerifyKeyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1VerifyKeyManager$$ExternalSyntheticLambda0;-><init>()V

    const-class v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    const-class v2, Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;

    .line 95
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1VerifyKeyManager;->PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFullPrimitive(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeyVerify;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 71
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1VerifyKeyManager;->toRsaSsaPkcs1PublicKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    move-result-object v0

    .line 72
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1VerifyJce;->create(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;

    move-result-object v0

    .line 74
    new-instance v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1VerifyKeyManager$1;

    invoke-direct {v1, v0, p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1VerifyKeyManager$1;-><init>(Lcom/google/crypto/tink/PublicKeyVerify;Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;)V

    return-object v1
.end method

.method static getKeyType()Ljava/lang/String;
    .registers 1

    const-string v0, "type.googleapis.com/google.crypto.tink.JwtRsaSsaPkcs1PublicKey"

    return-object v0
.end method

.method private static hashTypeForAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "algorithm"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 39
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS256:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 40
    sget-object p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    return-object p0

    .line 42
    :cond_b
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS384:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 43
    sget-object p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA384:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    return-object p0

    .line 45
    :cond_16
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS512:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 46
    sget-object p0, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    return-object p0

    .line 48
    :cond_21
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown algorithm "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static toRsaSsaPkcs1PublicKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "publicKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 55
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getModulusSizeBits()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1VerifyKeyManager;->hashTypeForAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setHashType(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;

    .line 59
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Variant;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v0

    .line 61
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;->builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;

    move-result-object v1

    .line 62
    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;->setParameters(Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;->setModulus(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;

    move-result-object p0

    .line 64
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    move-result-object p0

    return-object p0
.end method
