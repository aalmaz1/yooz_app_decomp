.class Lcn/yoozworld/watch/ui/QRCodeScanActivity$1;
.super Ljava/lang/Object;
.source "QRCodeScanActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/ui/QRCodeScanActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yoozworld/watch/ui/QRCodeScanActivity;

.field final synthetic val$scanTips:Ljava/lang/String;

.field final synthetic val$scanTitle:Ljava/lang/String;

.field final synthetic val$scan_tab:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/ui/QRCodeScanActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 50
    iput-object p1, p0, Lcn/yoozworld/watch/ui/QRCodeScanActivity$1;->this$0:Lcn/yoozworld/watch/ui/QRCodeScanActivity;

    iput-object p2, p0, Lcn/yoozworld/watch/ui/QRCodeScanActivity$1;->val$scanTitle:Ljava/lang/String;

    iput-object p3, p0, Lcn/yoozworld/watch/ui/QRCodeScanActivity$1;->val$scanTips:Ljava/lang/String;

    iput-object p4, p0, Lcn/yoozworld/watch/ui/QRCodeScanActivity$1;->val$scan_tab:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 53
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcn/yoozworld/watch/ui/QRCodeScanActivity$1;->this$0:Lcn/yoozworld/watch/ui/QRCodeScanActivity;

    const-class v1, Lcn/yoozworld/watch/ui/ScanTipsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v0, "scanTitle"

    .line 54
    iget-object v1, p0, Lcn/yoozworld/watch/ui/QRCodeScanActivity$1;->val$scanTitle:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "scanTips"

    .line 55
    iget-object v1, p0, Lcn/yoozworld/watch/ui/QRCodeScanActivity$1;->val$scanTips:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "scanTab"

    .line 56
    iget-object v1, p0, Lcn/yoozworld/watch/ui/QRCodeScanActivity$1;->val$scan_tab:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    iget-object v0, p0, Lcn/yoozworld/watch/ui/QRCodeScanActivity$1;->this$0:Lcn/yoozworld/watch/ui/QRCodeScanActivity;

    invoke-virtual {v0, p1}, Lcn/yoozworld/watch/ui/QRCodeScanActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
