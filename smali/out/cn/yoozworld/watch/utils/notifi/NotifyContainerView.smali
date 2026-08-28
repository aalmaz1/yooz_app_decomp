.class public Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;
.super Landroid/widget/FrameLayout;
.source "NotifyContainerView.java"


# static fields
.field private static final SLOP:I = 0xa


# instance fields
.field private mIsCollapsible:Z

.field private mIsConsumeTouchEvent:Z

.field private mLastY:F

.field private mOnDismissListener:Lcn/yoozworld/watch/utils/notifi/OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 6

    .line 54
    iget-boolean v0, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mIsCollapsible:Z

    if-nez v0, :cond_9

    .line 55
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 57
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3f

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3c

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_3c

    goto :goto_47

    .line 65
    :cond_1a
    iget-boolean v0, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mIsConsumeTouchEvent:Z

    if-eqz v0, :cond_1f

    goto :goto_47

    .line 68
    :cond_1f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 69
    iget v3, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mLastY:F

    sub-float/2addr v3, v0

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_47

    .line 70
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_47

    .line 72
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mOnDismissListener:Lcn/yoozworld/watch/utils/notifi/OnDismissListener;

    if-eqz p1, :cond_39

    .line 73
    invoke-interface {p1}, Lcn/yoozworld/watch/utils/notifi/OnDismissListener;->onDismiss()V

    .line 75
    :cond_39
    iput-boolean v2, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mIsConsumeTouchEvent:Z

    return v2

    .line 82
    :cond_3c
    iput-boolean v1, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mIsConsumeTouchEvent:Z

    goto :goto_47

    .line 60
    :cond_3f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mLastY:F

    .line 61
    iput-boolean v1, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mIsConsumeTouchEvent:Z

    .line 85
    :cond_47
    :goto_47
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getActivity()Landroid/app/Activity;
    .registers 2

    .line 90
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method public setCollapsible(Z)V
    .registers 2

    .line 45
    iput-boolean p1, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mIsCollapsible:Z

    return-void
.end method

.method public setOnDismissListener(Lcn/yoozworld/watch/utils/notifi/OnDismissListener;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mOnDismissListener:Lcn/yoozworld/watch/utils/notifi/OnDismissListener;

    return-void
.end method
