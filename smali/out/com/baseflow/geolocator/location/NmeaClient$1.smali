.class Lcom/baseflow/geolocator/location/NmeaClient$1;
.super Landroid/location/GnssStatus$Callback;
.source "NmeaClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baseflow/geolocator/location/NmeaClient;-><init>(Landroid/content/Context;Lcom/baseflow/geolocator/location/LocationOptions;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baseflow/geolocator/location/NmeaClient;


# direct methods
.method constructor <init>(Lcom/baseflow/geolocator/location/NmeaClient;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcom/baseflow/geolocator/location/NmeaClient$1;->this$0:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .registers 8

    .line 58
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient$1;->this$0:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-virtual {p1}, Landroid/location/GnssStatus;->getSatelliteCount()I

    move-result v1

    int-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/baseflow/geolocator/location/NmeaClient;->-$$Nest$fputgnss_satellite_count(Lcom/baseflow/geolocator/location/NmeaClient;D)V

    .line 59
    iget-object v0, p0, Lcom/baseflow/geolocator/location/NmeaClient$1;->this$0:Lcom/baseflow/geolocator/location/NmeaClient;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/baseflow/geolocator/location/NmeaClient;->-$$Nest$fputgnss_satellites_used_in_fix(Lcom/baseflow/geolocator/location/NmeaClient;D)V

    const/4 v0, 0x0

    :goto_12
    int-to-double v1, v0

    .line 60
    iget-object v3, p0, Lcom/baseflow/geolocator/location/NmeaClient$1;->this$0:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-static {v3}, Lcom/baseflow/geolocator/location/NmeaClient;->-$$Nest$fgetgnss_satellite_count(Lcom/baseflow/geolocator/location/NmeaClient;)D

    move-result-wide v3

    cmpg-double v1, v1, v3

    if-gez v1, :cond_32

    .line 61
    invoke-virtual {p1, v0}, Landroid/location/GnssStatus;->usedInFix(I)Z

    move-result v1

    if-eqz v1, :cond_2f

    .line 62
    iget-object v1, p0, Lcom/baseflow/geolocator/location/NmeaClient$1;->this$0:Lcom/baseflow/geolocator/location/NmeaClient;

    invoke-static {v1}, Lcom/baseflow/geolocator/location/NmeaClient;->-$$Nest$fgetgnss_satellites_used_in_fix(Lcom/baseflow/geolocator/location/NmeaClient;)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-static {v1, v2, v3}, Lcom/baseflow/geolocator/location/NmeaClient;->-$$Nest$fputgnss_satellites_used_in_fix(Lcom/baseflow/geolocator/location/NmeaClient;D)V

    :cond_2f
    add-int/lit8 v0, v0, 0x1

    goto :goto_12

    :cond_32
    return-void
.end method
