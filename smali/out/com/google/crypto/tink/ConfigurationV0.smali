.class public Lcom/google/crypto/tink/ConfigurationV0;
.super Ljava/lang/Object;
.source "ConfigurationV0.java"


# static fields
.field private static final AES_CMAC_KEY_SIZE_BYTES:I = 0x20


# direct methods
.method public static synthetic $r8$lambda$1CeEzI8YedCzSVu3rBvWA1uqnaA(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;
    .registers 1

    invoke-static {p0}, Lcom/google/crypto/tink/ConfigurationV0;->createXChaCha20Poly1305(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$B97gVFtCrhSw_qVPIlVKy4s84fg(Lcom/google/crypto/tink/mac/AesCmacKey;)Lcom/google/crypto/tink/Mac;
    .registers 1

    invoke-static {p0}, Lcom/google/crypto/tink/ConfigurationV0;->createAesCmac(Lcom/google/crypto/tink/mac/AesCmacKey;)Lcom/google/crypto/tink/Mac;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Coi_FXAa6o6Xq5WlnZZ2Iuy_uXA(Lcom/google/crypto/tink/daead/AesSivKey;)Lcom/google/crypto/tink/DeterministicAead;
    .registers 1

    invoke-static {p0}, Lcom/google/crypto/tink/ConfigurationV0;->createAesSiv(Lcom/google/crypto/tink/daead/AesSivKey;)Lcom/google/crypto/tink/DeterministicAead;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$JXQoddODyv8od2avWPf3RboKOsA(Lcom/google/crypto/tink/aead/ChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;
    .registers 1

    invoke-static {p0}, Lcom/google/crypto/tink/ConfigurationV0;->createChaCha20Poly1305(Lcom/google/crypto/tink/aead/ChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Tk5Uiz3Li9GsOy1uz-4wTiGgoWI(Lcom/google/crypto/tink/mac/AesCmacKey;)Lcom/google/crypto/tink/mac/ChunkedMac;
    .registers 1

    invoke-static {p0}, Lcom/google/crypto/tink/ConfigurationV0;->createChunkedAesCmac(Lcom/google/crypto/tink/mac/AesCmacKey;)Lcom/google/crypto/tink/mac/ChunkedMac;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Uw8W4_ANmTA214jaJUyM4ST31pY(Lcom/google/crypto/tink/prf/AesCmacPrfKey;)Lcom/google/crypto/tink/prf/Prf;
    .registers 1

    invoke-static {p0}, Lcom/google/crypto/tink/ConfigurationV0;->createAesCmacPrf(Lcom/google/crypto/tink/prf/AesCmacPrfKey;)Lcom/google/crypto/tink/prf/Prf;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ZAz9hYGYiazbQKFCwqT4QB0_7H8(Lcom/google/crypto/tink/prf/HkdfPrfKey;)Lcom/google/crypto/tink/prf/Prf;
    .registers 1

    invoke-static {p0}, Lcom/google/crypto/tink/ConfigurationV0;->createHkdfPrf(Lcom/google/crypto/tink/prf/HkdfPrfKey;)Lcom/google/crypto/tink/prf/Prf;

    move-result-object p0

    return-object p0
.end method

.method private constructor <init>()V
    .registers 1

    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAesCmac(Lcom/google/crypto/tink/mac/AesCmacKey;)Lcom/google/crypto/tink/Mac;
    .registers 3
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

    .line 335
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacKey;->getParameters()Lcom/google/crypto/tink/mac/AesCmacParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getKeySizeBytes()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_11

    .line 338
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/PrfMac;->create(Lcom/google/crypto/tink/mac/AesCmacKey;)Lcom/google/crypto/tink/Mac;

    move-result-object p0

    return-object p0

    .line 336
    :cond_11
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "AesCmac key size is not 32 bytes"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createAesCmacPrf(Lcom/google/crypto/tink/prf/AesCmacPrfKey;)Lcom/google/crypto/tink/prf/Prf;
    .registers 3
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

    .line 321
    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/AesCmacPrfKey;->getParameters()Lcom/google/crypto/tink/prf/AesCmacPrfParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/prf/AesCmacPrfParameters;->getKeySizeBytes()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_11

    .line 324
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/PrfAesCmac;->create(Lcom/google/crypto/tink/prf/AesCmacPrfKey;)Lcom/google/crypto/tink/prf/Prf;

    move-result-object p0

    return-object p0

    .line 322
    :cond_11
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Key size must be 32 bytes"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createAesSiv(Lcom/google/crypto/tink/daead/AesSivKey;)Lcom/google/crypto/tink/DeterministicAead;
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

    .line 289
    invoke-virtual {p0}, Lcom/google/crypto/tink/daead/AesSivKey;->getParameters()Lcom/google/crypto/tink/daead/AesSivParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/daead/AesSivParameters;->getKeySizeBytes()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_11

    .line 297
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/AesSiv;->create(Lcom/google/crypto/tink/daead/AesSivKey;)Lcom/google/crypto/tink/DeterministicAead;

    move-result-object p0

    return-object p0

    .line 290
    :cond_11
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid key size: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/google/crypto/tink/daead/AesSivKey;->getParameters()Lcom/google/crypto/tink/daead/AesSivParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/daead/AesSivParameters;->getKeySizeBytes()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ". Valid keys must have 64 bytes."

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static createChaCha20Poly1305(Lcom/google/crypto/tink/aead/ChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;
    .registers 2
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

    .line 270
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 271
    invoke-static {p0}, Lcom/google/crypto/tink/aead/internal/ChaCha20Poly1305Jce;->create(Lcom/google/crypto/tink/aead/ChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;

    move-result-object p0

    return-object p0

    .line 273
    :cond_b
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/ChaCha20Poly1305;->create(Lcom/google/crypto/tink/aead/ChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;

    move-result-object p0

    return-object p0
.end method

.method private static createChunkedAesCmac(Lcom/google/crypto/tink/mac/AesCmacKey;)Lcom/google/crypto/tink/mac/ChunkedMac;
    .registers 3
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

    .line 328
    invoke-virtual {p0}, Lcom/google/crypto/tink/mac/AesCmacKey;->getParameters()Lcom/google/crypto/tink/mac/AesCmacParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/mac/AesCmacParameters;->getKeySizeBytes()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_12

    .line 331
    new-instance v0, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacImpl;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/mac/internal/ChunkedAesCmacImpl;-><init>(Lcom/google/crypto/tink/mac/AesCmacKey;)V

    return-object v0

    .line 329
    :cond_12
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "AesCmac key size is not 32 bytes"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createHkdfPrf(Lcom/google/crypto/tink/prf/HkdfPrfKey;)Lcom/google/crypto/tink/prf/Prf;
    .registers 3
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

    .line 307
    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/HkdfPrfKey;->getParameters()Lcom/google/crypto/tink/prf/HkdfPrfParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->getKeySizeBytes()I

    move-result v0

    const/16 v1, 0x20

    if-lt v0, v1, :cond_36

    .line 310
    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/HkdfPrfKey;->getParameters()Lcom/google/crypto/tink/prf/HkdfPrfParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->getHashType()Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;->SHA256:Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;

    if-eq v0, v1, :cond_2d

    .line 311
    invoke-virtual {p0}, Lcom/google/crypto/tink/prf/HkdfPrfKey;->getParameters()Lcom/google/crypto/tink/prf/HkdfPrfParameters;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/prf/HkdfPrfParameters;->getHashType()Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;->SHA512:Lcom/google/crypto/tink/prf/HkdfPrfParameters$HashType;

    if-ne v0, v1, :cond_25

    goto :goto_2d

    .line 312
    :cond_25
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Hash type must be SHA256 or SHA512"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 314
    :cond_2d
    :goto_2d
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/prf/HkdfStreamingPrf;->create(Lcom/google/crypto/tink/prf/HkdfPrfKey;)Lcom/google/crypto/tink/subtle/prf/StreamingPrf;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/subtle/prf/PrfImpl;->wrap(Lcom/google/crypto/tink/subtle/prf/StreamingPrf;)Lcom/google/crypto/tink/subtle/prf/PrfImpl;

    move-result-object p0

    return-object p0

    .line 308
    :cond_36
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Key size must be at least 32"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static createXChaCha20Poly1305(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;
    .registers 2
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

    .line 281
    invoke-static {}, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 282
    invoke-static {p0}, Lcom/google/crypto/tink/aead/internal/XChaCha20Poly1305Jce;->create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;

    move-result-object p0

    return-object p0

    .line 284
    :cond_b
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/XChaCha20Poly1305;->create(Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;)Lcom/google/crypto/tink/Aead;

    move-result-object p0

    return-object p0
.end method

.method public static get()Lcom/google/crypto/tink/Configuration;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 156
    invoke-static {}, Lcom/google/crypto/tink/config/internal/TinkFipsUtil;->useOnlyFips()Z

    move-result v0

    if-nez v0, :cond_1f1

    .line 161
    invoke-static {}, Lcom/google/crypto/tink/internal/PrimitiveRegistry;->builder()Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    move-result-object v0

    .line 164
    invoke-static {v0}, Lcom/google/crypto/tink/mac/MacWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 165
    invoke-static {v0}, Lcom/google/crypto/tink/mac/ChunkedMacWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 166
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Lcom/google/crypto/tink/mac/AesCmacKey;

    const-class v3, Lcom/google/crypto/tink/Mac;

    .line 167
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 166
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 168
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Lcom/google/crypto/tink/mac/HmacKey;

    const-class v3, Lcom/google/crypto/tink/Mac;

    .line 169
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 168
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 170
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda8;-><init>()V

    const-class v2, Lcom/google/crypto/tink/mac/AesCmacKey;

    const-class v3, Lcom/google/crypto/tink/mac/ChunkedMac;

    .line 171
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 170
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 173
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda3;-><init>()V

    const-class v2, Lcom/google/crypto/tink/mac/HmacKey;

    const-class v3, Lcom/google/crypto/tink/mac/ChunkedMac;

    .line 174
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 173
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 177
    invoke-static {v0}, Lcom/google/crypto/tink/aead/AeadWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 178
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda4;-><init>()V

    const-class v2, Lcom/google/crypto/tink/aead/AesCtrHmacAeadKey;

    const-class v3, Lcom/google/crypto/tink/Aead;

    .line 179
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 178
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 181
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda9;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda9;-><init>()V

    const-class v2, Lcom/google/crypto/tink/aead/AesEaxKey;

    const-class v3, Lcom/google/crypto/tink/Aead;

    .line 182
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 181
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 183
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda5;-><init>()V

    const-class v2, Lcom/google/crypto/tink/aead/AesGcmKey;

    const-class v3, Lcom/google/crypto/tink/Aead;

    .line 184
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 185
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda10;-><init>()V

    const-class v2, Lcom/google/crypto/tink/aead/AesGcmSivKey;

    const-class v3, Lcom/google/crypto/tink/Aead;

    .line 186
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 185
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 187
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda11;-><init>()V

    const-class v2, Lcom/google/crypto/tink/aead/ChaCha20Poly1305Key;

    const-class v3, Lcom/google/crypto/tink/Aead;

    .line 188
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 187
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 190
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda12;-><init>()V

    const-class v2, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Key;

    const-class v3, Lcom/google/crypto/tink/Aead;

    .line 191
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 190
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 195
    invoke-static {v0}, Lcom/google/crypto/tink/daead/DeterministicAeadWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 196
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda7;-><init>()V

    const-class v2, Lcom/google/crypto/tink/daead/AesSivKey;

    const-class v3, Lcom/google/crypto/tink/DeterministicAead;

    .line 197
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 196
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 201
    invoke-static {v0}, Lcom/google/crypto/tink/streamingaead/StreamingAeadWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 202
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda13;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda13;-><init>()V

    const-class v2, Lcom/google/crypto/tink/streamingaead/AesCtrHmacStreamingKey;

    const-class v3, Lcom/google/crypto/tink/StreamingAead;

    .line 203
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 202
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 205
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda14;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda14;-><init>()V

    const-class v2, Lcom/google/crypto/tink/streamingaead/AesGcmHkdfStreamingKey;

    const-class v3, Lcom/google/crypto/tink/StreamingAead;

    .line 206
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 205
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 210
    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/HybridEncryptWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 211
    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/HybridDecryptWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 212
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda15;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda15;-><init>()V

    const-class v2, Lcom/google/crypto/tink/hybrid/EciesPublicKey;

    const-class v3, Lcom/google/crypto/tink/HybridEncrypt;

    .line 213
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 212
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 215
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda16;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda16;-><init>()V

    const-class v2, Lcom/google/crypto/tink/hybrid/EciesPrivateKey;

    const-class v3, Lcom/google/crypto/tink/HybridDecrypt;

    .line 216
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 218
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda17;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda17;-><init>()V

    const-class v2, Lcom/google/crypto/tink/hybrid/HpkePublicKey;

    const-class v3, Lcom/google/crypto/tink/HybridEncrypt;

    .line 219
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 218
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 220
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda18;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda18;-><init>()V

    const-class v2, Lcom/google/crypto/tink/hybrid/HpkePrivateKey;

    const-class v3, Lcom/google/crypto/tink/HybridDecrypt;

    .line 221
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 225
    invoke-static {v0}, Lcom/google/crypto/tink/prf/PrfSetWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 226
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda19;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda19;-><init>()V

    const-class v2, Lcom/google/crypto/tink/prf/AesCmacPrfKey;

    const-class v3, Lcom/google/crypto/tink/prf/Prf;

    .line 227
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 226
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 229
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda20;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda20;-><init>()V

    const-class v2, Lcom/google/crypto/tink/prf/HkdfPrfKey;

    const-class v3, Lcom/google/crypto/tink/prf/Prf;

    .line 230
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 231
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda6;-><init>()V

    const-class v2, Lcom/google/crypto/tink/prf/HmacPrfKey;

    const-class v3, Lcom/google/crypto/tink/prf/Prf;

    .line 232
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 231
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 235
    invoke-static {v0}, Lcom/google/crypto/tink/signature/PublicKeySignWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 236
    invoke-static {v0}, Lcom/google/crypto/tink/signature/PublicKeyVerifyWrapper;->registerToInternalPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;)V

    .line 237
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda7;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/EcdsaPrivateKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeySign;

    .line 238
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 237
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 240
    new-instance v1, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationFips140v2$$ExternalSyntheticLambda8;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/EcdsaPublicKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeyVerify;

    .line 241
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 240
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 243
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda1;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/Ed25519PrivateKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeySign;

    .line 244
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 243
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 246
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda2;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/Ed25519PublicKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeyVerify;

    .line 247
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 246
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 249
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda3;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PrivateKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeySign;

    .line 250
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 249
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 252
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda4;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/RsaSsaPkcs1PublicKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeyVerify;

    .line 253
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 255
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda5;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/RsaSsaPssPrivateKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeySign;

    .line 256
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 255
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 258
    new-instance v1, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/google/crypto/tink/ConfigurationV0$$ExternalSyntheticLambda6;-><init>()V

    const-class v2, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    const-class v3, Lcom/google/crypto/tink/PublicKeyVerify;

    .line 259
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v1

    .line 258
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;

    .line 262
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/PrimitiveRegistry$Builder;->build()Lcom/google/crypto/tink/internal/PrimitiveRegistry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/internal/InternalConfiguration;->createFromPrimitiveRegistry(Lcom/google/crypto/tink/internal/PrimitiveRegistry;)Lcom/google/crypto/tink/internal/InternalConfiguration;

    move-result-object v0

    return-object v0

    .line 157
    :cond_1f1
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Cannot use non-FIPS-compliant ConfigurationV0 in FIPS mode"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
