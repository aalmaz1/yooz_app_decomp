.class public final Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;
.super Ljava/lang/Object;
.source "LegacyKeyValueStore.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\t\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\u000b\u001a\u00020\u000cJ&\u0010\r\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0005H\u0002J\u0015\u0010\u0013\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0005H\u0086\u0002J\u0010\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0014\u0010\u0018\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0005H\u0002J\u0008\u0010\u001a\u001a\u00020\u0005H\u0002J\u0012\u0010\u001b\u001a\u00020\u00112\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0005H\u0002J\u000e\u0010\u001d\u001a\u00020\u000c2\u0006\u0010\u0014\u001a\u00020\u0005J\u0012\u0010\u001e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u001f\u001a\u00020\u0005H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;",
        "",
        "context",
        "Landroid/content/Context;",
        "sharedPreferencesName",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "keyProvider",
        "Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyProvider;",
        "sharedPreferencesForData",
        "Landroid/content/SharedPreferences;",
        "clear",
        "",
        "decrypt",
        "decryptionKey",
        "Ljava/security/Key;",
        "ivSpec",
        "Ljava/security/spec/AlgorithmParameterSpec;",
        "encryptedData",
        "get",
        "dataKey",
        "getAlgorithmParameterSpecForIV",
        "iv",
        "",
        "getDataKeyUsedInPersistentStore",
        "key",
        "getEncryptionKeyAlias",
        "getInitializationVector",
        "keyOfDataInSharedPreferences",
        "remove",
        "retrieveEncryptionKey",
        "encryptionKeyAlias",
        "amplify_auth_cognito_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private keyProvider:Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyProvider;

.field private final sharedPreferencesForData:Landroid/content/SharedPreferences;

.field private final sharedPreferencesName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferencesName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->sharedPreferencesName:Ljava/lang/String;

    const/4 v0, 0x0

    .line 33
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "getSharedPreferences(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    .line 38
    new-instance p1, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyProvider;

    invoke-direct {p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyProvider;-><init>()V

    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->keyProvider:Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyProvider;

    return-void
.end method

.method private final decrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 137
    :try_start_1
    invoke-static {p3, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p3

    const-string v0, "decode(...)"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AES/GCM/NoPadding"

    .line 138
    invoke-static {v0}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 139
    invoke-virtual {v0, v1, p1, p2}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 144
    invoke-virtual {v0, p3}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object p1

    const-string p2, "doFinal(...)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object p2

    const-string p3, "defaultCharset(...)"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p1, p2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_31

    goto :goto_32

    :catch_31
    const/4 p3, 0x0

    :goto_32
    return-object p3
.end method

.method private final getAlgorithmParameterSpecForIV([B)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 4

    .line 167
    new-instance v0, Ljavax/crypto/spec/GCMParameterSpec;

    const/16 v1, 0x80

    invoke-direct {v0, v1, p1}, Ljavax/crypto/spec/GCMParameterSpec;-><init>(I[B)V

    check-cast v0, Ljava/security/spec/AlgorithmParameterSpec;

    return-object v0
.end method

.method private final getDataKeyUsedInPersistentStore(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_17

    .line 188
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".encrypted"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_17
    return-object p1
.end method

.method private final getEncryptionKeyAlias()Ljava/lang/String;
    .registers 3

    .line 192
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->sharedPreferencesName:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".aesKeyStoreAlias"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final getInitializationVector(Ljava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".iv"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    invoke-interface {v1, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 157
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_54

    const/4 v1, 0x0

    .line 159
    invoke-static {v0, v1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    const-string v2, "decode(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    array-length v2, v0

    if-nez v2, :cond_32

    const/4 v1, 0x1

    :cond_32
    if-nez v1, :cond_39

    .line 163
    invoke-direct {p0, v0}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->getAlgorithmParameterSpecForIV([B)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object p1

    return-object p1

    .line 161
    :cond_39
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot base64 decode the initialization vector for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " read from SharedPreferences."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_54
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot read the initialization vector for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " from SharedPreferences."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 155
    :cond_6f
    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Initialization vector for "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is missing from the SharedPreferences."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final declared-synchronized retrieveEncryptionKey(Ljava/lang/String;)Ljava/security/Key;
    .registers 3

    monitor-enter p0

    .line 173
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->keyProvider:Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyProvider;

    invoke-virtual {v0, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyProvider;->retrieveKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object p1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_7} :catch_a
    .catchall {:try_start_1 .. :try_end_7} :catchall_8

    goto :goto_10

    :catchall_8
    move-exception p1

    goto :goto_12

    .line 180
    :catch_a
    :try_start_a
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->keyProvider:Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyProvider;

    invoke-virtual {v0, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyProvider;->deleteKey(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_8

    const/4 p1, 0x0

    .line 172
    :goto_10
    monitor-exit p0

    return-object p1

    :goto_12
    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized clear()V
    .registers 2

    monitor-enter p0

    .line 115
    :try_start_1
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    .line 119
    monitor-exit p0

    return-void

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized get(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    monitor-enter p0

    const/4 v0, 0x0

    if-nez p1, :cond_6

    .line 49
    monitor-exit p0

    return-object v0

    .line 53
    :cond_6
    :try_start_6
    invoke-direct {p0, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->getDataKeyUsedInPersistentStore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->getEncryptionKeyAlias()Ljava/lang/String;

    move-result-object v2

    .line 60
    invoke-direct {p0, v2}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->retrieveEncryptionKey(Ljava/lang/String;)Ljava/security/Key;

    move-result-object v2
    :try_end_12
    .catchall {:try_start_6 .. :try_end_12} :catchall_5a

    if-nez v2, :cond_16

    monitor-exit p0

    return-object v0

    .line 64
    :cond_16
    :try_start_16
    iget-object v3, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v3
    :try_end_1c
    .catchall {:try_start_16 .. :try_end_1c} :catchall_5a

    if-nez v3, :cond_20

    .line 65
    monitor-exit p0

    return-object v0

    .line 71
    :cond_20
    :try_start_20
    iget-object v3, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".keyvaluestoreversion"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 72
    invoke-interface {v3, v4, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_40} :catch_55
    .catchall {:try_start_20 .. :try_end_40} :catchall_5a

    const/4 v4, 0x1

    if-eq v3, v4, :cond_45

    .line 77
    monitor-exit p0

    return-object v0

    .line 81
    :cond_45
    :try_start_45
    iget-object v3, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    invoke-interface {v3, v1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 84
    invoke-direct {p0, v1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->getInitializationVector(Ljava/lang/String;)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v1

    .line 82
    invoke-direct {p0, v2, v1, v3}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->decrypt(Ljava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_45 .. :try_end_53} :catch_55
    .catchall {:try_start_45 .. :try_end_53} :catchall_5a

    monitor-exit p0

    return-object p1

    .line 89
    :catch_55
    :try_start_55
    invoke-virtual {p0, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->remove(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_55 .. :try_end_58} :catchall_5a

    .line 90
    monitor-exit p0

    return-object v0

    :catchall_5a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized remove(Ljava/lang/String;)V
    .registers 5

    monitor-enter p0

    :try_start_1
    const-string v0, "dataKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    invoke-direct {p0, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->getDataKeyUsedInPersistentStore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 103
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->sharedPreferencesForData:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".iv"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ".keyvaluestoreversion"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 107
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_45
    .catchall {:try_start_1 .. :try_end_45} :catchall_47

    .line 108
    monitor-exit p0

    return-void

    :catchall_47
    move-exception p1

    monitor-exit p0

    throw p1
.end method
