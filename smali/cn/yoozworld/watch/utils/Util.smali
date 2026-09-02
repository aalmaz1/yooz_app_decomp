.class public Lcn/yoozworld/watch/utils/Util;
.super Ljava/lang/Object;
.source "Util.java"


# static fields
.field public static final ABS_ALTITUDE:D = 228.0

.field public static final COORD_SCALE:D = 10000.0


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjacent([[Ljava/lang/Object;Lcn/yoozworld/watch/utils/Point;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">([[TI;",
            "Lcn/yoozworld/watch/utils/Point;",
            "I)",
            "Ljava/util/List<",
            "Lcn/yoozworld/watch/utils/Point;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    neg-int v1, p2

    :goto_6
    if-ge v1, p2, :cond_43

    .line 78
    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->ix()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->iy()I

    move-result v3

    add-int/2addr v3, p2

    invoke-static {v0, p0, v2, v3}, Lcn/yoozworld/watch/utils/Util;->safeAdd(Ljava/util/List;[[Ljava/lang/Object;II)V

    .line 79
    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->ix()I

    move-result v2

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->iy()I

    move-result v3

    sub-int/2addr v3, p2

    invoke-static {v0, p0, v2, v3}, Lcn/yoozworld/watch/utils/Util;->safeAdd(Ljava/util/List;[[Ljava/lang/Object;II)V

    .line 80
    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->ix()I

    move-result v2

    add-int/2addr v2, p2

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->iy()I

    move-result v3

    add-int/2addr v3, v1

    add-int/lit8 v3, v3, 0x1

    invoke-static {v0, p0, v2, v3}, Lcn/yoozworld/watch/utils/Util;->safeAdd(Ljava/util/List;[[Ljava/lang/Object;II)V

    .line 81
    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->ix()I

    move-result v2

    sub-int/2addr v2, p2

    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/Point;->iy()I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v0, p0, v2, v3}, Lcn/yoozworld/watch/utils/Util;->safeAdd(Ljava/util/List;[[Ljava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_43
    return-object v0
.end method

.method public static approx(DDD)Z
    .registers 6

    sub-double/2addr p0, p2

    .line 48
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    cmpg-double p0, p0, p4

    if-gez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public static constrain(DDD)D
    .registers 11

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Double;

    .line 70
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-static {v1}, Lcn/yoozworld/watch/utils/Util;->max([Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    cmpl-double v1, p0, v1

    if-lez v1, :cond_37

    new-array p0, v0, [Ljava/lang/Double;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p0, v3

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p0, v4

    invoke-static {p0}, Lcn/yoozworld/watch/utils/Util;->max([Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    :cond_37
    new-array v1, v0, [Ljava/lang/Double;

    .line 71
    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v1}, Lcn/yoozworld/watch/utils/Util;->min([Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    cmpg-double v1, p0, v1

    if-gez v1, :cond_6b

    new-array p0, v0, [Ljava/lang/Double;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p0, v3

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p0, v4

    invoke-static {p0}, Lcn/yoozworld/watch/utils/Util;->min([Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    :cond_6b
    return-wide p0
.end method

.method public static det([[D)D
    .registers 11

    .line 13
    array-length v0, p0

    const/4 v1, 0x0

    aget-object v2, p0, v1

    array-length v3, v2

    if-ne v0, v3, :cond_2f

    .line 14
    array-length v0, p0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_e

    aget-wide v0, v2, v1

    return-wide v0

    :cond_e
    const-wide/16 v4, 0x0

    move v0, v1

    .line 17
    :goto_11
    array-length v2, p0

    if-ge v0, v2, :cond_2e

    .line 18
    rem-int/lit8 v2, v0, 0x2

    if-nez v2, :cond_1a

    move v2, v3

    goto :goto_1b

    :cond_1a
    const/4 v2, -0x1

    :goto_1b
    int-to-double v6, v2

    aget-object v2, p0, v0

    aget-wide v8, v2, v1

    mul-double/2addr v6, v8

    invoke-static {p0, v0, v1}, Lcn/yoozworld/watch/utils/Util;->minor([[DII)[[D

    move-result-object v2

    invoke-static {v2}, Lcn/yoozworld/watch/utils/Util;->det([[D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_11

    :cond_2e
    return-wide v4

    .line 13
    :cond_2f
    new-instance p0, Ljava/lang/ArithmeticException;

    const-string v0, "determinant of non-square matrix"

    invoke-direct {p0, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static factorial(I)I
    .registers 2

    const/4 v0, 0x1

    if-gt p0, v0, :cond_4

    goto :goto_b

    :cond_4
    add-int/lit8 v0, p0, -0x1

    .line 97
    invoke-static {v0}, Lcn/yoozworld/watch/utils/Util;->factorial(I)I

    move-result v0

    mul-int/2addr v0, p0

    :goto_b
    return v0
.end method

.method public static varargs max([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Ljava/lang/Comparable;",
            ">([TI;)TI;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 53
    aget-object v0, p0, v0

    const/4 v1, 0x1

    .line 54
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 55
    aget-object v2, p0, v1

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-lez v2, :cond_11

    aget-object v0, p0, v1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    return-object v0
.end method

.method public static varargs min([Ljava/lang/Comparable;)Ljava/lang/Comparable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I::",
            "Ljava/lang/Comparable;",
            ">([TI;)TI;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 62
    aget-object v0, p0, v0

    const/4 v1, 0x1

    .line 63
    :goto_4
    array-length v2, p0

    if-ge v1, v2, :cond_14

    .line 64
    aget-object v2, p0, v1

    invoke-interface {v2, v0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_11

    aget-object v0, p0, v1

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_14
    return-object v0
.end method

.method public static minor([[DII)[[D
    .registers 11

    .line 25
    array-length v0, p0

    if-ge p1, v0, :cond_65

    const/4 v0, 0x0

    aget-object v1, p0, v0

    array-length v2, v1

    if-lt p2, v2, :cond_a

    goto :goto_65

    .line 27
    :cond_a
    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    array-length v1, v1

    sub-int/2addr v1, v3

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v1, v4, v3

    aput v2, v4, v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    move v2, v0

    .line 29
    :goto_1f
    array-length v3, p0

    if-ge v2, v3, :cond_64

    move v3, v0

    .line 30
    :goto_23
    array-length v4, p0

    if-ge v3, v4, :cond_61

    if-ge v2, p1, :cond_32

    if-ge v3, p2, :cond_32

    .line 31
    aget-object v4, v1, v2

    aget-object v5, p0, v2

    aget-wide v5, v5, v3

    aput-wide v5, v4, v3

    :cond_32
    if-ge v2, p1, :cond_40

    if-le v3, p2, :cond_40

    .line 32
    aget-object v4, v1, v2

    add-int/lit8 v5, v3, -0x1

    aget-object v6, p0, v2

    aget-wide v6, v6, v3

    aput-wide v6, v4, v5

    :cond_40
    if-le v2, p1, :cond_4e

    if-ge v3, p2, :cond_4e

    add-int/lit8 v4, v2, -0x1

    .line 33
    aget-object v4, v1, v4

    aget-object v5, p0, v2

    aget-wide v5, v5, v3

    aput-wide v5, v4, v3

    :cond_4e
    if-le v2, p1, :cond_5e

    if-le v3, p2, :cond_5e

    add-int/lit8 v4, v2, -0x1

    .line 34
    aget-object v4, v1, v4

    add-int/lit8 v5, v3, -0x1

    aget-object v6, p0, v2

    aget-wide v6, v6, v3

    aput-wide v6, v4, v5

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_61
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_64
    return-object v1

    :cond_65
    :goto_65
    return-object p0
.end method

.method public static occurencesOf(Ljava/lang/Object;Ljava/util/List;)Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(TE;",
            "Ljava/util/List<",
            "TE;>;)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 101
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    :goto_5
    invoke-interface {p1, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 104
    invoke-interface {p1, p0}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result v1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_17
    return-object v0
.end method

.method public static removeNull(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TI;>;)",
            "Ljava/util/List<",
            "TI;>;"
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    .line 92
    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_b
    return-object p0
.end method

.method private static safeAdd(Ljava/util/List;[[Ljava/lang/Object;II)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "Lcn/yoozworld/watch/utils/Point;",
            ">;[[TI;II)V"
        }
    .end annotation

    if-ltz p2, :cond_18

    if-ltz p3, :cond_18

    .line 87
    array-length v0, p1

    if-gt p2, v0, :cond_18

    const/4 v0, 0x0

    aget-object p1, p1, v0

    array-length p1, p1

    if-le p3, p1, :cond_e

    goto :goto_18

    .line 88
    :cond_e
    new-instance p1, Lcn/yoozworld/watch/utils/Point;

    int-to-double v0, p2

    int-to-double p2, p3

    invoke-direct {p1, v0, v1, p2, p3}, Lcn/yoozworld/watch/utils/Point;-><init>(DD)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_18
    :goto_18
    return-void
.end method

.method public static toKML(Ljava/util/List;)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/yoozworld/watch/utils/Point;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<kml xmlns=\"http://www.opengis.net/kml/2.2\">\n  <Document>\n    <name>Coverage path</name>\n    <description>Automatically generated.</description>\n    <Style id=\"thickRedLine\">\n          <LineStyle>\n            <color>ff0000ff</color>\n            <width>10</width>\n          </LineStyle>\n        </Style>\n    <Placemark>\n      <name>Absolute Extruded</name>\n      <description></description>\n      <styleUrl>#thickRedLine</styleUrl>\n      <LineString>\n        <tessellate>1</tessellate>\n        <altitudeMode>relativeToGround</altitudeMode>\n        <coordinates>\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 130
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_53

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/yoozworld/watch/utils/Point;

    const-string v2, "            "

    .line 131
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcn/yoozworld/watch/utils/Point;->x()D

    move-result-wide v3

    neg-double v3, v3

    const-wide v5, 0x40c3880000000000L    # 10000.0

    div-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcn/yoozworld/watch/utils/Point;->y()D

    move-result-wide v7

    div-double/2addr v7, v5

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcn/yoozworld/watch/utils/Point;->z()D

    move-result-wide v3

    const-wide v5, 0x406c800000000000L    # 228.0

    add-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_53
    const-string p0, "        </coordinates>\n      </LineString>\n    </Placemark>\n  </Document>\n</kml>"

    .line 132
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static within(DDD)Z
    .registers 8

    .line 45
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    cmpg-double v0, p4, v0

    if-gtz v0, :cond_12

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    cmpl-double p0, p4, p0

    if-ltz p0, :cond_12

    const/4 p0, 0x1

    goto :goto_13

    :cond_12
    const/4 p0, 0x0

    :goto_13
    return p0
.end method

.method public static within(DDDD)Z
    .registers 12

    sub-double v0, p4, p6

    .line 42
    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    cmpg-double v0, v0, v2

    if-gez v0, :cond_15

    add-double/2addr p4, p6

    invoke-static {p0, p1, p2, p3}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    cmpl-double p0, p4, p0

    if-ltz p0, :cond_15

    const/4 p0, 0x1

    goto :goto_16

    :cond_15
    const/4 p0, 0x0

    :goto_16
    return p0
.end method
