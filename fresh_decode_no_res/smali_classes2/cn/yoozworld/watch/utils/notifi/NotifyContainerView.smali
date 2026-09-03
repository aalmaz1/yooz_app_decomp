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
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1, v0}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, p2, v0}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 54
    iget-boolean v0, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mIsCollapsible:Z

    if-nez v0, :cond_0

    .line 55
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 57
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    goto :goto_0

    .line 65
    :cond_1
    iget-boolean v0, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mIsConsumeTouchEvent:Z

    if-eqz v0, :cond_2

    goto :goto_0

    .line 68
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    .line 69
    iget v3, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mLastY:F

    sub-float/2addr v3, v0

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, v3, v0

    if-lez v0, :cond_6

    .line 70
    invoke-virtual {p0, v1}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 72
    iget-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mOnDismissListener:Lcn/yoozworld/watch/utils/notifi/OnDismissListener;

    if-eqz p1, :cond_3

    .line 73
    invoke-interface {p1}, Lcn/yoozworld/watch/utils/notifi/OnDismissListener;->onDismiss()V

    .line 75
    :cond_3
    iput-boolean v2, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mIsConsumeTouchEvent:Z

    return v2

    .line 82
    :cond_4
    iput-boolean v1, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mIsConsumeTouchEvent:Z

    goto :goto_0

    .line 60
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mLastY:F

    .line 61
    iput-boolean v1, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mIsConsumeTouchEvent:Z

    .line 85
    :cond_6
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 90
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public setCollapsible(Z)V
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mIsCollapsible:Z

    return-void
.end method

.method public setOnDismissListener(Lcn/yoozworld/watch/utils/notifi/OnDismissListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/yoozworld/watch/utils/notifi/NotifyContainerView;->mOnDismissListener:Lcn/yoozworld/watch/utils/notifi/OnDismissListener;

    return-void
.end method
