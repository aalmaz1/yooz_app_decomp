.class public final synthetic Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/play/core/install/InstallStateUpdatedListener;


# instance fields
.field public final synthetic f$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;


# direct methods
.method public synthetic constructor <init>(Lde/ffuf/in_app_update/InAppUpdatePlugin;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1$$ExternalSyntheticLambda0;->f$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    return-void
.end method


# virtual methods
.method public final onStateUpdate(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1$$ExternalSyntheticLambda0;->f$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    check-cast p1, Lcom/google/android/play/core/install/InstallState;

    invoke-static {v0, p1}, Lde/ffuf/in_app_update/InAppUpdatePlugin$startFlexibleUpdate$1;->$r8$lambda$zYDFli3DGkOdprD4VLIXAZ-HbLI(Lde/ffuf/in_app_update/InAppUpdatePlugin;Lcom/google/android/play/core/install/InstallState;)V

    return-void
.end method
