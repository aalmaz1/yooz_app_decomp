.class public final synthetic Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;


# direct methods
.method public synthetic constructor <init>(Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda2;->f$0:Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification$$ExternalSyntheticLambda2;->f$0:Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;

    invoke-static {v0}, Lcn/yoozworld/watch/ui/SsManager$BleEventNotification;->lambda$onBLEScanning$3(Lcn/baos/watch/sdk/bluetooth/entity/BleDeviceInfo;)V

    return-void
.end method
