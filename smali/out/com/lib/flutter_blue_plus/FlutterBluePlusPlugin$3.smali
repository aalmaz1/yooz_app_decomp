.class Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$3;
.super Landroid/bluetooth/le/ScanCallback;
.source "FlutterBluePlusPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->getScanCallback()Landroid/bluetooth/le/ScanCallback;
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

    .line 2046
    iput-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$3;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 2095
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onBatchScanResults(Ljava/util/List;)V

    return-void
.end method

.method public onScanFailed(I)V
    .registers 6

    .line 2101
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$3;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    sget-object v1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->ERROR:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "onScanFailed: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smscanFailedString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2103
    invoke-super {p0, p1}, Landroid/bluetooth/le/ScanCallback;->onScanFailed(I)V

    .line 2106
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "advertisements"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    .line 2108
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "success"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error_code"

    .line 2109
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "error_string"

    .line 2110
    invoke-static {p1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smscanFailedString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2112
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$3;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string v1, "OnScanResponse"

    invoke-static {p1, v1, v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$minvokeMethodUIThread(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .registers 12

    .line 2051
    iget-object v0, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$3;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    sget-object v1, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;->VERBOSE:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;

    const-string v2, "onScanResult"

    invoke-static {v0, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mlog(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$LogLevel;Ljava/lang/String;)V

    .line 2053
    invoke-super {p0, p1, p2}, Landroid/bluetooth/le/ScanCallback;->onScanResult(ILandroid/bluetooth/le/ScanResult;)V

    .line 2055
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    .line 2056
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 2057
    invoke-virtual {p2}, Landroid/bluetooth/le/ScanResult;->getScanRecord()Landroid/bluetooth/le/ScanRecord;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_25

    .line 2058
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getBytes()[B

    move-result-object v3

    invoke-static {v3}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$smbytesToHex([B)Ljava/lang/String;

    move-result-object v3

    goto :goto_26

    :cond_25
    move-object v3, v2

    .line 2061
    :goto_26
    iget-object v4, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$3;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmScanFilters(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "continuous_updates"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v4, :cond_69

    .line 2062
    iget-object v4, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$3;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmAdvSeen(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    iget-object v4, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$3;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v4}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmAdvSeen(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5c

    move v4, v6

    goto :goto_5d

    :cond_5c
    move v4, v7

    .line 2063
    :goto_5d
    iget-object v8, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$3;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v8}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmAdvSeen(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_69

    return-void

    :cond_69
    if-eqz v1, :cond_6f

    .line 2070
    invoke-virtual {v1}, Landroid/bluetooth/le/ScanRecord;->getDeviceName()Ljava/lang/String;

    move-result-object v2

    .line 2071
    :cond_6f
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$3;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmScanFilters(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/HashMap;

    move-result-object v1

    const-string v3, "with_keywords"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 2072
    iget-object v3, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$3;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v3, v1, v2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mfilterKeywords(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/util/List;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_86

    return-void

    .line 2077
    :cond_86
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$3;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmScanFilters(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_b4

    .line 2078
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$3;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v1, v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$mscanCountIncrement(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;)I

    move-result v0

    .line 2079
    iget-object v1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$3;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-static {v1}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$fgetmScanFilters(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;)Ljava/util/HashMap;

    move-result-object v1

    const-string v2, "continuous_divisor"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 2080
    rem-int/2addr v0, v1

    if-eqz v0, :cond_b4

    return-void

    .line 2086
    :cond_b4
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-array v1, v6, [Ljava/util/HashMap;

    .line 2087
    iget-object v2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$3;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-virtual {v2, p1, p2}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->bmScanAdvertisement(Landroid/bluetooth/BluetoothDevice;Landroid/bluetooth/le/ScanResult;)Ljava/util/HashMap;

    move-result-object p1

    aput-object p1, v1, v7

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    const-string p2, "advertisements"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2089
    iget-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$3;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    const-string p2, "OnScanResponse"

    invoke-static {p1, p2, v0}, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;->-$$Nest$minvokeMethodUIThread(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method
