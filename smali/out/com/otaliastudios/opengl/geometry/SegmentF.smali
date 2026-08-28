.class public Lcom/otaliastudios/opengl/geometry/SegmentF;
.super Ljava/lang/Object;
.source "SegmentF.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u000e\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0003\u0008\u0016\u0018\u00002\u00020\u0001B\u001f\u0008\u0016\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\n\u0010\u0005\u001a\u00060\u0003j\u0002`\u0004\u00a2\u0006\u0002\u0010\u0006B%\u0012\u0006\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\u0008\u0012\u0006\u0010\n\u001a\u00020\u0008\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0002\u0010\u000cJ\u0010\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0000H\u0016J\u0016\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u001b\u001a\u00020\u00082\u0006\u0010\u001c\u001a\u00020\u0008R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\t\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u000eR\u0011\u0010\n\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0010\u0010\u000eR\u0011\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u000eR\u001b\u0010\u0012\u001a\u00020\u00088FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0015\u001a\u0004\u0008\u0013\u0010\u000e\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/otaliastudios/opengl/geometry/SegmentF;",
        "",
        "i",
        "Landroid/graphics/PointF;",
        "Lcom/otaliastudios/opengl/geometry/PointF;",
        "j",
        "(Landroid/graphics/PointF;Landroid/graphics/PointF;)V",
        "ix",
        "",
        "iy",
        "jx",
        "jy",
        "(FFFF)V",
        "getIx",
        "()F",
        "getIy",
        "getJx",
        "getJy",
        "length",
        "getLength",
        "length$delegate",
        "Lkotlin/Lazy;",
        "intersects",
        "",
        "other",
        "orientation",
        "",
        "x",
        "y",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final ix:F

.field private final iy:F

.field private final jx:F

.field private final jy:F

.field private final length$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(FFFF)V
    .registers 5

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    iput p2, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    iput p3, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    iput p4, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    .line 10
    new-instance p1, Lcom/otaliastudios/opengl/geometry/SegmentF$length$2;

    invoke-direct {p1, p0}, Lcom/otaliastudios/opengl/geometry/SegmentF$length$2;-><init>(Lcom/otaliastudios/opengl/geometry/SegmentF;)V

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->length$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;Landroid/graphics/PointF;)V
    .registers 5

    const-string v0, "i"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "j"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v1, p2, Landroid/graphics/PointF;->x:F

    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, p1, v1, p2}, Lcom/otaliastudios/opengl/geometry/SegmentF;-><init>(FFFF)V

    return-void
.end method


# virtual methods
.method public final getIx()F
    .registers 2

    .line 5
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    return v0
.end method

.method public final getIy()F
    .registers 2

    .line 5
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    return v0
.end method

.method public final getJx()F
    .registers 2

    .line 5
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    return v0
.end method

.method public final getJy()F
    .registers 2

    .line 5
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    return v0
.end method

.method public final getLength()F
    .registers 2

    .line 10
    iget-object v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->length$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    return v0
.end method

