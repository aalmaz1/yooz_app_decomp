.class final Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization;
.super Ljava/lang/Object;
.source "LegacyKmsAeadProtoSerialization.java"


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
            "Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;",
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
            "Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;",
            "Lcom/google/crypto/tink/internal/ProtoParametersSerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_URL:Ljava/lang/String; = "type.googleapis.com/google.crypto.tink.KmsAeadKey"

.field private static final TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;


# direct methods
.method public static synthetic $r8$lambda$3sE5k4pIUfv8YWZWSKttL7gjBFs(Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
    .registers 1

    invoke-static {p0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization;->serializeParameters(Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$bTrMBDwTja1IoYZyN-EB2CYENpU(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization;->parseKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$fCLQEBIrhuiK3ZNnST9cbtT9D4E(Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization;->serializeKey(Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$x4voL_yQC4i73k9HRFp2B5z7XlA(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;
    .registers 1

    invoke-static {p0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization;->parseParameters(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    const-string v0, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    .line 42
    invoke-static {v0}, Lcom/google/crypto/tink/internal/Util;->toBytesFromPrintableAscii(Ljava/lang/String;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization;->TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;

    .line 45
    new-instance v1, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;

    const-class v3, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 46
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/ParametersSerializer;->create(Lcom/google/crypto/tink/internal/ParametersSerializer$ParametersSerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/ParametersSerializer;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization;->PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;

    .line 51
    new-instance v1, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization$$ExternalSyntheticLambda1;-><init>()V

    const-class v2, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 52
    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/internal/ParametersParser;->create(Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/ParametersParser;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization;->PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;

    .line 57
    new-instance v1, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization$$ExternalSyntheticLambda2;-><init>()V

    const-class v2, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;

    const-class v3, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 58
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/KeySerializer;->create(Lcom/google/crypto/tink/internal/KeySerializer$KeySerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeySerializer;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization;->KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    .line 63
    new-instance v1, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization$$ExternalSyntheticLambda3;-><init>()V

    const-class v2, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 64
    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/internal/KeyParser;->create(Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeyParser;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization;->KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;
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

    const-string p1, "KmsAeadKey are only accepted with version 0, got "

    .line 138
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    .line 145
    :try_start_e
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 144
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/KmsAeadKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KmsAeadKey;

    move-result-object v0

    .line 146
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KmsAeadKey;->getVersion()I

    move-result v1

    if-nez v1, :cond_3d

    .line 152
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KmsAeadKey;->getParams()Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;->getKeyUri()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization;->toVariant(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    move-result-object v0

    .line 151
    invoke-static {p1, v0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->create(Ljava/lang/String;Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;)Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;

    move-result-object p1

    .line 153
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;->create(Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;

    move-result-object p0

    return-object p0

    .line 147
    :cond_3d
    new-instance p0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_50
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_e .. :try_end_50} :catch_50

    :catch_50
    move-exception p0

    .line 155
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Parsing KmsAeadKey failed: "

    invoke-direct {p1, v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 139
    :cond_59
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseParameters(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;
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

    .line 104
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 113
    :try_start_10
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 112
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;

    move-result-object v0
    :try_end_20
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_20} :catch_35

    .line 118
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;->getKeyUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization;->toVariant(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    move-result-object p0

    .line 117
    invoke-static {v0, p0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->create(Ljava/lang/String;Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;)Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;

    move-result-object p0

    return-object p0

    :catch_35
    move-exception p0

    .line 115
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing KmsAeadKeyFormat failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 105
    :cond_3e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to LegacyKmsAeadProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
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

.method public static register()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 160
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization;->register(Lcom/google/crypto/tink/internal/MutableSerializationRegistry;)V

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

    .line 165
    sget-object v0, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization;->PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerParametersSerializer(Lcom/google/crypto/tink/internal/ParametersSerializer;)V

    .line 166
    sget-object v0, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization;->PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerParametersParser(Lcom/google/crypto/tink/internal/ParametersParser;)V

    .line 167
    sget-object v0, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization;->KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeySerializer(Lcom/google/crypto/tink/internal/KeySerializer;)V

    .line 168
    sget-object v0, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization;->KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeyParser(Lcom/google/crypto/tink/internal/KeyParser;)V

    return-void
.end method

.method private static serializeKey(Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
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

    .line 125
    invoke-static {}, Lcom/google/crypto/tink/proto/KmsAeadKey;->newBuilder()Lcom/google/crypto/tink/proto/KmsAeadKey$Builder;

    move-result-object p1

    .line 127
    invoke-static {}, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/KmsAeadKeyFormat$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;->getParameters()Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->keyUri()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat$Builder;->setKeyUri(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KmsAeadKeyFormat$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;

    .line 126
    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/KmsAeadKey$Builder;->setParams(Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;)Lcom/google/crypto/tink/proto/KmsAeadKey$Builder;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KmsAeadKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/KmsAeadKey;

    .line 129
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KmsAeadKey;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->REMOTE:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    .line 131
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;->getParameters()Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->variant()Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization;->toProtoOutputPrefixType(Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;)Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v1

    .line 132
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadKey;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    .line 123
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method private static serializeParameters(Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
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

    .line 94
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.KmsAeadKey"

    .line 95
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 97
    invoke-static {}, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/KmsAeadKeyFormat$Builder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->keyUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat$Builder;->setKeyUri(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KmsAeadKeyFormat$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/KmsAeadKeyFormat;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    .line 96
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 98
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters;->variant()Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization;->toProtoOutputPrefixType(Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;)Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    .line 99
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 93
    invoke-static {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->create(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p0

    return-object p0
.end method

.method private static toProtoOutputPrefixType(Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;)Lcom/google/crypto/tink/proto/OutputPrefixType;
    .registers 4
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

    .line 69
    sget-object v0, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 70
    sget-object p0, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    return-object p0

    .line 72
    :cond_b
    sget-object v0, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 73
    sget-object p0, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    return-object p0

    .line 75
    :cond_16
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

.method private static toVariant(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;
    .registers 4
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

    .line 80
    sget-object v0, Lcom/google/crypto/tink/aead/LegacyKmsAeadProtoSerialization$1;->$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/OutputPrefixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 84
    sget-object p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    return-object p0

    .line 86
    :cond_11
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse OutputPrefixType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/OutputPrefixType;->getNumber()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_2a
    sget-object p0, Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/LegacyKmsAeadParameters$Variant;

    return-object p0
.end method
