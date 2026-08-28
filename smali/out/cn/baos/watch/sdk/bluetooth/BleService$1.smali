.class Lcn/baos/watch/sdk/bluetooth/BleService$1;
.super Landroid/bluetooth/le/ScanCallback;
.source "BleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/bluetooth/BleService;->init(Landroid/content/Context;)V
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

    .line 388
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$1;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-direct {p0}, Landroid/bluetooth/le/ScanCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatchScanResults(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/bluetooth/le/ScanResult;",
            ">;)V"
        }
    .end annotation

    .line 396
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService$1;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->onBatchScanResultsData(Ljava/util/List;)V

    return-void
.end method

.method public onScanFailed(I)V
    .registers 3

    .line 401
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService$1;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-virtual {v0, p1}, Lcn/baos/watch/sdk/bluetooth/BleService;->onScanFailedData(I)V

    return-void
.end method

.method public onScanResult(ILandroid/bluetooth/le/ScanResult;)V
    .registers 4

    .line 391
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService$1;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-virtual {v0, p1, p2}, Lcn/baos/watch/sdk/bluetooth/BleService;->onScanResultData(ILandroid/bluetooth/le/ScanResult;)V

    return-void
.end method
