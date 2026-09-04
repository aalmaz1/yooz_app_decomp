.class public Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;
.super Ljava/lang/Object;
.source "GoogleApiAvailabilityManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;,
        Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$SuccessCallback;,
        Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$MakeGooglePlayServicesAvailableCallback;,
        Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$getErrorStringCallback;,
        Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$isUserResolvableCallback;,
        Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$showErrorNotificationCallback;,
        Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$showErrorDialogFragmentCallback;
    }
.end annotation


# instance fields
.field googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    invoke-static {}, Lcom/google/android/gms/common/GoogleApiAvailability;->getInstance()Lcom/google/android/gms/common/GoogleApiAvailability;

    move-result-object v0

    iput-object v0, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    return-void
.end method

.method static synthetic lambda$makeGooglePlayServicesAvailable$0(Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;Ljava/lang/Exception;)V
    .locals 1

    const-string v0, "GoogleApiAvailability.makeGooglePlayServicesAvailable"

    .line 88
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$makeGooglePlayServicesAvailable$1(Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$MakeGooglePlayServicesAvailableCallback;Ljava/lang/Void;)V
    .locals 0

    const/4 p1, 0x0

    .line 89
    invoke-interface {p0, p1}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$MakeGooglePlayServicesAvailableCallback;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method


# virtual methods
.method checkPlayServicesAvailability(Ljava/lang/Boolean;Landroid/app/Activity;Landroid/content/Context;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$SuccessCallback;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;)V
    .locals 1

    const-string v0, "google_api_availability"

    if-nez p3, :cond_0

    const-string p1, "The `ApplicationContext` cannot be null."

    .line 56
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "GoogleApiAvailability.GoogleApiAvailabilityManager"

    const-string p2, "Android `ApplicationContext` cannot be null."

    .line 57
    invoke-interface {p5, p1, p2}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 61
    :cond_0
    iget-object p5, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 62
    invoke-virtual {p5, p3}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p3

    if-nez p2, :cond_2

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Unable to show dialog as `Activity` is not available."

    .line 67
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    .line 69
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :cond_2
    if-eqz p1, :cond_3

    .line 72
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 73
    iget-object p1, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    const/16 p5, 0x3e8

    .line 74
    invoke-virtual {p1, p2, p3, p5}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorDialogFragment(Landroid/app/Activity;II)Z

    .line 77
    :cond_3
    invoke-static {p3}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityConstants;->toPlayServiceAvailability(I)I

    move-result p1

    invoke-interface {p4, p1}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$SuccessCallback;->onSuccess(I)V

    return-void
.end method

.method getErrorString(Landroid/content/Context;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$getErrorStringCallback;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "google_api_availability"

    const-string p2, "Context cannot be null."

    .line 94
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "GoogleApiAvailability.getErrorString"

    const-string p2, "Android context cannot be null."

    .line 95
    invoke-interface {p3, p1, p2}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 99
    :cond_0
    iget-object p3, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p1

    invoke-virtual {p3, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->getErrorString(I)Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-interface {p2, p1}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$getErrorStringCallback;->onSuccess(Ljava/lang/String;)V

    return-void
.end method

.method isUserResolvable(Landroid/content/Context;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$isUserResolvableCallback;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;)V
    .locals 0

    if-nez p1, :cond_0

    const-string p1, "google_api_availability"

    const-string p2, "Context cannot be null."

    .line 106
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "GoogleApiAvailability.isUserResolvable"

    const-string p2, "Android context cannot be null."

    .line 107
    invoke-interface {p3, p1, p2}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 111
    :cond_0
    iget-object p3, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 112
    invoke-virtual {p3, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p1

    .line 114
    iget-object p3, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {p3, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isUserResolvableError(I)Z

    move-result p1

    invoke-interface {p2, p1}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$isUserResolvableCallback;->onSuccess(Z)V

    return-void
.end method

.method makeGooglePlayServicesAvailable(Landroid/app/Activity;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$MakeGooglePlayServicesAvailableCallback;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "google_api_availability"

    const-string p2, "Activity cannot be null."

    .line 82
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "GoogleApiAvailability.makeGooglePlayServicesAvailable"

    const-string p2, "Android Activity cannot be null."

    .line 83
    invoke-interface {p3, p1, p2}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->makeGooglePlayServicesAvailable(Landroid/app/Activity;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance v0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$$ExternalSyntheticLambda0;-><init>(Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;)V

    .line 88
    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->addOnFailureListener(Lcom/google/android/gms/tasks/OnFailureListener;)Lcom/google/android/gms/tasks/Task;

    move-result-object p1

    new-instance p3, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$$ExternalSyntheticLambda1;

    invoke-direct {p3, p2}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$$ExternalSyntheticLambda1;-><init>(Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$MakeGooglePlayServicesAvailableCallback;)V

    .line 89
    invoke-virtual {p1, p3}, Lcom/google/android/gms/tasks/Task;->addOnSuccessListener(Lcom/google/android/gms/tasks/OnSuccessListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method showErrorDialogFragment(Landroid/content/Context;Landroid/app/Activity;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$showErrorDialogFragmentCallback;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "google_api_availability"

    const-string p2, "Context cannot be null."

    .line 134
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "GoogleApiAvailability.showErrorDialogFragment"

    const-string p2, "Android context cannot be null."

    .line 135
    invoke-interface {p4, p1, p2}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 139
    :cond_0
    iget-object p4, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 140
    invoke-virtual {p4, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 143
    iget-object p4, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    const/16 v0, 0x3e8

    invoke-virtual {p4, p2, p1, v0}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorDialogFragment(Landroid/app/Activity;II)Z

    const/4 p1, 0x1

    .line 144
    invoke-interface {p3, p1}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$showErrorDialogFragmentCallback;->onSuccess(Z)V

    :cond_1
    const/4 p1, 0x0

    .line 147
    invoke-interface {p3, p1}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$showErrorDialogFragmentCallback;->onSuccess(Z)V

    return-void
.end method

.method showErrorNotification(Landroid/content/Context;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$showErrorNotificationCallback;Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "google_api_availability"

    const-string p2, "Context cannot be null."

    .line 119
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "GoogleApiAvailability.showErrorNotification"

    const-string p2, "Android context cannot be null."

    .line 120
    invoke-interface {p3, p1, p2}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;->onError(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 124
    :cond_0
    iget-object p3, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    .line 125
    invoke-virtual {p3, p1}, Lcom/google/android/gms/common/GoogleApiAvailability;->isGooglePlayServicesAvailable(Landroid/content/Context;)I

    move-result p3

    .line 127
    iget-object v0, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;->googleApiAvailability:Lcom/google/android/gms/common/GoogleApiAvailability;

    invoke-virtual {v0, p1, p3}, Lcom/google/android/gms/common/GoogleApiAvailability;->showErrorNotification(Landroid/content/Context;I)V

    const/4 p1, 0x0

    .line 129
    invoke-interface {p2, p1}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$showErrorNotificationCallback;->onSuccess(Ljava/lang/Void;)V

    return-void
.end method
