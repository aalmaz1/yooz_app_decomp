.class public final Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;
.super Ljava/lang/Object;
.source "AndroidKeysetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private keyTemplate:Lcom/google/crypto/tink/KeyTemplate;

.field private keyTemplateProto:Lcom/google/crypto/tink/proto/KeyTemplate;

.field private keysetManager:Lcom/google/crypto/tink/KeysetManager;

.field private keysetName:Ljava/lang/String;

.field private masterAead:Lcom/google/crypto/tink/Aead;

.field private masterKeyUri:Ljava/lang/String;

.field private prefFileName:Ljava/lang/String;

.field private useKeystore:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 152
    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->context:Landroid/content/Context;

    .line 153
    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keysetName:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->prefFileName:Ljava/lang/String;

    .line 156
    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKeyUri:Ljava/lang/String;

    .line 157
    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterAead:Lcom/google/crypto/tink/Aead;

    const/4 v1, 0x1

    .line 158
    iput-boolean v1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->useKeystore:Z

    .line 161
    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keyTemplate:Lcom/google/crypto/tink/KeyTemplate;

    .line 162
    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keyTemplateProto:Lcom/google/crypto/tink/proto/KeyTemplate;

    return-void
.end method

.method static synthetic access$000(Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;)Landroid/content/Context;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;)Ljava/lang/String;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keysetName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;)Ljava/lang/String;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->prefFileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;)Lcom/google/crypto/tink/Aead;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterAead:Lcom/google/crypto/tink/Aead;

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;)Lcom/google/crypto/tink/KeysetManager;
    .registers 1

    .line 151
    iget-object p0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keysetManager:Lcom/google/crypto/tink/KeysetManager;

    return-object p0
.end method

