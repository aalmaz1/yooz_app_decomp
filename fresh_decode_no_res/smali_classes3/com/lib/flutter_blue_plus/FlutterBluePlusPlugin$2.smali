.class Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$2;
.super Landroid/content/BroadcastReceiver;
.source "FlutterBluePlusPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;


# direct methods
.method constructor <init>(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)V
    .locals 0

    .line 1975
    iput-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$2;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1980
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v0, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    .line 1983
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto/16 :goto_2

    .line 1989
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x21

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    if-lt p1, v0, :cond_1

    .line 1990
    const-class p1, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 1992
    :cond_1
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    :goto_0
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    const/high16 v1, -0x80000000

    .line 1995
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    const/4 v2, -0x1

    .line 1996
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 1998
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$2;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    sget-object v2, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "OnBondStateChanged: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smbondStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " prev: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smbondStateString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2000
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xb

    if-ne v0, v2, :cond_2

    .line 2004
    iget-object v2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$2;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmBondingDevices(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 2006
    :cond_2
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$2;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmBondingDevices(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2010
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "remote_id"

    .line 2011
    invoke-virtual {p1, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2012
    invoke-static {v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bmBondStateEnum(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "bond_state"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2013
    invoke-static {p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bmBondStateEnum(I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "prev_state"

    invoke-virtual {p1, v0, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2015
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$2;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string v0, "OnBondStateChanged"

    invoke-static {p2, v0, p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$minvokeMethodUIThread(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_3
    :goto_2
    return-void
.end method
