.class public final Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;
.super Ljava/lang/Object;
.source "HpkeProtoSerialization.java"


# static fields
.field private static final AEAD_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/EnumTypeProtoConverter<",
            "Lcom/google/crypto/tink/proto/HpkeAead;",
            "Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;",
            ">;"
        }
    .end annotation
.end field

.field private static final KDF_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/EnumTypeProtoConverter<",
            "Lcom/google/crypto/tink/proto/HpkeKdf;",
            "Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEM_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/EnumTypeProtoConverter<",
            "Lcom/google/crypto/tink/proto/HpkeKem;",
            "Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;",
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
            "Lcom/google/crypto/tink/hybrid/HpkeParameters;",
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
            "Lcom/google/crypto/tink/hybrid/HpkePrivateKey;",
            "Lcom/google/crypto/tink/internal/ProtoKeySerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIVATE_TYPE_URL:Ljava/lang/String; = "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

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
            "Lcom/google/crypto/tink/hybrid/HpkePublicKey;",
            "Lcom/google/crypto/tink/internal/ProtoKeySerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final PUBLIC_TYPE_URL:Ljava/lang/String; = "type.googleapis.com/google.crypto.tink.HpkePublicKey"

.field private static final PUBLIC_TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;

.field private static final VARIANT_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/EnumTypeProtoConverter<",
            "Lcom/google/crypto/tink/proto/OutputPrefixType;",
            "Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;",
            ">;"
        }
    .end annotation
.end field

.field private static final VERSION:I


