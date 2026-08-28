.class Lcn/yoozworld/watch/utils/GnssManager$1;
.super Landroidx/core/location/GnssStatusCompat$Callback;
.source "GnssManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/yoozworld/watch/utils/GnssManager;->startListenSatellites()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/yoozworld/watch/utils/GnssManager;


# direct methods
.method constructor <init>(Lcn/yoozworld/watch/utils/GnssManager;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcn/yoozworld/watch/utils/GnssManager$1;->this$0:Lcn/yoozworld/watch/utils/GnssManager;

    invoke-direct {p0}, Landroidx/core/location/GnssStatusCompat$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .registers 2

    .line 68
    invoke-super {p0, p1}, Landroidx/core/location/GnssStatusCompat$Callback;->onFirstFix(I)V

    return-void
.end method

.method public onSatelliteStatusChanged(Landroidx/core/location/GnssStatusCompat;)V
    .registers 3

    .line 73
    invoke-super {p0, p1}, Landroidx/core/location/GnssStatusCompat$Callback;->onSatelliteStatusChanged(Landroidx/core/location/GnssStatusCompat;)V

    .line 75
    invoke-virtual {p1}, Landroidx/core/location/GnssStatusCompat;->getSatelliteCount()I

    move-result p1

    .line 76
    iget-object v0, p0, Lcn/yoozworld/watch/utils/GnssManager$1;->this$0:Lcn/yoozworld/watch/utils/GnssManager;

    iput p1, v0, Lcn/yoozworld/watch/utils/GnssManager;->gpsCount:I

    return-void
.end method

.method public onStarted()V
    .registers 1

    .line 58
    invoke-super {p0}, Landroidx/core/location/GnssStatusCompat$Callback;->onStarted()V

    return-void
.end method

.method public onStopped()V
    .registers 1

    .line 63
    invoke-super {p0}, Landroidx/core/location/GnssStatusCompat$Callback;->onStopped()V

    return-void
.end method
