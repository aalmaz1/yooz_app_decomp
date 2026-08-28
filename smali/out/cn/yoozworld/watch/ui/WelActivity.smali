.class public final Lcn/yoozworld/watch/ui/WelActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "WelActivity.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0003\u001a\u00020\u00042\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006H\u0014\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcn/yoozworld/watch/ui/WelActivity;",
        "Landroidx/appcompat/app/AppCompatActivity;",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "app_release"
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
.method public static synthetic $r8$lambda$-MolWzQkth9nuONZ_5CiFKd0_uc(Lcn/yoozworld/watch/ui/WelActivity;)V
    .registers 1

    invoke-static {p0}, Lcn/yoozworld/watch/ui/WelActivity;->onCreate$lambda$0(Lcn/yoozworld/watch/ui/WelActivity;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private static final onCreate$lambda$0(Lcn/yoozworld/watch/ui/WelActivity;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/WelActivity;->finish()V

    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, v0, v0}, Lcn/yoozworld/watch/ui/WelActivity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 5

    .line 16
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001e

    .line 17
    invoke-virtual {p0, p1}, Lcn/yoozworld/watch/ui/WelActivity;->setContentView(I)V

    .line 20
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/WelActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const-string v0, "getDecorView(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x700

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 26
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/WelActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 28
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/WelActivity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    const p1, 0x7f0900c0

    .line 31
    invoke-virtual {p0, p1}, Lcn/yoozworld/watch/ui/WelActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/ImageView;

    .line 33
    move-object v0, p0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    const-string v1, "file:///android_asset/keepHealth_logo.gif"

    .line 34
    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 35
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 38
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    new-instance v0, Lcn/yoozworld/watch/ui/WelActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/yoozworld/watch/ui/WelActivity$$ExternalSyntheticLambda0;-><init>(Lcn/yoozworld/watch/ui/WelActivity;)V

    const-wide/16 v1, 0x9c4

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
