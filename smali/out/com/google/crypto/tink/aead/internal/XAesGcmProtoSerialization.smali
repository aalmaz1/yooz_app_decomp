.class public final Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;
.super Ljava/lang/Object;
.source "XAesGcmProtoSerialization.java"


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
            "Lcom/google/crypto/tink/aead/XAesGcmKey;",
            "Lcom/google/crypto/tink/internal/ProtoKeySerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final KEY_SIZE_BYTES:I = 0x20

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
            "Lcom/google/crypto/tink/aead/XAesGcmParameters;",
            "Lcom/google/crypto/tink/internal/ProtoParametersSerialization;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_URL:Ljava/lang/String; = "type.googleapis.com/google.crypto.tink.XAesGcmKey"

.field private static final TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;


# direct methods
.method public static synthetic $r8$lambda$5LkEF6CSKt2IciGsTSU8VHdKKVE(Lcom/google/crypto/tink/aead/XAesGcmKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->serializeKey(Lcom/google/crypto/tink/aead/XAesGcmKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8PLTLgnn4Sr9OoHpjR1g2E3tJwU(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/aead/XAesGcmKey;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->parseKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/aead/XAesGcmKey;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$jN-b6FMKpmn1mEDVJZ-vhZUb7Os(Lcom/google/crypto/tink/aead/XAesGcmParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
    .registers 1

    invoke-static {p0}, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->serializeParameters(Lcom/google/crypto/tink/aead/XAesGcmParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wcraVdvg9RE6DVXOtcV0z6dIJas(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/aead/XAesGcmParameters;
    .registers 1

    invoke-static {p0}, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->parseParameters(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/aead/XAesGcmParameters;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    const-string v0, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    .line 52
    invoke-static {v0}, Lcom/google/crypto/tink/internal/Util;->toBytesFromPrintableAscii(Ljava/lang/String;)Lcom/google/crypto/tink/util/Bytes;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->TYPE_URL_BYTES:Lcom/google/crypto/tink/util/Bytes;

    .line 56
    new-instance v1, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization$$ExternalSyntheticLambda0;-><init>()V

    const-class v2, Lcom/google/crypto/tink/aead/XAesGcmParameters;

    const-class v3, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 57
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/ParametersSerializer;->create(Lcom/google/crypto/tink/internal/ParametersSerializer$ParametersSerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/ParametersSerializer;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;

    .line 62
    new-instance v1, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization$$ExternalSyntheticLambda1;-><init>()V

    const-class v2, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    .line 63
    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/internal/ParametersParser;->create(Lcom/google/crypto/tink/internal/ParametersParser$ParametersParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/ParametersParser;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;

    .line 68
    new-instance v1, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization$$ExternalSyntheticLambda2;-><init>()V

    const-class v2, Lcom/google/crypto/tink/aead/XAesGcmKey;

    const-class v3, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 69
    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/internal/KeySerializer;->create(Lcom/google/crypto/tink/internal/KeySerializer$KeySerializationFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeySerializer;

    move-result-object v1

    sput-object v1, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    .line 72
    new-instance v1, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization$$ExternalSyntheticLambda3;-><init>()V

    const-class v2, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 73
    invoke-static {v1, v0, v2}, Lcom/google/crypto/tink/internal/KeyParser;->create(Lcom/google/crypto/tink/internal/KeyParser$KeyParsingFunction;Lcom/google/crypto/tink/util/Bytes;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/KeyParser;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 209
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static parseKey(Lcom/google/crypto/tink/internal/ProtoKeySerialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/aead/XAesGcmKey;
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

    .line 163
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 170
    :try_start_c
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 169
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/XAesGcmKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/XAesGcmKey;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/XAesGcmKey;->getVersion()I

    move-result v1

    if-nez v1, :cond_5f

    .line 175
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/XAesGcmKey;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v1

    const/16 v2, 0x20

    if-ne v1, v2, :cond_57

    .line 180
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->toVariant(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/XAesGcmKey;->getParams()Lcom/google/crypto/tink/proto/XAesGcmParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/XAesGcmParams;->getSaltSize()I

    move-result v2

    .line 179
    invoke-static {v1, v2}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->create(Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;I)Lcom/google/crypto/tink/aead/XAesGcmParameters;

    move-result-object v1

    .line 182
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/XAesGcmKey;->getKeyValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->toByteArray()[B

    move-result-object v0

    invoke-static {p1}, Lcom/google/crypto/tink/SecretKeyAccess;->requireAccess(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object p1

    .line 181
    invoke-static {v0, p1}, Lcom/google/crypto/tink/util/SecretBytes;->copyFrom([BLcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object p1

    .line 183
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    .line 178
    invoke-static {v1, p1, p0}, Lcom/google/crypto/tink/aead/XAesGcmKey;->create(Lcom/google/crypto/tink/aead/XAesGcmParameters;Lcom/google/crypto/tink/util/SecretBytes;Ljava/lang/Integer;)Lcom/google/crypto/tink/aead/XAesGcmKey;

    move-result-object p0

    return-object p0

    .line 176
    :cond_57
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only 32 byte key size is accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 172
    :cond_5f
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Only version 0 keys are accepted"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_67
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_c .. :try_end_67} :catch_67

    .line 185
    :catch_67
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Parsing XAesGcmKey failed"

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 164
    :cond_6f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Wrong type URL in call to XAesGcmProtoSerialization.parseKey"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static parseParameters(Lcom/google/crypto/tink/internal/ProtoParametersSerialization;)Lcom/google/crypto/tink/aead/XAesGcmParameters;
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

    .line 138
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getTypeUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    .line 147
    :try_start_10
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v0

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 146
    invoke-static {v0, v1}, Lcom/google/crypto/tink/proto/XAesGcmKeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/XAesGcmKeyFormat;

    move-result-object v0
    :try_end_20
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_10 .. :try_end_20} :catch_47

    .line 151
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/XAesGcmKeyFormat;->getVersion()I

    move-result v1

    if-nez v1, :cond_3f

    .line 155
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->getKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->toVariant(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    move-result-object p0

    .line 156
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/XAesGcmKeyFormat;->getParams()Lcom/google/crypto/tink/proto/XAesGcmParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/XAesGcmParams;->getSaltSize()I

    move-result v0

    .line 154
    invoke-static {p0, v0}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->create(Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;I)Lcom/google/crypto/tink/aead/XAesGcmParameters;

    move-result-object p0

    return-object p0

    .line 152
    :cond_3f
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "Only version 0 parameters are accepted"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_47
    move-exception p0

    .line 149
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Parsing XAesGcmParameters failed: "

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 139
    :cond_50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Wrong type URL in call to XAesGcmProtoSerialization.parseParameters: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 141
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

    .line 190
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->register(Lcom/google/crypto/tink/internal/MutableSerializationRegistry;)V

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

    .line 195
    sget-object v0, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerParametersSerializer(Lcom/google/crypto/tink/internal/ParametersSerializer;)V

    .line 196
    sget-object v0, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerParametersParser(Lcom/google/crypto/tink/internal/ParametersParser;)V

    .line 197
    sget-object v0, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeySerializer(Lcom/google/crypto/tink/internal/KeySerializer;)V

    .line 198
    sget-object v0, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->registerKeyParser(Lcom/google/crypto/tink/internal/KeyParser;)V

    return-void
.end method

.method public static register(Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "registryBuilder"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 203
    sget-object v0, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->PARAMETERS_SERIALIZER:Lcom/google/crypto/tink/internal/ParametersSerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->registerParametersSerializer(Lcom/google/crypto/tink/internal/ParametersSerializer;)Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    .line 204
    sget-object v0, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->PARAMETERS_PARSER:Lcom/google/crypto/tink/internal/ParametersParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->registerParametersParser(Lcom/google/crypto/tink/internal/ParametersParser;)Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    .line 205
    sget-object v0, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->KEY_SERIALIZER:Lcom/google/crypto/tink/internal/KeySerializer;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->registerKeySerializer(Lcom/google/crypto/tink/internal/KeySerializer;)Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    .line 206
    sget-object v0, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->KEY_PARSER:Lcom/google/crypto/tink/internal/KeyParser;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;->registerKeyParser(Lcom/google/crypto/tink/internal/KeyParser;)Lcom/google/crypto/tink/internal/SerializationRegistry$Builder;

    return-void
.end method

.method private static serializeKey(Lcom/google/crypto/tink/aead/XAesGcmKey;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;
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

    .line 121
    invoke-static {}, Lcom/google/crypto/tink/proto/XAesGcmKey;->newBuilder()Lcom/google/crypto/tink/proto/XAesGcmKey$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmKey;->getKeyBytes()Lcom/google/crypto/tink/util/SecretBytes;

    move-result-object v1

    invoke-static {p1}, Lcom/google/crypto/tink/SecretKeyAccess;->requireAccess(Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/util/SecretBytes;->toByteArray(Lcom/google/crypto/tink/SecretKeyAccess;)[B

    move-result-object p1

    .line 123
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->copyFrom([B)Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    .line 122
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/XAesGcmKey$Builder;->setKeyValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/XAesGcmKey$Builder;

    move-result-object p1

    .line 126
    invoke-static {}, Lcom/google/crypto/tink/proto/XAesGcmParams;->newBuilder()Lcom/google/crypto/tink/proto/XAesGcmParams$Builder;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmKey;->getParameters()Lcom/google/crypto/tink/aead/XAesGcmParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getSaltSizeBytes()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/XAesGcmParams$Builder;->setSaltSize(I)Lcom/google/crypto/tink/proto/XAesGcmParams$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/XAesGcmParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/XAesGcmParams;

    .line 125
    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/XAesGcmKey$Builder;->setParams(Lcom/google/crypto/tink/proto/XAesGcmParams;)Lcom/google/crypto/tink/proto/XAesGcmKey$Builder;

    move-result-object p1

    .line 129
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/XAesGcmKey$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/XAesGcmKey;

    .line 130
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/XAesGcmKey;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->SYMMETRIC:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    .line 132
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmKey;->getParameters()Lcom/google/crypto/tink/aead/XAesGcmParameters;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getVariant()Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    move-result-object v1

    invoke-static {v1}, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->toProtoOutputPrefixType(Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;)Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v1

    .line 133
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmKey;->getIdRequirementOrNull()Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    .line 119
    invoke-static {v2, p1, v0, v1, p0}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p0

    return-object p0
.end method

.method private static serializeParameters(Lcom/google/crypto/tink/aead/XAesGcmParameters;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;
    .registers 5
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

    .line 103
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    const-string v1, "type.googleapis.com/google.crypto.tink.XAesGcmKey"

    .line 104
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 106
    invoke-static {}, Lcom/google/crypto/tink/proto/XAesGcmKeyFormat;->newBuilder()Lcom/google/crypto/tink/proto/XAesGcmKeyFormat$Builder;

    move-result-object v1

    .line 108
    invoke-static {}, Lcom/google/crypto/tink/proto/XAesGcmParams;->newBuilder()Lcom/google/crypto/tink/proto/XAesGcmParams$Builder;

    move-result-object v2

    .line 109
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getSaltSizeBytes()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/XAesGcmParams$Builder;->setSaltSize(I)Lcom/google/crypto/tink/proto/XAesGcmParams$Builder;

    move-result-object v2

    .line 110
    invoke-virtual {v2}, Lcom/google/crypto/tink/proto/XAesGcmParams$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v2

    check-cast v2, Lcom/google/crypto/tink/proto/XAesGcmParams;

    .line 107
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/XAesGcmKeyFormat$Builder;->setParams(Lcom/google/crypto/tink/proto/XAesGcmParams;)Lcom/google/crypto/tink/proto/XAesGcmKeyFormat$Builder;

    move-result-object v1

    .line 111
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/XAesGcmKeyFormat$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/XAesGcmKeyFormat;

    .line 112
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/XAesGcmKeyFormat;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    .line 105
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 113
    invoke-virtual {p0}, Lcom/google/crypto/tink/aead/XAesGcmParameters;->getVariant()Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    move-result-object p0

    invoke-static {p0}, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization;->toProtoOutputPrefixType(Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;)Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p0

    .line 114
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 102
    invoke-static {p0}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->create(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p0

    return-object p0
.end method

.method private static toProtoOutputPrefixType(Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;)Lcom/google/crypto/tink/proto/OutputPrefixType;
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

    .line 78
    sget-object v0, Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 79
    sget-object p0, Lcom/google/crypto/tink/proto/OutputPrefixType;->TINK:Lcom/google/crypto/tink/proto/OutputPrefixType;

    return-object p0

    .line 81
    :cond_b
    sget-object v0, Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    invoke-static {p0, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 82
    sget-object p0, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    return-object p0

    .line 84
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

.method private static toVariant(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;
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

    .line 89
    sget-object v0, Lcom/google/crypto/tink/aead/internal/XAesGcmProtoSerialization$1;->$SwitchMap$com$google$crypto$tink$proto$OutputPrefixType:[I

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/OutputPrefixType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    .line 93
    sget-object p0, Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;->NO_PREFIX:Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    return-object p0

    .line 95
    :cond_11
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unable to parse OutputPrefixType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/OutputPrefixType;->getNumber()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_2a
    sget-object p0, Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;->TINK:Lcom/google/crypto/tink/aead/XAesGcmParameters$Variant;

    return-object p0
.end method
