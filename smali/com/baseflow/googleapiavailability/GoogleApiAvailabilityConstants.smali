.class final Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityConstants;
.super Ljava/lang/Object;
.source "GoogleApiAvailabilityConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityConstants$GooglePlayServicesAvailability;
    }
.end annotation


# static fields
.field static final GOOGLE_PLAY_SERVICES_AVAILABILITY_NOT_AVAILABLE_ON_PLATFORM:I = 0x6

.field static final GOOGLE_PLAY_SERVICES_AVAILABILITY_SERVICE_DISABLED:I = 0x4

.field static final GOOGLE_PLAY_SERVICES_AVAILABILITY_SERVICE_INVALID:I = 0x5

.field static final GOOGLE_PLAY_SERVICES_AVAILABILITY_SERVICE_MISSING:I = 0x1

.field static final GOOGLE_PLAY_SERVICES_AVAILABILITY_SERVICE_UPDATING:I = 0x2

.field static final GOOGLE_PLAY_SERVICES_AVAILABILITY_SERVICE_VERSION_UPDATE_REQUIRED:I = 0x3

.field static final GOOGLE_PLAY_SERVICES_AVAILABILITY_SUCCESS:I = 0x0

.field static final GOOGLE_PLAY_SERVICES_AVAILABILITY_UNKNOWN:I = 0x7

.field static final LOG_TAG:Ljava/lang/String; = "google_api_availability"

.field static final REQUEST_GOOGLE_PLAY_SERVICES:I = 0x3e8


# direct methods
.method constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static toPlayServiceAvailability(I)I
    .registers 3

    if-eqz p0, :cond_1b

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1a

    if-eq p0, v0, :cond_18

    const/16 v0, 0x9

    if-eq p0, v0, :cond_16

    const/16 v0, 0x12

    if-eq p0, v0, :cond_15

    const/4 p0, 0x7

    return p0

    :cond_15
    return v1

    :cond_16
    const/4 p0, 0x5

    return p0

    :cond_18
    const/4 p0, 0x4

    return p0

    :cond_1a
    return v0

    :cond_1b
    const/4 p0, 0x0

    return p0
.end method
