.class final Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$initializationFlagFile$2;
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
        "Ljava/io/File;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Ljava/io/File;",
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

    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$initializationFlagFile$2;->this$0:Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/io/File;
    .registers 6

    .line 75
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$initializationFlagFile$2;->this$0:Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;

    invoke-static {v1}, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->access$getContext$p(Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$initializationFlagFile$2;->this$0:Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;

    invoke-static {v2}, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->access$getSharedPreferencesName$p(Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "amplify_EncryptedSharedPreferences_"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 74
    invoke-virtual {p0}, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$initializationFlagFile$2;->invoke()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