.method public intersects(Lcom/otaliastudios/opengl/geometry/SegmentF;)Z
    .registers 14

    const-string v0, "other"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    iget v1, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 22
    iget v1, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    iget v2, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 23
    iget v2, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    iget v3, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 24
    iget v3, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    iget v4, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    cmpl-float v4, v0, v3

    const/4 v5, 0x0

    if-lez v4, :cond_2b

    return v5

    :cond_2b
    cmpg-float v1, v1, v2

    if-gez v1, :cond_30

    return v5

    .line 27
    :cond_30
    iget v2, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    iget v4, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    invoke-static {v2, v4}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 28
    iget v4, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    iget v6, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    invoke-static {v4, v6}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 29
    iget v6, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    iget v7, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 30
    iget v7, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    iget v8, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    invoke-static {v7, v8}, Ljava/lang/Math;->max(FF)F

    move-result v7

    cmpl-float v8, v2, v7

    if-lez v8, :cond_55

    return v5

    :cond_55
    cmpg-float v4, v4, v6

    if-gez v4, :cond_5a

    return v5

    .line 36
    :cond_5a
    iget v6, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    iget v8, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    invoke-virtual {p0, v6, v8}, Lcom/otaliastudios/opengl/geometry/SegmentF;->orientation(FF)I

    move-result v6

    .line 37
    iget v8, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    iget v9, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    invoke-virtual {p0, v8, v9}, Lcom/otaliastudios/opengl/geometry/SegmentF;->orientation(FF)I

    move-result v8

    if-lez v6, :cond_6f

    if-lez v8, :cond_6f

    return v5

    :cond_6f
    if-gez v6, :cond_74

    if-gez v8, :cond_74

    return v5

    .line 41
    :cond_74
    iget v9, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    iget v10, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    invoke-virtual {p1, v9, v10}, Lcom/otaliastudios/opengl/geometry/SegmentF;->orientation(FF)I

    move-result v9

    .line 42
    iget v10, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    iget v11, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    invoke-virtual {p1, v10, v11}, Lcom/otaliastudios/opengl/geometry/SegmentF;->orientation(FF)I

    move-result v10

    if-lez v9, :cond_89

    if-lez v10, :cond_89

    return v5

    :cond_89
    if-gez v9, :cond_8e

    if-gez v10, :cond_8e

    return v5

    :cond_8e
    const/4 v11, 0x1

    if-nez v6, :cond_da

    if-nez v8, :cond_da

    if-nez v9, :cond_da

    if-nez v10, :cond_da

    cmpg-float p1, v0, v3

    if-nez p1, :cond_9d

    move v0, v11

    goto :goto_9e

    :cond_9d
    move v0, v5

    :goto_9e
    if-eqz v0, :cond_aa

    cmpg-float v0, v2, v7

    if-nez v0, :cond_a6

    move v0, v11

    goto :goto_a7

    :cond_a6
    move v0, v5

    :goto_a7
    if-eqz v0, :cond_aa

    return v5

    :cond_aa
    if-nez p1, :cond_ae

    move p1, v11

    goto :goto_af

    :cond_ae
    move p1, v5

    :goto_af
    if-eqz p1, :cond_b9

    if-nez v4, :cond_b5

    move p1, v11

    goto :goto_b6

    :cond_b5
    move p1, v5

    :goto_b6
    if-eqz p1, :cond_b9

    return v5

    :cond_b9
    if-nez v1, :cond_bd

    move p1, v11

    goto :goto_be

    :cond_bd
    move p1, v5

    :goto_be
    if-eqz p1, :cond_ca

    cmpg-float p1, v2, v7

    if-nez p1, :cond_c6

    move p1, v11

    goto :goto_c7

    :cond_c6
    move p1, v5

    :goto_c7
    if-eqz p1, :cond_ca

    return v5

    :cond_ca
    if-nez v1, :cond_ce

    move p1, v11

    goto :goto_cf

    :cond_ce
    move p1, v5

    :goto_cf
    if-eqz p1, :cond_d9

    if-nez v4, :cond_d5

    move p1, v11

    goto :goto_d6

    :cond_d5
    move p1, v5

    :goto_d6
    if-eqz p1, :cond_d9

    return v5

    :cond_d9
    return v11

    .line 60
    :cond_da
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    iget v1, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    cmpg-float v2, v0, v1

    if-nez v2, :cond_e4

    move v2, v11

    goto :goto_e5

    :cond_e4
    move v2, v5

    :goto_e5
    if-eqz v2, :cond_f5

    iget v2, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    iget v3, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_f1

    move v2, v11

    goto :goto_f2

    :cond_f1
    move v2, v5

    :goto_f2
    if-eqz v2, :cond_f5

    return v5

    .line 61
    :cond_f5
    iget v2, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    iget v3, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    cmpg-float v4, v2, v3

    if-nez v4, :cond_ff

    move v4, v11

    goto :goto_100

    :cond_ff
    move v4, v5

    :goto_100
    if-eqz v4, :cond_110

    iget v4, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    iget v6, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    cmpg-float v4, v4, v6

    if-nez v4, :cond_10c

    move v4, v11

    goto :goto_10d

    :cond_10c
    move v4, v5

    :goto_10d
    if-eqz v4, :cond_110

    return v5

    :cond_110
    cmpg-float v0, v0, v3

    if-nez v0, :cond_116

    move v0, v11

    goto :goto_117

    :cond_116
    move v0, v5

    :goto_117
    if-eqz v0, :cond_127

    .line 62
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    iget v3, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    cmpg-float v0, v0, v3

    if-nez v0, :cond_123

    move v0, v11

    goto :goto_124

    :cond_123
    move v0, v5

    :goto_124
    if-eqz v0, :cond_127

    return v5

    :cond_127
    cmpg-float v0, v2, v1

    if-nez v0, :cond_12d

    move v0, v11

    goto :goto_12e

    :cond_12d
    move v0, v5

    :goto_12e
    if-eqz v0, :cond_13e

    .line 63
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    iget p1, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    cmpg-float p1, v0, p1

    if-nez p1, :cond_13a

    move p1, v11

    goto :goto_13b

    :cond_13a
    move p1, v5

    :goto_13b
    if-eqz p1, :cond_13e

    return v5

    :cond_13e
    return v11
.end method

.method public final orientation(FF)I
    .registers 6

    .line 74
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    iget v1, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    sub-float v1, v0, v1

    iget v2, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    sub-float/2addr p2, v2

    mul-float/2addr v1, p2

    iget p2, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    sub-float/2addr v2, p2

    sub-float/2addr p1, v0

    mul-float/2addr v2, p1

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->signum(F)F

    move-result p1

    float-to-int p1, p1

    return p1
.end method
