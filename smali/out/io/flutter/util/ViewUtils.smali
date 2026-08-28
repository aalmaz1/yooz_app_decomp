.class public final Lio/flutter/util/ViewUtils;
.super Ljava/lang/Object;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/flutter/util/ViewUtils$DisplayUpdater;,
        Lio/flutter/util/ViewUtils$ViewVisitor;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calculateMaximumDisplayMetrics(Landroid/content/Context;Lio/flutter/util/ViewUtils$DisplayUpdater;)V
    .registers 4

    .line 29
    invoke-static {p0}, Lio/flutter/util/ViewUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 32
    invoke-static {}, Landroidx/window/layout/WindowMetricsCalculator;->getOrCreate()Landroidx/window/layout/WindowMetricsCalculator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroidx/window/layout/WindowMetricsCalculator;->computeMaximumWindowMetrics(Landroid/app/Activity;)Landroidx/window/layout/WindowMetrics;

    move-result-object v0

    .line 33
    invoke-virtual {v0}, Landroidx/window/layout/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 34
    invoke-virtual {v0}, Landroidx/window/layout/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->density:F

    .line 36
    invoke-interface {p1, v1, v0, p0}, Lio/flutter/util/ViewUtils$DisplayUpdater;->updateDisplayMetrics(FFF)V

    :cond_2d
    return-void
.end method

.method public static childHasFocus(Landroid/view/View;)Z
    .registers 2

    .line 68
    new-instance v0, Lio/flutter/util/ViewUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lio/flutter/util/ViewUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0, v0}, Lio/flutter/util/ViewUtils;->traverseHierarchy(Landroid/view/View;Lio/flutter/util/ViewUtils$ViewVisitor;)Z

    move-result p0

    return p0
.end method

.method public static getActivity(Landroid/content/Context;)Landroid/app/Activity;
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return-object v0

    .line 51
    :cond_4
    instance-of v1, p0, Landroid/app/Activity;

    if-eqz v1, :cond_b

    .line 52
    check-cast p0, Landroid/app/Activity;

    return-object p0

    .line 54
    :cond_b
    instance-of v1, p0, Landroid/content/ContextWrapper;

    if-eqz v1, :cond_1a

    .line 56
    check-cast p0, Landroid/content/ContextWrapper;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lio/flutter/util/ViewUtils;->getActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object p0

    return-object p0

    :cond_1a
    return-object v0
.end method

.method public static hasChildViewOfType(Landroid/view/View;[Ljava/lang/Class;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "[",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/View;",
            ">;)Z"
        }
    .end annotation

    .line 79
    new-instance v0, Lio/flutter/util/ViewUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lio/flutter/util/ViewUtils$$ExternalSyntheticLambda1;-><init>([Ljava/lang/Class;)V

    invoke-static {p0, v0}, Lio/flutter/util/ViewUtils;->traverseHierarchy(Landroid/view/View;Lio/flutter/util/ViewUtils$ViewVisitor;)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$childHasFocus$0(Landroid/view/View;)Z
    .registers 1

    .line 68
    invoke-virtual {p0}, Landroid/view/View;->hasFocus()Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$hasChildViewOfType$1([Ljava/lang/Class;Landroid/view/View;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 82
    :goto_2
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 83
    aget-object v2, p0, v1

    .line 84
    invoke-virtual {v2, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const/4 p0, 0x1

    return p0

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_12
    return v0
.end method

.method public static traverseHierarchy(Landroid/view/View;Lio/flutter/util/ViewUtils$ViewVisitor;)Z
    .registers 6

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 113
    :cond_4
    invoke-interface {p1, p0}, Lio/flutter/util/ViewUtils$ViewVisitor;->run(Landroid/view/View;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_c

    return v2

    .line 116
    :cond_c
    instance-of v1, p0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_27

    .line 117
    check-cast p0, Landroid/view/ViewGroup;

    move v1, v0

    .line 118
    :goto_13
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_27

    .line 119
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, p1}, Lio/flutter/util/ViewUtils;->traverseHierarchy(Landroid/view/View;Lio/flutter/util/ViewUtils$ViewVisitor;)Z

    move-result v3

    if-eqz v3, :cond_24

    return v2

    :cond_24
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    :cond_27
    return v0
.end method
