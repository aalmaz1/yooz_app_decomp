.class public Lcn/baos/watch/sdk/manager/gps/GpsManager;
.super Ljava/lang/Object;
.source "GpsManager.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# static fields
.field private static instance:Lcn/baos/watch/sdk/manager/gps/GpsManager;


# instance fields
.field public gpsCount:I

.field locationManager:Landroid/location/LocationManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->gpsCount:I

    const/4 v0, 0x0

    .line 17
    iput-object v0, p0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->locationManager:Landroid/location/LocationManager;

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/manager/gps/GpsManager;
    .registers 1

    .line 21
    sget-object v0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->instance:Lcn/baos/watch/sdk/manager/gps/GpsManager;

    if-nez v0, :cond_b

    .line 22
    new-instance v0, Lcn/baos/watch/sdk/manager/gps/GpsManager;

    invoke-direct {v0}, Lcn/baos/watch/sdk/manager/gps/GpsManager;-><init>()V

    sput-object v0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->instance:Lcn/baos/watch/sdk/manager/gps/GpsManager;

    .line 24
    :cond_b
    sget-object v0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->instance:Lcn/baos/watch/sdk/manager/gps/GpsManager;

    return-object v0
.end method


# virtual methods
.method public checkGPSOpen()Z
    .registers 3

    .line 39
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_10

    .line 40
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->locationManager:Landroid/location/LocationManager;

    .line 43
    :cond_10
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->locationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onGpsStatusChanged(I)V
    .registers 4

    const/4 v0, 0x0

    .line 61
    iput v0, p0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->gpsCount:I

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u536b\u661f\u4e2a\u6570onGpsStatusChanged:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_19

    goto :goto_6a

    :cond_19
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6a

    .line 66
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->locationManager:Landroid/location/LocationManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/location/LocationManager;->getGpsStatus(Landroid/location/GpsStatus;)Landroid/location/GpsStatus;

    move-result-object p1

    .line 67
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getMaxSatellites()I

    move-result v0

    .line 69
    invoke-virtual {p1}, Landroid/location/GpsStatus;->getSatellites()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 70
    :cond_2f
    :goto_2f
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4c

    iget v1, p0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->gpsCount:I

    if-gt v1, v0, :cond_4c

    .line 71
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/location/GpsSatellite;

    .line 73
    invoke-virtual {v1}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 75
    iget v1, p0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->gpsCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->gpsCount:I

    goto :goto_2f

    .line 78
    :cond_4c
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u603b\u536b\u661f\u4e2a\u6570:"

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " \u5f53\u524d\u53ef\u89c1\u536b\u661f\u4e2a\u6570:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->gpsCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :cond_6a
    :goto_6a
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public startListenSatellites()V
    .registers 3

    .line 48
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->locationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_10

    .line 49
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->mContext:Landroid/content/Context;

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->locationManager:Landroid/location/LocationManager;

    .line 51
    :cond_10
    invoke-virtual {p0}, Lcn/baos/watch/sdk/manager/gps/GpsManager;->checkGPSOpen()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 52
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/gps/GpsManager;->locationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    const-string v0, "\u5f00\u59cb\u536b\u661f\u4e2a\u6570\u83b7\u53d6"

    .line 53
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_26

    :cond_21
    const-string v0, "\u5b9a\u4f4d\u670d\u52a1\u672a\u6253\u5f00\uff0c\u4e0d\u53ef\u4ee5\u83b7\u53d6\u536b\u661f\u4e2a\u6570"

    .line 55
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    :goto_26
    return-void
.end method
