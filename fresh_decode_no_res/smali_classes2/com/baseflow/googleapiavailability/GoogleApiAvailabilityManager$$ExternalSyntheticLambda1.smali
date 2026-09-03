.class public final synthetic Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnSuccessListener;


# instance fields
.field public final synthetic f$0:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$MakeGooglePlayServicesAvailableCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$MakeGooglePlayServicesAvailableCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$$ExternalSyntheticLambda1;->f$0:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$MakeGooglePlayServicesAvailableCallback;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$$ExternalSyntheticLambda1;->f$0:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$MakeGooglePlayServicesAvailableCallback;

    check-cast p1, Ljava/lang/Void;

    invoke-static {v0, p1}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;->lambda$makeGooglePlayServicesAvailable$1(Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$MakeGooglePlayServicesAvailableCallback;Ljava/lang/Void;)V

    return-void
.end method
