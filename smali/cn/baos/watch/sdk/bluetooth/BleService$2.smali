.class Lcn/baos/watch/sdk/bluetooth/BleService$2;
.super Ljava/lang/Object;
.source "BleService.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/search/response/SearchResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/bluetooth/BleService;->scanDoBt()V
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

    .line 566
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$2;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDeviceFounded(Lcom/inuker/bluetooth/library/search/SearchResult;)V
    .registers 4

    .line 574
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u84dd\u7259\uff1a---onDeviceFounded:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/search/SearchResult;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 575
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getInstance()Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/interfac/ble/HbBtClientManager;->getCurrentConnectConfig()Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;

    move-result-object v0

    if-eqz v0, :cond_5d

    .line 576
    iget-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->isNotEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v1, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    .line 577
    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/search/SearchResult;->getAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5d

    .line 578
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "\u84dd\u7259\uff1aonDeviceFounded-sure="

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;->macAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->e(Ljava/lang/String;)V

    .line 579
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$2;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lcn/baos/watch/sdk/bluetooth/BleService;->isScanBtStatus:Ljava/lang/Boolean;

    .line 580
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$2;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-virtual {p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->scanFinish()V

    .line 581
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getClientInstance()Lcom/inuker/bluetooth/library/BluetoothClient;

    move-result-object p1

    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/BluetoothClient;->stopSearch()V

    :cond_5d
    return-void
.end method

.method public onSearchCanceled()V
    .registers 1

    return-void
.end method

.method public onSearchStarted()V
    .registers 1

    return-void
.end method

.method public onSearchStopped()V
    .registers 1

    return-void
.end method
