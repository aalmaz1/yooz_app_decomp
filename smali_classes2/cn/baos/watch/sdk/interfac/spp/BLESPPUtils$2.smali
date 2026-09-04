.class Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$2;
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
    .locals 0

    .line 49
    iput-object p1, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$2;->this$0:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    .line 52
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$2;->this$0:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;

    invoke-static {p1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->-$$Nest$fgetmOnBluetoothAction(Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;)Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$2;->this$0:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;

    invoke-static {p1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->-$$Nest$fgetmOnBluetoothAction(Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;)Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;

    move-result-object p1

    invoke-interface {p1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;->onFinishFoundDevice()V

    :cond_0
    return-void
.end method
