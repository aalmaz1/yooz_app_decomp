.class public final synthetic Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcn/baos/watch/sdk/bluetooth/BleService;

.field public final synthetic f$1:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Lcn/baos/watch/sdk/bluetooth/BleService;Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda12;->f$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    iput-object p2, p0, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda12;->f$1:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda12;->f$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$$ExternalSyntheticLambda12;->f$1:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0, v1}, Lcn/baos/watch/sdk/bluetooth/BleService;->$r8$lambda$4oLbF0qQBgRv8w-fVZaMV_LW0Eo(Lcn/baos/watch/sdk/bluetooth/BleService;Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
