.class public final Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager;
.super Ljava/lang/Object;
.source "JwtRsaSsaPssSignKeyManager.java"


# static fields
.field private static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field private static final KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator<",
            "Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;",
            "Lcom/google/crypto/tink/jwt/JwtPublicKeySign;",
            ">;"
        }
    .end annotation
.end field

.field private static final legacyPrivateKeyManager:Lcom/google/crypto/tink/PrivateKeyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/PrivateKeyManager<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private static final legacyPublicKeyManager:Lcom/google/crypto/tink/KeyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/KeyManager<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$FJwuJPvDv3FGD39gcVyKEqLyhKs(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager;->createKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 57
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPrivateKey;->parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v2

    .line 56
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->createPrivateKeyManager(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/PrivateKeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager;->legacyPrivateKeyManager:Lcom/google/crypto/tink/PrivateKeyManager;

    .line 61
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssVerifyKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    sget-object v2, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PUBLIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    .line 64
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPssPublicKey;->parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v3

    .line 60
    invoke-static {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->create(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/KeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager;->legacyPublicKeyManager:Lcom/google/crypto/tink/KeyManager;

    .line 109
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    .line 145
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager$$ExternalSyntheticLambda1;-><init>()V

    const-class v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;

    const-class v2, Lcom/google/crypto/tink/jwt/JwtPublicKeySign;

    .line 146
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager;->PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 228
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFullPrimitive(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeySign;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 129
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager;->toRsaSsaPssPrivateKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    move-result-object v0

    .line 130
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/RsaSsaPssSignJce;->create(Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;)Lcom/google/crypto/tink/PublicKeySign;

    move-result-object v0

    .line 131
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->getStandardName()Ljava/lang/String;

    move-result-object v1

    .line 132
    new-instance v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager$1;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager$1;-><init>(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;Lcom/google/crypto/tink/PublicKeySign;)V

    return-object v2
.end method

.method private static createKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;
    .registers 8
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
            "parameters",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 70
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_PAIR_GENERATOR:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPairGenerator;

    .line 71
    new-instance v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 73
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->getModulusSizeBits()I

    move-result v2

    new-instance v3, Ljava/math/BigInteger;

    .line 74
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    .line 75
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 76
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 78
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 82
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;->setParameters(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;

    move-result-object p0

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;->setModulus(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;

    move-result-object p0

    if-eqz p1, :cond_49

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;->setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;

    .line 86
    :cond_49
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    move-result-object p0

    .line 89
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;

    move-result-object p1

    .line 90
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->setPublicKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;

    move-result-object p0

    .line 92
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object p1

    .line 93
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    .line 91
    invoke-virtual {p0, p1, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->setPrimes(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;

    move-result-object p0

    .line 96
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    .line 95
    invoke-static {p1, v1}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object p1

    .line 94
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->setPrivateExponent(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;

    move-result-object p0

    .line 99
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    .line 98
    invoke-static {p1, v1}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object p1

    .line 101
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    .line 100
    invoke-static {v1, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    .line 97
    invoke-virtual {p0, p1, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->setPrimeExponents(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;

    move-result-object p0

    .line 104
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v0

    .line 103
    invoke-static {p1, v0}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->setCrtCoefficient(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;

    move-result-object p0

    .line 105
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;

    move-result-object p0

    return-object p0
.end method

.method static getKeyType()Ljava/lang/String;
    .registers 1

    const-string v0, "type.googleapis.com/google.crypto.tink.JwtRsaSsaPssPrivateKey"

    return-object v0
.end method

.method private static namedParameters()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/google/crypto/tink/Parameters;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 160
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 163
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    const/16 v2, 0x800

    .line 164
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->F4:Ljava/math/BigInteger;

    .line 165
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->PS256:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    .line 166
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    .line 167
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    .line 168
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v1

    const-string v3, "JWT_PS256_2048_F4_RAW"

    .line 161
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    .line 172
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->F4:Ljava/math/BigInteger;

    .line 173
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->PS256:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    .line 174
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    .line 175
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    .line 176
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v1

    const-string v2, "JWT_PS256_2048_F4"

    .line 169
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    const/16 v2, 0xc00

    .line 180
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->F4:Ljava/math/BigInteger;

    .line 181
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->PS256:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    .line 182
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    .line 183
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v1

    const-string v3, "JWT_PS256_3072_F4_RAW"

    .line 177
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    .line 188
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->F4:Ljava/math/BigInteger;

    .line 189
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->PS256:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    .line 190
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    .line 191
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v1

    const-string v3, "JWT_PS256_3072_F4"

    .line 185
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    .line 196
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->F4:Ljava/math/BigInteger;

    .line 197
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->PS384:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    .line 198
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    .line 199
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    .line 200
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v1

    const-string v3, "JWT_PS384_3072_F4_RAW"

    .line 193
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    .line 204
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->F4:Ljava/math/BigInteger;

    .line 205
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->PS384:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    .line 206
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    .line 207
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v1

    const-string v2, "JWT_PS384_3072_F4"

    .line 201
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    const/16 v2, 0x1000

    .line 212
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->F4:Ljava/math/BigInteger;

    .line 213
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->PS512:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    .line 214
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    .line 215
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v1

    const-string v3, "JWT_PS512_4096_F4_RAW"

    .line 209
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    .line 220
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;->F4:Ljava/math/BigInteger;

    .line 221
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;->PS512:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;

    .line 222
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;

    .line 223
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;

    move-result-object v1

    .line 224
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    move-result-object v1

    const-string v2, "JWT_PS512_4096_F4"

    .line 217
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static registerPair(Z)V
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newKeyAllowed"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 236
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 240
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssProtoSerialization;->register()V

    .line 241
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssVerifyKeyManager;->PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 242
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 243
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager;->PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 244
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableParametersRegistry;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager;->namedParameters()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->putAll(Ljava/util/Map;)V

    .line 245
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    const-class v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssParameters;

    invoke-virtual {v1, v2, v3}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->add(Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;Ljava/lang/Class;)V

    .line 246
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager;->legacyPrivateKeyManager:Lcom/google/crypto/tink/PrivateKeyManager;

    .line 247
    invoke-virtual {v1, v2, v0, p0}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManagerWithFipsCompatibility(Lcom/google/crypto/tink/KeyManager;Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;Z)V

    .line 248
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object p0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssSignKeyManager;->legacyPublicKeyManager:Lcom/google/crypto/tink/KeyManager;

    const/4 v2, 0x0

    .line 249
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManagerWithFipsCompatibility(Lcom/google/crypto/tink/KeyManager;Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;Z)V

    return-void

    .line 237
    :cond_47
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use RSA SSA PSS in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static toRsaSsaPssPrivateKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "privateKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 116
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->builder()Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssVerifyKeyManager;->toRsaSsaPssPublicKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPublicKey;)Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->setPublicKey(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;

    move-result-object v0

    .line 118
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->getPrimeP()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->getPrimeQ()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->setPrimes(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->getPrivateExponent()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->setPrivateExponent(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;

    move-result-object v0

    .line 120
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->getPrimeExponentP()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->getPrimeExponentQ()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->setPrimeExponents(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPssPrivateKey;->getCrtCoefficient()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->setCrtCoefficient(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;

    move-result-object p0

    .line 122
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    move-result-object p0

    return-object p0
.end method
