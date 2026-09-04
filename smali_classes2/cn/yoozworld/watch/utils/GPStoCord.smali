.class public Lcn/yoozworld/watch/utils/GPStoCord;
.super Ljava/lang/Object;
.source "GPStoCord.java"


# static fields
.field private static final MACRO_AXIS:D = 6378137.0

.field private static final MINOR_AXIS:D = 6356752.0


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCord(Lcn/yoozworld/watch/utils/GePoint;Lcn/yoozworld/watch/utils/GePoint;)[D
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [D

    const/4 v1, 0x0

    .line 11
    invoke-static {p0, p1}, Lcn/yoozworld/watch/utils/GPStoCord;->turnY(Lcn/yoozworld/watch/utils/GePoint;Lcn/yoozworld/watch/utils/GePoint;)D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    .line 12
    invoke-static {p0, p1}, Lcn/yoozworld/watch/utils/GPStoCord;->turnX(Lcn/yoozworld/watch/utils/GePoint;Lcn/yoozworld/watch/utils/GePoint;)D

    move-result-wide p0

    aput-wide p0, v0, v1

    return-object v0
.end method

.method private static turnX(Lcn/yoozworld/watch/utils/GePoint;Lcn/yoozworld/watch/utils/GePoint;)D
    .locals 8

    const-wide v0, 0x415854a640000000L    # 6378137.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 43
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v4, 0x41583fc400000000L    # 6356752.0

    .line 44
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 45
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/GePoint;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v4, v2

    add-double/2addr v4, v0

    .line 46
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 47
    invoke-virtual {p1}, Lcn/yoozworld/watch/utils/GePoint;->getLongtitude()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/GePoint;->getLongtitude()D

    move-result-wide p0

    add-double/2addr v2, p0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method private static turnY(Lcn/yoozworld/watch/utils/GePoint;Lcn/yoozworld/watch/utils/GePoint;)D
    .locals 16

    const-wide v0, 0x415854a640000000L    # 6378137.0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    .line 17
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    const-wide v4, 0x41583fc400000000L    # 6356752.0

    .line 18
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcn/yoozworld/watch/utils/GePoint;->getLatitude()D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->tan(D)D

    move-result-wide v6

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 20
    invoke-virtual/range {p0 .. p0}, Lcn/yoozworld/watch/utils/GePoint;->getLatitude()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->tan(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    div-double v8, v10, v8

    invoke-static {v8, v9, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    mul-double/2addr v6, v4

    add-double/2addr v6, v0

    .line 21
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    div-double v6, v0, v6

    mul-double/2addr v8, v0

    add-double/2addr v8, v4

    .line 22
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    div-double v8, v4, v8

    .line 24
    invoke-virtual/range {p1 .. p1}, Lcn/yoozworld/watch/utils/GePoint;->getLatitude()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->tan(D)D

    move-result-wide v12

    invoke-static {v12, v13, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    .line 25
    invoke-virtual/range {p1 .. p1}, Lcn/yoozworld/watch/utils/GePoint;->getLatitude()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->tan(D)D

    move-result-wide v14

    div-double/2addr v10, v14

    invoke-static {v10, v11, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v12, v4

    add-double/2addr v12, v0

    .line 27
    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v10

    div-double v10, v0, v10

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    .line 28
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v4, v0

    .line 32
    invoke-virtual/range {p0 .. p0}, Lcn/yoozworld/watch/utils/GePoint;->getLatitude()D

    move-result-wide v0

    invoke-virtual/range {p1 .. p1}, Lcn/yoozworld/watch/utils/GePoint;->getLatitude()D

    move-result-wide v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 33
    new-instance v0, Lcn/yoozworld/watch/utils/Point;

    invoke-direct {v0, v6, v7, v8, v9}, Lcn/yoozworld/watch/utils/Point;-><init>(DD)V

    new-instance v1, Lcn/yoozworld/watch/utils/Point;

    invoke-direct {v1, v10, v11, v4, v5}, Lcn/yoozworld/watch/utils/Point;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcn/yoozworld/watch/utils/Point;->distance(Lcn/yoozworld/watch/utils/Point;)D

    move-result-wide v0

    neg-double v0, v0

    goto :goto_0

    .line 36
    :cond_0
    new-instance v0, Lcn/yoozworld/watch/utils/Point;

    invoke-direct {v0, v6, v7, v8, v9}, Lcn/yoozworld/watch/utils/Point;-><init>(DD)V

    new-instance v1, Lcn/yoozworld/watch/utils/Point;

    invoke-direct {v1, v10, v11, v4, v5}, Lcn/yoozworld/watch/utils/Point;-><init>(DD)V

    invoke-virtual {v0, v1}, Lcn/yoozworld/watch/utils/Point;->distance(Lcn/yoozworld/watch/utils/Point;)D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method
