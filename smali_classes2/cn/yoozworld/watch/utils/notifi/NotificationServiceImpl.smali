.class public Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;
.super Ljava/lang/Object;
.source "NotificationServiceImpl.java"

# interfaces
.implements Lcn/yoozworld/watch/utils/notifi/INotificationService;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/yoozworld/watch/utils/notifi/INotificationService<",
        "Lcn/yoozworld/watch/utils/notifi/CustomNotification;",
        ">;"
    }
.end annotation


# instance fields
.field public mIsShowing:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

.field private final mNotificationManager:Lcn/yoozworld/watch/utils/notifi/NotificationManager;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmNotificationContainerView(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;
    .locals 0

    iget-object p0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNotificationManager(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)Lcn/yoozworld/watch/utils/notifi/NotificationManager;
    .locals 0

    iget-object p0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationManager:Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWindowManager(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)Landroid/view/WindowManager;
    .locals 0

    iget-object p0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mresetAnimation(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->resetAnimation(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcn/yoozworld/watch/utils/notifi/NotificationManager;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationManager:Lcn/yoozworld/watch/utils/notifi/NotificationManager;

    return-void
.end method

.method private initNotificationView(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V
    .locals 5

    .line 144
    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 145
    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->getNotificationView()Lcn/yoozworld/watch/utils/notifi/NotificationView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/yoozworld/watch/utils/notifi/NotificationView;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 146
    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->getNotificationView()Lcn/yoozworld/watch/utils/notifi/NotificationView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/yoozworld/watch/utils/notifi/NotificationView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v1, "window"

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mWindowManager:Landroid/view/WindowManager;

    .line 153
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x2

    .line 154
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 155
    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 156
    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, -0x3

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 157
    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x3e8

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 158
    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x88

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 160
    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v4, 0x30

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 161
    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v4, 0x0

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 162
    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-static {v0}, Lcn/yoozworld/watch/utils/notifi/NotificationUtils;->getNotificationLocationY(Landroid/content/Context;)I

    move-result v4

    iput v4, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 164
    new-instance v1, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    invoke-direct {v1, v0}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    .line 165
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v0, v3, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 166
    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    invoke-virtual {v1, v0}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 167
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    new-instance v1, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$3;

    invoke-direct {v1, p0}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$3;-><init>(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)V

    invoke-virtual {v0, v1}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->setOnDismissListener(Lcn/yoozworld/watch/utils/notifi/OnDismissListener;)V

    .line 173
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->getNotificationView()Lcn/yoozworld/watch/utils/notifi/NotificationView;

    move-result-object v1

    invoke-virtual {v1}, Lcn/yoozworld/watch/utils/notifi/NotificationView;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->addView(Landroid/view/View;)V

    .line 174
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    new-instance v1, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$4;

    invoke-direct {v1, p0}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$4;-><init>(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;)V

    invoke-virtual {v0, v1}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 181
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    iget-boolean p1, p1, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mIsCollapsible:Z

    invoke-virtual {v0, p1}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->setCollapsible(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method private resetAnimation(Landroid/view/View;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 191
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 192
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public cancel(Lcn/yoozworld/watch/utils/notifi/CustomNotification;Landroid/animation/Animator$AnimatorListener;)V
    .locals 2

    .line 91
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    if-nez p1, :cond_0

    return-void

    .line 94
    :cond_0
    invoke-direct {p0, p1}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->resetAnimation(Landroid/view/View;)V

    .line 95
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    invoke-virtual {v0}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 96
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$2;

    invoke-direct {v0, p0, p2}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$2;-><init>(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 129
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    const/4 p1, 0x0

    .line 130
    invoke-virtual {p0, p1}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->changeIsShowing(Z)V

    return-void
.end method

.method public bridge synthetic cancel(Ljava/lang/Object;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 14
    check-cast p1, Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    invoke-virtual {p0, p1, p2}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->cancel(Lcn/yoozworld/watch/utils/notifi/CustomNotification;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public changeIsShowing(Z)V
    .locals 0

    .line 140
    iput-boolean p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mIsShowing:Z

    return-void
.end method

.method public isShowing()Z
    .locals 1

    .line 135
    iget-boolean v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mIsShowing:Z

    return v0
.end method

.method public show(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V
    .locals 3

    const-string v0, "handleShow before addView: mLayoutParams.token"

    const-string v1, "handleShow returned: "

    if-eqz p1, :cond_8

    .line 32
    :try_start_0
    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 36
    :cond_0
    invoke-direct {p0, p1}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->initNotificationView(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V

    .line 37
    iget-object v2, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    if-eqz v2, :cond_3

    .line 38
    invoke-virtual {v2}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mWindowManager:Landroid/view/WindowManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v2, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    invoke-virtual {v1}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcn/yoozworld/watch/utils/notifi/NotificationUtils;->isActivityNotAlive(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p1, "handleShow returned: activity is finishing or destroyed!"

    .line 55
    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/LoggerUtils;->log(Ljava/lang/String;)V

    return-void

    .line 58
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    invoke-virtual {v0}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/yoozworld/watch/utils/notifi/LoggerUtils;->log(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    invoke-virtual {v1}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 60
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    iget-object v2, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string v0, "handleShow after addView"

    .line 61
    invoke-static {v0}, Lcn/yoozworld/watch/utils/notifi/LoggerUtils;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 62
    invoke-virtual {p0, v0}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->changeIsShowing(Z)V

    .line 63
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    new-instance v1, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$1;

    invoke-direct {v1, p0, p1}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl$1;-><init>(Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V

    invoke-virtual {v0, v1}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_3

    :cond_3
    :goto_0
    const-string p1, "unknown"

    .line 42
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mNotificationContainerView:Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;

    if-nez v0, :cond_4

    const-string p1, "mNotificationContainerView == null"

    goto :goto_1

    .line 44
    :cond_4
    invoke-virtual {v0}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_5

    const-string p1, "mNotificationContainerView.getParent() != null"

    goto :goto_1

    .line 46
    :cond_5
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_6

    const-string p1, "mWindowManager == null"

    goto :goto_1

    .line 48
    :cond_6
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v0, :cond_7

    const-string p1, "mLayoutParams == null"

    .line 51
    :cond_7
    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/LoggerUtils;->log(Ljava/lang/String;)V

    return-void

    :cond_8
    :goto_2
    const-string p1, "handleShow returned: mNotification == null || mNotification.getActivity() == null"

    .line 33
    invoke-static {p1}, Lcn/yoozworld/watch/utils/notifi/LoggerUtils;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public bridge synthetic show(Ljava/lang/Object;)V
    .locals 0

    .line 14
    check-cast p1, Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    invoke-virtual {p0, p1}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;->show(Lcn/yoozworld/watch/utils/notifi/CustomNotification;)V

    return-void
.end method
