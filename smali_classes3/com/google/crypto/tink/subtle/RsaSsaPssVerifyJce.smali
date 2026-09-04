.class public final Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;
.super Ljava/lang/Object;
.source "RsaSsaPssVerifyJce.java"

# interfaces
.implements Lcom/google/crypto/tink/PublicKeyVerify;


# annotations
.annotation runtime Lcom/google/errorprone/annotations/Immutable;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;
    }
.end annotation


# static fields
.field private static final EMPTY:[B

.field public static final FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

.field static final HASH_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/EnumTypeProtoConverter<",
            "Lcom/google/crypto/tink/subtle/Enums$HashType;",
            "Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEGACY_MESSAGE_SUFFIX:[B


# instance fields
.field private final verify:Lcom/google/crypto/tink/PublicKeyVerify;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    sget-object v0, Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;->ALGORITHM_REQUIRES_BORINGCRYPTO:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    sput-object v0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->FIPS:Lcom/google/crypto/tink/config/internal/TinkFipsUtil$AlgorithmFipsCompatibility;

    .line 49
    invoke-static {}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->builder()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA256:Lcom/google/crypto/tink/subtle/Enums$HashType;

    sget-object v2, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    .line 50
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA384:Lcom/google/crypto/tink/subtle/Enums$HashType;

    sget-object v2, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->SHA384:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    .line 51
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/subtle/Enums$HashType;->SHA512:Lcom/google/crypto/tink/subtle/Enums$HashType;

    sget-object v2, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    .line 52
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->build()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->HASH_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 55
    sput-object v1, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->EMPTY:[B

    const/4 v1, 0x1

    new-array v1, v1, [B

    aput-byte v0, v1, v0

    .line 56
    sput-object v1, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->LEGACY_MESSAGE_SUFFIX:[B

    return-void
.end method

.method public constructor <init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/Enums$HashType;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pubKey",
            "sigHash",
            "mgf1Hash",
            "saltLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 297
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 298
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->convertKey(Ljava/security/interfaces/RSAPublicKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/Enums$HashType;I)Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    move-result-object p1

    invoke-static {p1}, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->create(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;

    move-result-object p1

    iput-object p1, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->verify:Lcom/google/crypto/tink/PublicKeyVerify;

    return-void
.end method

.method private convertKey(Ljava/security/interfaces/RSAPublicKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/Enums$HashType;I)Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pubKey",
            "sigHash",
            "mgf1Hash",
            "saltLength"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 281
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->builder()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object v0

    .line 282
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object v0

    .line 283
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object v0

    .line 284
    invoke-static {p2}, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->getHashType(Lcom/google/crypto/tink/subtle/Enums$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->setSigHashType(Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object p2

    .line 285
    invoke-static {p3}, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->getHashType(Lcom/google/crypto/tink/subtle/Enums$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->setMgf1HashType(Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object p2

    .line 286
    invoke-virtual {p2, p4}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->setSaltLengthBytes(I)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object p2

    sget-object p3, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    .line 287
    invoke-virtual {p2, p3}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->setVariant(Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;

    move-result-object p2

    .line 288
    invoke-virtual {p2}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object p2

    .line 289
    invoke-static {}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->builder()Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;

    move-result-object p3

    .line 290
    invoke-virtual {p3, p2}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->setParameters(Lcom/google/crypto/tink/signature/RsaSsaPssParameters;)Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;

    move-result-object p2

    .line 291
    invoke-interface {p1}, Ljava/security/interfaces/RSAPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->setModulus(Ljava/math/BigInteger;)Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;

    move-result-object p1

    .line 292
    invoke-virtual {p1}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey$Builder;->build()Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;

    move-result-object p1

    return-object p1
.end method

.method public static create(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;
    .locals 10
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

    .line 241
    :try_start_0
    invoke-static {p0}, Lcom/google/crypto/tink/signature/internal/RsaSsaPssVerifyConscrypt;->create(Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;)Lcom/google/crypto/tink/PublicKeyVerify;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 245
    :catch_0
    sget-object v0, Lcom/google/crypto/tink/subtle/EngineFactory;->KEY_FACTORY:Lcom/google/crypto/tink/subtle/EngineFactory;

    const-string v1, "RSA"

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/subtle/EngineFactory;->getInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/KeyFactory;

    .line 246
    new-instance v1, Ljava/security/spec/RSAPublicKeySpec;

    .line 249
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/security/spec/RSAPublicKeySpec;-><init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V

    .line 248
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Ljava/security/interfaces/RSAPublicKey;

    .line 250
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object v0

    .line 251
    new-instance v9, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;

    sget-object v1, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->HASH_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 253
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getSigHashType()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcom/google/crypto/tink/subtle/Enums$HashType;

    sget-object v1, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->HASH_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 254
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getMgf1HashType()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/google/crypto/tink/subtle/Enums$HashType;

    .line 255
    invoke-virtual {v0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getSaltLengthBytes()I

    move-result v5

    .line 256
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getOutputPrefix()Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object v6

    .line 257
    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssPublicKey;->getParameters()Lcom/google/crypto/tink/signature/RsaSsaPssParameters;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/signature/RsaSsaPssParameters;->getVariant()Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;->LEGACY:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$Variant;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 258
    sget-object p0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->LEGACY_MESSAGE_SUFFIX:[B

    goto :goto_0

    .line 259
    :cond_0
    sget-object p0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->EMPTY:[B

    :goto_0
    move-object v7, p0

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$InternalImpl;-><init>(Ljava/security/interfaces/RSAPublicKey;Lcom/google/crypto/tink/subtle/Enums$HashType;Lcom/google/crypto/tink/subtle/Enums$HashType;I[B[BLcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$1;)V

    return-object v9
.end method

.method private static getHashType(Lcom/google/crypto/tink/subtle/Enums$HashType;)Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hash"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 264
    sget-object v0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce$1;->$SwitchMap$com$google$crypto$tink$subtle$Enums$HashType:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/subtle/Enums$HashType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 270
    sget-object p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->SHA512:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    return-object p0

    .line 272
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unsupported hash: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 268
    :cond_1
    sget-object p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->SHA384:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    return-object p0

    .line 266
    :cond_2
    sget-object p0, Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;->SHA256:Lcom/google/crypto/tink/signature/RsaSsaPssParameters$HashType;

    return-object p0
.end method


# virtual methods
.method public verify([B[B)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "signature",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 303
    iget-object v0, p0, Lcom/google/crypto/tink/subtle/RsaSsaPssVerifyJce;->verify:Lcom/google/crypto/tink/PublicKeyVerify;

    invoke-interface {v0, p1, p2}, Lcom/google/crypto/tink/PublicKeyVerify;->verify([B[B)V

    return-void
.end method
