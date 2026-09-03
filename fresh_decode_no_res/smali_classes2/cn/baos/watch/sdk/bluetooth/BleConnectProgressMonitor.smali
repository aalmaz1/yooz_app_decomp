.class public Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;
.super Ljava/lang/Object;
.source "BleConnectProgressMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;
    }
.end annotation


# instance fields
.field private curConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

.field private curStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field private eventTimestamp:J

.field private mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;


# direct methods
.method public static synthetic $r8$lambda$-U6WUhPJIyljYchzpXOCtyFVXx0(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->lambda$monitorTimeOut$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$hIyBiEuCB_Z2pELnm5D0YlOy0HI(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;)V
    .locals 0

    invoke-direct {p0}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->lambda$checkStatusTimeout$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->eventTimestamp:J

    .line 33
    invoke-virtual {p0}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->initDefaultTimeoutContext()V

    return-void
.end method

.method private synthetic lambda$checkStatusTimeout$0()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->checkStatusTimeout(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)Z

    return-void
.end method

.method private synthetic lambda$monitorTimeOut$1()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->checkStatusTimeout(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)Z

    return-void
.end method


# virtual methods
.method public checkStatusTimeout(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)Z
    .locals 4

    .line 45
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--mo-checkStatusTimeout-1-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    invoke-static {v1}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->-$$Nest$fgetcurStatus(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--mo-checkStatusTimeout-2-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->-$$Nest$fgetcurStatus(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    iget v0, p1, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->retryNum:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p1, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->retryNum:I

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "--mo--checkStatusTimeout--"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    iget v2, v2, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->retryNum:I

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 49
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    iget p1, p1, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->retryNum:I

    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    iget v2, v2, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->maxRetryCount:I

    const/4 v3, 0x0

    if-le p1, v2, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/Object;

    .line 50
    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    invoke-static {v2}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->-$$Nest$fgetcurStatus(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v3

    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    invoke-static {v2}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->-$$Nest$fgetexpectStatus(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v2, "timeout: call:%s,%s"

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 51
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->-$$Nest$fgetcurStatus(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "----"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->-$$Nest$fgetexpectStatus(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->-$$Nest$fgetcurStatus(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    invoke-static {v2}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->-$$Nest$fgetexpectStatus(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcn/baos/watch/sdk/bluetooth/BleService;->onCurrectStatusChangeFailed(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)V

    return v1

    .line 55
    :cond_0
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    iget-object p1, p1, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    new-instance v0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$$ExternalSyntheticLambda0;-><init>(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    iget v1, v1, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->timeoutMs:I

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->runSessionAsyncDelayJob(Ljava/lang/Runnable;I)V

    return v3
.end method

.method protected initDefaultTimeoutContext()V
    .locals 0

    return-void
.end method

.method public monitorTimeOut(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)V
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--monitorTimeOut-a-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->-$$Nest$fgetcurStatus(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 65
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->-$$Nest$fgetcurStatus(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    invoke-static {p1}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->-$$Nest$fgetcurStatus(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->-$$Nest$fgetexpectStatus(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    invoke-static {p1}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->-$$Nest$fgetexpectStatus(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 66
    :cond_0
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "--monitorTimeOut-b-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->-$$Nest$fgetcurStatus(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;)Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 68
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->eventTimestamp:J

    if-eqz p1, :cond_2

    .line 70
    iget-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    const/4 v0, 0x0

    iput v0, p1, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->retryNum:I

    .line 74
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;

    move-result-object p1

    iget-object p1, p1, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    new-instance v0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$$ExternalSyntheticLambda1;-><init>(Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor;->mConfig:Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;

    iget v1, v1, Lcn/baos/watch/sdk/bluetooth/BleConnectProgressMonitor$StateChangeTimeoutConfig;->timeoutMs:I

    mul-int/lit8 v1, v1, 0xa

    invoke-virtual {p1, v0, v1}, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->runSessionAsyncDelayJob(Ljava/lang/Runnable;I)V

    :cond_1
    return-void

    .line 72
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "\u4e0d\u7528\u5904\u7406\u4e0d\u5173\u5fc3\u7684\u72b6\u6001"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
