.class public final Lcom/google/crypto/tink/KeysetManager;
.super Ljava/lang/Object;
.source "KeysetManager.java"


# instance fields
.field private final keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;


# direct methods
.method private constructor <init>(Lcom/google/crypto/tink/proto/Keyset$Builder;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    return-void
.end method

.method private declared-synchronized createKeysetKey(Lcom/google/crypto/tink/proto/KeyData;Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/Keyset$Key;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyData",
            "outputPrefixType"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 306
    :try_start_1
    invoke-direct {p0}, Lcom/google/crypto/tink/KeysetManager;->newKeyId()I

    move-result v0

    .line 307
    sget-object v1, Lcom/google/crypto/tink/proto/OutputPrefixType;->UNKNOWN_PREFIX:Lcom/google/crypto/tink/proto/OutputPrefixType;

    if-eq p2, v1, :cond_27

    .line 310
    invoke-static {}, Lcom/google/crypto/tink/proto/Keyset$Key;->newBuilder()Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v1

    .line 311
    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setKeyData(Lcom/google/crypto/tink/proto/KeyData;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object p1

    .line 312
    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setKeyId(I)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object p1

    sget-object v0, Lcom/google/crypto/tink/proto/KeyStatusType;->ENABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    .line 313
    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setStatus(Lcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object p1

    .line 314
    invoke-virtual {p1, p2}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object p1

    .line 315
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/Keyset$Key;
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_2f

    .line 310
    monitor-exit p0

    return-object p1

    .line 308
    :cond_27
    :try_start_27
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "unknown output prefix type"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2f
    .catchall {:try_start_27 .. :try_end_2f} :catchall_2f

    :catchall_2f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized keyIdExists(I)Z
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyId"
        }
    .end annotation

    monitor-enter p0

    .line 319
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Builder;->getKeyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/Keyset$Key;

    .line 320
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v1
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_23

    if-ne v1, p1, :cond_b

    .line 321
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 324
    :cond_20
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_23
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized newKey(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/proto/Keyset$Key;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyTemplate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 301
    :try_start_1
    invoke-static {p1}, Lcom/google/crypto/tink/Registry;->newKeyData(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/KeyTemplate;->getOutputPrefixType()Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/google/crypto/tink/KeysetManager;->createKeysetKey(Lcom/google/crypto/tink/proto/KeyData;Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized newKeyId()I
    .registers 3

    monitor-enter p0

    .line 328
    :try_start_1
    invoke-static {}, Lcom/google/crypto/tink/internal/Util;->randKeyId()I

    move-result v0

    .line 329
    :goto_5
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/KeysetManager;->keyIdExists(I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 330
    invoke-static {}, Lcom/google/crypto/tink/internal/Util;->randKeyId()I

    move-result v0
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_12

    goto :goto_5

    .line 332
    :cond_10
    monitor-exit p0

    return v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static withEmptyKeyset()Lcom/google/crypto/tink/KeysetManager;
    .registers 2

    .line 59
    new-instance v0, Lcom/google/crypto/tink/KeysetManager;

    invoke-static {}, Lcom/google/crypto/tink/proto/Keyset;->newBuilder()Lcom/google/crypto/tink/proto/Keyset$Builder;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/crypto/tink/KeysetManager;-><init>(Lcom/google/crypto/tink/proto/Keyset$Builder;)V

    return-object v0
.end method

.method public static withKeysetHandle(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/KeysetManager;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 54
    new-instance v0, Lcom/google/crypto/tink/KeysetManager;

    invoke-virtual {p0}, Lcom/google/crypto/tink/KeysetHandle;->getKeyset()Lcom/google/crypto/tink/proto/Keyset;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/crypto/tink/proto/Keyset;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-direct {v0, p0}, Lcom/google/crypto/tink/KeysetManager;-><init>(Lcom/google/crypto/tink/proto/Keyset$Builder;)V

    return-object v0
.end method


# virtual methods
.method public declared-synchronized add(Lcom/google/crypto/tink/KeyTemplate;)Lcom/google/crypto/tink/KeysetManager;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyTemplate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 102
    :try_start_1
    invoke-virtual {p1}, Lcom/google/crypto/tink/KeyTemplate;->getProtoMaybeThrow()Lcom/google/crypto/tink/proto/KeyTemplate;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/KeysetManager;->addNewKey(Lcom/google/crypto/tink/proto/KeyTemplate;Z)I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 103
    monitor-exit p0

    return-object p0

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/KeysetManager;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyTemplate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 90
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/KeysetManager;->addNewKey(Lcom/google/crypto/tink/proto/KeyTemplate;Z)I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 91
    monitor-exit p0

    return-object p0

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(Lcom/google/crypto/tink/tinkkey/KeyHandle;)Lcom/google/crypto/tink/KeysetManager;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyHandle"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 122
    :try_start_1
    invoke-static {}, Lcom/google/crypto/tink/tinkkey/SecretKeyAccess;->insecureSecretAccess()Lcom/google/crypto/tink/tinkkey/KeyAccess;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/tinkkey/KeyHandle;->getKey(Lcom/google/crypto/tink/tinkkey/KeyAccess;)Lcom/google/crypto/tink/tinkkey/TinkKey;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/tinkkey/internal/ProtoKey;
    :try_end_b
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_b} :catch_58
    .catchall {:try_start_1 .. :try_end_b} :catchall_56

    .line 128
    :try_start_b
    invoke-virtual {p1}, Lcom/google/crypto/tink/tinkkey/KeyHandle;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/google/crypto/tink/KeysetManager;->keyIdExists(I)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 133
    iget-object v1, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    .line 134
    invoke-static {}, Lcom/google/crypto/tink/proto/Keyset$Key;->newBuilder()Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v2

    .line 135
    invoke-virtual {v0}, Lcom/google/crypto/tink/tinkkey/internal/ProtoKey;->getProtoKey()Lcom/google/crypto/tink/proto/KeyData;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setKeyData(Lcom/google/crypto/tink/proto/KeyData;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v2

    .line 136
    invoke-virtual {p1}, Lcom/google/crypto/tink/tinkkey/KeyHandle;->getId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setKeyId(I)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v2

    .line 137
    invoke-virtual {p1}, Lcom/google/crypto/tink/tinkkey/KeyHandle;->getStatus()Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;

    move-result-object p1

    invoke-static {p1}, Lcom/google/crypto/tink/internal/KeyStatusTypeProtoConverter;->toProto(Lcom/google/crypto/tink/tinkkey/KeyHandle$KeyStatusType;)Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setStatus(Lcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object p1

    .line 138
    invoke-virtual {v0}, Lcom/google/crypto/tink/tinkkey/internal/ProtoKey;->getOutputPrefixType()Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->toProto(Lcom/google/crypto/tink/KeyTemplate$OutputPrefixType;)Lcom/google/crypto/tink/proto/OutputPrefixType;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setOutputPrefixType(Lcom/google/crypto/tink/proto/OutputPrefixType;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/google/crypto/tink/proto/Keyset$Key;

    .line 133
    invoke-virtual {v1, p1}, Lcom/google/crypto/tink/proto/Keyset$Builder;->addKey(Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/proto/Keyset$Builder;
    :try_end_4c
    .catchall {:try_start_b .. :try_end_4c} :catchall_56

    .line 140
    monitor-exit p0

    return-object p0

    .line 129
    :cond_4e
    :try_start_4e
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "Trying to add a key with an ID already contained in the keyset."

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_56
    move-exception p1

    goto :goto_61

    :catch_58
    move-exception p1

    .line 124
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "KeyHandles which contain TinkKeys that are not ProtoKeys are not yet supported."

    invoke-direct {v0, v1, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
    :try_end_61
    .catchall {:try_start_4e .. :try_end_61} :catchall_56

    :goto_61
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized add(Lcom/google/crypto/tink/tinkkey/KeyHandle;Lcom/google/crypto/tink/tinkkey/KeyAccess;)Lcom/google/crypto/tink/KeysetManager;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyHandle",
            "access"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    monitor-enter p0

    .line 156
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/KeysetManager;->add(Lcom/google/crypto/tink/tinkkey/KeyHandle;)Lcom/google/crypto/tink/KeysetManager;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object p1

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addNewKey(Lcom/google/crypto/tink/proto/KeyTemplate;Z)I
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyTemplate",
            "asPrimary"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 167
    :try_start_1
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/KeysetManager;->newKey(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object p1

    .line 168
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/Keyset$Builder;->addKey(Lcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/proto/Keyset$Builder;

    if-eqz p2, :cond_15

    .line 170
    iget-object p2, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/google/crypto/tink/proto/Keyset$Builder;->setPrimaryKeyId(I)Lcom/google/crypto/tink/proto/Keyset$Builder;

    .line 172
    :cond_15
    invoke-virtual {p1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result p1
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    monitor-exit p0

    return p1

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized delete(I)Lcom/google/crypto/tink/KeysetManager;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 258
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Builder;->getPrimaryKeyId()I

    move-result v0

    if-eq p1, v0, :cond_41

    const/4 v0, 0x0

    .line 262
    :goto_a
    iget-object v1, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Builder;->getKeyCount()I

    move-result v1

    if-ge v0, v1, :cond_28

    .line 263
    iget-object v1, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/proto/Keyset$Builder;->getKey(I)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object v1

    .line 264
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v1

    if-ne v1, p1, :cond_25

    .line 265
    iget-object p1, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {p1, v0}, Lcom/google/crypto/tink/proto/Keyset$Builder;->removeKey(I)Lcom/google/crypto/tink/proto/Keyset$Builder;
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_49

    .line 266
    monitor-exit p0

    return-object p0

    :cond_25
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 269
    :cond_28
    :try_start_28
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 259
    :cond_41
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "cannot delete the primary key"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_49
    .catchall {:try_start_28 .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized destroy(I)Lcom/google/crypto/tink/KeysetManager;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 279
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Builder;->getPrimaryKeyId()I

    move-result v0

    if-eq p1, v0, :cond_89

    const/4 v0, 0x0

    .line 283
    :goto_a
    iget-object v1, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Builder;->getKeyCount()I

    move-result v1

    if-ge v0, v1, :cond_70

    .line 284
    iget-object v1, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/proto/Keyset$Builder;->getKey(I)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object v1

    .line 285
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v2

    if-ne v2, p1, :cond_6d

    .line 286
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/proto/KeyStatusType;->ENABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    if-eq v2, v3, :cond_50

    .line 287
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/proto/KeyStatusType;->DISABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    if-eq v2, v3, :cond_50

    .line 288
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/proto/KeyStatusType;->DESTROYED:Lcom/google/crypto/tink/proto/KeyStatusType;

    if-ne v2, v3, :cond_37

    goto :goto_50

    .line 289
    :cond_37
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot destroy key with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 291
    :cond_50
    :goto_50
    iget-object p1, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    .line 292
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    sget-object v2, Lcom/google/crypto/tink/proto/KeyStatusType;->DESTROYED:Lcom/google/crypto/tink/proto/KeyStatusType;

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setStatus(Lcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->clearKeyData()Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/Keyset$Key;

    .line 291
    invoke-virtual {p1, v0, v1}, Lcom/google/crypto/tink/proto/Keyset$Builder;->setKey(ILcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/proto/Keyset$Builder;
    :try_end_6b
    .catchall {:try_start_1 .. :try_end_6b} :catchall_91

    .line 293
    monitor-exit p0

    return-object p0

    :cond_6d
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 296
    :cond_70
    :try_start_70
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 280
    :cond_89
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "cannot destroy the primary key"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_91
    .catchall {:try_start_70 .. :try_end_91} :catchall_91

    :catchall_91
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized disable(I)Lcom/google/crypto/tink/KeysetManager;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 234
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Builder;->getPrimaryKeyId()I

    move-result v0

    if-eq p1, v0, :cond_7d

    const/4 v0, 0x0

    .line 238
    :goto_a
    iget-object v1, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Builder;->getKeyCount()I

    move-result v1

    if-ge v0, v1, :cond_64

    .line 239
    iget-object v1, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/proto/Keyset$Builder;->getKey(I)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object v1

    .line 240
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v2

    if-ne v2, p1, :cond_61

    .line 241
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/proto/KeyStatusType;->ENABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    if-eq v2, v3, :cond_48

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/proto/KeyStatusType;->DISABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    if-ne v2, v3, :cond_2f

    goto :goto_48

    .line 242
    :cond_2f
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot disable key with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 244
    :cond_48
    :goto_48
    iget-object p1, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    sget-object v2, Lcom/google/crypto/tink/proto/KeyStatusType;->DISABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setStatus(Lcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/Keyset$Key;

    invoke-virtual {p1, v0, v1}, Lcom/google/crypto/tink/proto/Keyset$Builder;->setKey(ILcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/proto/Keyset$Builder;
    :try_end_5f
    .catchall {:try_start_1 .. :try_end_5f} :catchall_85

    .line 245
    monitor-exit p0

    return-object p0

    :cond_61
    add-int/lit8 v0, v0, 0x1

    goto :goto_a

    .line 248
    :cond_64
    :try_start_64
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 235
    :cond_7d
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string v0, "cannot disable the primary key"

    invoke-direct {p1, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_85
    .catchall {:try_start_64 .. :try_end_85} :catchall_85

    :catchall_85
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized enable(I)Lcom/google/crypto/tink/KeysetManager;
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 214
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Builder;->getKeyCount()I

    move-result v1

    if-ge v0, v1, :cond_5c

    .line 215
    iget-object v1, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/proto/Keyset$Builder;->getKey(I)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object v1

    .line 216
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v2

    if-ne v2, p1, :cond_59

    .line 217
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/proto/KeyStatusType;->ENABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    if-eq v2, v3, :cond_40

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v2

    sget-object v3, Lcom/google/crypto/tink/proto/KeyStatusType;->DISABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    if-ne v2, v3, :cond_27

    goto :goto_40

    .line 218
    :cond_27
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot enable key with id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_40
    :goto_40
    iget-object p1, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->toBuilder()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite$Builder;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    sget-object v2, Lcom/google/crypto/tink/proto/KeyStatusType;->ENABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    invoke-virtual {v1, v2}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->setStatus(Lcom/google/crypto/tink/proto/KeyStatusType;)Lcom/google/crypto/tink/proto/Keyset$Key$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Lcom/google/crypto/tink/proto/Keyset$Key;

    invoke-virtual {p1, v0, v1}, Lcom/google/crypto/tink/proto/Keyset$Builder;->setKey(ILcom/google/crypto/tink/proto/Keyset$Key;)Lcom/google/crypto/tink/proto/Keyset$Builder;
    :try_end_57
    .catchall {:try_start_2 .. :try_end_57} :catchall_75

    .line 221
    monitor-exit p0

    return-object p0

    :cond_59
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 224
    :cond_5c
    :try_start_5c
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_75
    .catchall {:try_start_5c .. :try_end_75} :catchall_75

    :catchall_75
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getKeysetHandle()Lcom/google/crypto/tink/KeysetHandle;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 64
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/Keyset$Builder;->build()Lcom/google/crypto/tink/shaded/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/google/crypto/tink/proto/Keyset;

    invoke-static {v0}, Lcom/google/crypto/tink/KeysetHandle;->fromKeyset(Lcom/google/crypto/tink/proto/Keyset;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v0
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized promote(I)Lcom/google/crypto/tink/KeysetManager;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 204
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/KeysetManager;->setPrimary(I)Lcom/google/crypto/tink/KeysetManager;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_7

    monitor-exit p0

    return-object p1

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized rotate(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/KeysetManager;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyTemplate"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 77
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/KeysetManager;->addNewKey(Lcom/google/crypto/tink/proto/KeyTemplate;Z)I
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 78
    monitor-exit p0

    return-object p0

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setPrimary(I)Lcom/google/crypto/tink/KeysetManager;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 182
    :goto_2
    :try_start_2
    iget-object v1, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Builder;->getKeyCount()I

    move-result v1

    if-ge v0, v1, :cond_45

    .line 183
    iget-object v1, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v1, v0}, Lcom/google/crypto/tink/proto/Keyset$Builder;->getKey(I)Lcom/google/crypto/tink/proto/Keyset$Key;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getKeyId()I

    move-result v2

    if-ne v2, p1, :cond_42

    .line 185
    invoke-virtual {v1}, Lcom/google/crypto/tink/proto/Keyset$Key;->getStatus()Lcom/google/crypto/tink/proto/KeyStatusType;

    move-result-object v0

    sget-object v1, Lcom/google/crypto/tink/proto/KeyStatusType;->ENABLED:Lcom/google/crypto/tink/proto/KeyStatusType;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/proto/KeyStatusType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 189
    iget-object v0, p0, Lcom/google/crypto/tink/KeysetManager;->keysetBuilder:Lcom/google/crypto/tink/proto/Keyset$Builder;

    invoke-virtual {v0, p1}, Lcom/google/crypto/tink/proto/Keyset$Builder;->setPrimaryKeyId(I)Lcom/google/crypto/tink/proto/Keyset$Builder;
    :try_end_27
    .catchall {:try_start_2 .. :try_end_27} :catchall_5e

    .line 190
    monitor-exit p0

    return-object p0

    .line 186
    :cond_29
    :try_start_29
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cannot set key as primary because it\'s not enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_42
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 193
    :cond_45
    new-instance v0, Ljava/security/GeneralSecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5e
    .catchall {:try_start_29 .. :try_end_5e} :catchall_5e

    :catchall_5e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
