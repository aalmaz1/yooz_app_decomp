.class public final synthetic Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/gms/tasks/OnFailureListener;


# instance fields
.field public final synthetic f$0:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$$ExternalSyntheticLambda0;->f$0:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;

    return-void
.end method


# virtual methods
.method public final onFailure(Ljava/lang/Exception;)V
    .registers 3

    iget-object v0, p0, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$$ExternalSyntheticLambda0;->f$0:Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;

    invoke-static {v0, p1}, Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager;->lambda$makeGooglePlayServicesAvailable$0(Lcom/baseflow/googleapiavailability/GoogleApiAvailabilityManager$ErrorCallback;Ljava/lang/Exception;)V

    return-void
.end method
