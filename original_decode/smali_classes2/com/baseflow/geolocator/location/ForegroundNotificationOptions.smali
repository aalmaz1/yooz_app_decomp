.class public Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;
.super Ljava/lang/Object;
.source "ForegroundNotificationOptions.java"


# instance fields
.field private final color:Ljava/lang/Integer;

.field private final enableWakeLock:Z

.field private final enableWifiLock:Z

.field private final notificationChannelName:Ljava/lang/String;

.field private final notificationIcon:Lcom/baseflow/geolocator/location/AndroidIconResource;

.field private final notificationText:Ljava/lang/String;

.field private final notificationTitle:Ljava/lang/String;

.field private final setOngoing:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baseflow/geolocator/location/AndroidIconResource;ZZZLjava/lang/Integer;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationTitle:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationText:Ljava/lang/String;

    .line 67
    iput-object p3, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationChannelName:Ljava/lang/String;

    .line 68
    iput-object p4, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationIcon:Lcom/baseflow/geolocator/location/AndroidIconResource;

    .line 69
    iput-boolean p5, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->enableWifiLock:Z

    .line 70
    iput-boolean p6, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->enableWakeLock:Z

    .line 71
    iput-boolean p7, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->setOngoing:Z

    .line 72
    iput-object p8, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->color:Ljava/lang/Integer;

    return-void
.end method

.method public static parseArguments(Ljava/util/Map;)Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const-string v1, "notificationIcon"

    .line 31
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    invoke-static {v1}, Lcom/baseflow/geolocator/location/AndroidIconResource;->parseArguments(Ljava/util/Map;)Lcom/baseflow/geolocator/location/AndroidIconResource;

    move-result-object v6

    const-string v1, "notificationTitle"

    .line 32
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljava/lang/String;

    const-string v1, "notificationChannelName"

    .line 33
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    const-string v1, "notificationText"

    .line 34
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    const-string v1, "enableWifiLock"

    .line 35
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    const-string v2, "enableWakeLock"

    .line 36
    invoke-interface {p0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    const-string v7, "setOngoing"

    .line 37
    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    const-string v8, "color"

    .line 40
    invoke-interface {p0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 42
    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    move-object v10, v0

    .line 45
    new-instance p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;

    .line 50
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 51
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    .line 52
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    move-object v2, p0

    move v7, v0

    invoke-direct/range {v2 .. v10}, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/baseflow/geolocator/location/AndroidIconResource;ZZZLjava/lang/Integer;)V

    return-object p0
.end method


# virtual methods
.method public getColor()Ljava/lang/Integer;
    .locals 1

    .line 108
    iget-object v0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->color:Ljava/lang/Integer;

    return-object v0
.end method

.method public getNotificationChannelName()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationChannelName:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationIcon()Lcom/baseflow/geolocator/location/AndroidIconResource;
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationIcon:Lcom/baseflow/geolocator/location/AndroidIconResource;

    return-object v0
.end method

.method public getNotificationText()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationText:Ljava/lang/String;

    return-object v0
.end method

.method public getNotificationTitle()Ljava/lang/String;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->notificationTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableWakeLock()Z
    .locals 1

    .line 100
    iget-boolean v0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->enableWakeLock:Z

    return v0
.end method

.method public isEnableWifiLock()Z
    .locals 1

    .line 96
    iget-boolean v0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->enableWifiLock:Z

    return v0
.end method

.method public isSetOngoing()Z
    .locals 1

    .line 104
    iget-boolean v0, p0, Lcom/baseflow/geolocator/location/ForegroundNotificationOptions;->setOngoing:Z

    return v0
.end method
