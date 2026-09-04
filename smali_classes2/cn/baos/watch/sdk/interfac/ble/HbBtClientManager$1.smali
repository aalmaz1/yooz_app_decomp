.class Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager$1;
.super Ljava/lang/Object;
.source "HbBtClientManager.java"

# interfaces
.implements Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->initSpp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;)V
    .locals 0

    .line 201
    iput-object p1, p0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager$1;->this$0:Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectFailed(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onConnectSuccess(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onFinishFoundDevice()V
    .locals 0

    return-void
.end method

.method public onFoundDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    return-void
.end method

.method public onReceiveBytes([B)V
    .locals 2

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Spp:\u539f\u59cb\u6570\u636e\u6ce8\u5165so\u5e93\u6570\u636e\u957f\u5ea6:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Spp:\u539f\u59cb\u6570\u636e\u6ce8\u5165so\u5e93\u6570\u636e:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/utils/W100Utils;->byte2hex([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 227
    array-length v0, p1

    invoke-static {p1, v0}, Lcn/baos/watch/sdk/manager/jni/BlueToothJniManager;->bleFrameArrived([BI)Z

    return-void
.end method

.method public onSendBytes([B)V
    .locals 0

    return-void
.end method
