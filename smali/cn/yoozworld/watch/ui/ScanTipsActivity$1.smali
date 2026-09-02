.class Lcn/yoozworld/watch/ui/ScanTipsActivity$1;
.super Ljava/lang/Object;
.source "ScanTipsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/ui/ScanTipsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yoozworld/watch/ui/ScanTipsActivity;


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/ui/ScanTipsActivity;)V
    .registers 2

    .line 43
    iput-object p1, p0, Lcn/yoozworld/watch/ui/ScanTipsActivity$1;->this$0:Lcn/yoozworld/watch/ui/ScanTipsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 46
    iget-object p1, p0, Lcn/yoozworld/watch/ui/ScanTipsActivity$1;->this$0:Lcn/yoozworld/watch/ui/ScanTipsActivity;

    invoke-virtual {p1}, Lcn/yoozworld/watch/ui/ScanTipsActivity;->finish()V

    return-void
.end method
