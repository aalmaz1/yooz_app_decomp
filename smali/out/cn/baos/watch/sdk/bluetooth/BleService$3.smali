.class Lcn/baos/watch/sdk/bluetooth/BleService$3;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/bluetooth/BleService;->initSppConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/bluetooth/BleService;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .registers 2

    .line 1306
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$3;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    const-string v0, "initSppConnect start is not supported connect staus"

    .line 1309
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1310
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    iget-object v0, v0, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->mBLESPPUtils:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->getConnectStatus()Z

    move-result v0

    if-nez v0, :cond_29

    const-string v0, "initSppConnect start is not supported connect status - start ing"

    .line 1311
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 1312
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    .line 1313
    iget-object v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 1314
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v1

    iget-object v1, v1, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->mBLESPPUtils:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;

    invoke-virtual {v1, v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->connect(Ljava/lang/String;)V

    :cond_29
    return-void
.end method
