.class public final synthetic Lcn/baos/watch/sdk/bluetooth/bt/BleUtils$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils$$ExternalSyntheticLambda1;->f$0:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->lambda$remove$1(Landroid/bluetooth/BluetoothDevice;)V

    return-void
.end method
