.class Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$1;
.super Landroid/content/BroadcastReceiver;
.source "BLESPPUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;)V
    .registers 2

    .line 36
    iput-object p1, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$1;->this$0:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.bluetooth.device.action.FOUND"

    .line 39
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_25

    const-string p1, "android.bluetooth.device.extra.DEVICE"

    .line 40
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 41
    iget-object p2, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$1;->this$0:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;

    invoke-static {p2}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->-$$Nest$fgetmOnBluetoothAction(Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;)Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;

    move-result-object p2

    if-eqz p2, :cond_25

    iget-object p2, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$1;->this$0:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;

    invoke-static {p2}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->-$$Nest$fgetmOnBluetoothAction(Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;)Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;

    move-result-object p2

    invoke-interface {p2, p1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;->onFoundDevice(Landroid/bluetooth/BluetoothDevice;)V

    :cond_25
    return-void
.end method
