.class Lcom/inuker/bluetooth/library/BluetoothClientImpl$11;
.super Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;
.source "BluetoothClientImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/BluetoothClientImpl;->readRssi(Ljava/lang/String;Lcom/inuker/bluetooth/library/connect/response/BleReadRssiResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

.field final synthetic val$response:Lcom/inuker/bluetooth/library/connect/response/BleReadRssiResponse;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Lcom/inuker/bluetooth/library/connect/response/BleReadRssiResponse;)V
    .registers 3

    .line 428
    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$11;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    iput-object p2, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$11;->val$response:Lcom/inuker/bluetooth/library/connect/response/BleReadRssiResponse;

    invoke-direct {p0}, Lcom/inuker/bluetooth/library/connect/response/BluetoothResponse;-><init>()V

    return-void
.end method


# virtual methods
.method protected onAsyncResponse(ILandroid/os/Bundle;)V
    .registers 6

    .line 431
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$11;->this$0:Lcom/inuker/bluetooth/library/BluetoothClientImpl;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/BluetoothClientImpl;->-$$Nest$mcheckRuntime(Lcom/inuker/bluetooth/library/BluetoothClientImpl;Z)V

    .line 432
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothClientImpl$11;->val$response:Lcom/inuker/bluetooth/library/connect/response/BleReadRssiResponse;

    if-eqz v0, :cond_18

    const-string v1, "extra.rssi"

    const/4 v2, 0x0

    .line 433
    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Lcom/inuker/bluetooth/library/connect/response/BleReadRssiResponse;->onResponse(ILjava/lang/Object;)V

    :cond_18
    return-void
.end method
