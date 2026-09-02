.class public final synthetic Lde/ffuf/in_app_update/InAppUpdatePlugin$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/google/android/play/core/install/InstallStateUpdatedListener;


# instance fields
.field public final synthetic f$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;


# direct methods
.method public synthetic constructor <init>(Lde/ffuf/in_app_update/InAppUpdatePlugin;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$$ExternalSyntheticLambda3;->f$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    return-void
.end method


# virtual methods
.method public final onStateUpdate(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lde/ffuf/in_app_update/InAppUpdatePlugin$$ExternalSyntheticLambda3;->f$0:Lde/ffuf/in_app_update/InAppUpdatePlugin;

    check-cast p1, Lcom/google/android/play/core/install/InstallState;

    invoke-static {v0, p1}, Lde/ffuf/in_app_update/InAppUpdatePlugin;->$r8$lambda$MrQQTrn43ly5ixyu99InEMgeh_E(Lde/ffuf/in_app_update/InAppUpdatePlugin;Lcom/google/android/play/core/install/InstallState;)V

    return-void
.end method
