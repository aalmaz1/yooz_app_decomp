.class Lcn/yoozworld/watch/utils/notifi/NotificationView$1;
.super Ljava/lang/Object;
.source "NotificationView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/utils/notifi/NotificationView;->setClickListener(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yoozworld/watch/utils/notifi/NotificationView;


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/utils/notifi/NotificationView;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationView$1;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 105
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationView$1;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationView;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcn/yoozworld/watch/utils/notifi/NotificationView;->onClick(Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationView$1;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationView;

    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationView;->-$$Nest$mhide(Lcn/yoozworld/watch/utils/notifi/NotificationView;)V

    :cond_0
    return-void
.end method
