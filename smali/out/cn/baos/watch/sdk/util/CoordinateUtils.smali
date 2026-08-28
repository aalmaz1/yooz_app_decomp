.class public Lcn/baos/watch/sdk/util/CoordinateUtils;
.super Ljava/lang/Object;
.source "CoordinateUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deg2rad(D)D
    .registers 4

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p0, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static getDistance(DDDD)D
    .registers 10

    sub-double/2addr p2, p6

    .line 13
    invoke-static {p0, p1}, Lcn/baos/watch/sdk/util/CoordinateUtils;->deg2rad(D)D

    move-result-wide p6

    invoke-static {p6, p7}, Ljava/lang/Math;->sin(D)D

    move-result-wide p6

    invoke-static {p4, p5}, Lcn/baos/watch/sdk/util/CoordinateUtils;->deg2rad(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double/2addr p6, v0

    invoke-static {p0, p1}, Lcn/baos/watch/sdk/util/CoordinateUtils;->deg2rad(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    invoke-static {p4, p5}, Lcn/baos/watch/sdk/util/CoordinateUtils;->deg2rad(D)D

    move-result-wide p4

    invoke-static {p4, p5}, Ljava/lang/Math;->cos(D)D

    move-result-wide p4

    mul-double/2addr p0, p4

    invoke-static {p2, p3}, Lcn/baos/watch/sdk/util/CoordinateUtils;->deg2rad(D)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    mul-double/2addr p0, p2

    add-double/2addr p6, p0

    .line 14
    invoke-static {p6, p7}, Ljava/lang/Math;->acos(D)D

    move-result-wide p0

    .line 15
    invoke-static {p0, p1}, Lcn/baos/watch/sdk/util/CoordinateUtils;->rad2deg(D)D

    move-result-wide p0

    const-wide/high16 p2, 0x404e000000000000L    # 60.0

    mul-double/2addr p0, p2

    const-wide p2, 0x3ff26c8b43958106L    # 1.1515

    mul-double/2addr p0, p2

    const-wide p2, 0x409925604189374cL    # 1609.344

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method public static rad2deg(D)D
    .registers 4

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double/2addr p0, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    return-wide p0
.end method

.method public static removeNearbyDuplicates(Ljava/util/List;D)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/baos/watch/sdk/database/gps/GpslocEntity;",
            ">;D)",
            "Ljava/util/ArrayList<",
            "Lcn/baos/watch/sdk/database/gps/GpslocEntity;",
            ">;"
        }
    .end annotation

    .line 33
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    .line 34
    :goto_6
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_28

    .line 36
    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/baos/watch/sdk/database/gps/GpslocEntity;

    add-int/lit8 p2, p2, 0x1

    move v1, p2

    .line 40
    :goto_15
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    .line 42
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/baos/watch/sdk/database/gps/GpslocEntity;

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 58
    :cond_24
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_28
    return-object p1
.end method
