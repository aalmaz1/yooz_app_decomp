.class public Lcn/yoozworld/watch/ui/LRActivity;
.super Landroid/app/Activity;
.source "LRActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 17
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c0034

    .line 18
    invoke-virtual {p0, p1}, Lcn/yoozworld/watch/ui/LRActivity;->setContentView(I)V

    .line 19
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/LRActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 20
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 21
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\u6d77\u5916\u767b\u5f55 LoginResultActivity action:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const-string v1, "android.intent.action.VIEW"

    .line 22
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "result"

    .line 27
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6d77\u5916\u767b\u5f55 LoginResultActivity intent:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 30
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/yoozworld/watch/ui/HomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "loginResult"

    .line 31
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0, v0}, Lcn/yoozworld/watch/ui/LRActivity;->startActivity(Landroid/content/Intent;)V

    .line 33
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/LRActivity;->finish()V

    :cond_0
    return-void
.end method
