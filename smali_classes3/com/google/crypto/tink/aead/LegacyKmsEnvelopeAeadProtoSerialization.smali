.class public final Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;
.super Ljava/lang/Object;
.source "LegacyKmsEnvelopeAeadProtoSerialization.java"


# static fields
.field private static final KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/KeyParser<",
            "Lcom/google/crypto/tink/internal/ProtoKeySerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/KeySerializer<",
            "Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;",
            "Lcom/google/crypto/tink/internal/ProtoKeySerialization;",
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
            "Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;",
            "Lcom/google/crypto/tink/internal/ProtoParametersSerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_URL:Ljava/lang/String; = "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

.field private static final TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;


# direct methods
.method public static synthetic $r8$lambda$OXdW37-RHk7iHGsADYfA2shlCMk(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->serializeParameters(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cSHvnfHqlqrutjhswmVlkyC947E(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->serializeKey(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wZ7D9Fv2F39_SEu_HqQcsiiHju4(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;
    .locals 0

    invoke-static {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->parseParameters(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$yC3OWmrcpIzHmEebJhJMIsum3us(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->parseKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 4

    const-string v0, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 50
    invoke-static {v0}, Lcom/google/crypto/tink/internal/Util;->toBytesFromPrintableAscii(Ljava/lang/String;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;

    .line 54
    new-instance v1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;

    const-class v3, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 55
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/ParametersSerializer;->create(Lcom/google/crypto/tink/internal/ParametersSerializer$ParametersSerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/ParametersSerializer;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;

    .line 60
    new-instance v1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization$$ExternalSyntheticLambda1;-><init>()V

    const-class v2, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 61
    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/internal/ParametersParser;->create(Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/ParametersParser;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;

    .line 67
    new-instance v1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization$$ExternalSyntheticLambda2;-><init>()V

    const-class v2, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;

    const-class v3, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 68
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/KeySerializer;->create(Lcom/google/crypto/tink/internal/KeySerializer$KeySerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeySerializer;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    .line 73
    new-instance v1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization$$ExternalSyntheticLambda3;-><init>()V

    const-class v2, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 74
    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/internal/KeyParser;->create(Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeyParser;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 241
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;
    .locals 2
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

    const-string p1, "KmsEnvelopeAeadKeys are only accepted with version 0, got "

    .line 208
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 215
    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 214
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    move-result-object v0

    .line 216
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->getVersion()I

    move-result v1

    if-nez v1, :cond_0

    .line 222
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->getParams()Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->parseParameters(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;

    move-result-object p1

    .line 223
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;->create(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;

    move-result-object p0

    return-object p0

    .line 217
    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 225
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Parsing KmsEnvelopeAeadKey failed: "

    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 209
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseParameters(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;
    .locals 3
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

    .line 149
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 157
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;

    move-result-object v0
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    .line 162
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->parseParameters(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    .line 160
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing KmsEnvelopeAeadKeyFormat failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 150
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to LegacyKmsEnvelopeAeadProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
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

.method private static parseParameters(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "format",
            "outputPrefixType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 171
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 172
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;->getDekTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 173
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;->getDekTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KeyTemplate;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 174
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 175
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 176
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->toByteArray()[B

    move-result-object v0

    .line 170
    invoke-static {v0}, Lcom/google/crypto/tink/TinkProtoParametersFormat;->parse([B)Lcom/google/crypto/tink/Parameters;

    move-result-object v0

    .line 180
    instance-of v1, v0, Lcom/google/crypto/tink/aead/AesGcmParameters;

    if-eqz v1, :cond_0

    .line 181
    sget-object v1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->ASSUME_AES_GCM:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    goto :goto_0

    .line 182
    :cond_0
    instance-of v1, v0, Lcom/google/crypto/tink/aead/ChaCha20Poly1305Parameters;

    if-eqz v1, :cond_1

    .line 183
    sget-object v1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->ASSUME_CHACHA20POLY1305:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    goto :goto_0

    .line 184
    :cond_1
    instance-of v1, v0, Lcom/google/crypto/tink/aead/XChaCha20Poly1305Parameters;

    if-eqz v1, :cond_2

    .line 185
    sget-object v1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->ASSUME_XCHACHA20POLY1305:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    goto :goto_0

    .line 186
    :cond_2
    instance-of v1, v0, Lcom/google/crypto/tink/aead/AesCtrHmacAeadParameters;

    if-eqz v1, :cond_3

    .line 187
    sget-object v1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->ASSUME_AES_CTR_HMAC:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    goto :goto_0

    .line 188
    :cond_3
    instance-of v1, v0, Lcom/google/crypto/tink/aead/AesEaxParameters;

    if-eqz v1, :cond_4

    .line 189
    sget-object v1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->ASSUME_AES_EAX:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    goto :goto_0

    .line 190
    :cond_4
    instance-of v1, v0, Lcom/google/crypto/tink/aead/AesGcmSivParameters;

    if-eqz v1, :cond_5

    .line 191
    sget-object v1, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;->ASSUME_AES_GCM_SIV:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;

    .line 196
    :goto_0
    invoke-static {}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->builder()Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;

    move-result-object v2

    .line 197
    invoke-static {p1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->toVariant(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;->setVariant(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;

    move-result-object p1

    .line 198
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;->getKekUri()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;->setKekUri(Ljava/lang/String;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;

    move-result-object p0

    check-cast v0, Lcom/google/crypto/tink/aead/AeadParameters;

    .line 199
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;->setDekParametersForNewKeys(Lcom/google/crypto/tink/aead/AeadParameters;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;

    move-result-object p0

    .line 200
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;->setDekParsingStrategy(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$DekParsingStrategy;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;

    move-result-object p0

    .line 201
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Builder;->build()Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;

    move-result-object p0

    return-object p0

    .line 193
    :cond_5
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Unsupported DEK parameters when parsing "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static register()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 230
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->register(Lcom/google/crypto/tink/internal/MutableSerializationRegistry;)V

    return-void
.end method

.method public static register(Lcom/google/crypto/tink/internal/MutableSerializationRegistry;)V
    .locals 1
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

    .line 235
    sget-object v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerParametersSerializer(Lcom/google/crypto/tink/internal/ParametersSerializer;)V

    .line 236
    sget-object v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerParametersParser(Lcom/google/crypto/tink/internal/ParametersParser;)V

    .line 237
    sget-object v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeySerializer(Lcom/google/crypto/tink/internal/KeySerializer;)V

    .line 238
    sget-object v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeyParser(Lcom/google/crypto/tink/internal/KeyParser;)V

    return-void
.end method

.method private static serializeKey(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .locals 3
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

    .line 137
    invoke-static {}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->newBuilder()Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;

    move-result-object p1

    .line 138
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;->getParameters()Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->serializeParametersToKmsEnvelopeAeadKeyFormat(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;->setParams(Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;

    .line 140
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKey;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->REMOTE:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    .line 142
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;->getParameters()Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->getVariant()Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->toProtoOutputPrefixType(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;)Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v1

    .line 143
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadKey;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 135
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method private static serializeParameters(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
    .locals 2
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

    .line 107
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsEnvelopeAeadKey"

    .line 108
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 109
    invoke-static {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->serializeParametersToKmsEnvelopeAeadKeyFormat(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->getVariant()Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization;->toProtoOutputPrefixType(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;)Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    .line 111
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 106
    invoke-static {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->create(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p0

    return-object p0
.end method

.method private static serializeParametersToKmsEnvelopeAeadKeyFormat(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;
    .locals 2
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

    .line 118
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->getDekParametersForNewKeys()Lcom/google/crypto/tink/aead/AeadParameters;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/TinkProtoParametersFormat;->serialize(Lcom/google/crypto/tink/Parameters;)[B

    move-result-object v0

    .line 121
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate;->parseFrom([BLcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    .line 122
    invoke-static {}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;

    move-result-object v1

    .line 123
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters;->getKekUri()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;->setKekUri(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;

    move-result-object p0

    .line 124
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;->setDekTemplate(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;

    move-result-object p0

    .line 125
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KmsEnvelopeAeadKeyFormat;
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 127
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing KmsEnvelopeAeadKeyFormat failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static toProtoOutputPrefixType(Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;)Lcom/google/crypto/tink/proto/OutputPrefixType;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "variant"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    sget-object p0, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    return-object p0

    .line 84
    :cond_0
    sget-object v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    sget-object p0, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    return-object p0

    .line 87
    :cond_1
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to serialize variant: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static toVariant(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outputPrefixType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 92
    sget-object v0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadProtoSerialization$1;->$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/OutputPrefixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 96
    sget-object p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    return-object p0

    .line 98
    :cond_0
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse OutputPrefixType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/OutputPrefixType;->getNumber()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_1
    sget-object p0, Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/LegacyKmsEnvelopeAeadParameters$Variant;

    return-object p0
.end method
