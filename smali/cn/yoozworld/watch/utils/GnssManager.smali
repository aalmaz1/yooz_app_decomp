.class public Lcn/yoozworld/watch/utils/GnssManager;
.super Ljava/lang/Object;
.source "GnssManager.java"


# static fields
.field private static instance:Lcn/yoozworld/watch/utils/GnssManager;


# instance fields
.field public gpsCount:I

.field locationManager:Landroid/location/LocationManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 18
    iput v0, p0, Lcn/yoozworld/watch/utils/GnssManager;->gpsCount:I

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcn/yoozworld/watch/utils/GnssManager;->locationManager:Landroid/location/LocationManager;

    return-void
.end method

.method public static getInstance()Lcn/yoozworld/watch/utils/GnssManager;
    .registers 1

    .line 23
    sget-object v0, Lcn/yoozworld/watch/utils/GnssManager;->instance:Lcn/yoozworld/watch/utils/GnssManager;

    if-nez v0, :cond_b

    .line 24
    new-instance v0, Lcn/yoozworld/watch/utils/GnssManager;

    invoke-direct {v0}, Lcn/yoozworld/watch/utils/GnssManager;-><init>()V

    sput-object v0, Lcn/yoozworld/watch/utils/GnssManager;->instance:Lcn/yoozworld/watch/utils/GnssManager;

    .line 26
    :cond_b
    sget-object v0, Lcn/yoozworld/watch/utils/GnssManager;->instance:Lcn/yoozworld/watch/utils/GnssManager;

    return-object v0
.end method


# virtual methods
.method public checkGPSOpen()Z
    .registers 3

    .line 41
    iget-object v0, p0, Lcn/yoozworld/watch/utils/GnssManager;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_10

    .line 42
    iget-object v0, p0, Lcn/yoozworld/watch/utils/GnssManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcn/yoozworld/watch/utils/GnssManager;->locationManager:Landroid/location/LocationManager;

    .line 45
    :cond_10
    iget-object v0, p0, Lcn/yoozworld/watch/utils/GnssManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 34
    iput-object p1, p0, Lcn/yoozworld/watch/utils/GnssManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public startListenSatellites()V
    .registers 5

    .line 50
    iget-object v0, p0, Lcn/yoozworld/watch/utils/GnssManager;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_10

    .line 51
    iget-object v0, p0, Lcn/yoozworld/watch/utils/GnssManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcn/yoozworld/watch/utils/GnssManager;->locationManager:Landroid/location/LocationManager;

    .line 53
    :cond_10
    invoke-virtual {p0}, Lcn/yoozworld/watch/utils/GnssManager;->checkGPSOpen()Z

    move-result v0

    if-eqz v0, :cond_2f

    .line 55
    new-instance v0, Lcn/yoozworld/watch/utils/GnssManager$1;

    invoke-direct {v0, p0}, Lcn/yoozworld/watch/utils/GnssManager$1;-><init>(Lcn/yoozworld/watch/utils/GnssManager;)V

    .line 81
    iget-object v1, p0, Lcn/yoozworld/watch/utils/GnssManager;->locationManager:Landroid/location/LocationManager;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v1, v0, v2}, Landroidx/core/location/LocationManagerCompat;->registerGnssStatusCallback(Landroid/location/LocationManager;Landroidx/core/location/GnssStatusCompat$Callback;Landroid/os/Handler;)Z

    const-string v0, "\u5f00\u59cb\u536b\u661f\u4e2a\u6570\u83b7\u53d6"

    .line 82
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_34

    :cond_2f
    const-string v0, "\u5b9a\u4f4d\u670d\u52a1\u672a\u6253\u5f00\uff0c\u4e0d\u53ef\u4ee5\u83b7\u53d6\u536b\u661f\u4e2a\u6570"

    .line 84
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :goto_34
    return-void
.end method
