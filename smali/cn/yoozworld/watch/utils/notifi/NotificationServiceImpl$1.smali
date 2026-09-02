.class Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$1;
.super Ljava/lang/Object;
.source "NotificationServiceImpl.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->show(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

.field final synthetic val$notification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 63
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$1;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    iput-object p2, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$1;->val$notification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .registers 10

    .line 67
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$1;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->-$$Nest$fgetmNotificationContainerView(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    move-result-object p1

    if-nez p1, :cond_e

    const-string p1, "handleShow animation: mNotificationContainerView == null"

    .line 68
    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/LoggerUtils;->log(Ljava/lang/String;)V

    return-void

    .line 70
    :cond_e
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$1;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->-$$Nest$fgetmNotificationContainerView(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationUtils;->isActivityNotAlive(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3b

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "handleShow animation: mNotificationContainerView.getActivity() is not alive : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$1;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    invoke-static {p2}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->-$$Nest$fgetmNotificationContainerView(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    move-result-object p2

    .line 72
    invoke-virtual {p2}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/LoggerUtils;->log(Ljava/lang/String;)V

    return-void

    .line 74
    :cond_3b
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$1;->val$notification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    if-nez p1, :cond_45

    const-string p1, "handleShow animation: mNotification == null"

    .line 75
    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/LoggerUtils;->log(Ljava/lang/String;)V

    return-void

    .line 78
    :cond_45
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$1;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->-$$Nest$fgetmNotificationContainerView(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    move-result-object p2

    invoke-static {p1, p2}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->-$$Nest$mresetAnimation(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;Landroid/view/View;)V

    .line 79
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$1;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->-$$Nest$fgetmNotificationContainerView(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    move-result-object p1

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 p2, 0xc8

    invoke-virtual {p1, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 80
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$1;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->-$$Nest$fgetmNotificationManager(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    move-result-object p1

    iget-object p2, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$1;->val$notification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    iget p2, p2, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mType:I

    iget-object p3, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$1;->val$notification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    invoke-virtual {p3}, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->getTimeout()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcn/yoozworld/watch/utils/notifi/NotificationManager;->startTimeout(II)V

    .line 81
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$1;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->-$$Nest$fgetmNotificationContainerView(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method
