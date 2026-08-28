.class final Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;
.super Ljava/lang/Object;
.source "JwtRsaSsaPkcs1ProtoSerialization.java"


# static fields
.field private static final ALGORITHM_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/EnumTypeProtoConverter<",
            "Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;",
            "Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/ParametersParser<",
            "Lcom/google/crypto/tink/internal/ProtoParametersSerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/ParametersSerializer<",
            "Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;",
            "Lcom/google/crypto/tink/internal/ProtoParametersSerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIVATE_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/KeyParser<",
            "Lcom/google/crypto/tink/internal/ProtoKeySerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIVATE_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/KeySerializer<",
            "Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;",
            "Lcom/google/crypto/tink/internal/ProtoKeySerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIVATE_TYPE_URL:Ljava/lang/String; = "type.googleapis.com/google.crypto.tink.JwtRsaSsaPkcs1PrivateKey"

.field private static final PRIVATE_TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;

.field private static final PUBLIC_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/KeyParser<",
            "Lcom/google/crypto/tink/internal/ProtoKeySerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLIC_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/KeySerializer<",
            "Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;",
            "Lcom/google/crypto/tink/internal/ProtoKeySerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLIC_TYPE_URL:Ljava/lang/String; = "type.googleapis.com/google.crypto.tink.JwtRsaSsaPkcs1PublicKey"

.field private static final PUBLIC_TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;


