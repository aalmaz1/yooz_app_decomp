.class public Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;
.super Ljava/lang/Object;
.source "EncryptedKeyValueRepository.kt"

# interfaces
.implements Lcom/amazonaws/amplify/amplify_secure_storage/KeyValueRepository;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0002\u0008\u0005\u0008\u0016\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0012\u0010\u0019\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u001a\u001a\u00020\u0005H\u0016J\u001a\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\u00052\u0008\u0010\u001d\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\u001e\u001a\u00020\u001c2\u0006\u0010\u001a\u001a\u00020\u0005H\u0016J\u0008\u0010\u001f\u001a\u00020\u001cH\u0016J\u0008\u0010 \u001a\u00020\u001cH\u0017R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\nR!\u0010\r\u001a\u00020\u000e8FX\u0087\u0084\u0002\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u000c\u0012\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0014\u001a\u00020\u00158BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0018\u0010\u000c\u001a\u0004\u0008\u0016\u0010\u0017R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006!"
    }
    d2 = {
        "Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;",
        "Lcom/amazonaws/amplify/amplify_secure_storage/KeyValueRepository;",
        "context",
        "Landroid/content/Context;",
        "sharedPreferencesName",
        "",
        "(Landroid/content/Context;Ljava/lang/String;)V",
        "editor",
        "Landroid/content/SharedPreferences$Editor;",
        "getEditor",
        "()Landroid/content/SharedPreferences$Editor;",
        "editor$delegate",
        "Lkotlin/Lazy;",
        "initializationFlagFile",
        "Ljava/io/File;",
        "getInitializationFlagFile$annotations",
        "()V",
        "getInitializationFlagFile",
        "()Ljava/io/File;",
        "initializationFlagFile$delegate",
        "sharedPreferences",
        "Landroid/content/SharedPreferences;",
        "getSharedPreferences",
        "()Landroid/content/SharedPreferences;",
        "sharedPreferences$delegate",
        "get",
        "dataKey",
        "put",
        "",
        "value",
        "remove",
        "removeAll",
        "removeSharedPreferencesFile",
        "amplify_secure_storage_release"
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
.field private final context:Landroid/content/Context;

.field private final editor$delegate:Lkotlin/Lazy;

.field private final initializationFlagFile$delegate:Lkotlin/Lazy;

.field private final sharedPreferences$delegate:Lkotlin/Lazy;

.field private final sharedPreferencesName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sharedPreferencesName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->context:Landroid/content/Context;

    .line 17
    iput-object p2, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->sharedPreferencesName:Ljava/lang/String;

    .line 20
    new-instance p1, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$sharedPreferences$2;

    invoke-direct {p1, p0}, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$sharedPreferences$2;-><init>(Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->sharedPreferences$delegate:Lkotlin/Lazy;

    .line 37
    new-instance p1, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$editor$2;

    invoke-direct {p1, p0}, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$editor$2;-><init>(Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->editor$delegate:Lkotlin/Lazy;

    .line 74
    new-instance p1, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$initializationFlagFile$2;

    invoke-direct {p1, p0}, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$initializationFlagFile$2;-><init>(Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->initializationFlagFile$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getContext$p(Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;)Landroid/content/Context;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getSharedPreferences(Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;)Landroid/content/SharedPreferences;
    .registers 1

    .line 15
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSharedPreferencesName$p(Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;)Ljava/lang/String;
    .registers 1

    .line 15
    iget-object p0, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->sharedPreferencesName:Ljava/lang/String;

    return-object p0
.end method

.method private final getEditor()Landroid/content/SharedPreferences$Editor;
    .registers 3

    .line 37
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->editor$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method public static synthetic getInitializationFlagFile$annotations()V
    .registers 0

    return-void
.end method

.method private final getSharedPreferences()Landroid/content/SharedPreferences;
    .registers 2

    .line 20
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->sharedPreferences$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "dataKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getInitializationFlagFile()Ljava/io/File;
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->initializationFlagFile$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "dataKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 43
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 44
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .registers 3

    const-string v0, "dataKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 52
    invoke-interface {v0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 53
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public removeAll()V
    .registers 2

    .line 58
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 59
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    .line 60
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public removeSharedPreferencesFile()V
    .registers 5

    .line 66
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->sharedPreferencesName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/shared_prefs/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".xml"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    return-void
.end method
