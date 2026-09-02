.class Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$1;
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
    .registers 2

    .line 1917
    iput-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$1;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    .line 1921
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_92

    const-string v0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 1924
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_10

    goto/16 :goto_92

    :cond_10
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/high16 v0, -0x80000000

    .line 1928
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1930
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$1;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    sget-object v0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "OnAdapterStateChanged: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smadapterStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v0, v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    const/16 p2, 0xc

    if-ne p1, p2, :cond_6a

    .line 1936
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$1;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmBluetoothAdapter(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    if-eqz p2, :cond_6a

    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$1;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmIsScanning(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Z

    move-result p2

    if-eqz p2, :cond_6a

    .line 1937
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$1;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmBluetoothAdapter(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object p2

    invoke-virtual {p2}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object p2

    if-eqz p2, :cond_6a

    .line 1939
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$1;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    sget-object v1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->DEBUG:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v2, "calling stopScan (Bluetooth Restarted)"

    invoke-static {v0, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 1940
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$1;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mgetScanCallback(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Landroid/bluetooth/le/ScanCallback;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    .line 1941
    iget-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$1;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fputmIsScanning(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Z)V

    .line 1947
    :cond_6a
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 1948
    invoke-static {p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bmAdapterStateEnum(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "adapter_state"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1950
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$1;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string v1, "OnAdapterStateChanged"

    invoke-static {v0, v1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$minvokeMethodUIThread(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;Ljava/util/HashMap;)V

    const/16 p2, 0xd

    if-eq p1, p2, :cond_8b

    const/16 p2, 0xa

    if-ne p1, p2, :cond_92

    .line 1955
    :cond_8b
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$1;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string p2, "adapterTurnOff"

    invoke-static {p1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mdisconnectAllDevices(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;)V

    :cond_92
    :goto_92
    return-void
.end method