# direct methods
.method public static synthetic $r8$lambda$-Q7hE9Csi8mYRieTcSGqPr9aIe0(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
    .registers 1

    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->serializeParameters(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$3YuOCHRGfa-phsLKIT0i75kKIOQ(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->serializePrivateKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AJlxsDhSPyh5SD_t8qu7FUSjPNs(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->serializePublicKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$T7M4Ono3S7Dxw9W5ipJhAzmd0ew(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;
    .registers 1

    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->parseParameters(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$vlXIJ_guKOnza_qnzrhYC9HCQ98(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->parsePrivateKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wthAHgDMyVKW0TQDv1s5NLUhb7Q(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->parsePublicKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 5

    const-string v0, "type.googleapis.com/google.crypto.tink.JwtRsaSsaPkcs1PrivateKey"

    .line 54
    invoke-static {v0}, Lcom/google/crypto/tink/internal/Util;->toBytesFromPrintableAscii(Ljava/lang/String;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->PRIVATE_TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;

    const-string v1, "type.googleapis.com/google.crypto.tink.JwtRsaSsaPkcs1PublicKey"

    .line 57
    invoke-static {v1}, Lcom/google/crypto/tink/internal/Util;->toBytesFromPrintableAscii(Ljava/lang/String;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->PUBLIC_TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;

    .line 60
    new-instance v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization$$ExternalSyntheticLambda0;-><init>()V

    const-class v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    const-class v4, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 61
    invoke-static {v2, v3, v4}, Lcom/google/crypto/tink/internal/ParametersSerializer;->create(Lcom/google/crypto/tink/internal/ParametersSerializer$ParametersSerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/ParametersSerializer;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;

    .line 66
    new-instance v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization$$ExternalSyntheticLambda1;-><init>()V

    const-class v3, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 67
    invoke-static {v2, v0, v3}, Lcom/google/crypto/tink/internal/ParametersParser;->create(Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/ParametersParser;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;

    .line 73
    new-instance v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization$$ExternalSyntheticLambda2;-><init>()V

    const-class v3, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    const-class v4, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 74
    invoke-static {v2, v3, v4}, Lcom/google/crypto/tink/internal/KeySerializer;->create(Lcom/google/crypto/tink/internal/KeySerializer$KeySerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeySerializer;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->PUBLIC_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    .line 79
    new-instance v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization$$ExternalSyntheticLambda3;-><init>()V

    const-class v3, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 80
    invoke-static {v2, v1, v3}, Lcom/google/crypto/tink/internal/KeyParser;->create(Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeyParser;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->PUBLIC_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    .line 86
    new-instance v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization$$ExternalSyntheticLambda4;-><init>()V

    const-class v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;

    const-class v3, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 87
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/KeySerializer;->create(Lcom/google/crypto/tink/internal/KeySerializer$KeySerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeySerializer;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->PRIVATE_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    .line 92
    new-instance v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization$$ExternalSyntheticLambda5;-><init>()V

    const-class v2, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 93
    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/internal/KeyParser;->create(Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeyParser;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->PRIVATE_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    .line 102
    invoke-static {}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->builder()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;->RS256:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS256:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    .line 103
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;->RS384:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS384:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    .line 104
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;->RS512:Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;->RS512:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->build()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->ALGORITHM_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static decodeBigInteger(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Ljava/math/BigInteger;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 209
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/internal/BigIntegerEncoding;->fromUnsignedBigEndianBytes([B)Ljava/math/BigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static decodeSecretBigInteger(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "access"
        }
    .end annotation

    .line 316
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/internal/BigIntegerEncoding;->fromUnsignedBigEndianBytes([B)Ljava/math/BigInteger;

    move-result-object p0

    .line 315
    invoke-static {p0, p1}, Lcom/google/crypto/tink/util/SecretBigInteger;->fromBigInteger(Ljava/math/BigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object p0

    return-object p0
.end method

.method private static encodeBigInteger(Ljava/math/BigInteger;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 121
    invoke-static {p0}, Lcom/google/crypto/tink/internal/BigIntegerEncoding;->toBigEndianBytes(Ljava/math/BigInteger;)[B

    move-result-object p0

    .line 122
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private static encodeSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "i",
            "access"
        }
    .end annotation

    .line 182
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/util/SecretBigInteger;->getBigInteger(Lcom/google/crypto/tink/SecretKeyAccess;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->encodeBigInteger(Ljava/math/BigInteger;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method private static getProtoKeyFormat(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;
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

    .line 127
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getKidStrategy()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 129
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getKidStrategy()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_32

    .line 131
    :cond_19
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to serialize Parameters object with KidStrategy "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getKidStrategy()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_32
    :goto_32
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->ALGORITHM_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 136
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat$Builder;->setAlgorithm(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat$Builder;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getModulusSizeBits()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat$Builder;->setModulusSizeInBits(I)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat$Builder;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->encodeBigInteger(Ljava/math/BigInteger;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat$Builder;->setPublicExponent(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat$Builder;

    move-result-object p0

    .line 139
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;

    return-object p0
.end method

.method private static getProtoPublicKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;
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

    .line 156
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->newBuilder()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 157
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->ALGORITHM_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 158
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getAlgorithm()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;->setAlgorithm(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getModulus()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->encodeBigInteger(Ljava/math/BigInteger;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;->setN(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getPublicExponent()Ljava/math/BigInteger;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->encodeBigInteger(Ljava/math/BigInteger;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;->setE(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getKidStrategy()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->CUSTOM:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_64

    .line 163
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$CustomKid;->newBuilder()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$CustomKid$Builder;

    move-result-object v1

    .line 164
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getKid()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$CustomKid$Builder;->setValue(Ljava/lang/String;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$CustomKid$Builder;

    move-result-object p0

    .line 165
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$CustomKid$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$CustomKid;

    .line 162
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;->setCustomKid(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$CustomKid;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;

    .line 167
    :cond_64
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;

    return-object p0
.end method

.method private static getPublicKeyFromProto(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;
    .registers 7
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "protoKey",
            "outputPrefixType",
            "idRequirement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 257
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->getVersion()I

    move-result v0

    invoke-static {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->validateVersion(I)V

    .line 259
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v0

    .line 260
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object v1

    .line 262
    sget-object v2, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {p1, v2}, Lcom/google/crypto/tink/proto/OutputPrefixType;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_38

    .line 263
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->hasCustomKid()Z

    move-result p1

    if-nez p1, :cond_30

    if-eqz p2, :cond_28

    .line 271
    sget-object p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    .line 272
    invoke-virtual {v1, p2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->setIdRequirement(Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;

    goto :goto_5c

    .line 268
    :cond_28
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Keys serialized with OutputPrefixType TINK need an ID Requirement"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 264
    :cond_30
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Keys serialized with OutputPrefixType TINK should not have a custom kid"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 273
    :cond_38
    sget-object p2, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/proto/OutputPrefixType;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5c

    .line 274
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->hasCustomKid()Z

    move-result p1

    if-eqz p1, :cond_57

    .line 275
    sget-object p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->CUSTOM:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    .line 276
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->getCustomKid()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$CustomKid;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey$CustomKid;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->setCustomKid(Ljava/lang/String;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;

    goto :goto_5c

    .line 278
    :cond_57
    sget-object p1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    .line 282
    :cond_5c
    :goto_5c
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->getN()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-static {p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->decodeBigInteger(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Ljava/math/BigInteger;

    move-result-object p1

    .line 283
    invoke-virtual {p1}, Ljava/math/BigInteger;->bitLength()I

    move-result p2

    .line 284
    sget-object v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->ALGORITHM_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 285
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->getAlgorithm()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->fromProtoEnum(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    invoke-virtual {v0, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object v2

    .line 286
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->getE()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->decodeBigInteger(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object p0

    .line 287
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    .line 289
    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->setModulus(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;

    move-result-object p0

    invoke-virtual {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->setParameters(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;

    .line 291
    invoke-virtual {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    move-result-object p0

    return-object p0
.end method

.method private static parseParameters(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serialization"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.JwtRsaSsaPkcs1PrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_91

    .line 229
    :try_start_10
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 228
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;

    move-result-object v0
    :try_end_20
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_20} :catch_88

    .line 233
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;->getVersion()I

    move-result v1

    invoke-static {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->validateVersion(I)V

    .line 235
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v1

    sget-object v2, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/OutputPrefixType;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 236
    sget-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    goto :goto_3b

    :cond_3a
    const/4 v1, 0x0

    .line 238
    :goto_3b
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p0

    sget-object v2, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/proto/OutputPrefixType;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4d

    .line 239
    sget-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->IGNORED:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    :cond_4d
    if-eqz v1, :cond_80

    .line 244
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object p0

    .line 245
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setKidStrategy(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object p0

    sget-object v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->ALGORITHM_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 246
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;->getAlgorithm()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1Algorithm;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->fromProtoEnum(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setAlgorithm(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Algorithm;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object p0

    .line 247
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;->getPublicExponent()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->decodeBigInteger(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setPublicExponent(Ljava/math/BigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object p0

    .line 248
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;->getModulusSizeInBits()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->setModulusSizeBits(I)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;

    move-result-object p0

    .line 249
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object p0

    return-object p0

    .line 242
    :cond_80
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Invalid OutputPrefixType for JwtHmacKeyFormat"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_88
    move-exception p0

    .line 231
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing JwtRsaSsaPkcs1Parameters failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 221
    :cond_91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to JwtRsaSsaPkcs1ProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parsePrivateKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;
    .registers 5
    .param p1    # Lcom/google/crypto/tink/SecretKeyAccess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serialization",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 323
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.JwtRsaSsaPkcs1PrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    .line 331
    :try_start_c
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 330
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    move-result-object v0

    .line 332
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getVersion()I

    move-result v1

    invoke-static {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->validateVersion(I)V

    .line 336
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getPublicKey()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;

    move-result-object v1

    .line 337
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v2

    .line 338
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    .line 335
    invoke-static {v1, v2, p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->getPublicKeyFromProto(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    move-result-object p0

    .line 340
    invoke-static {p1}, Lcom/google/crypto/tink/SecretKeyAccess;->requireAccess(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object p1

    .line 341
    invoke-static {}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->builder()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object v1

    .line 342
    invoke-virtual {v1, p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;->setPublicKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object p0

    .line 344
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getP()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->decodeSecretBigInteger(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    .line 345
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getQ()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->decodeSecretBigInteger(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v2

    .line 343
    invoke-virtual {p0, v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;->setPrimes(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object p0

    .line 346
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getD()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->decodeSecretBigInteger(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;->setPrivateExponent(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object p0

    .line 348
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getDp()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->decodeSecretBigInteger(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    .line 349
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getDq()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->decodeSecretBigInteger(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v2

    .line 347
    invoke-virtual {p0, v1, v2}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;->setPrimeExponents(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object p0

    .line 350
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->getCrt()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->decodeSecretBigInteger(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;->setCrtCoefficient(Lcom/google/crypto/tink/util/SecretBigInteger;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object p0

    .line 351
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey$Builder;->build()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;

    move-result-object p0
    :try_end_7f
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_c .. :try_end_7f} :catch_80

    return-object p0

    .line 353
    :catch_80
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing JwtRsaSsaPkcs1PrivateKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 324
    :cond_88
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong type URL in call to JwtRsaSsaPkcs1ProtoSerialization.parsePrivateKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 326
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parsePublicKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;
    .registers 4
    .param p1    # Lcom/google/crypto/tink/SecretKeyAccess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "serialization",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 298
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type.googleapis.com/google.crypto.tink.JwtRsaSsaPkcs1PublicKey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2d

    .line 306
    :try_start_c
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 305
    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;

    move-result-object p1

    .line 308
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    .line 307
    invoke-static {p1, v0, p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->getPublicKeyFromProto(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    move-result-object p0
    :try_end_24
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_c .. :try_end_24} :catch_25

    return-object p0

    .line 310
    :catch_25
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing JwtRsaSsaPkcs1PublicKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 299
    :cond_2d
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong type URL in call to JwtRsaSsaPkcs1ProtoSerialization.parsePublicKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static register()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 358
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->register(Lcom/google/crypto/tink/internal/MutableSerializationRegistry;)V

    return-void
.end method

.method public static register(Lcom/google/crypto/tink/internal/MutableSerializationRegistry;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 363
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerParametersSerializer(Lcom/google/crypto/tink/internal/ParametersSerializer;)V

    .line 364
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerParametersParser(Lcom/google/crypto/tink/internal/ParametersParser;)V

    .line 365
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->PUBLIC_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeySerializer(Lcom/google/crypto/tink/internal/KeySerializer;)V

    .line 366
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->PUBLIC_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeyParser(Lcom/google/crypto/tink/internal/KeyParser;)V

    .line 367
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->PRIVATE_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeySerializer(Lcom/google/crypto/tink/internal/KeySerializer;)V

    .line 368
    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->PRIVATE_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeyParser(Lcom/google/crypto/tink/internal/KeyParser;)V

    return-void
.end method

.method private static serializeParameters(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
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

    .line 144
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->toProtoOutputPrefixType(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;)Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v0

    .line 146
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.JwtRsaSsaPkcs1PrivateKey"

    .line 147
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    .line 148
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->getProtoKeyFormat(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1KeyFormat;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    .line 149
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    .line 150
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 145
    invoke-static {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->create(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p0

    return-object p0
.end method

.method private static serializePrivateKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .registers 5
    .param p1    # Lcom/google/crypto/tink/SecretKeyAccess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 188
    invoke-static {p1}, Lcom/google/crypto/tink/SecretKeyAccess;->requireAccess(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object p1

    .line 190
    invoke-static {}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->newBuilder()Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 191
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getPublicKey()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->getProtoPublicKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;->setPublicKey(Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getPrivateExponent()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->encodeSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;->setD(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getPrimeP()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->encodeSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;->setP(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getPrimeQ()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->encodeSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;->setQ(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getPrimeExponentP()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->encodeSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;->setDp(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object v0

    .line 197
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getPrimeExponentQ()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->encodeSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;->setDq(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object v0

    .line 198
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getCrtCoefficient()Lcom/google/crypto/tink/util/SecretBigInteger;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->encodeSecretBigInteger(Lcom/google/crypto/tink/util/SecretBigInteger;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;->setCrt(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;

    move-result-object p1

    .line 199
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;

    .line 202
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PrivateKey;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PRIVATE:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    .line 204
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->toProtoOutputPrefixType(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;)Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v1

    .line 205
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PrivateKey;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.JwtRsaSsaPkcs1PrivateKey"

    .line 200
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method private static serializePublicKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .registers 5
    .param p1    # Lcom/google/crypto/tink/SecretKeyAccess;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 175
    invoke-static {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->getProtoPublicKey(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;)Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/JwtRsaSsaPkcs1PublicKey;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PUBLIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    .line 177
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getParameters()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1ProtoSerialization;->toProtoOutputPrefixType(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;)Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v1

    .line 178
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1PublicKey;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.JwtRsaSsaPkcs1PublicKey"

    .line 173
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method private static toProtoOutputPrefixType(Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;)Lcom/google/crypto/tink/proto/OutputPrefixType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameters"
        }
    .end annotation

    .line 110
    invoke-virtual {p0}, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters;->getKidStrategy()Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;->BASE64_ENCODED_KEY_ID:Lcom/google/crypto/tink/jwt/JwtRsaSsaPkcs1Parameters$KidStrategy;

    .line 111
    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_f

    .line 112
    sget-object p0, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    return-object p0

    .line 114
    :cond_f
    sget-object p0, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    return-object p0
.end method

.method private static validateVersion(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "version"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    if-nez p0, :cond_3

    return-void

    .line 214
    :cond_3
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Parsing failed: unknown version "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
