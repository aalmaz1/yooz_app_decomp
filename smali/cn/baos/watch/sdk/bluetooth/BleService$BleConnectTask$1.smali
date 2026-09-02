.class Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask$1;
.super Landroid/os/Handler;
.source "BleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;Landroid/os/Looper;)V
    .registers 3

    .line 1248
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask$1;->this$1:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 2

    .line 1250
    invoke-virtual {p1}, Landroid/os/Message;->getCallback()Ljava/lang/Runnable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
