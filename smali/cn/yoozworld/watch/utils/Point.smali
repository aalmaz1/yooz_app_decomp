.class public Lcn/yoozworld/watch/utils/Point;
.super Ljava/lang/Object;
.source "Point.java"


# static fields
.field public static final CROSS:I = 0x1

.field private static final DOT:I = 0x0

.field private static final GRANULARITY:D = 1.0


# instance fields
.field private coordinates:[D


# direct methods
.method public constructor <init>(DD)V
    .registers 7

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 16
    iput-object v0, p0, Lcn/yoozworld/watch/utils/Point;->coordinates:[D

    const/4 v1, 0x0

    aput-wide p1, v0, v1

    const/4 p1, 0x1

    aput-wide p3, v0, p1

    return-void
.end method

.method public constructor <init>(Lcn/yoozworld/watch/utils/Point;D)V
    .registers 8

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [D

    .line 22
    iput-object v0, p0, Lcn/yoozworld/watch/utils/Point;->coordinates:[D

    const/4 v1, 0x0

    .line 23
    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->x()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 24
    iget-object v0, p0, Lcn/yoozworld/watch/utils/Point;->coordinates:[D

    const/4 v1, 0x1

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->y()D

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 25
    iget-object p1, p0, Lcn/yoozworld/watch/utils/Point;->coordinates:[D

    const/4 v0, 0x2

    aput-wide p2, p1, v0

    return-void
.end method

.method public varargs constructor <init>([D)V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lcn/yoozworld/watch/utils/Point;->coordinates:[D

    return-void
.end method


# virtual methods
.method public bearing()D
    .registers 4

    .line 105
    new-instance v0, Lcn/yoozworld/watch/utils/Point;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2, v1, v2}, Lcn/yoozworld/watch/utils/Point;-><init>(DD)V

    invoke-virtual {p0, v0}, Lcn/yoozworld/watch/utils/Point;->bearing(Lcn/yoozworld/watch/utils/Point;)D

    move-result-wide v0

    return-wide v0
.end method

.method public bearing(Lcn/yoozworld/watch/utils/Point;)D
    .registers 13

    .line 107
    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->x()D

    move-result-wide v0

    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/Point;->x()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    const-wide/16 v3, 0x0

    if-nez v0, :cond_28

    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/Point;->y()D

    move-result-wide v5

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->y()D

    move-result-wide v7

    cmpl-double p1, v5, v7

    if-lez p1, :cond_20

    goto :goto_21

    :cond_20
    move-wide v1, v3

    :goto_21
    const-wide v3, 0x3ff921fb54442d18L    # 1.5707963267948966

    add-double/2addr v1, v3

    return-wide v1

    .line 108
    :cond_28
    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->y()D

    move-result-wide v5

    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/Point;->y()D

    move-result-wide v7

    sub-double/2addr v5, v7

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->x()D

    move-result-wide v7

    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/Point;->x()D

    move-result-wide v9

    sub-double/2addr v7, v9

    div-double/2addr v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->atan(D)D

    move-result-wide v5

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->x()D

    move-result-wide v7

    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/Point;->x()D

    move-result-wide v9

    cmpg-double p1, v7, v9

    if-gez p1, :cond_4c

    goto :goto_4d

    :cond_4c
    move-wide v1, v3

    :goto_4d
    add-double/2addr v5, v1

    const-wide v0, 0x401921fb54442d18L    # 6.283185307179586

    add-double/2addr v5, v0

    rem-double/2addr v5, v0

    return-wide v5
.end method

.method public dim()I
    .registers 2

    .line 60
    iget-object v0, p0, Lcn/yoozworld/watch/utils/Point;->coordinates:[D

    array-length v0, v0

    return v0
.end method

.method public distance(Lcn/yoozworld/watch/utils/Point;)D
    .registers 4

    .line 71
    invoke-virtual {p0, p1}, Lcn/yoozworld/watch/utils/Point;->sqDistance(Lcn/yoozworld/watch/utils/Point;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 11

    .line 115
    instance-of v0, p1, Lcn/yoozworld/watch/utils/Point;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v0, 0x1

    if-ne p0, p1, :cond_a

    return v0

    .line 117
    :cond_a
    check-cast p1, Lcn/yoozworld/watch/utils/Point;

    .line 118
    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->x()D

    move-result-wide v2

    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/Point;->x()D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v2 .. v7}, Lcn/yoozworld/watch/utils/Util;->approx(DDD)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 119
    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->y()D

    move-result-wide v3

    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/Point;->y()D

    move-result-wide v5

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v3 .. v8}, Lcn/yoozworld/watch/utils/Util;->approx(DDD)Z

    move-result p1

    if-eqz p1, :cond_2d

    move v1, v0

    :cond_2d
    return v1
.end method

.method public in(I)I
    .registers 10

    .line 58
    iget-object v0, p0, Lcn/yoozworld/watch/utils/Point;->coordinates:[D

    array-length v1, v0

    if-le v1, p1, :cond_8

    aget-wide v0, v0, p1

    goto :goto_a

    :cond_8
    const-wide/16 v0, 0x0

    :goto_a
    move-wide v2, v0

    const-wide/high16 v4, -0x3e20000000000000L    # -2.147483648E9

    const-wide v6, 0x41dfffffffc00000L    # 2.147483647E9

    invoke-static/range {v2 .. v7}, Lcn/yoozworld/watch/utils/Util;->constrain(DDD)D

    move-result-wide v0

    double-to-int p1, v0

    return p1
.end method

.method public ix()I
    .registers 9

    .line 55
    iget-object v0, p0, Lcn/yoozworld/watch/utils/Point;->coordinates:[D

    array-length v1, v0

    if-lez v1, :cond_9

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    move-wide v2, v0

    const-wide/high16 v4, -0x3e20000000000000L    # -2.147483648E9

    const-wide v6, 0x41dfffffffc00000L    # 2.147483647E9

    invoke-static/range {v2 .. v7}, Lcn/yoozworld/watch/utils/Util;->constrain(DDD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public iy()I
    .registers 9

    .line 56
    iget-object v0, p0, Lcn/yoozworld/watch/utils/Point;->coordinates:[D

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_9

    aget-wide v0, v0, v2

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    move-wide v2, v0

    const-wide/high16 v4, -0x3e20000000000000L    # -2.147483648E9

    const-wide v6, 0x41dfffffffc00000L    # 2.147483647E9

    invoke-static/range {v2 .. v7}, Lcn/yoozworld/watch/utils/Util;->constrain(DDD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public iz()I
    .registers 9

    .line 57
    iget-object v0, p0, Lcn/yoozworld/watch/utils/Point;->coordinates:[D

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_9

    aget-wide v0, v0, v2

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    move-wide v2, v0

    const-wide/high16 v4, -0x3e20000000000000L    # -2.147483648E9

    const-wide v6, 0x41dfffffffc00000L    # 2.147483647E9

    invoke-static/range {v2 .. v7}, Lcn/yoozworld/watch/utils/Util;->constrain(DDD)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public n(I)D
    .registers 4

    .line 53
    iget-object v0, p0, Lcn/yoozworld/watch/utils/Point;->coordinates:[D

    array-length v1, v0

    if-le v1, p1, :cond_8

    aget-wide v0, v0, p1

    goto :goto_a

    :cond_8
    const-wide/16 v0, 0x0

    :goto_a
    return-wide v0
.end method

.method public rotate(D)Lcn/yoozworld/watch/utils/Point;
    .registers 10

    .line 93
    new-instance v0, Lcn/yoozworld/watch/utils/Point;

    .line 94
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/Point;->x()D

    move-result-wide v1

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    mul-double/2addr v1, v3

    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/Point;->y()D

    move-result-wide v3

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    sub-double/2addr v1, v3

    .line 95
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/Point;->x()D

    move-result-wide v3

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/Point;->y()D

    move-result-wide v5

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    mul-double/2addr v5, p1

    add-double/2addr v3, v5

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/yoozworld/watch/utils/Point;-><init>(DD)V

    return-object v0
.end method

.method public same(Lcn/yoozworld/watch/utils/Point;)Z
    .registers 6

    .line 63
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/Point;->x()D

    move-result-wide v0

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->x()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-nez v0, :cond_1a

    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/Point;->y()D

    move-result-wide v0

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->y()D

    move-result-wide v2

    cmpl-double p1, v0, v2

    if-nez p1, :cond_1a

    const/4 p1, 0x1

    return p1

    :cond_1a
    const/4 p1, 0x0

    return p1
.end method

.method public sqDistance(Lcn/yoozworld/watch/utils/Point;)D
    .registers 11

    const/4 v0, 0x0

    move v1, v0

    .line 100
    :goto_2
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/Point;->dim()I

    move-result v2

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->dim()I

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    if-ge v0, v2, :cond_29

    int-to-double v1, v1

    .line 101
    invoke-virtual {p1, v0}, Lcn/yoozworld/watch/utils/Point;->n(I)D

    move-result-wide v3

    invoke-virtual {p0, v0}, Lcn/yoozworld/watch/utils/Point;->n(I)D

    move-result-wide v5

    sub-double/2addr v3, v5

    invoke-virtual {p1, v0}, Lcn/yoozworld/watch/utils/Point;->n(I)D

    move-result-wide v5

    invoke-virtual {p0, v0}, Lcn/yoozworld/watch/utils/Point;->n(I)D

    move-result-wide v7

    sub-double/2addr v5, v7

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_29
    int-to-double v0, v1

    return-wide v0
.end method

.method public toArray()[D
    .registers 6

    const/4 v0, 0x2

    new-array v0, v0, [D

    .line 34
    iget-object v1, p0, Lcn/yoozworld/watch/utils/Point;->coordinates:[D

    const/4 v2, 0x0

    aget-wide v3, v1, v2

    aput-wide v3, v0, v2

    const/4 v2, 0x1

    aget-wide v3, v1, v2

    aput-wide v3, v0, v2

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    .line 42
    :goto_9
    iget-object v3, p0, Lcn/yoozworld/watch/utils/Point;->coordinates:[D

    array-length v4, v3

    if-ge v2, v4, :cond_30

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 43
    aget-wide v6, v3, v2

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v5, v1

    const-string v3, "%.2f"

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v3, p0, Lcn/yoozworld/watch/utils/Point;->coordinates:[D

    array-length v3, v3

    sub-int/2addr v3, v4

    if-eq v2, v3, :cond_2d

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2d
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_30
    const-string v1, ")"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public x()D
    .registers 3

    .line 50
    iget-object v0, p0, Lcn/yoozworld/watch/utils/Point;->coordinates:[D

    array-length v1, v0

    if-lez v1, :cond_9

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    return-wide v0
.end method

.method public y()D
    .registers 4

    .line 51
    iget-object v0, p0, Lcn/yoozworld/watch/utils/Point;->coordinates:[D

    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_9

    aget-wide v0, v0, v2

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    return-wide v0
.end method

.method public z()D
    .registers 4

    .line 52
    iget-object v0, p0, Lcn/yoozworld/watch/utils/Point;->coordinates:[D

    array-length v1, v0

    const/4 v2, 0x2

    if-le v1, v2, :cond_9

    aget-wide v0, v0, v2

    goto :goto_b

    :cond_9
    const-wide/16 v0, 0x0

    :goto_b
    return-wide v0
.end method
