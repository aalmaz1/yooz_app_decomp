.class public abstract Landroidx/constraintlayout/motion/widget/SplineSet;
.super Ljava/lang/Object;
.source "SplineSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/SplineSet$Sort;,
        Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;,
        Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;,
        Landroidx/constraintlayout/motion/widget/SplineSet$TranslationZset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$TranslationYset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$TranslationXset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$ScaleYset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$ScaleXset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;,
        Landroidx/constraintlayout/motion/widget/SplineSet$PivotYset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$PivotXset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$RotationYset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$RotationXset;,
        Landroidx/constraintlayout/motion/widget/SplineSet$RotationSet;,
        Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;,
        Landroidx/constraintlayout/motion/widget/SplineSet$ElevationSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SplineSet"


# instance fields
.field private count:I

.field protected mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

.field protected mTimePoints:[I

.field private mType:Ljava/lang/String;

.field protected mValues:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    new-array v1, v0, [I

    .line 40
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    new-array v0, v0, [F

    .line 41
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    return-void
.end method

.method static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/widget/SplineSet;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)",
            "Landroidx/constraintlayout/motion/widget/SplineSet;"
        }
    .end annotation

    .line 75
    new-instance v0, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;

    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/widget/SplineSet$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-object v0
.end method

.method static makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/widget/SplineSet;
    .registers 3

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_142

    goto/16 :goto_dc

    :sswitch_d
    const-string/jumbo v0, "waveOffset"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_18

    goto/16 :goto_dc

    :cond_18
    const/16 v1, 0xf

    goto/16 :goto_dc

    :sswitch_1c
    const-string v0, "alpha"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_26

    goto/16 :goto_dc

    :cond_26
    const/16 v1, 0xe

    goto/16 :goto_dc

    :sswitch_2a
    const-string/jumbo v0, "transitionPathRotate"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_35

    goto/16 :goto_dc

    :cond_35
    const/16 v1, 0xd

    goto/16 :goto_dc

    :sswitch_39
    const-string v0, "elevation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_43

    goto/16 :goto_dc

    :cond_43
    const/16 v1, 0xc

    goto/16 :goto_dc

    :sswitch_47
    const-string v0, "rotation"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_51

    goto/16 :goto_dc

    :cond_51
    const/16 v1, 0xb

    goto/16 :goto_dc

    :sswitch_55
    const-string/jumbo v0, "transformPivotY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_60

    goto/16 :goto_dc

    :cond_60
    const/16 v1, 0xa

    goto/16 :goto_dc

    :sswitch_64
    const-string/jumbo v0, "transformPivotX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6f

    goto/16 :goto_dc

    :cond_6f
    const/16 v1, 0x9

    goto/16 :goto_dc

    :sswitch_73
    const-string/jumbo v0, "waveVariesBy"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7e

    goto/16 :goto_dc

    :cond_7e
    const/16 v1, 0x8

    goto/16 :goto_dc

    :sswitch_82
    const-string v0, "scaleY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8b

    goto :goto_dc

    :cond_8b
    const/4 v1, 0x7

    goto :goto_dc

    :sswitch_8d
    const-string v0, "scaleX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_96

    goto :goto_dc

    :cond_96
    const/4 v1, 0x6

    goto :goto_dc

    :sswitch_98
    const-string v0, "progress"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a1

    goto :goto_dc

    :cond_a1
    const/4 v1, 0x5

    goto :goto_dc

    :sswitch_a3
    const-string/jumbo v0, "translationZ"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ad

    goto :goto_dc

    :cond_ad
    const/4 v1, 0x4

    goto :goto_dc

    :sswitch_af
    const-string/jumbo v0, "translationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b9

    goto :goto_dc

    :cond_b9
    const/4 v1, 0x3

    goto :goto_dc

    :sswitch_bb
    const-string/jumbo v0, "translationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c5

    goto :goto_dc

    :cond_c5
    const/4 v1, 0x2

    goto :goto_dc

    :sswitch_c7
    const-string v0, "rotationY"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d0

    goto :goto_dc

    :cond_d0
    const/4 v1, 0x1

    goto :goto_dc

    :sswitch_d2
    const-string v0, "rotationX"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_db

    goto :goto_dc

    :cond_db
    const/4 v1, 0x0

    :goto_dc
    packed-switch v1, :pswitch_data_184

    const/4 p0, 0x0

    return-object p0

    .line 101
    :pswitch_e1
    new-instance p0, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;-><init>()V

    return-object p0

    .line 81
    :pswitch_e7
    new-instance p0, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;-><init>()V

    return-object p0

    .line 95
    :pswitch_ed
    new-instance p0, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet$PathRotate;-><init>()V

    return-object p0

    .line 83
    :pswitch_f3
    new-instance p0, Landroidx/constraintlayout/motion/widget/SplineSet$ElevationSet;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet$ElevationSet;-><init>()V

    return-object p0

    .line 85
    :pswitch_f9
    new-instance p0, Landroidx/constraintlayout/motion/widget/SplineSet$RotationSet;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet$RotationSet;-><init>()V

    return-object p0

    .line 93
    :pswitch_ff
    new-instance p0, Landroidx/constraintlayout/motion/widget/SplineSet$PivotYset;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet$PivotYset;-><init>()V

    return-object p0

    .line 91
    :pswitch_105
    new-instance p0, Landroidx/constraintlayout/motion/widget/SplineSet$PivotXset;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet$PivotXset;-><init>()V

    return-object p0

    .line 103
    :pswitch_10b
    new-instance p0, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet$AlphaSet;-><init>()V

    return-object p0

    .line 99
    :pswitch_111
    new-instance p0, Landroidx/constraintlayout/motion/widget/SplineSet$ScaleYset;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet$ScaleYset;-><init>()V

    return-object p0

    .line 97
    :pswitch_117
    new-instance p0, Landroidx/constraintlayout/motion/widget/SplineSet$ScaleXset;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet$ScaleXset;-><init>()V

    return-object p0

    .line 111
    :pswitch_11d
    new-instance p0, Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet$ProgressSet;-><init>()V

    return-object p0

    .line 109
    :pswitch_123
    new-instance p0, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationZset;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationZset;-><init>()V

    return-object p0

    .line 107
    :pswitch_129
    new-instance p0, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationYset;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationYset;-><init>()V

    return-object p0

    .line 105
    :pswitch_12f
    new-instance p0, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationXset;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet$TranslationXset;-><init>()V

    return-object p0

    .line 89
    :pswitch_135
    new-instance p0, Landroidx/constraintlayout/motion/widget/SplineSet$RotationYset;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet$RotationYset;-><init>()V

    return-object p0

    .line 87
    :pswitch_13b
    new-instance p0, Landroidx/constraintlayout/motion/widget/SplineSet$RotationXset;

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/SplineSet$RotationXset;-><init>()V

    return-object p0

    nop

    :sswitch_data_142
    .sparse-switch
        -0x4a771f66 -> :sswitch_d2
        -0x4a771f65 -> :sswitch_c7
        -0x490b9c39 -> :sswitch_bb
        -0x490b9c38 -> :sswitch_af
        -0x490b9c37 -> :sswitch_a3
        -0x3bab3dd3 -> :sswitch_98
        -0x3621dfb2 -> :sswitch_8d
        -0x3621dfb1 -> :sswitch_82
        -0x2f893320 -> :sswitch_73
        -0x2d5a2d1e -> :sswitch_64
        -0x2d5a2d1d -> :sswitch_55
        -0x266f082 -> :sswitch_47
        -0x42d1a3 -> :sswitch_39
        0x2382115 -> :sswitch_2a
        0x589b15e -> :sswitch_1c
        0x94e04ec -> :sswitch_d
    .end sparse-switch

    :pswitch_data_184
    .packed-switch 0x0
        :pswitch_13b
        :pswitch_135
        :pswitch_12f
        :pswitch_129
        :pswitch_123
        :pswitch_11d
        :pswitch_117
        :pswitch_111
        :pswitch_10b
        :pswitch_105
        :pswitch_ff
        :pswitch_f9
        :pswitch_f3
        :pswitch_ed
        :pswitch_e7
        :pswitch_e1
    .end packed-switch
.end method


# virtual methods
.method public get(F)F
    .registers 5

    .line 63
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v1, p1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroidx/constraintlayout/motion/utils/CurveFit;->getPos(DI)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public getCurveFit()Landroidx/constraintlayout/motion/utils/CurveFit;
    .registers 2

    .line 71
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    return-object v0
.end method

.method public getSlope(F)F
    .registers 5

    .line 67
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    float-to-double v1, p1

    const/4 p1, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroidx/constraintlayout/motion/utils/CurveFit;->getSlope(DI)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method public setPoint(IF)V
    .registers 6

    .line 120
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    array-length v1, v0

    iget v2, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_1d

    .line 121
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    .line 122
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    .line 124
    :cond_1d
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    iget v1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    aput p1, v0, v1

    .line 125
    iget-object p1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    aput p2, p1, v1

    add-int/lit8 v1, v1, 0x1

    .line 126
    iput v1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    return-void
.end method

.method public abstract setProperty(Landroid/view/View;F)V
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 57
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mType:Ljava/lang/String;

    return-void
.end method

.method public setup(I)V
    .registers 11

    .line 130
    iget v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    if-nez v0, :cond_5

    return-void

    .line 134
    :cond_5
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    const/4 v3, 0x1

    sub-int/2addr v0, v3

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v0}, Landroidx/constraintlayout/motion/widget/SplineSet$Sort;->doubleQuickSort([I[FII)V

    move v0, v3

    move v1, v0

    .line 138
    :goto_11
    iget v2, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    if-ge v0, v2, :cond_24

    .line 139
    iget-object v2, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    add-int/lit8 v5, v0, -0x1

    aget v5, v2, v5

    aget v2, v2, v0

    if-eq v5, v2, :cond_21

    add-int/lit8 v1, v1, 0x1

    :cond_21
    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    .line 144
    :cond_24
    new-array v0, v1, [D

    const/4 v2, 0x2

    new-array v2, v2, [I

    aput v3, v2, v3

    aput v1, v2, v4

    .line 145
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v2, v4

    move v3, v2

    .line 147
    :goto_37
    iget v5, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    if-ge v2, v5, :cond_63

    if-lez v2, :cond_48

    .line 148
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    aget v6, v5, v2

    add-int/lit8 v7, v2, -0x1

    aget v5, v5, v7

    if-ne v6, v5, :cond_48

    goto :goto_60

    .line 152
    :cond_48
    iget-object v5, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    aget v5, v5, v2

    int-to-double v5, v5

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    mul-double/2addr v5, v7

    aput-wide v5, v0, v3

    .line 153
    aget-object v5, v1, v3

    iget-object v6, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    aget v6, v6, v2

    float-to-double v6, v6

    aput-wide v6, v5, v4

    add-int/lit8 v3, v3, 0x1

    :goto_60
    add-int/lit8 v2, v2, 0x1

    goto :goto_37

    .line 156
    :cond_63
    invoke-static {p1, v0, v1}, Landroidx/constraintlayout/motion/utils/CurveFit;->get(I[D[[D)Landroidx/constraintlayout/motion/utils/CurveFit;

    move-result-object p1

    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mCurveFit:Landroidx/constraintlayout/motion/utils/CurveFit;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 47
    iget-object v0, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mType:Ljava/lang/String;

    .line 48
    new-instance v1, Ljava/text/DecimalFormat;

    const-string v2, "##.##"

    invoke-direct {v1, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 49
    :goto_a
    iget v3, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->count:I

    if-ge v2, v3, :cond_45

    .line 50
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mTimePoints:[I

    aget v3, v3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " , "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Landroidx/constraintlayout/motion/widget/SplineSet;->mValues:[F

    aget v3, v3, v2

    float-to-double v3, v3

    invoke-virtual {v1, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    :cond_45
    return-object v0
.end method
