.class public interface abstract Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;
.super Ljava/lang/Object;
.source "BLESPPUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OnBluetoothAction"
.end annotation


# virtual methods
.method public abstract onConnectFailed(Ljava/lang/String;)V
.end method

.method public abstract onConnectSuccess(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onFinishFoundDevice()V
.end method

.method public abstract onFoundDevice(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public abstract onReceiveBytes([B)V
.end method

.method public abstract onSendBytes([B)V
.end method
