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
    .locals 0

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

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
    .locals 2

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
    .locals 1

    .line 5
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    return v0
.end method

.method public final getIy()F
    .locals 1

    .line 5
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    return v0
.end method

.method public final getJx()F
    .locals 1

    .line 5
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    return v0
.end method

.method public final getJy()F
    .locals 1

    .line 5
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    return v0
.end method

.method public final getLength()F
    .locals 1

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
    .locals 12

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

    if-lez v4, :cond_0

    return v5

    :cond_0
    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    return v5

    .line 27
    :cond_1
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

    if-lez v8, :cond_2

    return v5

    :cond_2
    cmpg-float v4, v4, v6

    if-gez v4, :cond_3

    return v5

    .line 36
    :cond_3
    iget v6, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    iget v8, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    invoke-virtual {p0, v6, v8}, Lcom/otaliastudios/opengl/geometry/SegmentF;->orientation(FF)I

    move-result v6

    .line 37
    iget v8, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    iget v9, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    invoke-virtual {p0, v8, v9}, Lcom/otaliastudios/opengl/geometry/SegmentF;->orientation(FF)I

    move-result v8

    if-lez v6, :cond_4

    if-lez v8, :cond_4

    return v5

    :cond_4
    if-gez v6, :cond_5

    if-gez v8, :cond_5

    return v5

    .line 41
    :cond_5
    iget v9, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    iget v10, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    invoke-virtual {p1, v9, v10}, Lcom/otaliastudios/opengl/geometry/SegmentF;->orientation(FF)I

    move-result v9

    .line 42
    iget v10, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    iget v11, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    invoke-virtual {p1, v10, v11}, Lcom/otaliastudios/opengl/geometry/SegmentF;->orientation(FF)I

    move-result v10

    if-lez v9, :cond_6

    if-lez v10, :cond_6

    return v5

    :cond_6
    if-gez v9, :cond_7

    if-gez v10, :cond_7

    return v5

    :cond_7
    const/4 v11, 0x1

    if-nez v6, :cond_14

    if-nez v8, :cond_14

    if-nez v9, :cond_14

    if-nez v10, :cond_14

    cmpg-float p1, v0, v3

    if-nez p1, :cond_8

    move v0, v11

    goto :goto_0

    :cond_8
    move v0, v5

    :goto_0
    if-eqz v0, :cond_a

    cmpg-float v0, v2, v7

    if-nez v0, :cond_9

    move v0, v11

    goto :goto_1

    :cond_9
    move v0, v5

    :goto_1
    if-eqz v0, :cond_a

    return v5

    :cond_a
    if-nez p1, :cond_b

    move p1, v11

    goto :goto_2

    :cond_b
    move p1, v5

    :goto_2
    if-eqz p1, :cond_d

    if-nez v4, :cond_c

    move p1, v11

    goto :goto_3

    :cond_c
    move p1, v5

    :goto_3
    if-eqz p1, :cond_d

    return v5

    :cond_d
    if-nez v1, :cond_e

    move p1, v11

    goto :goto_4

    :cond_e
    move p1, v5

    :goto_4
    if-eqz p1, :cond_10

    cmpg-float p1, v2, v7

    if-nez p1, :cond_f

    move p1, v11

    goto :goto_5

    :cond_f
    move p1, v5

    :goto_5
    if-eqz p1, :cond_10

    return v5

    :cond_10
    if-nez v1, :cond_11

    move p1, v11

    goto :goto_6

    :cond_11
    move p1, v5

    :goto_6
    if-eqz p1, :cond_13

    if-nez v4, :cond_12

    move p1, v11

    goto :goto_7

    :cond_12
    move p1, v5

    :goto_7
    if-eqz p1, :cond_13

    return v5

    :cond_13
    return v11

    .line 60
    :cond_14
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    iget v1, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->ix:F

    cmpg-float v2, v0, v1

    if-nez v2, :cond_15

    move v2, v11

    goto :goto_8

    :cond_15
    move v2, v5

    :goto_8
    if-eqz v2, :cond_17

    iget v2, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    iget v3, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    cmpg-float v2, v2, v3

    if-nez v2, :cond_16

    move v2, v11

    goto :goto_9

    :cond_16
    move v2, v5

    :goto_9
    if-eqz v2, :cond_17

    return v5

    .line 61
    :cond_17
    iget v2, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    iget v3, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jx:F

    cmpg-float v4, v2, v3

    if-nez v4, :cond_18

    move v4, v11

    goto :goto_a

    :cond_18
    move v4, v5

    :goto_a
    if-eqz v4, :cond_1a

    iget v4, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    iget v6, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    cmpg-float v4, v4, v6

    if-nez v4, :cond_19

    move v4, v11

    goto :goto_b

    :cond_19
    move v4, v5

    :goto_b
    if-eqz v4, :cond_1a

    return v5

    :cond_1a
    cmpg-float v0, v0, v3

    if-nez v0, :cond_1b

    move v0, v11

    goto :goto_c

    :cond_1b
    move v0, v5

    :goto_c
    if-eqz v0, :cond_1d

    .line 62
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    iget v3, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    cmpg-float v0, v0, v3

    if-nez v0, :cond_1c

    move v0, v11

    goto :goto_d

    :cond_1c
    move v0, v5

    :goto_d
    if-eqz v0, :cond_1d

    return v5

    :cond_1d
    cmpg-float v0, v2, v1

    if-nez v0, :cond_1e

    move v0, v11

    goto :goto_e

    :cond_1e
    move v0, v5

    :goto_e
    if-eqz v0, :cond_20

    .line 63
    iget v0, p0, Lcom/otaliastudios/opengl/geometry/SegmentF;->jy:F

    iget p1, p1, Lcom/otaliastudios/opengl/geometry/SegmentF;->iy:F

    cmpg-float p1, v0, p1

    if-nez p1, :cond_1f

    move p1, v11

    goto :goto_f

    :cond_1f
    move p1, v5

    :goto_f
    if-eqz p1, :cond_20

    return v5

    :cond_20
    return v11
.end method

.method public final orientation(FF)I
    .locals 3

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
