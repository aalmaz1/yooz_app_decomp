.class public Lcom/baseflow/geolocator/permission/PermissionManager;
.super Ljava/lang/Object;
.source "PermissionManager.java"

# interfaces
.implements Lio/flutter/plugin/common/PluginRegistry$RequestPermissionsResultListener;


# static fields
.field private static final PERMISSION_REQUEST_CODE:I = 0x6d

.field private static permissionManagerInstance:Lcom/baseflow/geolocator/permission/PermissionManager;


# instance fields
.field private activity:Landroid/app/Activity;

.field private errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

.field private resultCallback:Lcom/baseflow/geolocator/permission/PermissionResultCallback;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/baseflow/geolocator/permission/PermissionManager;
    .registers 2

    const-class v0, Lcom/baseflow/geolocator/permission/PermissionManager;

    monitor-enter v0

    .line 37
    :try_start_3
    sget-object v1, Lcom/baseflow/geolocator/permission/PermissionManager;->permissionManagerInstance:Lcom/baseflow/geolocator/permission/PermissionManager;

    if-nez v1, :cond_e

    .line 38
    new-instance v1, Lcom/baseflow/geolocator/permission/PermissionManager;

    invoke-direct {v1}, Lcom/baseflow/geolocator/permission/PermissionManager;-><init>()V

    sput-object v1, Lcom/baseflow/geolocator/permission/PermissionManager;->permissionManagerInstance:Lcom/baseflow/geolocator/permission/PermissionManager;

    .line 41
    :cond_e
    sget-object v1, Lcom/baseflow/geolocator/permission/PermissionManager;->permissionManagerInstance:Lcom/baseflow/geolocator/permission/PermissionManager;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v0

    return-object v1

    :catchall_12
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static getLocationPermissionsFromManifest(Landroid/content/Context;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
        }
    .end annotation

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    .line 212
    invoke-static {p0, v0}, Lcom/baseflow/geolocator/permission/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    .line 214
    invoke-static {p0, v2}, Lcom/baseflow/geolocator/permission/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-nez v1, :cond_17

    if-eqz p0, :cond_11

    goto :goto_17

    .line 218
    :cond_11
    new-instance p0, Lcom/baseflow/geolocator/errors/PermissionUndefinedException;

    invoke-direct {p0}, Lcom/baseflow/geolocator/errors/PermissionUndefinedException;-><init>()V

    throw p0

    .line 221
    :cond_17
    :goto_17
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz v1, :cond_21

    .line 224
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    if-eqz p0, :cond_26

    .line 228
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_26
    return-object v3
.end method

