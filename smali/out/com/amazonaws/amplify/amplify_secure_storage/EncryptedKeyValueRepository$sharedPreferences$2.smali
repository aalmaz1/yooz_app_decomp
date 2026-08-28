.class final Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$sharedPreferences$2;
.super Lkotlin/jvm/internal/Lambda;
.source "EncryptedKeyValueRepository.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/content/SharedPreferences;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Landroid/content/SharedPreferences;",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;


# direct methods
.method constructor <init>(Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;)V
    .registers 2

    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$sharedPreferences$2;->this$0:Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences;
    .registers 6

    .line 21
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$sharedPreferences$2;->this$0:Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;

    invoke-virtual {v0}, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->getInitializationFlagFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1a

    .line 24
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$sharedPreferences$2;->this$0:Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;

    invoke-virtual {v0}, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->removeSharedPreferencesFile()V

    .line 25
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$sharedPreferences$2;->this$0:Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;

    invoke-virtual {v0}, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->getInitializationFlagFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 28
    :cond_1a
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$sharedPreferences$2;->this$0:Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;

    invoke-static {v0}, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->access$getSharedPreferencesName$p(Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;)Ljava/lang/String;

    move-result-object v0

    .line 29
    sget-object v1, Landroidx/security/crypto/MasterKeys;->AES256_GCM_SPEC:Landroid/security/keystore/KeyGenParameterSpec;

    invoke-static {v1}, Landroidx/security/crypto/MasterKeys;->getOrCreate(Landroid/security/keystore/KeyGenParameterSpec;)Ljava/lang/String;

    move-result-object v1

    .line 30
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$sharedPreferences$2;->this$0:Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;

    invoke-static {v2}, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->access$getContext$p(Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;)Landroid/content/Context;

    move-result-object v2

    .line 31
    sget-object v3, Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;->AES256_SIV:Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;

    .line 32
    sget-object v4, Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;->AES256_GCM:Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;

    .line 27
    invoke-static {v0, v1, v2, v3, v4}, Landroidx/security/crypto/EncryptedSharedPreferences;->create(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Landroidx/security/crypto/EncryptedSharedPreferences$PrefKeyEncryptionScheme;Landroidx/security/crypto/EncryptedSharedPreferences$PrefValueEncryptionScheme;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "create(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 20
    invoke-virtual {p0}, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$sharedPreferences$2;->invoke()Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method
