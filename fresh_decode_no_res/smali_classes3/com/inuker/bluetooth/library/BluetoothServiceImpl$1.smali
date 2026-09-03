.class Lcom/inuker/bluetooth/library/BluetoothServiceImpl$1;
.super Ljava/lang/Object;
.source "BluetoothServiceImpl.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/connect/response/BleGeneralResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/BluetoothServiceImpl;->callBluetoothApi(ILandroid/os/Bundle;Lcom/inuker/bluetooth/library/IResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/BluetoothServiceImpl;

.field final synthetic val$response:Lcom/inuker/bluetooth/library/IResponse;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/BluetoothServiceImpl;Lcom/inuker/bluetooth/library/IResponse;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 70
    iput-object p1, p0, Lcom/inuker/bluetooth/library/BluetoothServiceImpl$1;->this$0:Lcom/inuker/bluetooth/library/BluetoothServiceImpl;

    iput-object p2, p0, Lcom/inuker/bluetooth/library/BluetoothServiceImpl$1;->val$response:Lcom/inuker/bluetooth/library/IResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(ILandroid/os/Bundle;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothServiceImpl$1;->val$response:Lcom/inuker/bluetooth/library/IResponse;

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    .line 76
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 79
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/BluetoothServiceImpl$1;->val$response:Lcom/inuker/bluetooth/library/IResponse;

    invoke-interface {v0, p1, p2}, Lcom/inuker/bluetooth/library/IResponse;->onResponse(ILandroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 81
    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onResponse(ILjava/lang/Object;)V
    .locals 0

    .line 70
    check-cast p2, Landroid/os/Bundle;

    invoke-virtual {p0, p1, p2}, Lcom/inuker/bluetooth/library/BluetoothServiceImpl$1;->onResponse(ILandroid/os/Bundle;)V

    return-void
.end method
