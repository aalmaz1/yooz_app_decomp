.class public final Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;
.super Ljava/lang/Object;
.source "PhotoManagerDeleteManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "AndroidQDeleteTask"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0087\u0004\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u000e\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u0010J\u0006\u0010\u0011\u001a\u00020\u000eR\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;",
        "",
        "id",
        "",
        "uri",
        "Landroid/net/Uri;",
        "exception",
        "Landroid/app/RecoverableSecurityException;",
        "(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;Ljava/lang/String;Landroid/net/Uri;Landroid/app/RecoverableSecurityException;)V",
        "getId",
        "()Ljava/lang/String;",
        "getUri",
        "()Landroid/net/Uri;",
        "handleResult",
        "",
        "resultCode",
        "",
        "requestPermission",
        "photo_manager_release"
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
.field private final exception:Landroid/app/RecoverableSecurityException;

.field private final id:Ljava/lang/String;

.field final synthetic this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

.field private final uri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;Ljava/lang/String;Landroid/net/Uri;Landroid/app/RecoverableSecurityException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Landroid/app/RecoverableSecurityException;",
            ")V"
        }
    .end annotation

    const-string v0, "id"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uri"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "exception"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->id:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->uri:Landroid/net/Uri;

    .line 33
    iput-object p4, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->exception:Landroid/app/RecoverableSecurityException;

    return-void
.end method


# virtual methods
.method public final getId()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->id:Ljava/lang/String;

    return-object v0
.end method

.method public final getUri()Landroid/net/Uri;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->uri:Landroid/net/Uri;

    return-object v0
.end method

.method public final handleResult(I)V
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 51
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    invoke-static {p1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->access$getAndroidQSuccessIds$p(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->id:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    invoke-static {p1}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->access$requestAndroidQNextPermission(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;)V

    return-void
.end method

.method public final requestPermission()V
    .locals 7

    .line 36
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 37
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->uri:Landroid/net/Uri;

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 39
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    invoke-static {v0}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->access$getActivity$p(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->exception:Landroid/app/RecoverableSecurityException;

    invoke-virtual {v1}, Landroid/app/RecoverableSecurityException;->getUserAction()Landroid/app/RemoteAction;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager$AndroidQDeleteTask;->this$0:Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;

    invoke-static {v2}, Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;->access$getAndroidQDeleteRequestCode$p(Lcom/fluttercandies/photo_manager/core/PhotoManagerDeleteManager;)I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 39
    invoke-virtual/range {v0 .. v6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    :cond_0
    return-void
.end method