.method private hasBackgroundAccess([Ljava/lang/String;[I)Z
    .registers 4

    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 200
    invoke-static {p1, v0}, Lcom/baseflow/geolocator/permission/PermissionManager;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_e

    .line 201
    aget p1, p2, p1

    if-nez p1, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method private static indexOf([Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)I"
        }
    .end annotation

    .line 206
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public checkPermissionStatus(Landroid/content/Context;)Lcom/baseflow/geolocator/permission/LocationPermission;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
        }
    .end annotation

    .line 46
    invoke-static {p1}, Lcom/baseflow/geolocator/permission/PermissionManager;->getLocationPermissionsFromManifest(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, -0x1

    if-eqz v1, :cond_1d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 56
    invoke-static {p1, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_8

    const/4 v0, 0x0

    goto :goto_1e

    :cond_1d
    move v0, v2

    :goto_1e
    if-ne v0, v2, :cond_23

    .line 64
    sget-object p1, Lcom/baseflow/geolocator/permission/LocationPermission;->denied:Lcom/baseflow/geolocator/permission/LocationPermission;

    return-object p1

    .line 67
    :cond_23
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-ge v0, v1, :cond_2c

    .line 68
    sget-object p1, Lcom/baseflow/geolocator/permission/LocationPermission;->always:Lcom/baseflow/geolocator/permission/LocationPermission;

    return-object p1

    :cond_2c
    const-string v0, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 72
    invoke-static {p1, v0}, Lcom/baseflow/geolocator/permission/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_37

    .line 75
    sget-object p1, Lcom/baseflow/geolocator/permission/LocationPermission;->whileInUse:Lcom/baseflow/geolocator/permission/LocationPermission;

    return-object p1

    .line 79
    :cond_37
    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_40

    .line 81
    sget-object p1, Lcom/baseflow/geolocator/permission/LocationPermission;->always:Lcom/baseflow/geolocator/permission/LocationPermission;

    return-object p1

    .line 84
    :cond_40
    sget-object p1, Lcom/baseflow/geolocator/permission/LocationPermission;->whileInUse:Lcom/baseflow/geolocator/permission/LocationPermission;

    return-object p1
.end method

.method public hasPermission(Landroid/content/Context;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
        }
    .end annotation

    .line 235
    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/permission/PermissionManager;->checkPermissionStatus(Landroid/content/Context;)Lcom/baseflow/geolocator/permission/LocationPermission;

    move-result-object p1

    .line 237
    sget-object v0, Lcom/baseflow/geolocator/permission/LocationPermission;->whileInUse:Lcom/baseflow/geolocator/permission/LocationPermission;

    if-eq p1, v0, :cond_f

    sget-object v0, Lcom/baseflow/geolocator/permission/LocationPermission;->always:Lcom/baseflow/geolocator/permission/LocationPermission;

    if-ne p1, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p1, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p1, 0x1

    :goto_10
    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)Z
    .registers 13

    const/16 v0, 0x6d

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    return v1

    .line 128
    :cond_6
    iget-object p1, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->activity:Landroid/app/Activity;

    const-string v0, "Geolocator"

    if-nez p1, :cond_1b

    const-string p1, "Trying to process permission result without an valid Activity instance"

    .line 129
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p1, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    if-eqz p1, :cond_1a

    .line 131
    sget-object p2, Lcom/baseflow/geolocator/errors/ErrorCodes;->activityMissing:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p1, p2}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    :cond_1a
    return v1

    .line 139
    :cond_1b
    :try_start_1b
    invoke-static {p1}, Lcom/baseflow/geolocator/permission/PermissionManager;->getLocationPermissionsFromManifest(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1
    :try_end_1f
    .catch Lcom/baseflow/geolocator/errors/PermissionUndefinedException; {:try_start_1b .. :try_end_1f} :catch_7e

    .line 148
    array-length v2, p3

    if-nez v2, :cond_28

    const-string p1, "The grantResults array is empty. This can happen when the user cancels the permission request"

    .line 149
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 155
    :cond_28
    sget-object v2, Lcom/baseflow/geolocator/permission/LocationPermission;->denied:Lcom/baseflow/geolocator/permission/LocationPermission;

    .line 160
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, -0x1

    move v4, v1

    move v5, v4

    :cond_31
    :goto_31
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_54

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 161
    invoke-static {p2, v6}, Lcom/baseflow/geolocator/permission/PermissionManager;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8

    if-ltz v8, :cond_45

    move v4, v7

    .line 165
    :cond_45
    aget v8, p3, v8

    if-nez v8, :cond_4a

    move v3, v1

    .line 168
    :cond_4a
    iget-object v8, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->activity:Landroid/app/Activity;

    invoke-static {v8, v6}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    move v5, v7

    goto :goto_31

    :cond_54
    if-nez v4, :cond_5c

    const-string p1, "Location permissions not part of permissions send to onRequestPermissionsResult method."

    .line 174
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_5c
    if-nez v3, :cond_72

    .line 181
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1d

    if-lt p1, v0, :cond_6e

    invoke-direct {p0, p2, p3}, Lcom/baseflow/geolocator/permission/PermissionManager;->hasBackgroundAccess([Ljava/lang/String;[I)Z

    move-result p1

    if-eqz p1, :cond_6b

    goto :goto_6e

    .line 183
    :cond_6b
    sget-object p1, Lcom/baseflow/geolocator/permission/LocationPermission;->whileInUse:Lcom/baseflow/geolocator/permission/LocationPermission;

    goto :goto_70

    .line 182
    :cond_6e
    :goto_6e
    sget-object p1, Lcom/baseflow/geolocator/permission/LocationPermission;->always:Lcom/baseflow/geolocator/permission/LocationPermission;

    :goto_70
    move-object v2, p1

    goto :goto_76

    :cond_72
    if-nez v5, :cond_76

    .line 186
    sget-object v2, Lcom/baseflow/geolocator/permission/LocationPermission;->deniedForever:Lcom/baseflow/geolocator/permission/LocationPermission;

    .line 190
    :cond_76
    :goto_76
    iget-object p1, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->resultCallback:Lcom/baseflow/geolocator/permission/PermissionResultCallback;

    if-eqz p1, :cond_7d

    .line 191
    invoke-interface {p1, v2}, Lcom/baseflow/geolocator/permission/PermissionResultCallback;->onResult(Lcom/baseflow/geolocator/permission/LocationPermission;)V

    :cond_7d
    return v7

    .line 141
    :catch_7e
    iget-object p1, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    if-eqz p1, :cond_87

    .line 142
    sget-object p2, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p1, p2}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    :cond_87
    return v1
.end method

.method public requestPermission(Landroid/app/Activity;Lcom/baseflow/geolocator/permission/PermissionResultCallback;Lcom/baseflow/geolocator/errors/ErrorCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baseflow/geolocator/errors/PermissionUndefinedException;
        }
    .end annotation

    if-nez p1, :cond_8

    .line 92
    sget-object p1, Lcom/baseflow/geolocator/errors/ErrorCodes;->activityMissing:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-interface {p3, p1}, Lcom/baseflow/geolocator/errors/ErrorCallback;->onError(Lcom/baseflow/geolocator/errors/ErrorCodes;)V

    return-void

    .line 102
    :cond_8
    invoke-static {p1}, Lcom/baseflow/geolocator/permission/PermissionManager;->getLocationPermissionsFromManifest(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 104
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1d

    if-lt v1, v2, :cond_25

    const-string v1, "android.permission.ACCESS_BACKGROUND_LOCATION"

    .line 105
    invoke-static {p1, v1}, Lcom/baseflow/geolocator/permission/PermissionUtils;->hasPermissionInManifest(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 107
    invoke-virtual {p0, p1}, Lcom/baseflow/geolocator/permission/PermissionManager;->checkPermissionStatus(Landroid/content/Context;)Lcom/baseflow/geolocator/permission/LocationPermission;

    move-result-object v2

    .line 108
    sget-object v3, Lcom/baseflow/geolocator/permission/LocationPermission;->whileInUse:Lcom/baseflow/geolocator/permission/LocationPermission;

    if-ne v2, v3, :cond_25

    .line 109
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    :cond_25
    iput-object p3, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->errorCallback:Lcom/baseflow/geolocator/errors/ErrorCallback;

    .line 114
    iput-object p2, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->resultCallback:Lcom/baseflow/geolocator/permission/PermissionResultCallback;

    .line 115
    iput-object p1, p0, Lcom/baseflow/geolocator/permission/PermissionManager;->activity:Landroid/app/Activity;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/String;

    .line 118
    invoke-interface {v0, p2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    const/16 p3, 0x6d

    .line 117
    invoke-static {p1, p2, p3}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    return-void
.end method
