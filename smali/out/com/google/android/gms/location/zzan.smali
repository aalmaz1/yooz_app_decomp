.class public final Lcom/google/android/gms/location/zzan;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"


# direct methods
.method public static zza(I)I
    .registers 5

    const/16 v0, 0x64

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p0, v0, :cond_16

    const/16 v0, 0x66

    if-eq p0, v0, :cond_16

    const/16 v0, 0x68

    if-eq p0, v0, :cond_16

    const/16 v0, 0x69

    if-ne p0, v0, :cond_14

    move p0, v0

    goto :goto_16

    :cond_14
    move v0, v1

    goto :goto_17

    :cond_16
    :goto_16
    move v0, v2

    :goto_17
    new-array v2, v2, [Ljava/lang/Object;

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const-string v1, "priority %d must be a Priority.PRIORITY_* constant"

    .line 2
    invoke-static {v0, v1, v2}, Lcom/google/android/gms/common/internal/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    return p0
.end method

.method public static zzb(I)Ljava/lang/String;
    .registers 2

    const/16 v0, 0x64

    if-eq p0, v0, :cond_1f

    const/16 v0, 0x66

    if-eq p0, v0, :cond_1c

    const/16 v0, 0x68

    if-eq p0, v0, :cond_19

    const/16 v0, 0x69

    if-ne p0, v0, :cond_13

    const-string p0, "PASSIVE"

    return-object p0

    .line 1
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_19
    const-string p0, "LOW_POWER"

    return-object p0

    :cond_1c
    const-string p0, "BALANCED_POWER_ACCURACY"

    return-object p0

    :cond_1f
    const-string p0, "HIGH_ACCURACY"

    return-object p0
.end method
