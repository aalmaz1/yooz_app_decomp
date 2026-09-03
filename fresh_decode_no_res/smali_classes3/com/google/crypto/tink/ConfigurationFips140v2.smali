.class public Lcom/google/crypto/tink/ConfigurationFips140v2;
.super Ljava/lang/Object;
.source "ConfigurationFips140v2.java"


# direct methods
.method public static synthetic $r8$lambda$HZAve_i99xs8w2qMMadhx0_GF2M(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;)Lcom/google/crypto/tink/PublicKeySign;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/ConfigurationFips140v2;->rsaSsaPkcs1SignCreate(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;)Lcom/google/crypto/tink/PublicKeySign;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cUGcCFqpx3kiwMwPqpRxKEfynkk(Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;)Lcom/google/crypto/tink/PublicKeySign;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/ConfigurationFips140v2;->rsaSsaPssSignCreate(Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;)Lcom/google/crypto/tink/PublicKeySign;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$gMc1Ou5Q6lz4etRfW2do_1QHoLQ(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/ConfigurationFips140v2;->rsaSsaPkcs1VerifyCreate(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$iIDfiKfadhHQ7MyhcdoVNSw9MLE(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/ConfigurationFips140v2;->rsaSsaPssVerifyCreate(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get()Lcom/google/crypto/tink/Configuration;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 65
    invoke-static {}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;->fipsModuleAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-static {}, Lcom/google/crypto/tink/internal/Random;->validateUsesConscrypt()V

    .line 72
    invoke-static {}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->builder()Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/google/crypto/tink/mac/MacWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 76
    invoke-static {v0}, Lcom/google/crypto/tink/mac/ChunkedMacWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 77
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Lcom/google/crypto/tink/mac/HmacKey;

    const-class v3, Lcom/google/crypto/tink/Mac;

    .line 78
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 77
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 79
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda3;-><init>()V

    const-class v2, Lcom/google/crypto/tink/mac/HmacKey;

    const-class v3, Lcom/google/crypto/tink/mac/ChunkedMac;

    .line 80
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 83
    invoke-static {v0}, Lcom/google/crypto/tink/aead/AeadWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 84
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda4;-><init>()V

    const-class v2, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;

    const-class v3, Lcom/google/crypto/tink/Aead;

    .line 85
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 84
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 87
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda5;-><init>()V

    const-class v2, Lcom/google/crypto/tink/aead/AesGcmKey;

    const-class v3, Lcom/google/crypto/tink/Aead;

    .line 88
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 87
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 91
    invoke-static {v0}, Lcom/google/crypto/tink/prf/PrfSetWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 92
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda6;-><init>()V

    const-class v2, Lcom/google/crypto/tink/prf/HmacPrfKey;

    const-class v3, Lcom/google/crypto/tink/prf/Prf;

    .line 93
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 92
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 96
    invoke-static {v0}, Lcom/google/crypto/tink/signature/PublicKeySignWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 97
    invoke-static {v0}, Lcom/google/crypto/tink/signature/PublicKeyVerifyWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 98
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda7;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeySign;

    .line 99
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 98
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 101
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda8;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeyVerify;

    .line 102
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 104
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda9;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeySign;

    .line 105
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 109
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda10;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeyVerify;

    .line 110
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 114
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda1;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeySign;

    .line 115
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 119
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda2;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeyVerify;

    .line 120
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 125
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->build()Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/InternalConfiguration;->createFromPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry;)Lcom/google/crypto/tink/internal/InternalConfiguration;

    move-result-object v0

    return-object v0

    .line 66
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Conscrypt is not available or does not support checking for FIPS build."

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static rsaSsaPkcs1SignCreate(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;)Lcom/google/crypto/tink/PublicKeySign;
    .locals 2
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

    .line 134
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getModulusSizeBits()I

    move-result v0

    const/16 v1, 0x800

    if-eq v0, v1, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getModulusSizeBits()I

    move-result v0

    const/16 v1, 0xc00

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Cannot create FIPS-compliant PublicKeySign: wrong RsaSsaPkcs1 key modulus size"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 139
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/RsaSsaPkcs1SignJce;->create(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;)Lcom/google/crypto/tink/PublicKeySign;

    move-result-object p0

    return-object p0
.end method

.method private static rsaSsaPkcs1VerifyCreate(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;
    .locals 2
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

    .line 144
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getModulusSizeBits()I

    move-result v0

    const/16 v1, 0x800

    if-eq v0, v1, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPkcs1Parameters;->getModulusSizeBits()I

    move-result v0

    const/16 v1, 0xc00

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Cannot create FIPS-compliant PublicKeyVerify: wrong RsaSsaPkcs1 key modulus size"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 149
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/google/crypto/tink/signature/internal/RsaSsaPkcs1VerifyConscrypt;->create(Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;

    move-result-object p0

    return-object p0
.end method

.method private static rsaSsaPssSignCreate(Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;)Lcom/google/crypto/tink/PublicKeySign;
    .locals 2
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

    .line 154
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getModulusSizeBits()I

    move-result v0

    const/16 v1, 0x800

    if-eq v0, v1, :cond_1

    .line 155
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getModulusSizeBits()I

    move-result v0

    const/16 v1, 0xc00

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 156
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Cannot create FIPS-compliant PublicKeySign: wrong RsaSsaPss key modulus size"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 159
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/google/crypto/tink/signature/internal/RsaSsaPssSignConscrypt;->create(Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;)Lcom/google/crypto/tink/PublicKeySign;

    move-result-object p0

    return-object p0
.end method

.method private static rsaSsaPssVerifyCreate(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;
    .locals 2
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

    .line 164
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getModulusSizeBits()I

    move-result v0

    const/16 v1, 0x800

    if-eq v0, v1, :cond_1

    .line 165
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getModulusSizeBits()I

    move-result v0

    const/16 v1, 0xc00

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Cannot create FIPS-compliant PublicKeyVerify: wrong RsaSsaPss key modulus size"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 169
    :cond_1
    :goto_0
    invoke-static {p0}, Lcom/google/crypto/tink/signature/internal/RsaSsaPssVerifyConscrypt;->create(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;

    move-result-object p0

    return-object p0
.end method
