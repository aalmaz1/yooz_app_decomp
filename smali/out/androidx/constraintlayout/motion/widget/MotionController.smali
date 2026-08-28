.class public Landroidx/constraintlayout/motion/widget/MotionController;
.super Ljava/lang/Object;
.source "MotionController.java"


# static fields
.field private static final DEBUG:Z = false

.field public static final DRAW_PATH_AS_CONFIGURED:I = 0x4

.field public static final DRAW_PATH_BASIC:I = 0x1

.field public static final DRAW_PATH_CARTESIAN:I = 0x3

.field public static final DRAW_PATH_NONE:I = 0x0

.field public static final DRAW_PATH_RECTANGLE:I = 0x5

.field public static final DRAW_PATH_RELATIVE:I = 0x2

.field public static final DRAW_PATH_SCREEN:I = 0x6

.field private static final FAVOR_FIXED_SIZE_VIEWS:Z = false

.field public static final HORIZONTAL_PATH_X:I = 0x2

.field public static final HORIZONTAL_PATH_Y:I = 0x3

.field public static final PATH_PERCENT:I = 0x0

.field public static final PATH_PERPENDICULAR:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MotionController"

.field public static final VERTICAL_PATH_X:I = 0x4

.field public static final VERTICAL_PATH_Y:I = 0x5


# instance fields
.field private MAX_DIMENSION:I

