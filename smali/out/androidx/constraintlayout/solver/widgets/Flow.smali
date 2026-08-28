.class public Landroidx/constraintlayout/solver/widgets/Flow;
.super Landroidx/constraintlayout/solver/widgets/VirtualLayout;
.source "Flow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;
    }
.end annotation


# static fields
.field public static final HORIZONTAL_ALIGN_CENTER:I = 0x2

.field public static final HORIZONTAL_ALIGN_END:I = 0x1

.field public static final HORIZONTAL_ALIGN_START:I = 0x0

.field public static final VERTICAL_ALIGN_BASELINE:I = 0x3

.field public static final VERTICAL_ALIGN_BOTTOM:I = 0x1

.field public static final VERTICAL_ALIGN_CENTER:I = 0x2

.field public static final VERTICAL_ALIGN_TOP:I = 0x0

.field public static final WRAP_ALIGNED:I = 0x2

.field public static final WRAP_CHAIN:I = 0x1

.field public static final WRAP_NONE:I


# instance fields
.field private mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mAlignedDimensions:[I

.field private mChainList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

.field private mDisplayedWidgetsCount:I

.field private mFirstHorizontalBias:F

.field private mFirstHorizontalStyle:I

.field private mFirstVerticalBias:F

.field private mFirstVerticalStyle:I

.field private mHorizontalAlign:I

.field private mHorizontalBias:F

.field private mHorizontalGap:I

.field private mHorizontalStyle:I

.field private mLastHorizontalBias:F

.field private mLastHorizontalStyle:I

.field private mLastVerticalBias:F

.field private mLastVerticalStyle:I

.field private mMaxElementsWrap:I

.field private mOrientation:I

.field private mVerticalAlign:I

.field private mVerticalBias:F

.field private mVerticalGap:I

.field private mVerticalStyle:I

.field private mWrapMode:I


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 32
    invoke-direct {p0}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;-><init>()V

    const/4 v0, -0x1

    .line 47
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 48
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    .line 49
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    .line 50
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    .line 51
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    .line 52
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    const/high16 v1, 0x3f000000    # 0.5f

    .line 54
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    .line 55
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    .line 56
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    .line 57
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    .line 58
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    .line 59
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    const/4 v1, 0x0

    .line 61
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    .line 62
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    const/4 v2, 0x2

    .line 64
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    .line 65
    iput v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    .line 66
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    .line 68
    iput v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    .line 70
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 77
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 78
    iput-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    .line 80
    iput v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    return-void
.end method

.method static synthetic access$000(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    return p0
.end method

.method static synthetic access$100(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    return p0
.end method

.method static synthetic access$1000(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    return p0
.end method

.method static synthetic access$1100(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    return p0
.end method

.method static synthetic access$1200(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    return p0
.end method

.method static synthetic access$1300(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    return p0
.end method

.method static synthetic access$1400(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    return p0
.end method

.method static synthetic access$1500(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    return p0
.end method

.method static synthetic access$1600(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    return p0
.end method

.method static synthetic access$1700(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    return p0
.end method

.method static synthetic access$1800(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    return p0
.end method

.method static synthetic access$1900(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    return p0
.end method

.method static synthetic access$200(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Landroidx/constraintlayout/solver/widgets/Flow;Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .registers 3

    .line 32
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$400(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    return p0
.end method

.method static synthetic access$500(Landroidx/constraintlayout/solver/widgets/Flow;)[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;
    .registers 1

    .line 32
    iget-object p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    return-object p0
.end method

.method static synthetic access$600(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    return p0
.end method

.method static synthetic access$700(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    return p0
.end method

.method static synthetic access$800(Landroidx/constraintlayout/solver/widgets/Flow;)I
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    return p0
.end method

.method static synthetic access$900(Landroidx/constraintlayout/solver/widgets/Flow;)F
    .registers 1

    .line 32
    iget p0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    return p0
.end method

.method private createAlignedConstraints(Z)V
    .registers 13

    .line 1119
    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    if-eqz v0, :cond_116

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v0, :cond_116

    iget-object v0, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-nez v0, :cond_e

    goto/16 :goto_116

    :cond_e
    const/4 v0, 0x0

    move v1, v0

    .line 1125
    :goto_10
    iget v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    if-ge v1, v2, :cond_1e

    .line 1126
    iget-object v2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v2, v2, v1

    .line 1127
    invoke-virtual {v2}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->resetAnchors()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 1130
    :cond_1e
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    aget v2, v1, v0

    const/4 v3, 0x1

    .line 1131
    aget v1, v1, v3

    const/4 v4, 0x0

    move v5, v0

    :goto_27
    const/16 v6, 0x8

    if-ge v5, v2, :cond_7b

    if-eqz p1, :cond_31

    sub-int v7, v2, v5

    sub-int/2addr v7, v3

    goto :goto_32

    :cond_31
    move v7, v5

    .line 1139
    :goto_32
    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v8, v7

    if-eqz v7, :cond_78

    .line 1140
    invoke-virtual {v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    if-ne v8, v6, :cond_3f

    goto :goto_78

    :cond_3f
    if-nez v5, :cond_56

    .line 1144
    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v9

    invoke-virtual {v7, v6, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1145
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalChainStyle(I)V

    .line 1146
    iget v6, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    invoke-virtual {v7, v6}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setHorizontalBiasPercent(F)V

    :cond_56
    add-int/lit8 v6, v2, -0x1

    if-ne v5, v6, :cond_65

    .line 1149
    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v9

    invoke-virtual {v7, v6, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_65
    if-lez v5, :cond_77

    .line 1152
    iget-object v6, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    invoke-virtual {v7, v6, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1153
    iget-object v6, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v6, v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_77
    move-object v4, v7

    :cond_78
    :goto_78
    add-int/lit8 v5, v5, 0x1

    goto :goto_27

    :cond_7b
    move p1, v0

    :goto_7c
    if-ge p1, v1, :cond_c7

    .line 1158
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v5, v5, p1

    if-eqz v5, :cond_c4

    .line 1159
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-ne v7, v6, :cond_8b

    goto :goto_c4

    :cond_8b
    if-nez p1, :cond_a2

    .line 1163
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1164
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    invoke-virtual {v5, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalChainStyle(I)V

    .line 1165
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    invoke-virtual {v5, v7}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->setVerticalBiasPercent(F)V

    :cond_a2
    add-int/lit8 v7, v1, -0x1

    if-ne p1, v7, :cond_b1

    .line 1168
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v5, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_b1
    if-lez p1, :cond_c3

    .line 1171
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    invoke-virtual {v5, v7, v8, v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1172
    iget-object v7, v4, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v4, v7, v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_c3
    move-object v4, v5

    :cond_c4
    :goto_c4
    add-int/lit8 p1, p1, 0x1

    goto :goto_7c

    :cond_c7
    move p1, v0

    :goto_c8
    if-ge p1, v2, :cond_116

    move v4, v0

    :goto_cb
    if-ge v4, v1, :cond_113

    mul-int v5, v4, v2

    add-int/2addr v5, p1

    .line 1180
    iget v7, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    if-ne v7, v3, :cond_d7

    mul-int v5, p1, v1

    add-int/2addr v5, v4

    .line 1183
    :cond_d7
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    array-length v8, v7

    if-lt v5, v8, :cond_dd

    goto :goto_110

    .line 1186
    :cond_dd
    aget-object v5, v7, v5

    if-eqz v5, :cond_110

    .line 1187
    invoke-virtual {v5}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v7

    if-ne v7, v6, :cond_e8

    goto :goto_110

    .line 1190
    :cond_e8
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v7, p1

    .line 1191
    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v8, v8, v4

    if-eq v5, v7, :cond_100

    .line 1193
    iget-object v9, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v10, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, v9, v10, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1194
    iget-object v9, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v7, v7, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, v9, v7, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_100
    if-eq v5, v8, :cond_110

    .line 1197
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, v7, v9, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 1198
    iget-object v7, v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v8, v8, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    invoke-virtual {v5, v7, v8, v0}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    :cond_110
    :goto_110
    add-int/lit8 v4, v4, 0x1

    goto :goto_cb

    :cond_113
    add-int/lit8 p1, p1, 0x1

    goto :goto_c8

    :cond_116
    :goto_116
    return-void
.end method

.method private final getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 202
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_4e

    .line 203
    iget v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    if-nez v1, :cond_11

    return v0

    .line 205
    :cond_11
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    .line 206
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentHeight:F

    int-to-float p2, p2

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 207
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v0

    if-eq p2, v0, :cond_31

    .line 208
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v4

    sget-object v5, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-object v1, p0

    move-object v2, p1

    move v6, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/widgets/Flow;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_31
    return p2

    .line 211
    :cond_32
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3c

    .line 212
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    return p1

    .line 213
    :cond_3c
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_4e

    .line 214
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1

    .line 217
    :cond_4e
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p1

    return p1
.end method

.method private final getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 180
    :cond_4
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    sget-object v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v1, v2, :cond_4e

    .line 181
    iget v1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    if-nez v1, :cond_11

    return v0

    .line 183
    :cond_11
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_32

    .line 184
    iget v0, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintPercentWidth:F

    int-to-float p2, p2

    mul-float/2addr v0, p2

    float-to-int p2, v0

    .line 185
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v0

    if-eq p2, v0, :cond_31

    .line 186
    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v5

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    move-object v1, p0

    move-object v2, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/constraintlayout/solver/widgets/Flow;->measure(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;ILandroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;I)V

    :cond_31
    return p2

    .line 189
    :cond_32
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3c

    .line 190
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    return p1

    .line 191
    :cond_3c
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    const/4 v0, 0x3

    if-ne p2, v0, :cond_4e

    .line 192
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget p1, p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mDimensionRatio:F

    mul-float/2addr p2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p2, p1

    float-to-int p1, p2

    return p1

    .line 195
    :cond_4e
    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result p1

    return p1
.end method

.method private measureAligned([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .registers 16

    const/4 v0, 0x0

    if-nez p3, :cond_26

    .line 970
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    if-gtz v1, :cond_23

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_a
    if-ge v2, p2, :cond_23

    if-lez v2, :cond_11

    .line 977
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v3, v4

    .line 979
    :cond_11
    aget-object v4, p1, v2

    if-nez v4, :cond_16

    goto :goto_20

    .line 983
    :cond_16
    invoke-direct {p0, v4, p4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, p4, :cond_1e

    goto :goto_23

    :cond_1e
    add-int/lit8 v1, v1, 0x1

    :goto_20
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_23
    :goto_23
    move v2, v1

    move v1, v0

    goto :goto_47

    .line 991
    :cond_26
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    if-gtz v1, :cond_46

    move v1, v0

    move v2, v1

    move v3, v2

    :goto_2d
    if-ge v2, p2, :cond_46

    if-lez v2, :cond_34

    .line 998
    iget v4, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v3, v4

    .line 1000
    :cond_34
    aget-object v4, p1, v2

    if-nez v4, :cond_39

    goto :goto_43

    .line 1004
    :cond_39
    invoke-direct {p0, v4, p4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v4

    add-int/2addr v3, v4

    if-le v3, p4, :cond_41

    goto :goto_46

    :cond_41
    add-int/lit8 v1, v1, 0x1

    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_2d

    :cond_46
    :goto_46
    move v2, v0

    .line 1013
    :goto_47
    iget-object v3, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    if-nez v3, :cond_50

    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 1014
    iput-object v3, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    :cond_50
    const/4 v3, 0x1

    if-nez v1, :cond_55

    if-eq p3, v3, :cond_59

    :cond_55
    if-nez v2, :cond_5b

    if-nez p3, :cond_5b

    :cond_59
    move v4, v3

    goto :goto_5c

    :cond_5b
    move v4, v0

    :goto_5c
    if-nez v4, :cond_11d

    if-nez p3, :cond_6a

    int-to-float v1, p2

    int-to-float v5, v2

    div-float/2addr v1, v5

    float-to-double v5, v1

    .line 1027
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v1, v5

    goto :goto_73

    :cond_6a
    int-to-float v2, p2

    int-to-float v5, v1

    div-float/2addr v2, v5

    float-to-double v5, v2

    .line 1029
    invoke-static {v5, v6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    double-to-int v2, v5

    .line 1032
    :goto_73
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v6, 0x0

    if-eqz v5, :cond_80

    array-length v7, v5

    if-ge v7, v2, :cond_7c

    goto :goto_80

    .line 1035
    :cond_7c
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_84

    .line 1033
    :cond_80
    :goto_80
    new-array v5, v2, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 1037
    :goto_84
    iget-object v5, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    if-eqz v5, :cond_90

    array-length v7, v5

    if-ge v7, v1, :cond_8c

    goto :goto_90

    .line 1040
    :cond_8c
    invoke-static {v5, v6}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_94

    .line 1038
    :cond_90
    :goto_90
    new-array v5, v1, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    iput-object v5, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    :goto_94
    move v5, v0

    :goto_95
    if-ge v5, v2, :cond_d9

    move v6, v0

    :goto_98
    if-ge v6, v1, :cond_d6

    mul-int v7, v6, v2

    add-int/2addr v7, v5

    if-ne p3, v3, :cond_a2

    mul-int v7, v5, v1

    add-int/2addr v7, v6

    .line 1049
    :cond_a2
    array-length v8, p1

    if-lt v7, v8, :cond_a6

    goto :goto_d3

    .line 1052
    :cond_a6
    aget-object v7, p1, v7

    if-nez v7, :cond_ab

    goto :goto_d3

    .line 1056
    :cond_ab
    invoke-direct {p0, v7, p4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v8

    .line 1057
    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v9, v9, v5

    if-eqz v9, :cond_bb

    .line 1058
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    if-ge v9, v8, :cond_bf

    .line 1059
    :cond_bb
    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v7, v8, v5

    .line 1061
    :cond_bf
    invoke-direct {p0, v7, p4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v8

    .line 1062
    iget-object v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v9, v9, v6

    if-eqz v9, :cond_cf

    .line 1063
    invoke-virtual {v9}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHeight()I

    move-result v9

    if-ge v9, v8, :cond_d3

    .line 1064
    :cond_cf
    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aput-object v7, v8, v6

    :cond_d3
    :goto_d3
    add-int/lit8 v6, v6, 0x1

    goto :goto_98

    :cond_d6
    add-int/lit8 v5, v5, 0x1

    goto :goto_95

    :cond_d9
    move v5, v0

    move v6, v5

    :goto_db
    if-ge v5, v2, :cond_f0

    .line 1071
    iget-object v7, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInCols:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v7, v7, v5

    if-eqz v7, :cond_ed

    if-lez v5, :cond_e8

    .line 1074
    iget v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v6, v8

    .line 1076
    :cond_e8
    invoke-direct {p0, v7, p4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v7

    add-int/2addr v6, v7

    :cond_ed
    add-int/lit8 v5, v5, 0x1

    goto :goto_db

    :cond_f0
    move v5, v0

    move v7, v5

    :goto_f2
    if-ge v5, v1, :cond_107

    .line 1081
    iget-object v8, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedBiggestElementsInRows:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v8, v8, v5

    if-eqz v8, :cond_104

    if-lez v5, :cond_ff

    .line 1084
    iget v9, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v7, v9

    .line 1086
    :cond_ff
    invoke-direct {p0, v8, p4}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v8

    add-int/2addr v7, v8

    :cond_104
    add-int/lit8 v5, v5, 0x1

    goto :goto_f2

    .line 1089
    :cond_107
    aput v6, p5, v0

    .line 1090
    aput v7, p5, v3

    if-nez p3, :cond_115

    if-le v6, p4, :cond_59

    if-le v2, v3, :cond_59

    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_5c

    :cond_115
    if-le v7, p4, :cond_59

    if-le v1, v3, :cond_59

    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_5c

    .line 1114
    :cond_11d
    iget-object p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mAlignedDimensions:[I

    aput v2, p1, v0

    .line 1115
    aput v1, p1, v3

    return-void
.end method

.method private measureChainWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .registers 34

    move-object/from16 v8, p0

    move/from16 v9, p2

    move/from16 v15, p4

    if-nez v9, :cond_9

    return-void

    .line 780
    :cond_9
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 781
    new-instance v10, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 782
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v20, 0x1

    const/16 v21, 0x0

    if-nez p3, :cond_92

    move/from16 v0, v21

    move v1, v0

    move v11, v1

    :goto_31
    if-ge v11, v9, :cond_f7

    .line 789
    aget-object v12, p1, v11

    .line 790
    invoke-direct {v8, v12, v15}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetWidth(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v13

    .line 791
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_43

    add-int/lit8 v0, v0, 0x1

    :cond_43
    move v14, v0

    if-eq v1, v15, :cond_4c

    .line 794
    iget v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v1

    add-int/2addr v0, v13

    if-le v0, v15, :cond_55

    :cond_4c
    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_55

    move/from16 v0, v20

    goto :goto_57

    :cond_55
    move/from16 v0, v21

    :goto_57
    if-nez v0, :cond_65

    if-lez v11, :cond_65

    .line 795
    iget v2, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    if-lez v2, :cond_65

    rem-int v2, v11, v2

    if-nez v2, :cond_65

    move/from16 v0, v20

    :cond_65
    if-eqz v0, :cond_85

    .line 800
    new-instance v10, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 801
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 802
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_83
    move v1, v13

    goto :goto_8b

    :cond_85
    if-lez v11, :cond_83

    .line 805
    iget v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v0, v13

    add-int/2addr v1, v0

    .line 810
    :goto_8b
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v11, v11, 0x1

    move v0, v14

    goto :goto_31

    :cond_92
    move/from16 v0, v21

    move v1, v0

    move v11, v1

    :goto_96
    if-ge v11, v9, :cond_f7

    .line 815
    aget-object v12, p1, v11

    .line 816
    invoke-direct {v8, v12, v15}, Landroidx/constraintlayout/solver/widgets/Flow;->getWidgetHeight(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;I)I

    move-result v13

    .line 817
    invoke-virtual {v12}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v2

    sget-object v3, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v2, v3, :cond_a8

    add-int/lit8 v0, v0, 0x1

    :cond_a8
    move v14, v0

    if-eq v1, v15, :cond_b1

    .line 820
    iget v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v0, v1

    add-int/2addr v0, v13

    if-le v0, v15, :cond_ba

    :cond_b1
    invoke-static {v10}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v0

    if-eqz v0, :cond_ba

    move/from16 v0, v20

    goto :goto_bc

    :cond_ba
    move/from16 v0, v21

    :goto_bc
    if-nez v0, :cond_ca

    if-lez v11, :cond_ca

    .line 821
    iget v2, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    if-lez v2, :cond_ca

    rem-int v2, v11, v2

    if-nez v2, :cond_ca

    move/from16 v0, v20

    :cond_ca
    if-eqz v0, :cond_ea

    .line 826
    new-instance v10, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v10

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 827
    invoke-virtual {v10, v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setStartIndex(I)V

    .line 828
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e8
    move v1, v13

    goto :goto_f0

    :cond_ea
    if-lez v11, :cond_e8

    .line 831
    iget v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v0, v13

    add-int/2addr v1, v0

    .line 836
    :goto_f0
    invoke-virtual {v10, v12}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v11, v11, 0x1

    move v0, v14

    goto :goto_96

    .line 839
    :cond_f7
    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 841
    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 842
    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 843
    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 844
    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 846
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v6

    .line 847
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v7

    .line 848
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v9

    .line 849
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v10

    .line 855
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-eq v11, v12, :cond_129

    .line 856
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v11

    sget-object v12, Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/solver/widgets/ConstraintWidget$DimensionBehaviour;

    if-ne v11, v12, :cond_126

    goto :goto_129

    :cond_126
    move/from16 v11, v21

    goto :goto_12b

    :cond_129
    :goto_129
    move/from16 v11, v20

    :goto_12b
    if-lez v0, :cond_153

    if-eqz v11, :cond_153

    move/from16 v0, v21

    :goto_131
    if-ge v0, v1, :cond_153

    .line 861
    iget-object v11, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    if-nez p3, :cond_147

    .line 863
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v12

    sub-int v12, v15, v12

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    goto :goto_150

    .line 865
    :cond_147
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v12

    sub-int v12, v15, v12

    invoke-virtual {v11, v12}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->measureMatchConstraints(I)V

    :goto_150
    add-int/lit8 v0, v0, 0x1

    goto :goto_131

    :cond_153
    move/from16 v22, v7

    move v0, v9

    move/from16 v12, v21

    move v13, v12

    move v14, v13

    move v7, v6

    move-object v6, v3

    move-object v3, v2

    move v2, v10

    :goto_15e
    if-ge v14, v1, :cond_237

    .line 871
    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v23, v9

    check-cast v23, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    if-nez p3, :cond_1cf

    add-int/lit8 v2, v1, -0x1

    if-ge v14, v2, :cond_183

    .line 874
    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v5, v14, 0x1

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 875
    invoke-static {v2}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move/from16 v5, v21

    goto :goto_189

    .line 878
    :cond_183
    iget-object v2, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 879
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v5

    .line 881
    :goto_189
    invoke-static/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    iget-object v11, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v9, v23

    move/from16 v10, p3

    move-object/from16 v24, v11

    move-object v11, v3

    move-object/from16 p1, v3

    move v3, v12

    move-object v12, v6

    move v6, v13

    move-object v13, v4

    move-object/from16 p2, v4

    move v4, v14

    move-object v14, v2

    move v15, v7

    move/from16 v16, v22

    move/from16 v17, v0

    move/from16 v18, v5

    move/from16 v19, p4

    .line 882
    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    .line 886
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v9

    invoke-static {v6, v9}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 887
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v9

    add-int v12, v3, v9

    if-lez v4, :cond_1bf

    .line 889
    iget v3, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    add-int/2addr v12, v3

    :cond_1bf
    move-object/from16 v3, p1

    move v13, v6

    move/from16 v22, v21

    move-object/from16 v6, v24

    move-object/from16 v24, p2

    move/from16 v27, v5

    move-object v5, v2

    move/from16 v2, v27

    goto/16 :goto_22f

    :cond_1cf
    move-object/from16 p1, v3

    move v3, v12

    move v0, v13

    move v4, v14

    add-int/lit8 v9, v1, -0x1

    if-ge v4, v9, :cond_1ed

    .line 893
    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    add-int/lit8 v14, v4, 0x1

    invoke-virtual {v9, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 894
    invoke-static {v9}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    iget-object v9, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v24, v9

    move/from16 v25, v21

    goto :goto_1f7

    .line 897
    :cond_1ed
    iget-object v9, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 898
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v10

    move-object/from16 v24, v9

    move/from16 v25, v10

    .line 900
    :goto_1f7
    invoke-static/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->access$2000(Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;)Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object v9

    iget-object v15, v9, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object/from16 v9, v23

    move/from16 v10, p3

    move-object/from16 v11, p1

    move-object v12, v6

    move-object/from16 v13, v24

    move-object v14, v5

    move-object/from16 v26, v15

    move v15, v7

    move/from16 v16, v22

    move/from16 v17, v25

    move/from16 v18, v2

    move/from16 v19, p4

    .line 901
    invoke-virtual/range {v9 .. v19}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    .line 905
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v7

    add-int v13, v0, v7

    .line 906
    invoke-virtual/range {v23 .. v23}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v4, :cond_228

    .line 908
    iget v3, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    add-int/2addr v13, v3

    :cond_228
    move v12, v0

    move/from16 v7, v21

    move/from16 v0, v25

    move-object/from16 v3, v26

    :goto_22f
    add-int/lit8 v14, v4, 0x1

    move/from16 v15, p4

    move-object/from16 v4, v24

    goto/16 :goto_15e

    :cond_237
    move v3, v12

    move v0, v13

    .line 912
    aput v0, p5, v21

    .line 913
    aput v3, p5, v20

    return-void
.end method

.method private measureNoWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V
    .registers 28

    move-object/from16 v8, p0

    move/from16 v9, p2

    if-nez v9, :cond_7

    return-void

    .line 933
    :cond_7
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v10, 0x0

    if-nez v0, :cond_2a

    .line 934
    new-instance v11, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    iget-object v3, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v4, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v5, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v6, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p3

    move/from16 v7, p4

    invoke-direct/range {v0 .. v7}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;-><init>(Landroidx/constraintlayout/solver/widgets/Flow;ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;I)V

    .line 935
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 937
    :cond_2a
    iget-object v0, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 938
    invoke-virtual {v0}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->clear()V

    .line 939
    iget-object v13, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mLeft:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v14, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mTop:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v15, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mRight:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    iget-object v1, v8, Landroidx/constraintlayout/solver/widgets/Flow;->mBottom:Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;

    .line 940
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v17

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v18

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v19

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v20

    move-object v11, v0

    move/from16 v12, p3

    move-object/from16 v16, v1

    move/from16 v21, p4

    .line 939
    invoke-virtual/range {v11 .. v21}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->setup(ILandroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;Landroidx/constraintlayout/solver/widgets/ConstraintAnchor;IIIII)V

    :goto_57
    move v0, v10

    :goto_58
    if-ge v0, v9, :cond_62

    .line 944
    aget-object v1, p1, v0

    .line 945
    invoke-virtual {v11, v1}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->add(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_58

    .line 948
    :cond_62
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getWidth()I

    move-result v0

    aput v0, p5, v10

    .line 949
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->getHeight()I

    move-result v0

    const/4 v1, 0x1

    aput v0, p5, v1

    return-void
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V
    .registers 8

    .line 1215
    invoke-super {p0, p1}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->addToSolver(Landroidx/constraintlayout/solver/LinearSystem;)V

    .line 1217
    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getParent()Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move-result-object p1

    check-cast p1, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;

    invoke-virtual {p1}, Landroidx/constraintlayout/solver/widgets/ConstraintWidgetContainer;->isRtl()Z

    move-result p1

    goto :goto_16

    :cond_15
    move p1, v0

    .line 1218
    :goto_16
    iget v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_43

    if-eq v1, v2, :cond_25

    const/4 v2, 0x2

    if-eq v1, v2, :cond_21

    goto :goto_56

    .line 1234
    :cond_21
    invoke-direct {p0, p1}, Landroidx/constraintlayout/solver/widgets/Flow;->createAlignedConstraints(Z)V

    goto :goto_56

    .line 1220
    :cond_25
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v3, v0

    :goto_2c
    if-ge v3, v1, :cond_56

    .line 1222
    iget-object v4, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    add-int/lit8 v5, v1, -0x1

    if-ne v3, v5, :cond_3c

    move v5, v2

    goto :goto_3d

    :cond_3c
    move v5, v0

    .line 1223
    :goto_3d
    invoke-virtual {v4, p1, v3, v5}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2c

    .line 1227
    :cond_43
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_56

    .line 1228
    iget-object v1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mChainList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;

    .line 1229
    invoke-virtual {v1, p1, v0, v2}, Landroidx/constraintlayout/solver/widgets/Flow$WidgetsList;->createConstraints(ZIZ)V

    .line 1237
    :cond_56
    :goto_56
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/solver/widgets/Flow;->needsCallbackFromSolver(Z)V

    return-void
.end method

.method public copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/solver/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    .line 85
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/solver/widgets/VirtualLayout;->copy(Landroidx/constraintlayout/solver/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    .line 86
    check-cast p1, Landroidx/constraintlayout/solver/widgets/Flow;

    .line 88
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 89
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    .line 90
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    .line 91
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    .line 92
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    .line 93
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    .line 95
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    .line 96
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    .line 97
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    .line 98
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    .line 99
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    .line 100
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    .line 102
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    .line 103
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    .line 105
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    .line 106
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    .line 107
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    .line 109
    iget p2, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    iput p2, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    .line 111
    iget p1, p1, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    return-void
.end method

.method public measure(IIII)V
    .registers 23

    move-object/from16 v6, p0

    move/from16 v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    .line 225
    iget v0, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    const/4 v11, 0x0

    if-lez v0, :cond_1c

    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->measureChildren()Z

    move-result v0

    if-nez v0, :cond_1c

    .line 226
    invoke-virtual {v6, v11, v11}, Landroidx/constraintlayout/solver/widgets/Flow;->setMeasure(II)V

    .line 227
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/solver/widgets/Flow;->needsCallbackFromSolver(Z)V

    return-void

    .line 233
    :cond_1c
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingLeft()I

    move-result v12

    .line 234
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingRight()I

    move-result v13

    .line 235
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingTop()I

    move-result v14

    .line 236
    invoke-virtual/range {p0 .. p0}, Landroidx/constraintlayout/solver/widgets/Flow;->getPaddingBottom()I

    move-result v15

    const/4 v0, 0x2

    new-array v5, v0, [I

    sub-int v1, v8, v12

    sub-int/2addr v1, v13

    .line 240
    iget v2, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_3a

    sub-int v1, v10, v14

    sub-int/2addr v1, v15

    :cond_3a
    move/from16 v16, v1

    const/4 v1, -0x1

    if-nez v2, :cond_4c

    .line 245
    iget v2, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    if-ne v2, v1, :cond_45

    .line 246
    iput v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 248
    :cond_45
    iget v2, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    if-ne v2, v1, :cond_58

    .line 249
    iput v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    goto :goto_58

    .line 252
    :cond_4c
    iget v2, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    if-ne v2, v1, :cond_52

    .line 253
    iput v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    .line 255
    :cond_52
    iget v2, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    if-ne v2, v1, :cond_58

    .line 256
    iput v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    .line 260
    :cond_58
    :goto_58
    iget-object v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    move v2, v11

    move v3, v2

    .line 263
    :goto_5c
    iget v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    const/16 v0, 0x8

    if-ge v2, v11, :cond_72

    .line 264
    iget-object v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v11, v11, v2

    .line 265
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v11

    if-ne v11, v0, :cond_6e

    add-int/lit8 v3, v3, 0x1

    :cond_6e
    add-int/lit8 v2, v2, 0x1

    const/4 v0, 0x2

    goto :goto_5c

    .line 269
    :cond_72
    iget v2, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    if-lez v3, :cond_94

    .line 271
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    sub-int/2addr v1, v3

    new-array v1, v1, [Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 273
    :goto_7d
    iget v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    if-ge v2, v11, :cond_93

    .line 274
    iget-object v11, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    aget-object v11, v11, v2

    .line 275
    invoke-virtual {v11}, Landroidx/constraintlayout/solver/widgets/ConstraintWidget;->getVisibility()I

    move-result v4

    if-eq v4, v0, :cond_8f

    .line 276
    aput-object v11, v1, v3

    add-int/lit8 v3, v3, 0x1

    :cond_8f
    add-int/lit8 v2, v2, 0x1

    const/4 v4, 0x1

    goto :goto_7d

    :cond_93
    move v2, v3

    .line 282
    :cond_94
    iput-object v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgets:[Landroidx/constraintlayout/solver/widgets/ConstraintWidget;

    .line 283
    iput v2, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mDisplayedWidgetsCount:I

    .line 284
    iget v0, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    if-eqz v0, :cond_c1

    const/4 v4, 0x1

    if-eq v0, v4, :cond_b4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_a7

    move v11, v4

    move-object/from16 v17, v5

    :goto_a5
    const/4 v0, 0x0

    goto :goto_ce

    .line 286
    :cond_a7
    iget v3, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    move-object/from16 v0, p0

    move v11, v4

    move/from16 v4, v16

    move-object/from16 v17, v5

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/Flow;->measureAligned([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    goto :goto_a5

    :cond_b4
    move v11, v4

    move-object/from16 v17, v5

    .line 290
    iget v3, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    move-object/from16 v0, p0

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/Flow;->measureChainWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    goto :goto_a5

    :cond_c1
    move-object/from16 v17, v5

    const/4 v11, 0x1

    .line 294
    iget v3, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    move-object/from16 v0, p0

    move/from16 v4, v16

    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/solver/widgets/Flow;->measureNoWrap([Landroidx/constraintlayout/solver/widgets/ConstraintWidget;III[I)V

    goto :goto_a5

    :goto_ce
    aget v1, v17, v0

    add-int/2addr v1, v12

    add-int/2addr v1, v13

    aget v2, v17, v11

    add-int/2addr v2, v14

    add-int/2addr v2, v15

    const/high16 v3, -0x80000000

    const/high16 v4, 0x40000000    # 2.0f

    if-ne v7, v4, :cond_de

    move v1, v8

    goto :goto_e9

    :cond_de
    if-ne v7, v3, :cond_e5

    .line 308
    invoke-static {v1, v8}, Ljava/lang/Math;->min(II)I

    move-result v1

    goto :goto_e9

    :cond_e5
    if-nez v7, :cond_e8

    goto :goto_e9

    :cond_e8
    move v1, v0

    :goto_e9
    if-ne v9, v4, :cond_ed

    move v2, v10

    goto :goto_f8

    :cond_ed
    if-ne v9, v3, :cond_f4

    .line 316
    invoke-static {v2, v10}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_f8

    :cond_f4
    if-nez v9, :cond_f7

    goto :goto_f8

    :cond_f7
    move v2, v0

    .line 321
    :goto_f8
    invoke-virtual {v6, v1, v2}, Landroidx/constraintlayout/solver/widgets/Flow;->setMeasure(II)V

    .line 322
    invoke-virtual {v6, v1}, Landroidx/constraintlayout/solver/widgets/Flow;->setWidth(I)V

    .line 323
    invoke-virtual {v6, v2}, Landroidx/constraintlayout/solver/widgets/Flow;->setHeight(I)V

    .line 324
    iget v1, v6, Landroidx/constraintlayout/solver/widgets/Flow;->mWidgetsCount:I

    if-lez v1, :cond_106

    goto :goto_107

    :cond_106
    move v11, v0

    :goto_107
    invoke-virtual {v6, v11}, Landroidx/constraintlayout/solver/widgets/Flow;->needsCallbackFromSolver(Z)V

    return-void
.end method

.method public setFirstHorizontalBias(F)V
    .registers 2

    .line 146
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalBias:F

    return-void
.end method

.method public setFirstHorizontalStyle(I)V
    .registers 2

    .line 122
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstHorizontalStyle:I

    return-void
.end method

.method public setFirstVerticalBias(F)V
    .registers 2

    .line 148
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalBias:F

    return-void
.end method

.method public setFirstVerticalStyle(I)V
    .registers 2

    .line 124
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mFirstVerticalStyle:I

    return-void
.end method

.method public setHorizontalAlign(I)V
    .registers 2

    .line 155
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalAlign:I

    return-void
.end method

.method public setHorizontalBias(F)V
    .registers 2

    .line 139
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalBias:F

    return-void
.end method

.method public setHorizontalGap(I)V
    .registers 2

    .line 166
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalGap:I

    return-void
.end method

.method public setHorizontalStyle(I)V
    .registers 2

    .line 131
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mHorizontalStyle:I

    return-void
.end method

.method public setLastHorizontalBias(F)V
    .registers 2

    .line 150
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalBias:F

    return-void
.end method

.method public setLastHorizontalStyle(I)V
    .registers 2

    .line 126
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastHorizontalStyle:I

    return-void
.end method

.method public setLastVerticalBias(F)V
    .registers 2

    .line 152
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalBias:F

    return-void
.end method

.method public setLastVerticalStyle(I)V
    .registers 2

    .line 128
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mLastVerticalStyle:I

    return-void
.end method

.method public setMaxElementsWrap(I)V
    .registers 2

    .line 170
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mMaxElementsWrap:I

    return-void
.end method

.method public setOrientation(I)V
    .registers 2

    .line 119
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mOrientation:I

    return-void
.end method

.method public setVerticalAlign(I)V
    .registers 2

    .line 159
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalAlign:I

    return-void
.end method

.method public setVerticalBias(F)V
    .registers 2

    .line 143
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalBias:F

    return-void
.end method

.method public setVerticalGap(I)V
    .registers 2

    .line 168
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalGap:I

    return-void
.end method

.method public setVerticalStyle(I)V
    .registers 2

    .line 135
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mVerticalStyle:I

    return-void
.end method

.method public setWrapMode(I)V
    .registers 2

    .line 163
    iput p1, p0, Landroidx/constraintlayout/solver/widgets/Flow;->mWrapMode:I

    return-void
.end method
