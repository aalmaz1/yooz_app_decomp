.class public final Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;
.super Ljava/lang/Object;
.source "JwtHmacKeyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$JwtHmac;
    }
.end annotation


# static fields
.field private static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field private static final KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator<",
            "Lcom/google/crypto/tink/jwt/JwtHmacParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/jwt/JwtHmacKey;",
            "Lcom/google/crypto/tink/jwt/JwtMac;",
            ">;"
        }
    .end annotation
.end field

.field private static final legacyKeyManager:Lcom/google/crypto/tink/KeyManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/KeyManager<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$2JiT4ggpPekoGD2Wh52HUOMXvlE(Lcom/google/crypto/tink/jwt/JwtHmacKey;)Lcom/google/crypto/tink/jwt/JwtMac;
    .registers 1

    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;->createFullJwtHmac(Lcom/google/crypto/tink/jwt/JwtHmacKey;)Lcom/google/crypto/tink/jwt/JwtMac;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$6wVf_dr0sGE5nYM5-YkUOx-7Id4(Lcom/google/crypto/tink/jwt/JwtHmacParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtHmacKey;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;->createKey(Lcom/google/crypto/tink/jwt/JwtHmacParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtHmacKey;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 134
    const-class v0, Ljava/lang/Void;

    sget-object v1, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->SYMMETRIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    .line 139
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtHmacKey;->parser()Lcom/google/crypto/tink/shaded/protobuf/Parser;

    move-result-object v2

    const-string v3, "type.googleapis.com/google.crypto.tink.JwtHmacKey"

    .line 135
    invoke-static {v3, v0, v1, v2}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->create(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/KeyManager;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;->legacyKeyManager:Lcom/google/crypto/tink/KeyManager;

    .line 157
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$$ExternalSyntheticLambda3;-><init>()V

    const-class v1, Lcom/google/crypto/tink/jwt/JwtHmacKey;

    const-class v2, Lcom/google/crypto/tink/jwt/JwtMac;

    .line 158
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;->PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 183
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    .line 241
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createFullJwtHmac(Lcom/google/crypto/tink/jwt/JwtHmacKey;)Lcom/google/crypto/tink/jwt/JwtMac;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 143
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtHmacKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;->validate(Lcom/google/crypto/tink/jwt/JwtHmacParameters;)V

    .line 145
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacKey;->builder()Lcom/google/crypto/tink/mac/HmacKey$Builder;

    move-result-object v0

    .line 147
    invoke-static {}, Lcom/google/crypto/tink/mac/HmacParameters;->builder()Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 148
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtHmacKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->getKeySizeBytes()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 149
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtHmacKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;->getHmacHashType(Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;)Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setHashType(Lcom/google/crypto/tink/mac/HmacParameters$HashType;)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 150
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtHmacKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    move-result-object v2

    invoke-static {v2}, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;->getTagLength(Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->setTagSizeBytes(I)Lcom/google/crypto/tink/mac/HmacParameters$Builder;

    move-result-object v1

    .line 151
    invoke-virtual {v1}, Lcom/google/crypto/tink/mac/HmacParameters$Builder;->build()Lcom/google/crypto/tink/mac/HmacParameters;

    move-result-object v1

    .line 146
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacKey$Builder;->setParameters(Lcom/google/crypto/tink/mac/HmacParameters;)Lcom/google/crypto/tink/mac/HmacKey$Builder;

    move-result-object v0

    .line 152
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtHmacKey;->getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/mac/HmacKey$Builder;->setKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/mac/HmacKey$Builder;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/HmacKey$Builder;->build()Lcom/google/crypto/tink/mac/HmacKey;

    move-result-object v0

    .line 154
    new-instance v1, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$JwtHmac;

    invoke-static {v0}, Lcom/google/crypto/tink/subtle/PrfMac;->create(Lcom/google/crypto/tink/mac/HmacKey;)Lcom/google/crypto/tink/Mac;

    move-result-object v0

    const/4 v2, 0x0

    invoke-direct {v1, v0, p0, v2}, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$JwtHmac;-><init>(Lcom/google/crypto/tink/Mac;Lcom/google/crypto/tink/jwt/JwtHmacKey;Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$1;)V

    return-object v1
.end method

.method private static createKey(Lcom/google/crypto/tink/jwt/JwtHmacParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtHmacKey;
    .registers 4
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

    .line 168
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;->validate(Lcom/google/crypto/tink/jwt/JwtHmacParameters;)V

    .line 170
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtHmacKey;->builder()Lcom/google/crypto/tink/jwt/JwtHmacKey$Builder;

    move-result-object v0

    .line 171
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/jwt/JwtHmacKey$Builder;->setParameters(Lcom/google/crypto/tink/jwt/JwtHmacParameters;)Lcom/google/crypto/tink/jwt/JwtHmacKey$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->getKeySizeBytes()I

    move-result v1

    invoke-static {v1}, Lcom/google/crypto/tink/util/SecretBytes;->randomBytes(I)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/jwt/JwtHmacKey$Builder;->setKeyBytes(Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/jwt/JwtHmacKey$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->hasIdRequirement()Z

    move-result p0

    if-eqz p0, :cond_2f

    if-eqz p1, :cond_27

    .line 178
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/jwt/JwtHmacKey$Builder;->setIdRequirement(I)Lcom/google/crypto/tink/jwt/JwtHmacKey$Builder;

    goto :goto_2f

    .line 175
    :cond_27
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Cannot create key without ID requirement with parameters with ID requirement"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 180
    :cond_2f
    :goto_2f
    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtHmacKey$Builder;->build()Lcom/google/crypto/tink/jwt/JwtHmacKey;

    move-result-object p0

    return-object p0
.end method

.method private static getHmacHashType(Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;)Lcom/google/crypto/tink/mac/HmacParameters$HashType;
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

    .line 122
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS256:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 123
    sget-object p0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA256:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    return-object p0

    .line 125
    :cond_b
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS384:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 126
    sget-object p0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA384:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    return-object p0

    .line 128
    :cond_16
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS512:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 129
    sget-object p0, Lcom/google/crypto/tink/mac/HmacParameters$HashType;->SHA512:Lcom/google/crypto/tink/mac/HmacParameters$HashType;

    return-object p0

    .line 131
    :cond_21
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported algorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static getKeyType()Ljava/lang/String;
    .registers 1

    const-string v0, "type.googleapis.com/google.crypto.tink.JwtHmacKey"

    return-object v0
.end method

.method private static getTagLength(Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;)I
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

    .line 108
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS256:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/16 p0, 0x20

    return p0

    .line 111
    :cond_b
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS384:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/16 p0, 0x30

    return p0

    .line 114
    :cond_16
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS512:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    const/16 p0, 0x40

    return p0

    .line 117
    :cond_21
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported algorithm: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static final hs256Template()Lcom/google/crypto/tink/KeyTemplate;
    .registers 1

    .line 259
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method public static final hs384Template()Lcom/google/crypto/tink/KeyTemplate;
    .registers 1

    .line 271
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method public static final hs512Template()Lcom/google/crypto/tink/KeyTemplate;
    .registers 1

    .line 283
    new-instance v0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/google/crypto/tink/internal/TinkBugException;->exceptionIsBug(Lcom/google/crypto/tink/internal/TinkBugException$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/KeyTemplate;

    return-object v0
.end method

.method static synthetic lambda$hs256Template$0()Lcom/google/crypto/tink/KeyTemplate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 262
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->builder()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v0

    const/16 v1, 0x20

    .line 263
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    .line 264
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS256:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    .line 265
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    move-result-object v0

    .line 261
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$hs384Template$1()Lcom/google/crypto/tink/KeyTemplate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 274
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->builder()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v0

    const/16 v1, 0x30

    .line 275
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    .line 276
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS384:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    .line 277
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v0

    .line 278
    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    move-result-object v0

    .line 273
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$hs512Template$2()Lcom/google/crypto/tink/KeyTemplate;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 286
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->builder()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v0

    const/16 v1, 0x40

    .line 287
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    .line 288
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS512:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    .line 289
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    move-result-object v0

    .line 285
    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

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

    .line 191
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 194
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->builder()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    const/16 v2, 0x20

    .line 195
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS256:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    .line 196
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    .line 197
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    .line 198
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    move-result-object v1

    const-string v3, "JWT_HS256_RAW"

    .line 192
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->builder()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    .line 202
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS256:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    .line 203
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    .line 204
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    .line 205
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    move-result-object v1

    const-string v2, "JWT_HS256"

    .line 199
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->builder()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    const/16 v2, 0x30

    .line 209
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS384:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    .line 210
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    .line 211
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    move-result-object v1

    const-string v3, "JWT_HS384_RAW"

    .line 206
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->builder()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    .line 216
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS384:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    .line 217
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    .line 218
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    .line 219
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    move-result-object v1

    const-string v2, "JWT_HS384"

    .line 213
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->builder()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    const/16 v2, 0x40

    .line 223
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS512:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    .line 224
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    sget-object v3, Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    .line 225
    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    .line 226
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    move-result-object v1

    const-string v3, "JWT_HS512_RAW"

    .line 220
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->builder()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    .line 230
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setKeySizeBytes(I)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS512:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    .line 231
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;

    .line 232
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtHmacParameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;

    move-result-object v1

    .line 233
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    move-result-object v1

    const-string v2, "JWT_HS512"

    .line 227
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static register(Z)V
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

    .line 245
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    invoke-virtual {v0}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->isCompatible()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 249
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtHmacProtoSerialization;->register()V

    .line 250
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    const-class v3, Lcom/google/crypto/tink/jwt/JwtHmacParameters;

    invoke-virtual {v1, v2, v3}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->add(Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;Ljava/lang/Class;)V

    .line 251
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;->PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 252
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableParametersRegistry;

    move-result-object v1

    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;->namedParameters()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/MutableParametersRegistry;->putAll(Ljava/util/Map;)V

    .line 253
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;->legacyKeyManager:Lcom/google/crypto/tink/KeyManager;

    .line 254
    invoke-virtual {v1, v2, v0, p0}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManagerWithFipsCompatibility(Lcom/google/crypto/tink/KeyManager;Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;Z)V

    return-void

    .line 246
    :cond_34
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Can not use HMAC in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static validate(Lcom/google/crypto/tink/jwt/JwtHmacParameters;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 92
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS256:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x20

    goto :goto_12

    :cond_f
    const v0, 0x7fffffff

    .line 95
    :goto_12
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS384:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/16 v0, 0x30

    .line 98
    :cond_20
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;->HS512:Lcom/google/crypto/tink/jwt/JwtHmacParameters$Algorithm;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/16 v0, 0x40

    .line 101
    :cond_2e
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtHmacParameters;->getKeySizeBytes()I

    move-result p0

    if-lt p0, v0, :cond_35

    return-void

    .line 102
    :cond_35
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Key size must be at least "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public fipsStatus()Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;
    .registers 2

    .line 238
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtHmacKeyManager;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    return-object v0
.end method
