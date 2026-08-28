.class public final Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyProvider;
.super Ljava/lang/Object;
.source "LegacyKeyProvider.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u0006J\u0010\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyProvider;",
        "",
        "()V",
        "deleteKey",
        "",
        "keyAlias",
        "",
        "generateKey",
        "Ljava/security/Key;",
        "retrieveKey",
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


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized deleteKey(Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    :try_start_1
    const-string v0, "keyAlias"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_1a

    :try_start_6
    const-string v0, "AndroidKeyStore"

    .line 93
    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    const-string v1, "getInstance(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 94
    invoke-virtual {v0, v1}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 95
    invoke-virtual {v0, p1}, Ljava/security/KeyStore;->deleteEntry(Ljava/lang/String;)V
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_18} :catch_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_1a

    .line 99
    :catch_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized generateKey(Ljava/lang/String;)Ljava/security/Key;
    .registers 6

    const-string v0, "Key already exists for the keyAlias: "

    const-string v1, "Cannot generate a key for alias: "

    monitor-enter p0

    :try_start_5
    const-string v2, "keyAlias"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_97

    :try_start_a
    const-string v2, "AndroidKeyStore"

    .line 51
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const-string v3, "getInstance(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 52
    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 56
    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string v0, "AES"

    const-string v2, "AndroidKeyStore"

    .line 57
    invoke-static {v0, v2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v0

    const-string v2, "getInstance(...)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    new-instance v2, Landroid/security/keystore/KeyGenParameterSpec$Builder;

    const/4 v3, 0x3

    invoke-direct {v2, p1, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;-><init>(Ljava/lang/String;I)V

    const-string v3, "GCM"

    .line 69
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setBlockModes([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    const-string v3, "NoPadding"

    .line 70
    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setEncryptionPaddings([Ljava/lang/String;)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    const/16 v3, 0x100

    .line 71
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setKeySize(I)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    const/4 v3, 0x0

    .line 72
    invoke-virtual {v2, v3}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->setRandomizedEncryptionRequired(Z)Landroid/security/keystore/KeyGenParameterSpec$Builder;

    move-result-object v2

    .line 73
    invoke-virtual {v2}, Landroid/security/keystore/KeyGenParameterSpec$Builder;->build()Landroid/security/keystore/KeyGenParameterSpec;

    move-result-object v2

    check-cast v2, Ljava/security/spec/AlgorithmParameterSpec;

    .line 64
    invoke-virtual {v0, v2}, Ljavax/crypto/KeyGenerator;->init(Ljava/security/spec/AlgorithmParameterSpec;)V

    .line 75
    invoke-virtual {v0}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v0

    check-cast v0, Ljava/security/Key;
    :try_end_60
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_60} :catch_7b
    .catchall {:try_start_a .. :try_end_60} :catchall_97

    monitor-exit p0

    return-object v0

    .line 77
    :cond_62
    :try_start_62
    new-instance v2, Ljava/lang/Exception;

    .line 79
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " in AndroidKeyStore"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_62 .. :try_end_7b} :catch_7b
    .catchall {:try_start_62 .. :try_end_7b} :catchall_97

    :catch_7b
    move-exception v0

    .line 83
    :try_start_7c
    new-instance v2, Ljava/lang/Exception;

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " in AndroidKeyStore"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Ljava/lang/Throwable;

    .line 83
    invoke-direct {v2, p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_97
    .catchall {:try_start_7c .. :try_end_97} :catchall_97

    :catchall_97
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized retrieveKey(Ljava/lang/String;)Ljava/security/Key;
    .registers 7

    const-string v0, "AndroidKeyStore does not contain the keyAlias: "

    const-string v1, "Error occurred while accessing AndroidKeyStore to retrieve the key for keyAlias: "

    monitor-enter p0

    :try_start_5
    const-string v2, "keyAlias"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_4e

    :try_start_a
    const-string v2, "AndroidKeyStore"

    .line 27
    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v2

    const-string v3, "getInstance(...)"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    .line 28
    invoke-virtual {v2, v3}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 32
    invoke-virtual {v2, p1}, Ljava/security/KeyStore;->containsAlias(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 33
    invoke-virtual {v2, p1, v3}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object p1
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_23} :catch_38
    .catchall {:try_start_a .. :try_end_23} :catchall_4e

    monitor-exit p0

    return-object p1

    .line 35
    :cond_25
    :try_start_25
    new-instance v2, Ljava/lang/Exception;

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 35
    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_38} :catch_38
    .catchall {:try_start_25 .. :try_end_38} :catchall_4e

    :catch_38
    move-exception v0

    .line 41
    :try_start_39
    new-instance v2, Ljava/lang/Exception;

    .line 43
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    check-cast v0, Ljava/lang/Throwable;

    .line 41
    invoke-direct {v2, p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_4e
    .catchall {:try_start_39 .. :try_end_4e} :catchall_4e

    :catchall_4e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
