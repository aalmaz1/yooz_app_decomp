.class synthetic Lcom/baseflow/geolocator/errors/ErrorCodes$1;
.super Ljava/lang/Object;
.source "ErrorCodes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baseflow/geolocator/errors/ErrorCodes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$baseflow$geolocator$errors$ErrorCodes:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 12
    invoke-static {}, Lcom/baseflow/geolocator/errors/ErrorCodes;->values()[Lcom/baseflow/geolocator/errors/ErrorCodes;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes$1;->$SwitchMap$com$baseflow$geolocator$errors$ErrorCodes:[I

    :try_start_9
    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->activityMissing:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes$1;->$SwitchMap$com$baseflow$geolocator$errors$ErrorCodes:[I

    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->errorWhileAcquiringPosition:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes$1;->$SwitchMap$com$baseflow$geolocator$errors$ErrorCodes:[I

    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->locationServicesDisabled:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes$1;->$SwitchMap$com$baseflow$geolocator$errors$ErrorCodes:[I

    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDefinitionsNotFound:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    :try_start_33
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes$1;->$SwitchMap$com$baseflow$geolocator$errors$ErrorCodes:[I

    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionDenied:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_3e} :catch_3e

    :catch_3e
    :try_start_3e
    sget-object v0, Lcom/baseflow/geolocator/errors/ErrorCodes$1;->$SwitchMap$com$baseflow$geolocator$errors$ErrorCodes:[I

    sget-object v1, Lcom/baseflow/geolocator/errors/ErrorCodes;->permissionRequestInProgress:Lcom/baseflow/geolocator/errors/ErrorCodes;

    invoke-virtual {v1}, Lcom/baseflow/geolocator/errors/ErrorCodes;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_49
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3e .. :try_end_49} :catch_49

    :catch_49
    return-void
.end method
