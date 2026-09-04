.class Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$2;
.super Ljava/lang/Object;
.source "NotificationServiceImpl.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->cancel(Lcn/yoozworld/watch/utils/notifi/CustomNotification;Landroid/animation/Animator$AnimatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

.field final synthetic val$listener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 96
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$2;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    iput-object p2, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 117
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 118
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$2;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    invoke-static {v0}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->-$$Nest$fgetmWindowManager(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)Landroid/view/WindowManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$2;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    invoke-static {v0}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->-$$Nest$fgetmNotificationContainerView(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$2;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    invoke-static {v0}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->-$$Nest$fgetmNotificationContainerView(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$2;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    invoke-static {v0}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->-$$Nest$fgetmWindowManager(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$2;->this$0:Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    invoke-static {v1}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->-$$Nest$fgetmNotificationContainerView(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_1

    .line 111
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    .line 124
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 125
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationRepeat(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$2;->val$listener:Landroid/animation/Animator$AnimatorListener;

    if-eqz v0, :cond_0

    .line 100
    invoke-interface {v0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    :cond_0
    return-void
.end method
