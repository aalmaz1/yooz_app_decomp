.class public final Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;
.super Ljava/lang/Object;
.source "JwtRsaSsaPkcs1SignKeyManager.java"


# static fields
.field private static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field private static final KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator<",
            "Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;",
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
.method public static synthetic $r8$lambda$jKvL6VpxcnoW62H54lu_cZaX5AE(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->createKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 58
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v2

    .line 57
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->createPrivateKeyManager(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/PrivateKeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->legacyPrivateKeyManager:Lcom/google/crypto/tink/PrivateKeyManager;

    .line 62
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1VerifyKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    const-class v1, Ljava/lang/Void;

    sget-object v2, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PUBLIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    .line 65
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v3

    .line 61
    invoke-static {v0, v1, v2, v3}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->create(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/KeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->legacyPublicKeyManager:Lcom/google/crypto/tink/KeyManager;

    .line 101
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$$ExternalSyntheticLambda0;-><init>()V

    const-class v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;

    const-class v2, Lcom/google/crypto/tink/jwt/JwtPublicKeySign;

    .line 102
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 154
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    .line 230
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 254
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static createFullPrimitive(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;)Lcom/google/crypto/tink/jwt/JwtPublicKeySign;
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

    .line 85
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->toRsaSsaPkcs1PrivateKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    move-result-object v0

    .line 86
    invoke-static {v0}, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;->create(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;)Lcom/google/crypto/tink/PublicKeySign;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->getStandardName()Ljava/lang/String;

    move-result-object v1

    .line 88
    new-instance v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$1;

    invoke-direct {v2, v1, p0, v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager$1;-><init>(Ljava/lang/String;Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/PublicKeySign;)V

    return-object v2
.end method

.method private static createKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;
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

    .line 115
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_PAIR_GENERATOR:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyPairGenerator;

    .line 116
    new-instance v1, Ljava/security/spec/RSAKeyGenParameterSpec;

    .line 118
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getModulusSizeBits()I

    move-result v2

    new-instance v3, Ljava/math/BigInteger;

    .line 119
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v5, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    .line 120
    invoke-virtual {v0, v1}, Ljava/security/KeyPairGenerator;->initialize(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 121
    invoke-virtual {v0}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;

    move-result-object v0

    .line 122
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    check-cast v1, Ljava/security/interfaces/RSAPublicKey;

    .line 123
    invoke-virtual {v0}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v0

    check-cast v0, Ljava/security/interfaces/RSAPrivateCrtKey;

    .line 127
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->setParameters(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object p0

    invoke-interface {v1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->setModulus(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object p0

    if-eqz p1, :cond_49

    .line 129
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;

    .line 131
    :cond_49
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    move-result-object p0

    .line 134
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object p1

    .line 135
    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;->setPublicKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object p0

    .line 137
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object p1

    .line 138
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    .line 136
    invoke-virtual {p0, p1, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;->setPrimes(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object p0

    .line 141
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrivateExponent()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    .line 140
    invoke-static {p1, v1}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object p1

    .line 139
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;->setPrivateExponent(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object p0

    .line 144
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentP()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    .line 143
    invoke-static {p1, v1}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object p1

    .line 146
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getPrimeExponentQ()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    .line 145
    invoke-static {v1, v2}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    .line 142
    invoke-virtual {p0, p1, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;->setPrimeExponents(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object p0

    .line 149
    invoke-interface {v0}, Ljava/security/interfaces/RSAPrivateCrtKey;->getCrtCoefficient()Ljava/math/BigInteger;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v0

    .line 148
    invoke-static {p1, v0}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object p1

    .line 147
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;->setCrtCoefficient(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method static getKeyType()Ljava/lang/String;
    .registers 1

    const-string v0, "type.googleapis.com/google.crypto.tink.JwtRsaSsaPkcs1PrivateKey"

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

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 165
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    const/16 v2, 0x800

    .line 166
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    .line 167
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS256:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    .line 168
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    .line 169
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    .line 170
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v1

    const-string v3, "JWT_RS256_2048_F4_RAW"

    .line 163
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    .line 174
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    .line 175
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS256:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    .line 176
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    .line 177
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    .line 178
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v1

    const-string v2, "JWT_RS256_2048_F4"

    .line 171
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    const/16 v2, 0xc00

    .line 182
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    .line 183
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS256:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    .line 184
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    .line 185
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    .line 186
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v1

    const-string v3, "JWT_RS256_3072_F4_RAW"

    .line 179
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    .line 190
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    .line 191
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS256:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    .line 192
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    .line 193
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    .line 194
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v1

    const-string v3, "JWT_RS256_3072_F4"

    .line 187
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    .line 198
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    .line 199
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS384:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    .line 200
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    .line 201
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v1

    const-string v3, "JWT_RS384_3072_F4_RAW"

    .line 195
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    .line 206
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    .line 207
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS384:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    .line 208
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    .line 209
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    .line 210
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v1

    const-string v2, "JWT_RS384_3072_F4"

    .line 203
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    const/16 v2, 0x1000

    .line 214
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    .line 215
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS512:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    .line 216
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    .line 217
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    .line 218
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v1

    const-string v3, "JWT_RS512_4096_F4_RAW"

    .line 211
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    .line 222
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->F4:Ljava/math/BigInteger;

    .line 223
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS512:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    .line 224
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    .line 225
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v1

    const-string v2, "JWT_RS512_4096_F4"

    .line 219
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
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

    .line 238
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v1

    if-eqz v1, :cond_47

    .line 242
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->register()V

    .line 243
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1VerifyKeyManager;->PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 244
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 245
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 246
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableParametersRegistry;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->namedParameters()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->putAll(Ljava/util/Map;)V

    .line 247
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    const-class v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    invoke-virtual {v1, v2, v3}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->add(Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;Ljava/lang/Class;)V

    .line 248
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->legacyPrivateKeyManager:Lcom/google/crypto/tink/PrivateKeyManager;

    .line 249
    invoke-virtual {v1, v2, v0, p0}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManagerWithFipsCompatibility(Lcom/google/crypto/tink/KeyManager;Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;Z)V

    .line 250
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object p0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1SignKeyManager;->legacyPublicKeyManager:Lcom/google/crypto/tink/KeyManager;

    const/4 v2, 0x0

    .line 251
    invoke-virtual {p0, v1, v0, v2}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManagerWithFipsCompatibility(Lcom/google/crypto/tink/KeyManager;Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;Z)V

    return-void

    .line 239
    :cond_47
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use RSA SSA PKCS1 in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static toRsaSsaPkcs1PrivateKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;
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

    .line 71
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1VerifyKeyManager;->toRsaSsaPkcs1PublicKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    move-result-object v0

    .line 72
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->builder()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;

    move-result-object v1

    .line 73
    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->setPublicKey(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;

    move-result-object v0

    .line 74
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getPrimeP()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getPrimeQ()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->setPrimes(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getPrivateExponent()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->setPrivateExponent(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getPrimeExponentP()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getPrimeExponentQ()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->setPrimeExponents(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getCrtCoefficient()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->setCrtCoefficient(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;

    move-result-object p0

    .line 78
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    move-result-object p0

    return-object p0
.end method
