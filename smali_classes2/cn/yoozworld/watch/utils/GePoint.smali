.class public Lcn/yoozworld/watch/utils/GePoint;
.super Ljava/lang/Object;
.source "GePoint.java"


# instance fields
.field public latitude:D

.field public longtitude:D


# direct methods
.method public constructor <init>(DD)V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-wide p1, p0, Lcn/yoozworld/watch/utils/GePoint;->latitude:D

    .line 9
    iput-wide p3, p0, Lcn/yoozworld/watch/utils/GePoint;->longtitude:D

    return-void
.end method


# virtual methods
.method public getLatitude()D
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 12
    iget-wide v2, p0, Lcn/yoozworld/watch/utils/GePoint;->latitude:D

    mul-double/2addr v2, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v0

    const-wide v0, 0x4076800000000000L    # 360.0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public getLongtitude()D
    .locals 4

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 15
    iget-wide v2, p0, Lcn/yoozworld/watch/utils/GePoint;->longtitude:D

    mul-double/2addr v2, v0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v2, v0

    const-wide v0, 0x4076800000000000L    # 360.0

    div-double/2addr v2, v0

    return-wide v2
.end method
