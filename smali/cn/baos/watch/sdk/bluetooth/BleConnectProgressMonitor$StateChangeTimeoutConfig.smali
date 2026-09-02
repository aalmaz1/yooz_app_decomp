.class public Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;
.super Ljava/lang/Object;
.source "BleConnectProgressMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StateChangeTimeoutConfig"
.end annotation


# instance fields
.field private curStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field private expectStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field maxRetryCount:I

.field retryNum:I

.field timeoutMs:I


# direct methods
.method static bridge synthetic -$$Nest$fgetcurStatus(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;
    .registers 1

    iget-object p0, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->curStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetexpectStatus(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;
    .registers 1

    iget-object p0, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->expectStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    return-object p0
.end method

.method public constructor <init>(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;II)V
    .registers 5

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput p3, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->maxRetryCount:I

    const/4 p3, 0x0

    .line 24
    iput p3, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->retryNum:I

    .line 25
    iput p4, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->timeoutMs:I

    .line 26
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->curStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 27
    iput-object p2, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->expectStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    return-void
.end method
