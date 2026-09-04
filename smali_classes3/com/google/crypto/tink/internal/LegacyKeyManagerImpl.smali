.class public Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;
.super Ljava/lang/Object;
.source "LegacyKeyManagerImpl.java"

# interfaces
.implements Lcom/google/crypto/tink/KeyManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl$LegacyPrivateKeyManagerImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/crypto/tink/KeyManager<",
        "TP;>;"
    }
.end annotation


# instance fields
.field final keyMaterialType:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

.field final primitiveClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "TP;>;"
        }
    .end annotation
.end field

.field final protobufKeyParser:Lcom/google/crypto/tink/shaded/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            ">;"
        }
    .end annotation
.end field

.field final typeUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/shaded/protobuf/Parser;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "typeUrl",
            "primitiveClass",
            "keyMaterialType",
            "protobufKeyParser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TP;>;",
            "Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            ">;)V"
        }
    .end annotation

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p4, p0, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->protobufKeyParser:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 71
    iput-object p1, p0, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->typeUrl:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->primitiveClass:Ljava/lang/Class;

    .line 73
    iput-object p3, p0, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->keyMaterialType:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/KeyManager;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "typeUrl",
            "primitiveClass",
            "keyMaterialType",
            "protobufKeyParser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TP;>;",
            "Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            ">;)",
            "Lcom/google/crypto/tink/KeyManager<",
            "TP;>;"
        }
    .end annotation

    .line 62
    new-instance v0, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/shaded/protobuf/Parser;)V

    return-object v0
.end method

.method public static createPrivateKeyManager(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/Parser;)Lcom/google/crypto/tink/PrivateKeyManager;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "typeUrl",
            "primitiveClass",
            "protobufKeyParser"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TP;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            ">;)",
            "Lcom/google/crypto/tink/PrivateKeyManager<",
            "TP;>;"
        }
    .end annotation

    .line 185
    new-instance v0, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl$LegacyPrivateKeyManagerImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl$LegacyPrivateKeyManagerImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/Parser;)V

    return-object v0
.end method


# virtual methods
.method public final doesSupport(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeUrl"
        }
    .end annotation

    .line 111
    invoke-virtual {p0}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->getKeyType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public final getKeyType()Ljava/lang/String;
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->typeUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrimitive(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/ByteString;",
            ")TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->typeUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->keyMaterialType:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    sget-object v2, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    const/4 v3, 0x0

    .line 79
    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p1

    .line 82
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    .line 83
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->parseKey(Lcom/google/crypto/tink/internal/Serialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;

    move-result-object p1

    .line 84
    invoke-static {}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->primitiveClass:Ljava/lang/Class;

    invoke-virtual {v0, p1, v1}, Lcom/google/crypto/tink/internal/MutablePrimitiveRegistry;->getPrimitive(Lcom/google/crypto/tink/Key;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPrimitive(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            ")TP;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 89
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->getPrimitive(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getPrimitiveClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TP;>;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->primitiveClass:Ljava/lang/Class;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final newKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 2
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

    .line 95
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->newKeyData(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData;

    move-result-object p1

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->protobufKeyParser:Lcom/google/crypto/tink/shaded/protobuf/Parser;

    .line 98
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyData;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;

    move-result-object v1

    .line 97
    invoke-interface {v0, p1, v1}, Lcom/google/crypto/tink/shaded/protobuf/Parser;->parseFrom(Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/shaded/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    :try_end_0
    .catch Lcom/google/crypto/tink/shaded/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 100
    :catch_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Unexpectedly failed to parse key"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final newKey(Lcom/google/crypto/tink/shaded/protobuf/MessageLite;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;
    .locals 0
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

    .line 106
    invoke-interface {p1}, Lcom/google/crypto/tink/shaded/protobuf/MessageLite;->toByteString()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->newKey(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/shaded/protobuf/MessageLite;

    move-result-object p1

    return-object p1
.end method

.method public final newKeyData(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData;
    .locals 3
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

    .line 128
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyTemplate;->newBuilder()Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;->typeUrl:Ljava/lang/String;

    .line 129
    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    .line 131
    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/KeyTemplate$Builder;

    move-result-object p1

    .line 132
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyTemplate$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/KeyTemplate;

    .line 127
    invoke-static {p1}, Lcom/google/crypto/tink/internal/ProtoParametersSerialization;->checkedCreate(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/internal/ProtoParametersSerialization;

    move-result-object p1

    .line 134
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->parseParameters(Lcom/google/crypto/tink/internal/Serialization;)Lcom/google/crypto/tink/Parameters;

    move-result-object p1

    .line 136
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;

    move-result-object v0

    const/4 v1, 0x0

    .line 137
    invoke-virtual {v0, p1, v1}, Lcom/google/crypto/tink/internal/MutableKeyCreationRegistry;->createKey(Lcom/google/crypto/tink/Parameters;Ljava/lang/Integer;)Lcom/google/crypto/tink/Key;

    move-result-object p1

    .line 139
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 140
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->serializeKey(Lcom/google/crypto/tink/Key;Ljava/lang/Class;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/Serialization;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 141
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyData;->newBuilder()Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v0

    .line 142
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v0

    .line 143
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setKeyMaterialType(Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object p1

    .line 145
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/KeyData;

    return-object p1
.end method
