.class final Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$editor$2;
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
        "Landroid/content/SharedPreferences$Editor;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n\u00a2\u0006\u0002\u0008\u0003"
    }
    d2 = {
        "<anonymous>",
        "Landroid/content/SharedPreferences$Editor;",
        "kotlin.jvm.PlatformType",
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

    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$editor$2;->this$0:Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/content/SharedPreferences$Editor;
    .registers 2

    .line 38
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$editor$2;->this$0:Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;

    invoke-static {v0}, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;->access$getSharedPreferences(Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/amazonaws/amplify/amplify_secure_storage/EncryptedKeyValueRepository$editor$2;->invoke()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    return-object v0
.end method
