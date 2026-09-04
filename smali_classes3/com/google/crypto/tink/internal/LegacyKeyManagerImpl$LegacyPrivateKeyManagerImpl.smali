.class Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl$LegacyPrivateKeyManagerImpl;
.super Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;
.source "LegacyKeyManagerImpl.java"

# interfaces
.implements Lcom/google/crypto/tink/PrivateKeyManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LegacyPrivateKeyManagerImpl"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl<",
        "TP;>;",
        "Lcom/google/crypto/tink/PrivateKeyManager<",
        "TP;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/shaded/protobuf/Parser;)V
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
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TP;>;",
            "Lcom/google/crypto/tink/shaded/protobuf/Parser<",
            "+",
            "Lcom/google/crypto/tink/shaded/protobuf/MessageLite;",
            ">;)V"
        }
    .end annotation

    .line 157
    sget-object v0, Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;->ASYMMETRIC_PRIVATE:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl;-><init>(Ljava/lang/String;Ljava/lang/Class;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/shaded/protobuf/Parser;)V

    return-void
.end method


# virtual methods
.method public getPublicKeyData(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData;
    .locals 4
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

    .line 162
    iget-object v0, p0, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl$LegacyPrivateKeyManagerImpl;->typeUrl:Ljava/lang/String;

    iget-object v1, p0, Lcom/google/crypto/tink/internal/LegacyKeyManagerImpl$LegacyPrivateKeyManagerImpl;->keyMaterialType:Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    sget-object v2, Lcom/google/crypto/tink/proto/OutputPrefixType;->RAW:Lcom/google/crypto/tink/proto/OutputPrefixType;

    const/4 v3, 0x0

    .line 163
    invoke-static {v0, p1, v1, v2, v3}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->create(Ljava/lang/String;Lcom/google/crypto/tink/shaded/protobuf/ByteString;Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;Lcom/google/crypto/tink/proto/OutputPrefixType;Ljava/lang/Integer;)Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    move-result-object p1

    .line 166
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    .line 167
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->parseKey(Lcom/google/crypto/tink/internal/Serialization;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/Key;

    move-result-object p1

    .line 168
    instance-of v0, p1, Lcom/google/crypto/tink/PrivateKey;

    if-eqz v0, :cond_0

    .line 171
    check-cast p1, Lcom/google/crypto/tink/PrivateKey;

    invoke-interface {p1}, Lcom/google/crypto/tink/PrivateKey;->getPublicKey()Lcom/google/crypto/tink/Key;

    move-result-object p1

    .line 173
    invoke-static {}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->globalInstance()Lcom/google/crypto/tink/internal/MutableSerializationRegistry;

    move-result-object v0

    const-class v1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 174
    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/crypto/tink/internal/MutableSerializationRegistry;->serializeKey(Lcom/google/crypto/tink/Key;Ljava/lang/Class;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/internal/Serialization;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/internal/ProtoKeySerialization;

    .line 175
    invoke-static {}, Lcom/google/crypto/tink/proto/KeyData;->newBuilder()Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v0

    .line 176
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getTypeUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setTypeUrl(Ljava/lang/String;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v0

    .line 177
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getValue()Lcom/google/crypto/tink/shaded/protobuf/ByteString;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setValue(Lcom/google/crypto/tink/shaded/protobuf/ByteString;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object v0

    .line 178
    invoke-virtual {p1}, Lcom/google/crypto/tink/internal/ProtoKeySerialization;->getKeyMaterialType()Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->setKeyMaterialType(Lcom/google/crypto/tink/proto/KeyData$KeyMaterialType;)Lcom/google/crypto/tink/proto/KeyData$Builder;

    move-result-object p1

    .line 179
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyData$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/KeyData;

    return-object p1

    .line 169
    :cond_0
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Key not private key"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