# direct methods
.method public static synthetic $r8$lambda$-vSF1Jf8Afyj8p19DFyYkmuciNE(Lcom/google/crypto/tink/hybrid/HpkePublicKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->serializePublicKey(Lcom/google/crypto/tink/hybrid/HpkePublicKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4wDgDurFSjPdwbj5FUD9GP7tMP8(Lcom/google/crypto/tink/hybrid/HpkeParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
    .registers 1

    invoke-static {p0}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->serializeParameters(Lcom/google/crypto/tink/hybrid/HpkeParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$DjKf_BM4O8lN0dKU8pyfi8IubRI(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/hybrid/HpkeParameters;
    .registers 1

    invoke-static {p0}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->parseParameters(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$g4yCG4g1n9UZAeI5dqSq5AJeKZ8(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/hybrid/HpkePublicKey;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->parsePublicKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/hybrid/HpkePublicKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$soq7qOigiPG_YwpkfyQwpyrdjOY(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/hybrid/HpkePrivateKey;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->parsePrivateKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/hybrid/HpkePrivateKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ygwJBCG2jnKvCXYA-tLilKxPcAU(Lcom/google/crypto/tink/hybrid/HpkePrivateKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->serializePrivateKey(Lcom/google/crypto/tink/hybrid/HpkePrivateKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 5

    const-string v0, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    .line 60
    invoke-static {v0}, Lcom/google/crypto/tink/internal/Util;->toBytesFromPrintableAscii(Ljava/lang/String;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->PRIVATE_TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;

    const-string v1, "type.googleapis.com/google.crypto.tink.HpkePublicKey"

    .line 63
    invoke-static {v1}, Lcom/google/crypto/tink/internal/Util;->toBytesFromPrintableAscii(Ljava/lang/String;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->PUBLIC_TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;

    .line 66
    new-instance v2, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization$$ExternalSyntheticLambda0;-><init>()V

    const-class v3, Lcom/google/crypto/tink/hybrid/HpkeParameters;

    const-class v4, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 67
    invoke-static {v2, v3, v4}, Lcom/google/crypto/tink/internal/ParametersSerializer;->create(Lcom/google/crypto/tink/internal/ParametersSerializer$ParametersSerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/ParametersSerializer;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;

    .line 72
    new-instance v2, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization$$ExternalSyntheticLambda1;-><init>()V

    const-class v3, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 73
    invoke-static {v2, v0, v3}, Lcom/google/crypto/tink/internal/ParametersParser;->create(Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/ParametersParser;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;

    .line 78
    new-instance v2, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization$$ExternalSyntheticLambda2;-><init>()V

    const-class v3, Lcom/google/crypto/tink/hybrid/HpkePublicKey;

    const-class v4, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 79
    invoke-static {v2, v3, v4}, Lcom/google/crypto/tink/internal/KeySerializer;->create(Lcom/google/crypto/tink/internal/KeySerializer$KeySerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeySerializer;

    move-result-object v2

    sput-object v2, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->PUBLIC_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    .line 84
    new-instance v2, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization$$ExternalSyntheticLambda3;-><init>()V

    const-class v3, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 85
    invoke-static {v2, v1, v3}, Lcom/google/crypto/tink/internal/KeyParser;->create(Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeyParser;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->PUBLIC_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    .line 90
    new-instance v1, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization$$ExternalSyntheticLambda4;-><init>()V

    const-class v2, Lcom/google/crypto/tink/hybrid/HpkePrivateKey;

    const-class v3, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 91
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/KeySerializer;->create(Lcom/google/crypto/tink/internal/KeySerializer$KeySerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeySerializer;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->PRIVATE_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    .line 96
    new-instance v1, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization$$ExternalSyntheticLambda5;-><init>()V

    const-class v2, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 97
    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/internal/KeyParser;->create(Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeyParser;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->PRIVATE_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    .line 104
    invoke-static {}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->builder()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 105
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->TINK:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 106
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->LEGACY:Lcom/google/crypto/tink/proto/OutputPrefixType;

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 107
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->CRUNCHY:Lcom/google/crypto/tink/proto/OutputPrefixType;

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;->CRUNCHY:Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    .line 112
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->build()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->VARIANT_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 116
    invoke-static {}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->builder()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/HpkeKem;->DHKEM_P256_HKDF_SHA256:Lcom/google/crypto/tink/proto/HpkeKem;

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P256_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 117
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/HpkeKem;->DHKEM_P384_HKDF_SHA384:Lcom/google/crypto/tink/proto/HpkeKem;

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P384_HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 118
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/HpkeKem;->DHKEM_P521_HKDF_SHA512:Lcom/google/crypto/tink/proto/HpkeKem;

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_P521_HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 119
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/HpkeKem;->DHKEM_X25519_HKDF_SHA256:Lcom/google/crypto/tink/proto/HpkeKem;

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;->DHKEM_X25519_HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    .line 121
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->build()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->KEM_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 124
    invoke-static {}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->builder()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/HpkeKdf;->HKDF_SHA256:Lcom/google/crypto/tink/proto/HpkeKdf;

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA256:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/HpkeKdf;->HKDF_SHA384:Lcom/google/crypto/tink/proto/HpkeKdf;

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA384:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 126
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/HpkeKdf;->HKDF_SHA512:Lcom/google/crypto/tink/proto/HpkeKdf;

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;->HKDF_SHA512:Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    .line 127
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->build()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->KDF_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 131
    invoke-static {}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->builder()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/HpkeAead;->AES_128_GCM:Lcom/google/crypto/tink/proto/HpkeAead;

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_128_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/HpkeAead;->AES_256_GCM:Lcom/google/crypto/tink/proto/HpkeAead;

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->AES_256_GCM:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/HpkeAead;->CHACHA20_POLY1305:Lcom/google/crypto/tink/proto/HpkeAead;

    sget-object v2, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;->CHACHA20_POLY1305:Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    .line 134
    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->add(Ljava/lang/Enum;Ljava/lang/Object;)Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter$Builder;->build()Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->AEAD_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static encodePrivateKeyBytes(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;[BLcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;
    .registers 3
    .param p2    # Lcom/google/crypto/tink/SecretKeyAccess;
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
            "kemId",
            "privateKeyBytes",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 294
    invoke-static {p1}, Lcom/google/crypto/tink/internal/BigIntegerEncoding;->fromUnsignedBigEndianBytes([B)Ljava/math/BigInteger;

    move-result-object p1

    .line 297
    invoke-static {p0}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->getEncodedPrivateKeyLength(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)I

    move-result p0

    .line 296
    invoke-static {p1, p0}, Lcom/google/crypto/tink/internal/BigIntegerEncoding;->toBigEndianBytesOfFixedLength(Ljava/math/BigInteger;I)[B

    move-result-object p0

    .line 298
    invoke-static {p2}, Lcom/google/crypto/tink/SecretKeyAccess;->requireAccess(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/google/crypto/tink/util/SecretBytes;->copyFrom([BLcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    return-object p0
.end method

.method private static encodePublicKeyBytes(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;[B)Lcom/google/crypto/tink/util/Bytes;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "kemId",
            "publicKeyBytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 256
    invoke-static {p1}, Lcom/google/crypto/tink/internal/BigIntegerEncoding;->fromUnsignedBigEndianBytes([B)Ljava/math/BigInteger;

    move-result-object p1

    .line 259
    invoke-static {p0}, Lcom/google/crypto/tink/hybrid/internal/HpkeUtil;->getEncodedPublicKeyLength(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)I

    move-result p0

    .line 258
    invoke-static {p1, p0}, Lcom/google/crypto/tink/internal/BigIntegerEncoding;->toBigEndianBytesOfFixedLength(Ljava/math/BigInteger;I)[B

    move-result-object p0

    .line 260
    invoke-static {p0}, Lcom/google/crypto/tink/util/Bytes;->copyFrom([B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    return-object p0
.end method

.method private static fromProtoParameters(Lcom/google/crypto/tink/proto/OutputPrefixType;Lcom/google/crypto/tink/proto/HpkeParams;)Lcom/google/crypto/tink/hybrid/HpkeParameters;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "outputPrefixType",
            "protoParams"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 187
    invoke-static {}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->builder()Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->VARIANT_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 188
    invoke-virtual {v1, p0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->fromProtoEnum(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setVariant(Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->KEM_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 189
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HpkeParams;->getKem()Lcom/google/crypto/tink/proto/HpkeKem;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->fromProtoEnum(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKemId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->KDF_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 190
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HpkeParams;->getKdf()Lcom/google/crypto/tink/proto/HpkeKdf;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->fromProtoEnum(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setKdfId(Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->AEAD_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 191
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HpkeParams;->getAead()Lcom/google/crypto/tink/proto/HpkeAead;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->fromProtoEnum(Ljava/lang/Enum;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->setAeadId(Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;)Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;

    move-result-object p0

    .line 192
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters$Builder;->build()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object p0

    return-object p0
.end method

.method private static parseParameters(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/hybrid/HpkeParameters;
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

    .line 237
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 246
    :try_start_10
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 245
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    move-result-object v0
    :try_end_20
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_20} :catch_31

    .line 251
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->getParams()Lcom/google/crypto/tink/proto/HpkeParams;

    move-result-object v0

    .line 250
    invoke-static {p0, v0}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->fromProtoParameters(Lcom/google/crypto/tink/proto/OutputPrefixType;Lcom/google/crypto/tink/proto/HpkeParams;)Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object p0

    return-object p0

    :catch_31
    move-exception p0

    .line 248
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing HpkeParameters failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 238
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to HpkeProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
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

.method private static parsePrivateKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/hybrid/HpkePrivateKey;
    .registers 6
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

    .line 305
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_77

    .line 313
    :try_start_c
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 312
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkePrivateKey;

    move-result-object v0

    .line 314
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->getVersion()I

    move-result v1
    :try_end_1c
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_c .. :try_end_1c} :catch_6f

    const-string v2, "Only version 0 keys are accepted"

    if-nez v1, :cond_69

    .line 317
    :try_start_20
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->getPublicKey()Lcom/google/crypto/tink/proto/HpkePublicKey;

    move-result-object v1

    .line 318
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/HpkePublicKey;->getVersion()I

    move-result v3

    if-nez v3, :cond_63

    .line 322
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v2

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/HpkePublicKey;->getParams()Lcom/google/crypto/tink/proto/HpkeParams;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->fromProtoParameters(Lcom/google/crypto/tink/proto/OutputPrefixType;Lcom/google/crypto/tink/proto/HpkeParams;)Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v2

    .line 326
    invoke-virtual {v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKemId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    move-result-object v3

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/HpkePublicKey;->getPublicKey()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v1

    invoke-static {v3, v1}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->encodePublicKeyBytes(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;[B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v1

    .line 327
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    .line 324
    invoke-static {v2, v1, p0}, Lcom/google/crypto/tink/hybrid/HpkePublicKey;->create(Lcom/google/crypto/tink/hybrid/HpkeParameters;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)Lcom/google/crypto/tink/hybrid/HpkePublicKey;

    move-result-object p0

    .line 330
    invoke-virtual {v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKemId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->getPrivateKey()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {v1, v0, p1}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->encodePrivateKeyBytes(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;[BLcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p1

    .line 328
    invoke-static {p0, p1}, Lcom/google/crypto/tink/hybrid/HpkePrivateKey;->create(Lcom/google/crypto/tink/hybrid/HpkePublicKey;Lcom/google/crypto/tink/util/SecretBytes;)Lcom/google/crypto/tink/hybrid/HpkePrivateKey;

    move-result-object p0

    return-object p0

    .line 319
    :cond_63
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 315
    :cond_69
    new-instance p0, Ljava/security/GeneralSecurityException;

    invoke-direct {p0, v2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6f
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_20 .. :try_end_6f} :catch_6f

    .line 332
    :catch_6f
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing HpkePrivateKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 306
    :cond_77
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong type URL in call to HpkeProtoSerialization.parsePrivateKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static parsePublicKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/hybrid/HpkePublicKey;
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

    .line 267
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object p1

    const-string v0, "type.googleapis.com/google.crypto.tink.HpkePublicKey"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    .line 275
    :try_start_c
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 274
    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/HpkePublicKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/HpkePublicKey;

    move-result-object p1

    .line 276
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HpkePublicKey;->getVersion()I

    move-result v0

    if-nez v0, :cond_43

    .line 281
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HpkePublicKey;->getParams()Lcom/google/crypto/tink/proto/HpkeParams;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->fromProtoParameters(Lcom/google/crypto/tink/proto/OutputPrefixType;Lcom/google/crypto/tink/proto/HpkeParams;)Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v0

    .line 284
    invoke-virtual {v0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKemId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HpkePublicKey;->getPublicKey()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object p1

    invoke-static {v1, p1}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->encodePublicKeyBytes(Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;[B)Lcom/google/crypto/tink/util/Bytes;

    move-result-object p1

    .line 285
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    .line 282
    invoke-static {v0, p1, p0}, Lcom/google/crypto/tink/hybrid/HpkePublicKey;->create(Lcom/google/crypto/tink/hybrid/HpkeParameters;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Integer;)Lcom/google/crypto/tink/hybrid/HpkePublicKey;

    move-result-object p0

    return-object p0

    .line 277
    :cond_43
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_4b
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_c .. :try_end_4b} :catch_4b

    .line 287
    :catch_4b
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing HpkePublicKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 268
    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Wrong type URL in call to HpkeProtoSerialization.parsePublicKey: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
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

    .line 142
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->register(Lcom/google/crypto/tink/internal/MutableSerializationRegistry;)V

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

    .line 148
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerParametersSerializer(Lcom/google/crypto/tink/internal/ParametersSerializer;)V

    .line 149
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerParametersParser(Lcom/google/crypto/tink/internal/ParametersParser;)V

    .line 150
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->PUBLIC_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeySerializer(Lcom/google/crypto/tink/internal/KeySerializer;)V

    .line 151
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->PUBLIC_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeyParser(Lcom/google/crypto/tink/internal/KeyParser;)V

    .line 152
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->PRIVATE_KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeySerializer(Lcom/google/crypto/tink/internal/KeySerializer;)V

    .line 153
    sget-object v0, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->PRIVATE_KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeyParser(Lcom/google/crypto/tink/internal/KeyParser;)V

    return-void
.end method

.method private static serializeParameters(Lcom/google/crypto/tink/hybrid/HpkeParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
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

    .line 198
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    .line 199
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 201
    invoke-static {}, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/HpkeKeyFormat$Builder;

    move-result-object v1

    .line 202
    invoke-static {p0}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->toProtoParameters(Lcom/google/crypto/tink/hybrid/HpkeParameters;)Lcom/google/crypto/tink/proto/HpkeParams;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/HpkeKeyFormat$Builder;->setParams(Lcom/google/crypto/tink/proto/HpkeParams;)Lcom/google/crypto/tink/proto/HpkeKeyFormat$Builder;

    move-result-object v1

    .line 203
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/HpkeKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/HpkeKeyFormat;

    .line 204
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/HpkeKeyFormat;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    .line 200
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->VARIANT_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 205
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getVariant()Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    .line 206
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 197
    invoke-static {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->create(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p0

    return-object p0
.end method

.method private static serializePrivateKey(Lcom/google/crypto/tink/hybrid/HpkePrivateKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
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

    .line 229
    invoke-static {p0, p1}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->toProtoPrivateKey(Lcom/google/crypto/tink/hybrid/HpkePrivateKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/proto/HpkePrivateKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PRIVATE:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->VARIANT_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 231
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePrivateKey;->getParameters()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getVariant()Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 232
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePrivateKey;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.HpkePrivateKey"

    .line 227
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method private static serializePublicKey(Lcom/google/crypto/tink/hybrid/HpkePublicKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
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

    .line 219
    invoke-static {p0}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->toProtoPublicKey(Lcom/google/crypto/tink/hybrid/HpkePublicKey;)Lcom/google/crypto/tink/proto/HpkePublicKey;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/HpkePublicKey;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PUBLIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->VARIANT_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 221
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePublicKey;->getParameters()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getVariant()Lcom/google/crypto/tink/hybrid/HpkeParameters$Variant;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 222
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePublicKey;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.HpkePublicKey"

    .line 217
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method private static toProtoParameters(Lcom/google/crypto/tink/hybrid/HpkeParameters;)Lcom/google/crypto/tink/proto/HpkeParams;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "params"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 158
    invoke-static {}, Lcom/google/crypto/tink/proto/HpkeParams;->newBuilder()Lcom/google/crypto/tink/proto/HpkeParams$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->KEM_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 159
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKemId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KemId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/HpkeKem;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/HpkeParams$Builder;->setKem(Lcom/google/crypto/tink/proto/HpkeKem;)Lcom/google/crypto/tink/proto/HpkeParams$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->KDF_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 160
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getKdfId()Lcom/google/crypto/tink/hybrid/HpkeParameters$KdfId;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/HpkeKdf;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/HpkeParams$Builder;->setKdf(Lcom/google/crypto/tink/proto/HpkeKdf;)Lcom/google/crypto/tink/proto/HpkeParams$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->AEAD_TYPE_CONVERTER:Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;

    .line 161
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkeParameters;->getAeadId()Lcom/google/crypto/tink/hybrid/HpkeParameters$AeadId;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/crypto/tink/internal/EnumTypeProtoConverter;->toProtoEnum(Ljava/lang/Object;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkeAead;

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/HpkeParams$Builder;->setAead(Lcom/google/crypto/tink/proto/HpkeAead;)Lcom/google/crypto/tink/proto/HpkeParams$Builder;

    move-result-object p0

    .line 162
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HpkeParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkeParams;

    return-object p0
.end method

.method private static toProtoPrivateKey(Lcom/google/crypto/tink/hybrid/HpkePrivateKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/proto/HpkePrivateKey;
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
            "key",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 176
    invoke-static {}, Lcom/google/crypto/tink/proto/HpkePrivateKey;->newBuilder()Lcom/google/crypto/tink/proto/HpkePrivateKey$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 177
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/HpkePrivateKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/HpkePrivateKey$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePrivateKey;->getPublicKey()Lcom/google/crypto/tink/hybrid/HpkePublicKey;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->toProtoPublicKey(Lcom/google/crypto/tink/hybrid/HpkePublicKey;)Lcom/google/crypto/tink/proto/HpkePublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/HpkePrivateKey$Builder;->setPublicKey(Lcom/google/crypto/tink/proto/HpkePublicKey;)Lcom/google/crypto/tink/proto/HpkePrivateKey$Builder;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePrivateKey;->getPrivateKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p0

    invoke-static {p1}, Lcom/google/crypto/tink/SecretKeyAccess;->requireAccess(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object p0

    .line 180
    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    .line 179
    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/HpkePrivateKey$Builder;->setPrivateKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/HpkePrivateKey$Builder;

    move-result-object p0

    .line 182
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HpkePrivateKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkePrivateKey;

    return-object p0
.end method

.method private static toProtoPublicKey(Lcom/google/crypto/tink/hybrid/HpkePublicKey;)Lcom/google/crypto/tink/proto/HpkePublicKey;
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

    .line 167
    invoke-static {}, Lcom/google/crypto/tink/proto/HpkePublicKey;->newBuilder()Lcom/google/crypto/tink/proto/HpkePublicKey$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 168
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/HpkePublicKey$Builder;->setVersion(I)Lcom/google/crypto/tink/proto/HpkePublicKey$Builder;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePublicKey;->getParameters()Lcom/google/crypto/tink/hybrid/HpkeParameters;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/hybrid/HpkeProtoSerialization;->toProtoParameters(Lcom/google/crypto/tink/hybrid/HpkeParameters;)Lcom/google/crypto/tink/proto/HpkeParams;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/HpkePublicKey$Builder;->setParams(Lcom/google/crypto/tink/proto/HpkeParams;)Lcom/google/crypto/tink/proto/HpkePublicKey$Builder;

    move-result-object v0

    .line 170
    invoke-virtual {p0}, Lcom/google/crypto/tink/hybrid/HpkePublicKey;->getPublicKeyBytes()Lcom/google/crypto/tink/util/Bytes;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/util/Bytes;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/HpkePublicKey$Builder;->setPublicKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/HpkePublicKey$Builder;

    move-result-object p0

    .line 171
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/HpkePublicKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/HpkePublicKey;

    return-object p0
.end method
