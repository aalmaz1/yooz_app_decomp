.class public Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;
.super Ljava/lang/Object;
.source "BleStatusStateMachine.java"


# instance fields
.field public SucceedNextStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public curStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public failedNextStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field isAutoStateChange:Z

.field public stateChangeFailedHandler:Ljava/lang/Runnable;

.field public stateChangeHandler:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .registers 6

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->curStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 20
    iput-object p2, p0, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->failedNextStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 21
    iput-object p3, p0, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->SucceedNextStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 22
    iput-object p4, p0, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->stateChangeHandler:Ljava/lang/Runnable;

    .line 23
    iput-object p5, p0, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->stateChangeFailedHandler:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 24
    iput-boolean p1, p0, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->isAutoStateChange:Z

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_23

    .line 38
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_23

    .line 39
    :cond_12
    check-cast p1, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;

    .line 40
    iget-object v2, p0, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->curStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    iget-object v3, p1, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->curStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v2, v3, :cond_21

    iget-object v2, p0, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->SucceedNextStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    iget-object p1, p1, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->SucceedNextStatus:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    if-ne v2, p1, :cond_21

    goto :goto_22

    :cond_21
    move v0, v1

    :goto_22
    return v0

    :cond_23
    :goto_23
    return v1
.end method

.method public isAutoStateChange()Z
    .registers 2

    .line 32
    iget-boolean v0, p0, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->isAutoStateChange:Z

    return v0
.end method

.method public setAutoStateChange(Z)V
    .registers 2

    .line 28
    iput-boolean p1, p0, Lcn/baos/watch/sdk/interfac/ble/BleStatusStateMachine;->isAutoStateChange:Z

    return-void
.end method
