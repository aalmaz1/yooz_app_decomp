.class Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$4;
.super Ljava/lang/Object;
.source "NotificationServiceImpl.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->initNotificationView(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)V
    .registers 2

    .line 174
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$4;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 177
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$4;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->-$$Nest$fgetmNotificationContainerView(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    move-result-object p1

    iget-object p2, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$4;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    invoke-static {p2}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->-$$Nest$fgetmNotificationContainerView(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    move-result-object p2

    invoke-virtual {p2}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->getHeight()I

    move-result p2

    neg-int p2, p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->setTranslationY(F)V

    .line 178
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$4;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->-$$Nest$fgetmNotificationContainerView(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
