.class public Lcn/yoozworld/watch/ui/ScanTipsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ScanTipsActivity.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 7

    .line 23
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0c001d

    .line 24
    invoke-virtual {p0, p1}, Lcn/yoozworld/watch/ui/ScanTipsActivity;->setContentView(I)V

    .line 26
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/ScanTipsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "scanTitle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 27
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/ScanTipsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "scanTips"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 28
    invoke-virtual {p0}, Lcn/yoozworld/watch/ui/ScanTipsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "scanTab"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0901b2

    .line 30
    invoke-virtual {p0, v2}, Lcn/yoozworld/watch/ui/ScanTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f090158

    .line 31
    invoke-virtual {p0, v3}, Lcn/yoozworld/watch/ui/ScanTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090157

    .line 32
    invoke-virtual {p0, v4}, Lcn/yoozworld/watch/ui/ScanTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 34
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 36
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p1, 0x7f090156

    .line 38
    invoke-virtual {p0, p1}, Lcn/yoozworld/watch/ui/ScanTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 39
    invoke-static {p0}, Lcom/bumptech/glide/Glide;->with(Landroidx/fragment/app/FragmentActivity;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    const v1, 0x7f0f0005

    .line 41
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/Integer;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    .line 42
    invoke-virtual {v0, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    const p1, 0x7f090055

    .line 43
    invoke-virtual {p0, p1}, Lcn/yoozworld/watch/ui/ScanTipsActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcn/yoozworld/watch/ui/ScanTipsActivity$1;

    invoke-direct {v0, p0}, Lcn/yoozworld/watch/ui/ScanTipsActivity$1;-><init>(Lcn/yoozworld/watch/ui/ScanTipsActivity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