.method private generateKeysetAndWriteToPrefs()Lcom/google/crypto/tink/KeysetManager;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    iget-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keyTemplate:Lcom/google/crypto/tink/KeyTemplate;

    if-eqz v0, :cond_1d

    .line 359
    invoke-static {v0}, Lcom/google/crypto/tink/KeysetHandle;->generateNew(Lcom/google/crypto/tink/KeyTemplate;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v0

    .line 360
    new-instance v1, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;

    iget-object v2, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keysetName:Ljava/lang/String;

    iget-object v4, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->prefFileName:Ljava/lang/String;

    invoke-direct {v1, v2, v3, v4}, Lcom/google/crypto/tink/integration/android/SharedPrefKeysetWriter;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 361
    iget-object v2, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterAead:Lcom/google/crypto/tink/Aead;

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->access$900(Lcom/google/crypto/tink/KeysetHandle;Lcom/google/crypto/tink/KeysetWriter;Lcom/google/crypto/tink/Aead;)V

    .line 362
    invoke-static {v0}, Lcom/google/crypto/tink/KeysetManager;->withKeysetHandle(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/KeysetManager;

    move-result-object v0

    return-object v0

    .line 356
    :cond_1d
    new-instance v0, Ljava/security/GeneralSecurityException;

    const-string v1, "cannot read or generate keyset"

    invoke-direct {v0, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static readKeysetFromPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "keysetName",
            "prefFileName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_30

    .line 251
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p2, :cond_e

    .line 254
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_12

    .line 256
    :cond_e
    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    :goto_12
    const/4 p2, 0x0

    .line 259
    :try_start_13
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1a

    return-object p2

    .line 263
    :cond_1a
    invoke-static {p0}, Lcom/google/crypto/tink/subtle/Hex;->decode(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_1e
    .catch Ljava/lang/ClassCastException; {:try_start_13 .. :try_end_1e} :catch_1f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_1e} :catch_1f

    return-object p0

    .line 266
    :catch_1f
    new-instance p0, Ljava/io/CharConversionException;

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "can\'t read keyset; the pref value %s is not a valid hex string"

    .line 267
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/CharConversionException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 249
    :cond_30
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keysetName cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readKeysetInCleartext([B)Lcom/google/crypto/tink/KeysetManager;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedKeyset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 276
    invoke-static {p1}, Lcom/google/crypto/tink/BinaryKeysetReader;->withBytes([B)Lcom/google/crypto/tink/KeysetReader;

    move-result-object p1

    invoke-static {}, Lcom/google/crypto/tink/InsecureSecretKeyAccess;->get()Lcom/google/crypto/tink/SecretKeyAccess;

    move-result-object v0

    .line 275
    invoke-static {p1, v0}, Lcom/google/crypto/tink/LegacyKeysetSerialization;->parseKeyset(Lcom/google/crypto/tink/KeysetReader;Lcom/google/crypto/tink/SecretKeyAccess;)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object p1

    .line 274
    invoke-static {p1}, Lcom/google/crypto/tink/KeysetManager;->withKeysetHandle(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/KeysetManager;

    move-result-object p1

    return-object p1
.end method

.method private readMasterkeyDecryptAndParseKeyset([B)Lcom/google/crypto/tink/KeysetManager;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "serializedKeyset"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    :try_start_0
    new-instance v0, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;

    invoke-direct {v0}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;-><init>()V

    iget-object v1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKeyUri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;->getAead(Ljava/lang/String;)Lcom/google/crypto/tink/Aead;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterAead:Lcom/google/crypto/tink/Aead;
    :try_end_d
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_d} :catch_2a
    .catch Ljava/security/ProviderException; {:try_start_0 .. :try_end_d} :catch_28

    const/4 v0, 0x0

    :try_start_e
    new-array v0, v0, [B

    .line 388
    invoke-static {p1}, Lcom/google/crypto/tink/BinaryKeysetReader;->withBytes([B)Lcom/google/crypto/tink/KeysetReader;

    move-result-object v1

    iget-object v2, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterAead:Lcom/google/crypto/tink/Aead;

    .line 387
    invoke-static {v1, v2, v0}, Lcom/google/crypto/tink/LegacyKeysetSerialization;->parseEncryptedKeyset(Lcom/google/crypto/tink/KeysetReader;Lcom/google/crypto/tink/Aead;[B)Lcom/google/crypto/tink/KeysetHandle;

    move-result-object v0

    .line 386
    invoke-static {v0}, Lcom/google/crypto/tink/KeysetManager;->withKeysetHandle(Lcom/google/crypto/tink/KeysetHandle;)Lcom/google/crypto/tink/KeysetManager;

    move-result-object p1
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_1e} :catch_21
    .catch Ljava/security/GeneralSecurityException; {:try_start_e .. :try_end_1e} :catch_1f

    return-object p1

    :catch_1f
    move-exception v0

    goto :goto_22

    :catch_21
    move-exception v0

    .line 401
    :goto_22
    :try_start_22
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->readKeysetInCleartext([B)Lcom/google/crypto/tink/KeysetManager;

    move-result-object p1
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_26} :catch_27

    return-object p1

    .line 404
    :catch_27
    throw v0

    :catch_28
    move-exception v0

    goto :goto_2b

    :catch_2a
    move-exception v0

    .line 374
    :goto_2b
    :try_start_2b
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->readKeysetInCleartext([B)Lcom/google/crypto/tink/KeysetManager;

    move-result-object p1

    .line 375
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cannot use Android Keystore, it\'ll be disabled"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_38} :catch_39

    return-object p1

    .line 379
    :catch_39
    throw v0
.end method

.method private readOrGenerateNewMasterKey()Lcom/google/crypto/tink/Aead;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    const-string v0, "cannot use Android Keystore, it\'ll be disabled"

    .line 317
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->access$600()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_13

    .line 318
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Android Keystore requires at least Android M"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 322
    :cond_13
    new-instance v1, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;

    invoke-direct {v1}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;-><init>()V

    .line 327
    :try_start_18
    iget-object v3, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKeyUri:Ljava/lang/String;

    invoke-static {v3}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;->generateKeyIfNotExist(Ljava/lang/String;)Z

    move-result v3
    :try_end_1e
    .catch Ljava/security/GeneralSecurityException; {:try_start_18 .. :try_end_1e} :catch_48
    .catch Ljava/security/ProviderException; {:try_start_18 .. :try_end_1e} :catch_46

    .line 334
    :try_start_1e
    iget-object v4, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKeyUri:Ljava/lang/String;

    invoke-virtual {v1, v4}, Lcom/google/crypto/tink/integration/android/AndroidKeystoreKmsClient;->getAead(Ljava/lang/String;)Lcom/google/crypto/tink/Aead;

    move-result-object v0
    :try_end_24
    .catch Ljava/security/GeneralSecurityException; {:try_start_1e .. :try_end_24} :catch_27
    .catch Ljava/security/ProviderException; {:try_start_1e .. :try_end_24} :catch_25

    return-object v0

    :catch_25
    move-exception v1

    goto :goto_28

    :catch_27
    move-exception v1

    :goto_28
    if-eqz v3, :cond_32

    .line 347
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->access$800()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2

    .line 342
    :cond_32
    new-instance v0, Ljava/security/KeyStoreException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKeyUri:Ljava/lang/String;

    aput-object v4, v2, v3

    const-string v3, "the master key %s exists but is unusable"

    .line 343
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_46
    move-exception v1

    goto :goto_49

    :catch_48
    move-exception v1

    .line 329
    :goto_49
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->access$800()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method


# virtual methods
.method public declared-synchronized build()Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 287
    :try_start_1
    iget-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keysetName:Ljava/lang/String;

    if-eqz v0, :cond_61

    .line 290
    iget-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keyTemplateProto:Lcom/google/crypto/tink/proto/KeyTemplate;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keyTemplate:Lcom/google/crypto/tink/KeyTemplate;

    if-nez v1, :cond_1b

    .line 292
    invoke-virtual {v0}, Lcom/google/crypto/tink/proto/KeyTemplate;->toByteArray()[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/TinkProtoParametersFormat;->parse([B)Lcom/google/crypto/tink/Parameters;

    move-result-object v0

    invoke-static {v0}, Lcom/google/crypto/tink/KeyTemplate;->createFrom(Lcom/google/crypto/tink/Parameters;)Lcom/google/crypto/tink/KeyTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keyTemplate:Lcom/google/crypto/tink/KeyTemplate;

    .line 297
    :cond_1b
    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->access$500()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_69

    .line 298
    :try_start_20
    iget-object v1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keysetName:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->prefFileName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->readKeysetFromPrefs(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    if-nez v1, :cond_3d

    .line 300
    iget-object v1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKeyUri:Ljava/lang/String;

    if-eqz v1, :cond_36

    .line 301
    invoke-direct {p0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->readOrGenerateNewMasterKey()Lcom/google/crypto/tink/Aead;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterAead:Lcom/google/crypto/tink/Aead;

    .line 303
    :cond_36
    invoke-direct {p0}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->generateKeysetAndWriteToPrefs()Lcom/google/crypto/tink/KeysetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keysetManager:Lcom/google/crypto/tink/KeysetManager;

    goto :goto_55

    .line 305
    :cond_3d
    iget-object v2, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKeyUri:Ljava/lang/String;

    if-eqz v2, :cond_4f

    invoke-static {}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;->access$600()Z

    move-result v2

    if-nez v2, :cond_48

    goto :goto_4f

    .line 308
    :cond_48
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->readMasterkeyDecryptAndParseKeyset([B)Lcom/google/crypto/tink/KeysetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keysetManager:Lcom/google/crypto/tink/KeysetManager;

    goto :goto_55

    .line 306
    :cond_4f
    :goto_4f
    invoke-direct {p0, v1}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->readKeysetInCleartext([B)Lcom/google/crypto/tink/KeysetManager;

    move-result-object v1

    iput-object v1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keysetManager:Lcom/google/crypto/tink/KeysetManager;

    .line 311
    :goto_55
    new-instance v1, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager;-><init>(Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$1;)V

    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_20 .. :try_end_5c} :catchall_5e

    monitor-exit p0

    return-object v1

    :catchall_5e
    move-exception v1

    .line 312
    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    :try_start_60
    throw v1

    .line 288
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "keysetName cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_69
    .catchall {:try_start_60 .. :try_end_69} :catchall_69

    :catchall_69
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public doNotUseKeystore()Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKeyUri:Ljava/lang/String;

    const/4 v0, 0x0

    .line 239
    iput-boolean v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->useKeystore:Z

    return-object p0
.end method

.method public withKeyTemplate(Lcom/google/crypto/tink/KeyTemplate;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 222
    iput-object p1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keyTemplate:Lcom/google/crypto/tink/KeyTemplate;

    return-object p0
.end method

.method public withKeyTemplate(Lcom/google/crypto/tink/proto/KeyTemplate;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keyTemplateProto:Lcom/google/crypto/tink/proto/KeyTemplate;

    return-object p0
.end method

.method public withMasterKeyUri(Ljava/lang/String;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "val"
        }
    .end annotation

    const-string v0, "android-keystore://"

    .line 198
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 202
    iget-boolean v0, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->useKeystore:Z

    if-eqz v0, :cond_f

    .line 206
    iput-object p1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->masterKeyUri:Ljava/lang/String;

    return-object p0

    .line 203
    :cond_f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "cannot call withMasterKeyUri() after calling doNotUseKeystore()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_17
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "key URI must start with android-keystore://"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public withSharedPref(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "keysetName",
            "prefFileName"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_13

    if-eqz p2, :cond_b

    .line 179
    iput-object p1, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->context:Landroid/content/Context;

    .line 180
    iput-object p2, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->keysetName:Ljava/lang/String;

    .line 181
    iput-object p3, p0, Lcom/google/crypto/tink/integration/android/AndroidKeysetManager$Builder;->prefFileName:Ljava/lang/String;

    return-object p0

    .line 177
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "need a keyset name"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 174
    :cond_13
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "need an Android context"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
