.class public final Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;
.super Ljava/lang/Object;
.source "PrfBasedDeriverKeyManager.java"

# interfaces
.implements Lcom/google/crypto/tink/KeyManager;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/KeyManager<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# static fields
.field private static final KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator<",
            "Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/internal/PrimitiveConstructor<",
            "Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;",
            "Lcom/google/crypto/tink/keyderivation/internal/KeyDeriver;",
            ">;"
        }
    .end annotation
.end field

.field private static final TYPE_URL:Ljava/lang/String; = "type.googleapis.com/google.crypto.tink.PrfBasedDeriverKey"


# direct methods
.method public static synthetic $r8$lambda$0OhFvn-FqG3L6hSR6nytWQgj2j4(Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;
    .registers 2

    invoke-static {p0, p1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;->createNewKey(Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 75
    new-instance v0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager$$ExternalSyntheticLambda0;-><init>()V

    const-class v1, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;

    const-class v2, Lcom/google/crypto/tink/keyderivation/internal/KeyDeriver;

    .line 76
    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/internal/PrimitiveConstructor;->create(Lcom/google/crypto/tink/internal/PrimitiveConstructor$PrimitiveConstructionFunction;Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    move-result-object v0

    sput-object v0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;->PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    .line 98
    new-instance v0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final createNewKey(Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;
    .registers 5
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

    .line 84
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object v0

    .line 85
    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->getPrfParameters()Lcom/google/crypto/tink/prf/PrfParameters;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->createKey(Lcom/google/crypto/tink/Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/Key;

    move-result-object v0

    .line 86
    instance-of v1, v0, Lcom/google/crypto/tink/prf/PrfKey;

    if-eqz v1, :cond_18

    .line 93
    check-cast v0, Lcom/google/crypto/tink/prf/PrfKey;

    invoke-static {p0, v0, p1}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;->create(Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;Lcom/google/crypto/tink/prf/PrfKey;Ljava/lang/Integer;)Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationKey;

    move-result-object p0

    return-object p0

    .line 87
    :cond_18
    new-instance p1, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Failed to create PrfKey from parameters"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;->getPrfParameters()Lcom/google/crypto/tink/prf/PrfParameters;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, ", instead got "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 91
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getOutputPrefixTypeFromSerializedKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/OutputPrefixType;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedKeyFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 154
    :try_start_0
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 153
    invoke-static {p0, v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;

    move-result-object p0

    .line 155
    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKeyFormat;->getParams()Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverParams;->getDerivedKeyTemplate()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p0
    :try_end_14
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_14} :catch_15

    return-object p0

    :catch_15
    move-exception p0

    .line 157
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "Unexpectedly failed to parse key format"

    invoke-direct {v0, v1, p0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static register(Z)V
    .registers 3
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

    .line 202
    invoke-static {}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->globalInstance()Lcom/google/crypto/tink/internal/KeyManagerRegistry;

    move-result-object v0

    new-instance v1, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;

    invoke-direct {v1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;-><init>()V

    .line 203
    invoke-virtual {v0, v1, p0}, Lcom/google/crypto/tink/internal/KeyManagerRegistry;->registerKeyManager(Lcom/google/crypto/tink/KeyManager;Z)V

    .line 204
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;->KEY_CREATOR:Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;

    const-class v1, Lcom/google/crypto/tink/keyderivation/PrfBasedKeyDerivationParameters;

    .line 205
    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->add(Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry$KeyCreator;Ljava/lang/Class;)V

    .line 206
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object p0

    sget-object v0, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;->PRIMITIVE_CONSTRUCTOR:Lcom/google/crypto/tink/internal/PrimitiveConstructor;

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->registerPrimitiveConstructor(Lcom/google/crypto/tink/internal/PrimitiveConstructor;)V

    .line 208
    invoke-static {}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedKeyDerivationKeyProtoSerialization;->register()V

    return-void
.end method


# virtual methods
.method public final doesSupport(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeUrl"
        }
    .end annotation

    .line 136
    invoke-virtual {p0}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;->getKeyType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getKeyType()Ljava/lang/String;
    .registers 2

    const-string v0, "type.googleapis.com/google.crypto.tink.PrfBasedDeriverKey"

    return-object v0
.end method

.method public bridge synthetic getPrimitive(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "serializedKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;->getPrimitive(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getPrimitive(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
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

    .line 73
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;->getPrimitive(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public getPrimitive(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Ljava/lang/Void;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 107
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Cannot use the KeyManager to get a primitive for KeyDerivation"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getPrimitive(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Ljava/lang/Void;
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

    .line 113
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Cannot use the KeyManager to get a primitive for KeyDerivation"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final getPrimitiveClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 198
    const-class v0, Ljava/lang/Void;

    return-object v0
.end method

.method public getVersion()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final newKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedKeyFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;->newKeyData(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData;

    move-result-object p1

    .line 123
    :try_start_4
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyData;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 122
    invoke-static {p1, v0}, Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Lcom/google/crypto/tink/proto/PrfBasedDeriverKey;

    move-result-object p1
    :try_end_10
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_4 .. :try_end_10} :catch_11

    return-object p1

    .line 125
    :catch_11
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Unexpectedly failed to parse key"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final newKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 131
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;->newKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public final newKeyData(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedKeyFormat"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 164
    invoke-static {p1}, Lcom/google/crypto/tink/keyderivation/internal/PrfBasedDeriverKeyManager;->getOutputPrefixTypeFromSerializedKeyFormat(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v0

    .line 167
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    const-string v2, "type.googleapis.com/google.crypto.tink.PrfBasedDeriverKey"

    .line 168
    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v1

    .line 169
    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p1

    .line 170
    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p1

    .line 171
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 166
    invoke-static {p1}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->checkedCreate(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p1

    .line 173
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->parseParameters(Lcom/google/crypto/tink/internal/Serialization;)Lcom/google/crypto/tink/Parameters;

    move-result-object p1

    .line 175
    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/OutputPrefixType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    const/16 v0, 0x7b

    .line 183
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    .line 185
    :goto_38
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->createKey(Lcom/google/crypto/tink/Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/Key;

    move-result-object p1

    .line 187
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 188
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->serializeKey(Lcom/google/crypto/tink/Key;Ljava/lang/Class;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/Serialization;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 189
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyData;->newBuilder()Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v0

    .line 190
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v0

    .line 191
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v0

    .line 192
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setKeyMaterialType(Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/KeyData;

    return-object p1
.end method
