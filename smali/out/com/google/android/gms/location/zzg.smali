.class final Lcom/google/android/gms/location/zzg;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    .line 1
    check-cast p1, Lcom/google/android/gms/location/ActivityTransition;

    check-cast p2, Lcom/google/android/gms/location/ActivityTransition;

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityTransition;->getActivityType()I

    move-result v0

    .line 5
    invoke-virtual {p2}, Lcom/google/android/gms/location/ActivityTransition;->getActivityType()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v1, :cond_1a

    if-lt v0, v1, :cond_19

    goto :goto_28

    :cond_19
    return v3

    .line 6
    :cond_1a
    invoke-virtual {p1}, Lcom/google/android/gms/location/ActivityTransition;->getTransitionType()I

    move-result p1

    .line 7
    invoke-virtual {p2}, Lcom/google/android/gms/location/ActivityTransition;->getTransitionType()I

    move-result p2

    if-ne p1, p2, :cond_26

    const/4 v2, 0x0

    goto :goto_28

    :cond_26
    if-lt p1, p2, :cond_29

    :goto_28
    return v2

    :cond_29
    return v3
.end method
