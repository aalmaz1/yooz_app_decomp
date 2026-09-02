.class Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;
.super Ljava/lang/Object;
.source "FlutterBluePlusPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChrFound"
.end annotation


# instance fields
.field public characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

.field public error:Ljava/lang/String;

.field final synthetic this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;


# direct methods
.method public constructor <init>(Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;Landroid/bluetooth/BluetoothGattCharacteristic;Ljava/lang/String;)V
    .registers 4

    .line 1622
    iput-object p1, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;->this$0:Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1623
    iput-object p2, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;->characteristic:Landroid/bluetooth/BluetoothGattCharacteristic;

    .line 1624
    iput-object p3, p0, Lcom/lib/flutter_blue_plus/FlutterBluePlusPlugin$ChrFound;->error:Ljava/lang/String;

    return-void
.end method