.field attributeTable:[Ljava/lang/String;

.field private mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

.field private mAttributeInterpCount:[I

.field private mAttributeNames:[Ljava/lang/String;

.field private mAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/SplineSet;",
            ">;"
        }
    .end annotation
.end field

.field mConstraintTag:Ljava/lang/String;

.field private mCurveFitType:I

.field private mCycleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;",
            ">;"
        }
    .end annotation
.end field

.field private mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field private mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field mId:I

.field private mInterpolateData:[D

.field private mInterpolateVariables:[I

.field private mInterpolateVelocity:[D

.field private mKeyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

.field private mMotionPaths:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/MotionPaths;",
            ">;"
        }
    .end annotation
.end field

.field mMotionStagger:F

.field private mPathMotionArc:I

.field private mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

.field mStaggerOffset:F

.field mStaggerScale:F

.field private mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

.field private mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

.field private mTimeCycleAttributesMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;",
            ">;"
        }
    .end annotation
.end field

.field private mValuesBuff:[F

.field private mVelocity:[F

.field mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .registers 3

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 71
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 72
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 73
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 75
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 76
    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 80
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    const/4 v0, 0x0

    .line 81
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    const/4 v0, 0x4

    .line 89
    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->MAX_DIMENSION:I

    new-array v0, v0, [F

    .line 90
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    const/4 v0, 0x1

    new-array v0, v0, [F

    .line 92
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    .line 94
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 99
    sget v0, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    .line 106
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/MotionController;->setView(Landroid/view/View;)V

    return-void
.end method

.method private getAdjustedPosition(F[F)F
    .registers 14

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz p2, :cond_9

    .line 877
    aput v1, p2, v2

    goto :goto_24

    .line 878
    :cond_9
    iget v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    float-to-double v4, v3

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v4, v6

    if-eqz v4, :cond_24

    .line 879
    iget v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    cmpg-float v5, p1, v4

    if-gez v5, :cond_19

    move p1, v0

    :cond_19
    cmpl-float v5, p1, v4

    if-lez v5, :cond_24

    float-to-double v8, p1

    cmpg-double v5, v8, v6

    if-gez v5, :cond_24

    sub-float/2addr p1, v4

    mul-float/2addr p1, v3

    .line 890
    :cond_24
    :goto_24
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 893
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const/high16 v5, 0x7fc00000    # Float.NaN

    :cond_30
    :goto_30
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_57

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 894
    iget-object v7, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    if-eqz v7, :cond_30

    .line 895
    iget v7, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    cmpg-float v7, v7, p1

    if-gez v7, :cond_4e

    .line 896
    iget-object v0, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 897
    iget v3, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move v10, v3

    move-object v3, v0

    move v0, v10

    goto :goto_30

    .line 899
    :cond_4e
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_30

    .line 900
    iget v5, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    goto :goto_30

    :cond_57
    if-eqz v3, :cond_75

    .line 907
    invoke-static {v5}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_60

    goto :goto_61

    :cond_60
    move v1, v5

    :goto_61
    sub-float/2addr p1, v0

    sub-float/2addr v1, v0

    div-float/2addr p1, v1

    float-to-double v4, p1

    .line 911
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/motion/utils/Easing;->get(D)D

    move-result-wide v6

    double-to-float p1, v6

    mul-float/2addr p1, v1

    add-float/2addr p1, v0

    if-eqz p2, :cond_75

    .line 914
    invoke-virtual {v3, v4, v5}, Landroidx/constraintlayout/motion/utils/Easing;->getDiff(D)D

    move-result-wide v0

    double-to-float v0, v0

    aput v0, p2, v2

    :cond_75
    return p1
.end method

.method private getPreCycleDistance()F
    .registers 20

    move-object/from16 v0, p0

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/16 v2, 0x63

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    const-wide/16 v5, 0x0

    move-wide v8, v5

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_11
    const/16 v12, 0x64

    if-ge v10, v12, :cond_9d

    int-to-float v12, v10

    mul-float/2addr v12, v2

    float-to-double v13, v12

    .line 277
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v15, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 280
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/high16 v16, 0x7fc00000    # Float.NaN

    const/16 v17, 0x0

    :cond_26
    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_51

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 281
    iget-object v7, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    if-eqz v7, :cond_26

    .line 282
    iget v7, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    cmpg-float v7, v7, v12

    if-gez v7, :cond_46

    .line 283
    iget-object v7, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 284
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move/from16 v17, v4

    move-object v15, v7

    goto :goto_26

    .line 286
    :cond_46
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_26

    .line 287
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move/from16 v16, v4

    goto :goto_26

    :cond_51
    if-eqz v15, :cond_6c

    .line 294
    invoke-static/range {v16 .. v16}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_5b

    const/high16 v16, 0x3f800000    # 1.0f

    :cond_5b
    sub-float v12, v12, v17

    sub-float v16, v16, v17

    div-float v12, v12, v16

    float-to-double v3, v12

    .line 298
    invoke-virtual {v15, v3, v4}, Landroidx/constraintlayout/motion/utils/Easing;->get(D)D

    move-result-wide v3

    double-to-float v3, v3

    mul-float v3, v3, v16

    add-float v3, v3, v17

    float-to-double v13, v3

    .line 303
    :cond_6c
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v3, v13, v14, v7}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 304
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v3, v7, v12, v1, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter([I[D[FI)V

    const/4 v3, 0x1

    if-lez v10, :cond_91

    float-to-double v11, v11

    aget v7, v1, v3

    float-to-double v13, v7

    sub-double/2addr v8, v13

    aget v7, v1, v4

    float-to-double v13, v7

    sub-double/2addr v5, v13

    .line 306
    invoke-static {v8, v9, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    add-double/2addr v11, v5

    double-to-float v11, v11

    :cond_91
    aget v5, v1, v4

    float-to-double v5, v5

    aget v3, v1, v3

    float-to-double v8, v3

    add-int/lit8 v10, v10, 0x1

    const/high16 v3, 0x3f800000    # 1.0f

    goto/16 :goto_11

    :cond_9d
    return v11
.end method

.method private insertKey(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .registers 5

    .line 444
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-static {v0, p1}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_24

    .line 446
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, " KeyPath positon \""

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" outside of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MotionController"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_24
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V
    .registers 6

    .line 826
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    float-to-int v0, v0

    int-to-float v0, v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    return-void
.end method


# virtual methods
.method addKey(Landroidx/constraintlayout/motion/widget/Key;)V
    .registers 3

    .line 461
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method addKeys(Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/motion/widget/Key;",
            ">;)V"
        }
    .end annotation

    .line 452
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method buildBounds([FI)V
    .registers 19

    move-object/from16 v0, p0

    move/from16 v1, p2

    add-int/lit8 v2, v1, -0x1

    int-to-float v2, v2

    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, v2

    .line 212
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string/jumbo v5, "translationX"

    if-nez v4, :cond_13

    goto :goto_19

    :cond_13
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 213
    :goto_19
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string/jumbo v6, "translationY"

    if-nez v4, :cond_21

    goto :goto_27

    :cond_21
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 214
    :goto_27
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v4, :cond_2c

    goto :goto_32

    :cond_2c
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 215
    :goto_32
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v4, :cond_37

    goto :goto_3d

    :cond_37
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    :goto_3d
    const/4 v4, 0x0

    move v5, v4

    :goto_3f
    if-ge v5, v1, :cond_cd

    int-to-float v6, v5

    mul-float/2addr v6, v2

    .line 219
    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    cmpl-float v8, v7, v3

    const/4 v9, 0x0

    if-eqz v8, :cond_5e

    .line 220
    iget v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    cmpg-float v10, v6, v8

    if-gez v10, :cond_51

    move v6, v9

    :cond_51
    cmpl-float v10, v6, v8

    if-lez v10, :cond_5e

    float-to-double v10, v6

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v10, v10, v12

    if-gez v10, :cond_5e

    sub-float/2addr v6, v8

    mul-float/2addr v6, v7

    :cond_5e
    float-to-double v7, v6

    .line 230
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 233
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    const/high16 v12, 0x7fc00000    # Float.NaN

    :cond_6b
    :goto_6b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_92

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 234
    iget-object v14, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    if-eqz v14, :cond_6b

    .line 235
    iget v14, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    cmpg-float v14, v14, v6

    if-gez v14, :cond_89

    .line 236
    iget-object v9, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 237
    iget v10, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move v15, v10

    move-object v10, v9

    move v9, v15

    goto :goto_6b

    .line 239
    :cond_89
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v14

    if-eqz v14, :cond_6b

    .line 240
    iget v12, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    goto :goto_6b

    :cond_92
    if-eqz v10, :cond_a7

    .line 247
    invoke-static {v12}, Ljava/lang/Float;->isNaN(F)Z

    move-result v7

    if-eqz v7, :cond_9b

    move v12, v3

    :cond_9b
    sub-float/2addr v6, v9

    sub-float/2addr v12, v9

    div-float/2addr v6, v12

    float-to-double v6, v6

    .line 251
    invoke-virtual {v10, v6, v7}, Landroidx/constraintlayout/motion/utils/Easing;->get(D)D

    move-result-wide v6

    double-to-float v6, v6

    mul-float/2addr v6, v12

    add-float/2addr v6, v9

    float-to-double v7, v6

    .line 256
    :cond_a7
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v6, v6, v4

    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v6, v7, v8, v9}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 257
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    if-eqz v6, :cond_bc

    .line 258
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v10, v9

    if-lez v10, :cond_bc

    .line 259
    invoke-virtual {v6, v7, v8, v9}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 262
    :cond_bc
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    mul-int/lit8 v9, v5, 0x2

    move-object/from16 v10, p1

    invoke-virtual {v6, v7, v8, v10, v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getBounds([I[D[FI)V

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_3f

    :cond_cd
    return-void
.end method

.method buildKeyBounds([F[I)I
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_49

    .line 359
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/utils/CurveFit;->getTimePoints()[D

    move-result-object v1

    if-eqz p2, :cond_28

    .line 361
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionPaths;

    add-int/lit8 v5, v3, 0x1

    .line 362
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    aput v4, p2, v3

    move v3, v5

    goto :goto_14

    :cond_28
    move p2, v0

    move v2, p2

    .line 367
    :goto_2a
    array-length v3, v1

    if-ge p2, v3, :cond_46

    .line 368
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v3, v3, v0

    aget-wide v4, v1, p2

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 369
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v3, v4, v5, p1, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getBounds([I[D[FI)V

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2a

    .line 372
    :cond_46
    div-int/lit8 v2, v2, 0x2

    return v2

    :cond_49
    return v0
.end method

.method buildKeyFrames([F[I)I
    .registers 10

    const/4 v0, 0x0

    if-eqz p1, :cond_49

    .line 338
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroidx/constraintlayout/motion/utils/CurveFit;->getTimePoints()[D

    move-result-object v1

    if-eqz p2, :cond_28

    .line 340
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v0

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_28

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionPaths;

    add-int/lit8 v5, v3, 0x1

    .line 341
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mMode:I

    aput v4, p2, v3

    move v3, v5

    goto :goto_14

    :cond_28
    move p2, v0

    move v2, p2

    .line 346
    :goto_2a
    array-length v3, v1

    if-ge p2, v3, :cond_46

    .line 347
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v3, v3, v0

    aget-wide v4, v1, p2

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v3, v4, v5, v6}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 348
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v3, v4, v5, p1, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter([I[D[FI)V

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 p2, p2, 0x1

    goto :goto_2a

    .line 351
    :cond_46
    div-int/lit8 v2, v2, 0x2

    return v2

    :cond_49
    return v0
.end method

.method buildPath([FI)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    add-int/lit8 v3, v2, -0x1

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v3, v4, v3

    .line 136
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string/jumbo v6, "translationX"

    const/4 v7, 0x0

    if-nez v5, :cond_17

    move-object v5, v7

    goto :goto_1d

    :cond_17
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 137
    :goto_1d
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string/jumbo v9, "translationY"

    if-nez v8, :cond_26

    move-object v8, v7

    goto :goto_2c

    :cond_26
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 138
    :goto_2c
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v10, :cond_32

    move-object v6, v7

    goto :goto_38

    :cond_32
    invoke-virtual {v10, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 139
    :goto_38
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v10, :cond_3d

    goto :goto_43

    :cond_3d
    invoke-virtual {v10, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    :goto_43
    const/4 v10, 0x0

    :goto_44
    if-ge v10, v2, :cond_112

    int-to-float v11, v10

    mul-float/2addr v11, v3

    .line 143
    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerScale:F

    cmpl-float v13, v12, v4

    if-eqz v13, :cond_62

    .line 144
    iget v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStaggerOffset:F

    cmpg-float v15, v11, v13

    if-gez v15, :cond_55

    const/4 v11, 0x0

    :cond_55
    cmpl-float v15, v11, v13

    if-lez v15, :cond_62

    float-to-double v14, v11

    const-wide/high16 v17, 0x3ff0000000000000L    # 1.0

    cmpg-double v14, v14, v17

    if-gez v14, :cond_62

    sub-float/2addr v11, v13

    mul-float/2addr v11, v12

    :cond_62
    float-to-double v12, v11

    .line 154
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v14, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 157
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    const/high16 v17, 0x7fc00000    # Float.NaN

    const/16 v16, 0x0

    :goto_71
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9e

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v4, v18

    check-cast v4, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 158
    iget-object v9, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    if-eqz v9, :cond_9b

    .line 159
    iget v9, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    cmpg-float v9, v9, v11

    if-gez v9, :cond_91

    .line 160
    iget-object v9, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->mKeyFrameEasing:Landroidx/constraintlayout/motion/utils/Easing;

    .line 161
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move/from16 v16, v4

    move-object v14, v9

    goto :goto_9b

    .line 163
    :cond_91
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    if-eqz v9, :cond_9b

    .line 164
    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    move/from16 v17, v4

    :cond_9b
    :goto_9b
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_71

    :cond_9e
    if-eqz v14, :cond_b9

    .line 171
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->isNaN(F)Z

    move-result v4

    if-eqz v4, :cond_a8

    const/high16 v17, 0x3f800000    # 1.0f

    :cond_a8
    sub-float v4, v11, v16

    sub-float v17, v17, v16

    div-float v4, v4, v17

    float-to-double v12, v4

    .line 175
    invoke-virtual {v14, v12, v13}, Landroidx/constraintlayout/motion/utils/Easing;->get(D)D

    move-result-wide v12

    double-to-float v4, v12

    mul-float v4, v4, v17

    add-float v4, v4, v16

    float-to-double v12, v4

    .line 180
    :cond_b9
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v9, 0x0

    aget-object v4, v4, v9

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v4, v12, v13, v14}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 181
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    if-eqz v4, :cond_cf

    .line 182
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v15, v14

    if-lez v15, :cond_cf

    .line 183
    invoke-virtual {v4, v12, v13, v14}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 186
    :cond_cf
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    mul-int/lit8 v14, v10, 0x2

    invoke-virtual {v4, v12, v13, v1, v14}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter([I[D[FI)V

    if-eqz v6, :cond_e6

    .line 189
    aget v4, v1, v14

    invoke-virtual {v6, v11}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->get(F)F

    move-result v12

    add-float/2addr v4, v12

    aput v4, v1, v14

    goto :goto_f1

    :cond_e6
    if-eqz v5, :cond_f1

    .line 191
    aget v4, v1, v14

    invoke-virtual {v5, v11}, Landroidx/constraintlayout/motion/widget/SplineSet;->get(F)F

    move-result v12

    add-float/2addr v4, v12

    aput v4, v1, v14

    :cond_f1
    :goto_f1
    if-eqz v7, :cond_ff

    add-int/lit8 v14, v14, 0x1

    .line 194
    aget v4, v1, v14

    invoke-virtual {v7, v11}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->get(F)F

    move-result v11

    add-float/2addr v4, v11

    aput v4, v1, v14

    goto :goto_10c

    :cond_ff
    if-eqz v8, :cond_10c

    add-int/lit8 v14, v14, 0x1

    .line 196
    aget v4, v1, v14

    invoke-virtual {v8, v11}, Landroidx/constraintlayout/motion/widget/SplineSet;->get(F)F

    move-result v11

    add-float/2addr v4, v11

    aput v4, v1, v14

    :cond_10c
    :goto_10c
    add-int/lit8 v10, v10, 0x1

    const/high16 v4, 0x3f800000    # 1.0f

    goto/16 :goto_44

    :cond_112
    return-void
.end method

.method buildRect(F[FI)V
    .registers 7

    const/4 v0, 0x0

    .line 392
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result p1

    .line 393
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    float-to-double v1, p1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v0, v1, v2, p1}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 394
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {p1, v0, v1, p2, p3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getRect([I[D[FI)V

    return-void
.end method

.method buildRectangles([FI)V
    .registers 10

    add-int/lit8 v0, p2, -0x1

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float/2addr v1, v0

    const/4 v0, 0x0

    move v2, v0

    :goto_8
    if-ge v2, p2, :cond_29

    int-to-float v3, v2

    mul-float/2addr v3, v1

    const/4 v4, 0x0

    .line 401
    invoke-direct {p0, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v3

    .line 402
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v4, v4, v0

    float-to-double v5, v3

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v4, v5, v6, v3}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 403
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    mul-int/lit8 v6, v2, 0x8

    invoke-virtual {v3, v4, v5, p1, v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getRect([I[D[FI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_29
    return-void
.end method

.method getAttributeValues(Ljava/lang/String;[FI)I
    .registers 5

    .line 381
    iget-object p3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/motion/widget/SplineSet;

    if-nez p1, :cond_c

    const/4 p1, -0x1

    return p1

    :cond_c
    const/4 p3, 0x0

    .line 385
    :goto_d
    array-length v0, p2

    if-ge p3, v0, :cond_1f

    .line 386
    array-length v0, p2

    add-int/lit8 v0, v0, -0x1

    div-int v0, p3, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroidx/constraintlayout/motion/widget/SplineSet;->get(F)F

    move-result v0

    aput v0, p2, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_d

    .line 388
    :cond_1f
    array-length p1, p2

    return p1
.end method

.method getDpDt(FFF[F)V
    .registers 16

    .line 1054
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result p1

    .line 1056
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v1, 0x0

    if-eqz v0, :cond_5d

    .line 1057
    aget-object v0, v0, v1

    float-to-double v2, p1

    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v0, v2, v3, p1}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 1058
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object p1, p1, v1

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1059
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    aget p1, p1, v1

    .line 1060
    :goto_20
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    array-length v0, v9

    if-ge v1, v0, :cond_2e

    .line 1061
    aget-wide v4, v9, v1

    float-to-double v6, p1

    mul-double/2addr v4, v6

    aput-wide v4, v9, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    .line 1064
    :cond_2e
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    if-eqz p1, :cond_50

    .line 1065
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v1, v0

    if-lez v1, :cond_4f

    .line 1066
    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1067
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {p1, v2, v3, v0}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 1068
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    :cond_4f
    return-void

    .line 1072
    :cond_50
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    move v5, p2

    move v6, p3

    move-object v7, p4

    invoke-virtual/range {v4 .. v10}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    return-void

    .line 1076
    :cond_5d
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget p1, p1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float/2addr p1, v0

    .line 1077
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float/2addr v0, v2

    .line 1078
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v2, v3

    .line 1079
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v3, v4

    add-float/2addr v2, p1

    add-float/2addr v3, v0

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v5, v4, p2

    mul-float/2addr p1, v5

    mul-float/2addr v2, p2

    add-float/2addr p1, v2

    .line 1082
    aput p1, p4, v1

    sub-float/2addr v4, p3

    mul-float/2addr v0, v4

    mul-float/2addr v3, p3

    add-float/2addr v0, v3

    const/4 p1, 0x1

    .line 1083
    aput v0, p4, p1

    return-void
.end method

.method public getDrawPath()I
    .registers 4

    .line 1167
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    .line 1168
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 1169
    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_a

    .line 1171
    :cond_1d
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method getFinalX()F
    .registers 2

    .line 118
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    return v0
.end method

.method getFinalY()F
    .registers 2

    .line 122
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    return v0
.end method

.method getKeyFrame(I)Landroidx/constraintlayout/motion/widget/MotionPaths;
    .registers 3

    .line 102
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/motion/widget/MotionPaths;

    return-object p1
.end method

.method public getKeyFrameInfo(I[I)I
    .registers 15

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 1239
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_80

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/Key;

    .line 1240
    iget v6, v5, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    if-eq v6, p1, :cond_20

    const/4 v6, -0x1

    if-ne p1, v6, :cond_20

    goto :goto_c

    .line 1244
    :cond_20
    aput v2, p2, v4

    add-int/lit8 v6, v4, 0x1

    .line 1246
    iget v7, v5, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    aput v7, p2, v6

    const/4 v7, 0x1

    add-int/2addr v6, v7

    .line 1247
    iget v8, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    aput v8, p2, v6

    .line 1249
    iget v8, v5, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v8, v8

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v8, v9

    .line 1250
    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v9, v9, v2

    float-to-double v10, v8

    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v9, v10, v11, v8}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1251
    iget-object v8, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v9, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v10, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v8, v9, v10, v0, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter([I[D[FI)V

    add-int/2addr v6, v7

    aget v8, v0, v2

    .line 1252
    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    aput v8, p2, v6

    add-int/2addr v6, v7

    aget v8, v0, v7

    .line 1253
    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    aput v8, p2, v6

    .line 1254
    instance-of v8, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;

    if-eqz v8, :cond_77

    .line 1255
    check-cast v5, Landroidx/constraintlayout/motion/widget/KeyPosition;

    add-int/lit8 v6, v6, 0x1

    .line 1256
    iget v8, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    aput v8, p2, v6

    add-int/2addr v6, v7

    .line 1258
    iget v8, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    aput v8, p2, v6

    add-int/2addr v6, v7

    .line 1259
    iget v5, v5, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    invoke-static {v5}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v5

    aput v5, p2, v6

    :cond_77
    add-int/2addr v6, v7

    sub-int v5, v6, v4

    .line 1262
    aput v5, p2, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_c

    :cond_80
    return v3
.end method

.method getKeyFrameParameter(IFF)F
    .registers 13

    .line 409
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float/2addr v0, v1

    .line 410
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float/2addr v1, v2

    .line 411
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 412
    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    div-float/2addr v5, v4

    add-float/2addr v3, v5

    float-to-double v4, v0

    float-to-double v6, v1

    .line 413
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    double-to-float v4, v4

    float-to-double v5, v4

    const-wide v7, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpg-double v5, v5, v7

    if-gez v5, :cond_3c

    const/high16 p1, 0x7fc00000    # Float.NaN

    return p1

    :cond_3c
    sub-float/2addr p2, v2

    sub-float/2addr p3, v3

    float-to-double v2, p2

    float-to-double v5, p3

    .line 420
    invoke-static {v2, v3, v5, v6}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_4b

    return v3

    :cond_4b
    mul-float v2, p2, v0

    mul-float v5, p3, v1

    add-float/2addr v2, v5

    if-eqz p1, :cond_74

    const/4 v5, 0x1

    if-eq p1, v5, :cond_6a

    const/4 v2, 0x2

    if-eq p1, v2, :cond_68

    const/4 v2, 0x3

    if-eq p1, v2, :cond_66

    const/4 v0, 0x4

    if-eq p1, v0, :cond_64

    const/4 p2, 0x5

    if-eq p1, p2, :cond_62

    return v3

    :cond_62
    div-float/2addr p3, v1

    return p3

    :cond_64
    div-float/2addr p2, v1

    return p2

    :cond_66
    div-float/2addr p3, v0

    return p3

    :cond_68
    div-float/2addr p2, v0

    return p2

    :cond_6a
    mul-float/2addr v4, v4

    mul-float/2addr v2, v2

    sub-float/2addr v4, v2

    float-to-double p1, v4

    .line 430
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1

    :cond_74
    div-float/2addr v2, v4

    return v2
.end method

.method getPositionKeyframe(IIFF)Landroidx/constraintlayout/motion/widget/KeyPositionBase;
    .registers 16

    .line 315
    new-instance v7, Landroid/graphics/RectF;

    invoke-direct {v7}, Landroid/graphics/RectF;-><init>()V

    .line 316
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iput v0, v7, Landroid/graphics/RectF;->left:F

    .line 317
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iput v0, v7, Landroid/graphics/RectF;->top:F

    .line 318
    iget v0, v7, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v0, v1

    iput v0, v7, Landroid/graphics/RectF;->right:F

    .line 319
    iget v0, v7, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    add-float/2addr v0, v1

    iput v0, v7, Landroid/graphics/RectF;->bottom:F

    .line 320
    new-instance v8, Landroid/graphics/RectF;

    invoke-direct {v8}, Landroid/graphics/RectF;-><init>()V

    .line 321
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iput v0, v8, Landroid/graphics/RectF;->left:F

    .line 322
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iput v0, v8, Landroid/graphics/RectF;->top:F

    .line 323
    iget v0, v8, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v0, v1

    iput v0, v8, Landroid/graphics/RectF;->right:F

    .line 324
    iget v0, v8, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    add-float/2addr v0, v1

    iput v0, v8, Landroid/graphics/RectF;->bottom:F

    .line 325
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_4c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/motion/widget/Key;

    .line 326
    instance-of v1, v0, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    if-eqz v1, :cond_4c

    .line 327
    move-object v10, v0

    check-cast v10, Landroidx/constraintlayout/motion/widget/KeyPositionBase;

    move-object v0, v10

    move v1, p1

    move v2, p2

    move-object v3, v7

    move-object v4, v8

    move v5, p3

    move v6, p4

    invoke-virtual/range {v0 .. v6}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->intersects(IILandroid/graphics/RectF;Landroid/graphics/RectF;FF)Z

    move-result v0

    if-eqz v0, :cond_4c

    return-object v10

    :cond_6d
    const/4 p1, 0x0

    return-object p1
.end method

.method getPostLayoutDvDp(FIIFF[F)V
    .registers 26

    move-object/from16 v0, p0

    .line 1101
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    move/from16 v2, p1

    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v1

    .line 1103
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string/jumbo v3, "translationX"

    const/4 v4, 0x0

    if-nez v2, :cond_14

    move-object v2, v4

    goto :goto_1a

    :cond_14
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 1104
    :goto_1a
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string/jumbo v6, "translationY"

    if-nez v5, :cond_23

    move-object v5, v4

    goto :goto_29

    :cond_23
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 1105
    :goto_29
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string v8, "rotation"

    if-nez v7, :cond_31

    move-object v7, v4

    goto :goto_37

    :cond_31
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 1106
    :goto_37
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string v10, "scaleX"

    if-nez v9, :cond_3f

    move-object v9, v4

    goto :goto_45

    :cond_3f
    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 1107
    :goto_45
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const-string v12, "scaleY"

    if-nez v11, :cond_4d

    move-object v11, v4

    goto :goto_53

    :cond_4d
    invoke-virtual {v11, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 1109
    :goto_53
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v13, :cond_59

    move-object v3, v4

    goto :goto_5f

    :cond_59
    invoke-virtual {v13, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 1110
    :goto_5f
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v13, :cond_65

    move-object v6, v4

    goto :goto_6b

    :cond_65
    invoke-virtual {v13, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 1111
    :goto_6b
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v13, :cond_71

    move-object v8, v4

    goto :goto_77

    :cond_71
    invoke-virtual {v13, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 1112
    :goto_77
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v13, :cond_7d

    move-object v10, v4

    goto :goto_83

    :cond_7d
    invoke-virtual {v13, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 1113
    :goto_83
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-nez v13, :cond_88

    goto :goto_8e

    :cond_88
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 1115
    :goto_8e
    new-instance v12, Landroidx/constraintlayout/motion/utils/VelocityMatrix;

    invoke-direct {v12}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;-><init>()V

    .line 1116
    invoke-virtual {v12}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->clear()V

    .line 1117
    invoke-virtual {v12, v7, v1}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;F)V

    .line 1118
    invoke-virtual {v12, v2, v5, v1}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;Landroidx/constraintlayout/motion/widget/SplineSet;F)V

    .line 1119
    invoke-virtual {v12, v9, v11, v1}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;Landroidx/constraintlayout/motion/widget/SplineSet;F)V

    .line 1120
    invoke-virtual {v12, v8, v1}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V

    .line 1121
    invoke-virtual {v12, v3, v6, v1}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V

    .line 1122
    invoke-virtual {v12, v10, v4, v1}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V

    .line 1123
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    if-eqz v13, :cond_dc

    .line 1124
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v3, v2

    if-lez v3, :cond_cd

    float-to-double v3, v1

    .line 1125
    invoke-virtual {v13, v3, v4, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1126
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 1127
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    :cond_cd
    move-object v1, v12

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p6

    .line 1129
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    return-void

    .line 1132
    :cond_dc
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v14, 0x0

    if-eqz v13, :cond_126

    .line 1133
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v1

    .line 1134
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v2, v2, v14

    float-to-double v3, v1

    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v2, v3, v4, v1}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 1135
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v1, v1, v14

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v1, v3, v4, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1136
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mVelocity:[F

    aget v1, v1, v14

    .line 1137
    :goto_fe
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    array-length v2, v6

    if-ge v14, v2, :cond_10c

    .line 1138
    aget-wide v2, v6, v14

    float-to-double v4, v1

    mul-double/2addr v2, v4

    aput-wide v2, v6, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_fe

    .line 1140
    :cond_10c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p6

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setDpDt(FF[F[I[D[D)V

    move-object v1, v12

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p6

    .line 1142
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    return-void

    .line 1147
    :cond_126
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v13, v13, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v15, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float/2addr v13, v15

    .line 1148
    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v15, v15, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v14, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float/2addr v15, v14

    .line 1149
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v14, v14, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    move-object/from16 v16, v4

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v14, v4

    .line 1150
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    move-object/from16 v17, v10

    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v4, v10

    add-float/2addr v14, v13

    add-float/2addr v4, v15

    const/high16 v10, 0x3f800000    # 1.0f

    sub-float v18, v10, p4

    mul-float v13, v13, v18

    mul-float v14, v14, p4

    add-float/2addr v13, v14

    const/4 v14, 0x0

    .line 1153
    aput v13, p6, v14

    sub-float v10, v10, p5

    mul-float/2addr v15, v10

    mul-float v4, v4, p5

    add-float/2addr v15, v4

    const/4 v4, 0x1

    .line 1154
    aput v15, p6, v4

    .line 1156
    invoke-virtual {v12}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->clear()V

    .line 1157
    invoke-virtual {v12, v7, v1}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;F)V

    .line 1158
    invoke-virtual {v12, v2, v5, v1}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;Landroidx/constraintlayout/motion/widget/SplineSet;F)V

    .line 1159
    invoke-virtual {v12, v9, v11, v1}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/motion/widget/SplineSet;Landroidx/constraintlayout/motion/widget/SplineSet;F)V

    .line 1160
    invoke-virtual {v12, v8, v1}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setRotationVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V

    .line 1161
    invoke-virtual {v12, v3, v6, v1}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setTranslationVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V

    move-object/from16 v4, v16

    move-object/from16 v10, v17

    .line 1162
    invoke-virtual {v12, v10, v4, v1}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->setScaleVelocity(Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;F)V

    move-object v1, v12

    move/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p2

    move/from16 v5, p3

    move-object/from16 v6, p6

    .line 1163
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/utils/VelocityMatrix;->applyTransform(FFII[F)V

    return-void
.end method

.method getStartX()F
    .registers 2

    .line 110
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    return v0
.end method

.method getStartY()F
    .registers 2

    .line 114
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    return v0
.end method

.method public getkeyFramePositions([I[F)I
    .registers 11

    .line 1208
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/motion/widget/Key;

    add-int/lit8 v5, v2, 0x1

    .line 1209
    iget v6, v4, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    iget v7, v4, Landroidx/constraintlayout/motion/widget/Key;->mType:I

    mul-int/lit16 v7, v7, 0x3e8

    add-int/2addr v6, v7

    aput v6, p1, v2

    .line 1210
    iget v2, v4, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    int-to-float v2, v2

    const/high16 v4, 0x42c80000    # 100.0f

    div-float/2addr v2, v4

    .line 1211
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v4, v4, v1

    float-to-double v6, v2

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v4, v6, v7, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 1212
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v2, v4, v6, p2, v3}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCenter([I[D[FI)V

    add-int/lit8 v3, v3, 0x2

    move v2, v5

    goto :goto_9

    :cond_3d
    return v2
.end method

.method interpolate(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z
    .registers 28

    move-object/from16 v0, p0

    move-object/from16 v11, p1

    const/4 v1, 0x0

    move/from16 v2, p2

    .line 932
    invoke-direct {v0, v2, v1}, Landroidx/constraintlayout/motion/widget/MotionController;->getAdjustedPosition(F[F)F

    move-result v12

    .line 935
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-eqz v2, :cond_27

    .line 936
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_27

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 937
    invoke-virtual {v3, v11, v12}, Landroidx/constraintlayout/motion/widget/SplineSet;->setProperty(Landroid/view/View;F)V

    goto :goto_17

    .line 941
    :cond_27
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    const/4 v13, 0x0

    if-eqz v2, :cond_59

    .line 942
    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-object v8, v1

    move v9, v13

    :goto_36
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;

    .line 943
    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;

    if-eqz v2, :cond_4a

    .line 944
    move-object v8, v1

    check-cast v8, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;

    goto :goto_36

    :cond_4a
    move-object/from16 v2, p1

    move v3, v12

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    .line 947
    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setProperty(Landroid/view/View;FJLandroidx/constraintlayout/motion/widget/KeyCache;)Z

    move-result v1

    or-int/2addr v9, v1

    goto :goto_36

    :cond_57
    move v14, v9

    goto :goto_5b

    :cond_59
    move-object v8, v1

    move v14, v13

    .line 953
    :goto_5b
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    const/4 v15, 0x1

    if-eqz v1, :cond_143

    .line 954
    aget-object v1, v1, v13

    float-to-double v9, v12

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    invoke-virtual {v1, v9, v10, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 955
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    aget-object v1, v1, v13

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v9, v10, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 956
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    if-eqz v1, :cond_84

    .line 957
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    array-length v3, v2

    if-lez v3, :cond_84

    .line 958
    invoke-virtual {v1, v9, v10, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[D)V

    .line 959
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    invoke-virtual {v1, v9, v10, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(D[D)V

    .line 962
    :cond_84
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setView(Landroid/view/View;[I[D[D[D)V

    .line 963
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    if-eqz v1, :cond_bd

    .line 964
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :cond_9e
    :goto_9e
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_bd

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/SplineSet;

    .line 965
    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;

    if-eqz v2, :cond_9e

    .line 966
    check-cast v1, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    aget-wide v4, v2, v13

    aget-wide v6, v2, v15

    move-object/from16 v2, p1

    move v3, v12

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;->setPathRotate(Landroid/view/View;FDD)V

    goto :goto_9e

    :cond_bd
    if-eqz v8, :cond_da

    .line 972
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    aget-wide v16, v1, v13

    aget-wide v18, v1, v15

    move-object v1, v8

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move v4, v12

    move-wide/from16 v5, p3

    move-wide/from16 v7, v16

    move-wide/from16 v20, v9

    move-wide/from16 v9, v18

    invoke-virtual/range {v1 .. v10}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet$PathRotate;->setPathRotate(Landroid/view/View;Landroidx/constraintlayout/motion/widget/KeyCache;FJDD)Z

    move-result v1

    or-int/2addr v1, v14

    move v14, v1

    goto :goto_dc

    :cond_da
    move-wide/from16 v20, v9

    :goto_dc
    move v1, v15

    .line 976
    :goto_dd
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    array-length v3, v2

    if-ge v1, v3, :cond_103

    .line 977
    aget-object v2, v2, v1

    .line 978
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    move-wide/from16 v4, v20

    invoke-virtual {v2, v4, v5, v3}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(D[F)V

    .line 979
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    add-int/lit8 v6, v1, -0x1

    aget-object v3, v3, v6

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintAttribute;

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mValuesBuff:[F

    invoke-virtual {v2, v11, v3}, Landroidx/constraintlayout/widget/ConstraintAttribute;->setInterpolatedValue(Landroid/view/View;[F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_dd

    .line 982
    :cond_103
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibilityMode:I

    if-nez v1, :cond_131

    const/4 v1, 0x0

    cmpg-float v1, v12, v1

    if-gtz v1, :cond_116

    .line 984
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_131

    :cond_116
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, v12, v1

    if-ltz v1, :cond_124

    .line 986
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    invoke-virtual {v11, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_131

    .line 987
    :cond_124
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->visibility:I

    if-eq v1, v2, :cond_131

    .line 988
    invoke-virtual {v11, v13}, Landroid/view/View;->setVisibility(I)V

    .line 992
    :cond_131
    :goto_131
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v1, :cond_1b5

    move v1, v13

    .line 993
    :goto_136
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    array-length v3, v2

    if-ge v1, v3, :cond_1b5

    .line 994
    aget-object v2, v2, v1

    invoke-virtual {v2, v12, v11}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->conditionallyFire(FLandroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_136

    .line 1000
    :cond_143
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    sub-float/2addr v2, v3

    mul-float/2addr v2, v12

    add-float/2addr v1, v2

    .line 1001
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    sub-float/2addr v3, v4

    mul-float/2addr v3, v12

    add-float/2addr v2, v3

    .line 1002
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v3, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v12

    add-float/2addr v3, v4

    .line 1003
    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v4, v4, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v5, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v6, v6, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    sub-float/2addr v5, v6

    mul-float/2addr v5, v12

    add-float/2addr v4, v5

    const/high16 v5, 0x3f000000    # 0.5f

    add-float/2addr v1, v5

    float-to-int v6, v1

    add-float/2addr v2, v5

    float-to-int v5, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    add-float/2addr v2, v4

    float-to-int v2, v2

    sub-int v3, v1, v6

    sub-int v4, v2, v5

    .line 1019
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    cmpl-float v7, v7, v8

    if-nez v7, :cond_1a5

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v7, v7, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_1b2

    :cond_1a5
    const/high16 v7, 0x40000000    # 2.0f

    .line 1021
    invoke-static {v3, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1022
    invoke-static {v4, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1023
    invoke-virtual {v11, v3, v4}, Landroid/view/View;->measure(II)V

    .line 1025
    :cond_1b2
    invoke-virtual {v11, v6, v5, v1, v2}, Landroid/view/View;->layout(IIII)V

    .line 1028
    :cond_1b5
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    if-eqz v1, :cond_1e4

    .line 1029
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1c1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e4

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 1030
    instance-of v2, v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;

    if-eqz v2, :cond_1e0

    .line 1031
    check-cast v1, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;

    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    aget-wide v4, v2, v13

    aget-wide v6, v2, v15

    move-object/from16 v2, p1

    move v3, v12

    invoke-virtual/range {v1 .. v7}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator$PathRotateSet;->setPathRotate(Landroid/view/View;FDD)V

    goto :goto_1c1

    .line 1034
    :cond_1e0
    invoke-virtual {v1, v11, v12}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->setProperty(Landroid/view/View;F)V

    goto :goto_1c1

    :cond_1e4
    return v14
.end method

.method name()Ljava/lang/String;
    .registers 3

    .line 1180
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1181
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method positionKeyframe(Landroid/view/View;Landroidx/constraintlayout/motion/widget/KeyPositionBase;FF[Ljava/lang/String;[F)V
    .registers 15

    .line 1185
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 1186
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iput v0, v2, Landroid/graphics/RectF;->left:F

    .line 1187
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iput v0, v2, Landroid/graphics/RectF;->top:F

    .line 1188
    iget v0, v2, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->right:F

    .line 1189
    iget v0, v2, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    add-float/2addr v0, v1

    iput v0, v2, Landroid/graphics/RectF;->bottom:F

    .line 1190
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    .line 1191
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    iput v0, v3, Landroid/graphics/RectF;->left:F

    .line 1192
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v0, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    iput v0, v3, Landroid/graphics/RectF;->top:F

    .line 1193
    iget v0, v3, Landroid/graphics/RectF;->left:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->width:F

    add-float/2addr v0, v1

    iput v0, v3, Landroid/graphics/RectF;->right:F

    .line 1194
    iget v0, v3, Landroid/graphics/RectF;->top:F

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->height:F

    add-float/2addr v0, v1

    iput v0, v3, Landroid/graphics/RectF;->bottom:F

    move-object v0, p2

    move-object v1, p1

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 1195
    invoke-virtual/range {v0 .. v7}, Landroidx/constraintlayout/motion/widget/KeyPositionBase;->positionAttributes(Landroid/view/View;Landroid/graphics/RectF;Landroid/graphics/RectF;FF[Ljava/lang/String;[F)V

    return-void
.end method

.method public setDrawPath(I)V
    .registers 3

    .line 1176
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput p1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->mDrawPath:I

    return-void
.end method

.method setEndState(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .registers 8

    .line 857
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 858
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 859
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 860
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 861
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {p2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 863
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintSet;I)V

    return-void
.end method

.method public setPathMotionArc(I)V
    .registers 2

    .line 468
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    return-void
.end method

.method setStartCurrentState(Landroid/view/View;)V
    .registers 7

    .line 839
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 840
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 841
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 842
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-virtual {v0, p1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroid/view/View;)V

    return-void
.end method

.method setStartState(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintSet;)V
    .registers 8

    .line 846
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    const/4 v1, 0x0

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    .line 847
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iput v1, v0, Landroidx/constraintlayout/motion/widget/MotionPaths;->position:F

    .line 848
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-direct {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionController;->readView(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 849
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getY()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 850
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getParameters(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    .line 851
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionPaths;->applyParameters(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 852
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->motion:Landroidx/constraintlayout/widget/ConstraintSet$Motion;

    iget v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Motion;->mMotionStagger:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionStagger:F

    .line 853
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    invoke-virtual {v0, p1, p2, v1}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->setState(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/widget/ConstraintSet;I)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .registers 3

    .line 830
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mView:Landroid/view/View;

    .line 831
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mId:I

    .line 832
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 833
    instance-of v0, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    if-eqz v0, :cond_18

    .line 834
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->getConstraintTag()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mConstraintTag:Ljava/lang/String;

    :cond_18
    return-void
.end method

.method public setup(IIFJ)V
    .registers 22

    move-object/from16 v0, p0

    .line 475
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 476
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 477
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 478
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 479
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 491
    iget v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    sget v6, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v5, v6, :cond_27

    .line 492
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mPathMotionArc:I

    iput v6, v5, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    .line 495
    :cond_27
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    invoke-virtual {v5, v6, v2}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->different(Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;Ljava/util/HashSet;)V

    .line 501
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v5, :cond_8e

    .line 502
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v7, 0x0

    :cond_37
    :goto_37
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8f

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/constraintlayout/motion/widget/Key;

    .line 503
    instance-of v9, v8, Landroidx/constraintlayout/motion/widget/KeyPosition;

    if-eqz v9, :cond_66

    .line 504
    check-cast v8, Landroidx/constraintlayout/motion/widget/KeyPosition;

    .line 505
    new-instance v9, Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v15, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    move-object v10, v9

    move/from16 v11, p1

    move/from16 v12, p2

    move-object v13, v8

    invoke-direct/range {v10 .. v15}, Landroidx/constraintlayout/motion/widget/MotionPaths;-><init>(IILandroidx/constraintlayout/motion/widget/KeyPosition;Landroidx/constraintlayout/motion/widget/MotionPaths;Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    invoke-direct {v0, v9}, Landroidx/constraintlayout/motion/widget/MotionController;->insertKey(Landroidx/constraintlayout/motion/widget/MotionPaths;)V

    .line 506
    iget v9, v8, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    sget v10, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v9, v10, :cond_37

    .line 507
    iget v8, v8, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    iput v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    goto :goto_37

    .line 509
    :cond_66
    instance-of v9, v8, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v9, :cond_6e

    .line 510
    invoke-virtual {v8, v3}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    goto :goto_37

    .line 511
    :cond_6e
    instance-of v9, v8, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v9, :cond_76

    .line 512
    invoke-virtual {v8, v1}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    goto :goto_37

    .line 513
    :cond_76
    instance-of v9, v8, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    if-eqz v9, :cond_87

    if-nez v7, :cond_81

    .line 515
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 517
    :cond_81
    check-cast v8, Landroidx/constraintlayout/motion/widget/KeyTrigger;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_37

    .line 519
    :cond_87
    invoke-virtual {v8, v4}, Landroidx/constraintlayout/motion/widget/Key;->setInterpolation(Ljava/util/HashMap;)V

    .line 520
    invoke-virtual {v8, v2}, Landroidx/constraintlayout/motion/widget/Key;->getAttributeNames(Ljava/util/HashSet;)V

    goto :goto_37

    :cond_8e
    const/4 v7, 0x0

    :cond_8f
    const/4 v5, 0x0

    if-eqz v7, :cond_9c

    new-array v8, v5, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 528
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroidx/constraintlayout/motion/widget/KeyTrigger;

    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyTriggers:[Landroidx/constraintlayout/motion/widget/KeyTrigger;

    .line 556
    :cond_9c
    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v7

    const-string v8, ","

    const-string v9, "CUSTOM,"

    const/4 v10, 0x1

    if-nez v7, :cond_16d

    .line 557
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    .line 558
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_b2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 560
    invoke-virtual {v11, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_fb

    .line 561
    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    .line 562
    invoke-virtual {v11, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    aget-object v13, v13, v10

    .line 563
    iget-object v14, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_d5
    :goto_d5
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_f6

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/constraintlayout/motion/widget/Key;

    .line 564
    iget-object v6, v15, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    if-nez v6, :cond_e6

    goto :goto_d5

    .line 567
    :cond_e6
    iget-object v6, v15, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v6, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v6, :cond_d5

    .line 569
    iget v15, v15, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    invoke-virtual {v12, v15, v6}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_d5

    .line 572
    :cond_f6
    invoke-static {v11, v12}, Landroidx/constraintlayout/motion/widget/SplineSet;->makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/widget/SplineSet;

    move-result-object v6

    goto :goto_ff

    .line 574
    :cond_fb
    invoke-static {v11}, Landroidx/constraintlayout/motion/widget/SplineSet;->makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/widget/SplineSet;

    move-result-object v6

    :goto_ff
    if-nez v6, :cond_102

    goto :goto_b2

    .line 579
    :cond_102
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/motion/widget/SplineSet;->setType(Ljava/lang/String;)V

    .line 580
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v12, v11, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b2

    .line 582
    :cond_10b
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v6, :cond_129

    .line 583
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_113
    :goto_113
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_129

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/Key;

    .line 584
    instance-of v11, v7, Landroidx/constraintlayout/motion/widget/KeyAttributes;

    if-eqz v11, :cond_113

    .line 585
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v7, v11}, Landroidx/constraintlayout/motion/widget/Key;->addValues(Ljava/util/HashMap;)V

    goto :goto_113

    .line 589
    :cond_129
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7, v5}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 590
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    const/16 v11, 0x64

    invoke-virtual {v6, v7, v11}, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->addValues(Ljava/util/HashMap;I)V

    .line 592
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_143
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_16d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 594
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_160

    .line 595
    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    goto :goto_161

    :cond_160
    move v11, v5

    .line 597
    :goto_161
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v12, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/motion/widget/SplineSet;

    invoke-virtual {v7, v11}, Landroidx/constraintlayout/motion/widget/SplineSet;->setup(I)V

    goto :goto_143

    .line 602
    :cond_16d
    invoke-virtual {v1}, Ljava/util/HashSet;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_23c

    .line 603
    iget-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    if-nez v6, :cond_17e

    .line 604
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iput-object v6, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    .line 606
    :cond_17e
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_182
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1e8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 607
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_197

    goto :goto_182

    .line 612
    :cond_197
    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1d6

    .line 613
    new-instance v7, Landroid/util/SparseArray;

    invoke-direct {v7}, Landroid/util/SparseArray;-><init>()V

    .line 614
    invoke-virtual {v6, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v10

    .line 615
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1ae
    :goto_1ae
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_1cf

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/constraintlayout/motion/widget/Key;

    .line 616
    iget-object v14, v13, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    if-nez v14, :cond_1bf

    goto :goto_1ae

    .line 619
    :cond_1bf
    iget-object v14, v13, Landroidx/constraintlayout/motion/widget/Key;->mCustomConstraints:Ljava/util/HashMap;

    invoke-virtual {v14, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/constraintlayout/widget/ConstraintAttribute;

    if-eqz v14, :cond_1ae

    .line 621
    iget v13, v13, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    invoke-virtual {v7, v13, v14}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    goto :goto_1ae

    .line 624
    :cond_1cf
    invoke-static {v6, v7}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;

    move-result-object v7

    move-wide/from16 v11, p4

    goto :goto_1dc

    :cond_1d6
    move-wide/from16 v11, p4

    .line 626
    invoke-static {v6, v11, v12}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;

    move-result-object v7

    :goto_1dc
    if-nez v7, :cond_1df

    goto :goto_182

    .line 632
    :cond_1df
    invoke-virtual {v7, v6}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setType(Ljava/lang/String;)V

    .line 633
    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v13, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_182

    .line 636
    :cond_1e8
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v1, :cond_208

    .line 637
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1f0
    :goto_1f0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_208

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/Key;

    .line 638
    instance-of v7, v6, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    if-eqz v7, :cond_1f0

    .line 639
    check-cast v6, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;

    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/motion/widget/KeyTimeCycle;->addTimeValues(Ljava/util/HashMap;)V

    goto :goto_1f0

    .line 644
    :cond_208
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_212
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 646
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_22f

    .line 647
    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    goto :goto_230

    :cond_22f
    move v7, v5

    .line 649
    :goto_230
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mTimeCycleAttributesMap:Ljava/util/HashMap;

    invoke-virtual {v8, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;

    invoke-virtual {v6, v7}, Landroidx/constraintlayout/motion/widget/TimeCycleSplineSet;->setup(I)V

    goto :goto_212

    .line 655
    :cond_23c
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v4, 0x2

    add-int/2addr v1, v4

    new-array v6, v1, [Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 657
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    aput-object v7, v6, v5

    add-int/lit8 v7, v1, -0x1

    .line 658
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    aput-object v8, v6, v7

    .line 659
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_25f

    iget v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    const/4 v8, -0x1

    if-ne v7, v8, :cond_25f

    .line 660
    iput v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    .line 662
    :cond_25f
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mMotionPaths:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v8, v10

    :goto_266
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_278

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/motion/widget/MotionPaths;

    add-int/lit8 v12, v8, 0x1

    .line 663
    aput-object v11, v6, v8

    move v8, v12

    goto :goto_266

    .line 668
    :cond_278
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 669
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v8}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_289
    :goto_289
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2b6

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 670
    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget-object v12, v12, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v12, v11}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_289

    .line 671
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_289

    .line 672
    invoke-virtual {v7, v11}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_289

    :cond_2b6
    new-array v2, v5, [Ljava/lang/String;

    .line 676
    invoke-virtual {v7, v2}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    .line 680
    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpCount:[I

    move v2, v5

    .line 681
    :goto_2c6
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v8, v7

    if-ge v2, v8, :cond_2fa

    .line 682
    aget-object v7, v7, v2

    .line 683
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpCount:[I

    aput v5, v8, v2

    move v8, v5

    :goto_2d2
    if-ge v8, v1, :cond_2f7

    .line 685
    aget-object v9, v6, v8

    iget-object v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v9, v7}, Ljava/util/LinkedHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2f4

    .line 686
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeInterpCount:[I

    aget v11, v9, v2

    aget-object v8, v6, v8

    iget-object v8, v8, Landroidx/constraintlayout/motion/widget/MotionPaths;->attributes:Ljava/util/LinkedHashMap;

    invoke-virtual {v8, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/constraintlayout/widget/ConstraintAttribute;

    invoke-virtual {v7}, Landroidx/constraintlayout/widget/ConstraintAttribute;->noOfInterpValues()I

    move-result v7

    add-int/2addr v11, v7

    aput v11, v9, v2

    goto :goto_2f7

    :cond_2f4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2d2

    :cond_2f7
    :goto_2f7
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c6

    .line 691
    :cond_2fa
    aget-object v2, v6, v5

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    sget v7, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v2, v7, :cond_304

    move v2, v10

    goto :goto_305

    :cond_304
    move v2, v5

    .line 692
    :goto_305
    iget-object v7, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v7, v7

    const/16 v8, 0x12

    add-int/2addr v8, v7

    new-array v7, v8, [Z

    move v9, v10

    :goto_30e
    if-ge v9, v1, :cond_31e

    .line 694
    aget-object v11, v6, v9

    add-int/lit8 v12, v9, -0x1

    aget-object v12, v6, v12

    iget-object v13, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    invoke-virtual {v11, v12, v7, v13, v2}, Landroidx/constraintlayout/motion/widget/MotionPaths;->different(Landroidx/constraintlayout/motion/widget/MotionPaths;[Z[Ljava/lang/String;Z)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_30e

    :cond_31e
    move v9, v5

    move v2, v10

    :goto_320
    if-ge v2, v8, :cond_32b

    .line 699
    aget-boolean v11, v7, v2

    if-eqz v11, :cond_328

    add-int/lit8 v9, v9, 0x1

    :cond_328
    add-int/lit8 v2, v2, 0x1

    goto :goto_320

    .line 704
    :cond_32b
    new-array v2, v9, [I

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    .line 705
    array-length v9, v2

    new-array v9, v9, [D

    iput-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateData:[D

    .line 706
    array-length v2, v2

    new-array v2, v2, [D

    iput-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVelocity:[D

    move v9, v5

    move v2, v10

    :goto_33b
    if-ge v2, v8, :cond_34b

    .line 710
    aget-boolean v11, v7, v2

    if-eqz v11, :cond_348

    .line 711
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    add-int/lit8 v12, v9, 0x1

    aput v2, v11, v9

    move v9, v12

    :cond_348
    add-int/lit8 v2, v2, 0x1

    goto :goto_33b

    .line 714
    :cond_34b
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    array-length v2, v2

    new-array v7, v4, [I

    aput v2, v7, v10

    aput v1, v7, v5

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 715
    new-array v7, v1, [D

    move v8, v5

    :goto_35f
    if-ge v8, v1, :cond_374

    .line 718
    aget-object v9, v6, v8

    aget-object v11, v2, v8

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    invoke-virtual {v9, v11, v12}, Landroidx/constraintlayout/motion/widget/MotionPaths;->fillStandard([D[I)V

    .line 719
    aget-object v9, v6, v8

    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v11, v9

    aput-wide v11, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_35f

    :cond_374
    move v8, v5

    .line 722
    :goto_375
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    array-length v11, v9

    if-ge v8, v11, :cond_3ba

    .line 723
    aget v9, v9, v8

    .line 724
    sget-object v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    array-length v11, v11

    if-ge v9, v11, :cond_3b7

    .line 725
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->names:[Ljava/lang/String;

    iget-object v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mInterpolateVariables:[I

    aget v12, v12, v8

    aget-object v11, v11, v12

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v11, " ["

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move v11, v5

    :goto_39d
    if-ge v11, v1, :cond_3b7

    .line 727
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v12, v2, v11

    aget-wide v12, v12, v8

    invoke-virtual {v9, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v11, v11, 0x1

    goto :goto_39d

    :cond_3b7
    add-int/lit8 v8, v8, 0x1

    goto :goto_375

    .line 731
    :cond_3ba
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v8, v8

    add-int/2addr v8, v10

    new-array v8, v8, [Landroidx/constraintlayout/motion/utils/CurveFit;

    iput-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    move v8, v5

    .line 733
    :goto_3c3
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mAttributeNames:[Ljava/lang/String;

    array-length v11, v9

    if-ge v8, v11, :cond_423

    const/4 v11, 0x0

    .line 735
    move-object v12, v11

    check-cast v12, [[D

    .line 737
    aget-object v9, v9, v8

    move v12, v5

    move v14, v12

    move-object v13, v11

    move-object v15, v13

    :goto_3d2
    if-ge v12, v1, :cond_40b

    .line 740
    aget-object v11, v6, v12

    invoke-virtual {v11, v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->hasCustomData(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_406

    if-nez v15, :cond_3f6

    .line 742
    new-array v11, v1, [D

    .line 743
    aget-object v13, v6, v12

    invoke-virtual {v13, v9}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCustomDataCount(Ljava/lang/String;)I

    move-result v13

    new-array v15, v4, [I

    aput v13, v15, v10

    aput v1, v15, v5

    sget-object v13, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v13, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[D

    move-object v15, v13

    move-object v13, v11

    .line 745
    :cond_3f6
    aget-object v11, v6, v12

    iget v11, v11, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v10, v11

    aput-wide v10, v13, v14

    .line 746
    aget-object v10, v6, v12

    aget-object v11, v15, v14

    invoke-virtual {v10, v9, v11, v5}, Landroidx/constraintlayout/motion/widget/MotionPaths;->getCustomData(Ljava/lang/String;[DI)I

    add-int/lit8 v14, v14, 0x1

    :cond_406
    add-int/lit8 v12, v12, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    goto :goto_3d2

    .line 750
    :cond_40b
    invoke-static {v13, v14}, Ljava/util/Arrays;->copyOf([DI)[D

    move-result-object v9

    .line 751
    invoke-static {v15, v14}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [[D

    .line 752
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    add-int/lit8 v8, v8, 0x1

    iget v12, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    invoke-static {v12, v9, v10}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v9

    aput-object v9, v11, v8

    const/4 v10, 0x1

    goto :goto_3c3

    .line 755
    :cond_423
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mSpline:[Landroidx/constraintlayout/motion/utils/CurveFit;

    iget v9, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCurveFitType:I

    invoke-static {v9, v7, v2}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v2

    aput-object v2, v8, v5

    .line 757
    aget-object v2, v6, v5

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    sget v7, Landroidx/constraintlayout/motion/widget/Key;->UNSET:I

    if-eq v2, v7, :cond_474

    .line 759
    new-array v2, v1, [I

    .line 760
    new-array v7, v1, [D

    new-array v8, v4, [I

    const/4 v9, 0x1

    aput v4, v8, v9

    aput v1, v8, v5

    .line 761
    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[D

    move v8, v5

    :goto_449
    if-ge v8, v1, :cond_46e

    .line 763
    aget-object v9, v6, v8

    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPathMotionArc:I

    aput v9, v2, v8

    .line 764
    aget-object v9, v6, v8

    iget v9, v9, Landroidx/constraintlayout/motion/widget/MotionPaths;->time:F

    float-to-double v9, v9

    aput-wide v9, v7, v8

    .line 765
    aget-object v9, v4, v8

    aget-object v10, v6, v8

    iget v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    float-to-double v10, v10

    aput-wide v10, v9, v5

    .line 766
    aget-object v9, v4, v8

    aget-object v10, v6, v8

    iget v10, v10, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    float-to-double v10, v10

    const/4 v12, 0x1

    aput-wide v10, v9, v12

    add-int/lit8 v8, v8, 0x1

    goto :goto_449

    .line 769
    :cond_46e
    invoke-static {v2, v7, v4}, Landroidx/constraintlayout/motion/utils/CurveFit;->getArc([I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object v1

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mArcSpline:Landroidx/constraintlayout/motion/utils/CurveFit;

    .line 774
    :cond_474
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    .line 775
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    if-eqz v1, :cond_4e9

    .line 776
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/high16 v2, 0x7fc00000    # Float.NaN

    :goto_485
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4b1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 777
    invoke-static {v3}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    move-result-object v4

    if-nez v4, :cond_498

    goto :goto_485

    .line 782
    :cond_498
    invoke-virtual {v4}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->variesByPath()Z

    move-result v5

    if-eqz v5, :cond_4a8

    .line 783
    invoke-static {v2}, Ljava/lang/Float;->isNaN(F)Z

    move-result v5

    if-eqz v5, :cond_4a8

    .line 784
    invoke-direct/range {p0 .. p0}, Landroidx/constraintlayout/motion/widget/MotionController;->getPreCycleDistance()F

    move-result v2

    .line 787
    :cond_4a8
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->setType(Ljava/lang/String;)V

    .line 788
    iget-object v5, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v5, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_485

    .line 790
    :cond_4b1
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4b7
    :goto_4b7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4cf

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/Key;

    .line 791
    instance-of v4, v3, Landroidx/constraintlayout/motion/widget/KeyCycle;

    if-eqz v4, :cond_4b7

    .line 792
    check-cast v3, Landroidx/constraintlayout/motion/widget/KeyCycle;

    iget-object v4, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroidx/constraintlayout/motion/widget/KeyCycle;->addCycleValues(Ljava/util/HashMap;)V

    goto :goto_4b7

    .line 795
    :cond_4cf
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/MotionController;->mCycleMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4d9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4e9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;

    .line 796
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/motion/widget/KeyCycleOscillator;->setup(F)V

    goto :goto_4d9

    :cond_4e9
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 821
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, " start: x: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " y: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " end: x: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v2, v2, Landroidx/constraintlayout/motion/widget/MotionPaths;->x:F

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    iget v1, v1, Landroidx/constraintlayout/motion/widget/MotionPaths;->y:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
