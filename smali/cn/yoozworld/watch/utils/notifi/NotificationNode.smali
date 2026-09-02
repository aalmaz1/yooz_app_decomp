.class public Lcn/yoozworld/watch/utils/notifi/NotificationNode;
.super Ljava/lang/Object;
.source "NotificationNode.java"


# static fields
.field public static final ANIM_DURATION:I = 0xc8

.field static final EQUALS:I = 0x0

.field static final ERROR:I = -0x1

.field static final GREATER:I = 0x1

.field static final SMALLER:I = 0x2


# instance fields
.field protected mNotification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;

.field private final notificationService:Lcn/yoozworld/watch/utils/notifi/INotificationService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/yoozworld/watch/utils/notifi/INotificationService<",
            "Lcn/yoozworld/watch/utils/notifi/CustomNotification;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/yoozworld/watch/utils/notifi/CustomNotification;Lcn/yoozworld/watch/utils/notifi/NotificationManager;)V
    .registers 4

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;

    invoke-direct {v0, p2}, Lcn/yoozworld/watch/utils/notifi/NotificationServiceImpl;-><init>(Lcn/yoozworld/watch/utils/notifi/NotificationManager;)V

    iput-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->notificationService:Lcn/yoozworld/watch/utils/notifi/INotificationService;

    .line 31
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->mNotification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    return-void
.end method


# virtual methods
.method changeIsShowing(Z)V
    .registers 3

    .line 43
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->notificationService:Lcn/yoozworld/watch/utils/notifi/INotificationService;

    invoke-interface {v0, p1}, Lcn/yoozworld/watch/utils/notifi/INotificationService;->changeIsShowing(Z)V

    return-void
.end method

.method compareTo(Lcn/yoozworld/watch/utils/notifi/NotificationNode;)I
    .registers 3

    .line 66
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->getNotification()Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->getNotification()Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    move-result-object v0

    if-nez v0, :cond_d

    goto :goto_24

    .line 69
    :cond_d
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->getNotification()Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    move-result-object v0

    iget v0, v0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mPriority:I

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->getNotification()Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    move-result-object p1

    iget p1, p1, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mPriority:I

    sub-int/2addr v0, p1

    if-lez v0, :cond_1e

    const/4 p1, 0x1

    goto :goto_23

    :cond_1e
    if-gez v0, :cond_22

    const/4 p1, 0x2

    goto :goto_23

    :cond_22
    const/4 p1, 0x0

    :goto_23
    return p1

    :cond_24
    :goto_24
    const/4 p1, -0x1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_26

    .line 52
    instance-of v1, p1, Lcn/yoozworld/watch/utils/notifi/NotificationNode;

    if-nez v1, :cond_8

    goto :goto_26

    .line 55
    :cond_8
    move-object v1, p1

    check-cast v1, Lcn/yoozworld/watch/utils/notifi/NotificationNode;

    iget-object v1, v1, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->mNotification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    if-eqz v1, :cond_1f

    .line 56
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->getNotification()Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    move-result-object v2

    if-eqz v2, :cond_1f

    iget v1, v1, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mType:I

    .line 57
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->getNotification()Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    move-result-object v2

    iget v2, v2, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mType:I

    if-eq v1, v2, :cond_25

    :cond_1f
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_26

    :cond_25
    const/4 v0, 0x1

    :cond_26
    :goto_26
    return v0
.end method

.method getNotification()Lcn/yoozworld/watch/utils/notifi/CustomNotification;
    .registers 2

    .line 47
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->mNotification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    return-object v0
.end method

.method getPriority()I
    .registers 2

    .line 35
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->mNotification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_8

    :cond_6
    iget v0, v0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mPriority:I

    :goto_8
    return v0
.end method

.method protected handleHide(Landroid/animation/Animator$AnimatorListener;)V
    .registers 4

    .line 78
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->notificationService:Lcn/yoozworld/watch/utils/notifi/INotificationService;

    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->mNotification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    invoke-interface {v0, v1, p1}, Lcn/yoozworld/watch/utils/notifi/INotificationService;->cancel(Ljava/lang/Object;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method protected handleShow()V
    .registers 3

    .line 74
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->notificationService:Lcn/yoozworld/watch/utils/notifi/INotificationService;

    iget-object v1, p0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->mNotification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    invoke-interface {v0, v1}, Lcn/yoozworld/watch/utils/notifi/INotificationService;->show(Ljava/lang/Object;)V

    return-void
.end method

.method public hashCode()I
    .registers 2

    .line 62
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->mNotification:Lcn/yoozworld/watch/utils/notifi/CustomNotification;

    if-nez v0, :cond_6

    const/4 v0, -0x1

    goto :goto_8

    :cond_6
    iget v0, v0, Lcn/yoozworld/watch/utils/notifi/CustomNotification;->mType:I

    :goto_8
    return v0
.end method

.method isShowing()Z
    .registers 2

    .line 39
    iget-object v0, p0, Lcn/yoozworld/watch/utils/notifi/NotificationNode;->notificationService:Lcn/yoozworld/watch/utils/notifi/INotificationService;

    invoke-interface {v0}, Lcn/yoozworld/watch/utils/notifi/INotificationService;->isShowing()Z

    move-result v0

    return v0
.end method
