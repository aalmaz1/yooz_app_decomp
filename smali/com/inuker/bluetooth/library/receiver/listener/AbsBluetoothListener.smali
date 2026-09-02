.class public abstract Lcom/inuker/bluetooth/library/receiver/listener/AbsBluetoothListener;
.super Ljava/lang/Object;
.source "AbsBluetoothListener.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# static fields
.field private static final MSG_INVOKE:I = 0x1

.field private static final MSG_SYNC_INVOKE:I = 0x2


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mSyncHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 22
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/receiver/listener/AbsBluetoothListener;->mHandler:Landroid/os/Handler;

    .line 23
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/receiver/listener/AbsBluetoothListener;->mSyncHandler:Landroid/os/Handler;

    return-void

    .line 20
    :cond_20
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 5

    .line 28
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 29
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_11

    const/4 v2, 0x2

    if-eq p1, v2, :cond_d

    goto :goto_14

    .line 34
    :cond_d
    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/receiver/listener/AbsBluetoothListener;->onSyncInvoke([Ljava/lang/Object;)V

    goto :goto_14

    .line 31
    :cond_11
    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/receiver/listener/AbsBluetoothListener;->onInvoke([Ljava/lang/Object;)V

    :goto_14
    return v1
.end method

.method public final varargs invoke([Ljava/lang/Object;)V
    .registers 4

    .line 42
    iget-object v0, p0, Lcom/inuker/bluetooth/library/receiver/listener/AbsBluetoothListener;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public final varargs invokeSync([Ljava/lang/Object;)V
    .registers 4

    .line 46
    iget-object v0, p0, Lcom/inuker/bluetooth/library/receiver/listener/AbsBluetoothListener;->mSyncHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public varargs abstract onInvoke([Ljava/lang/Object;)V
.end method

.method public varargs abstract onSyncInvoke([Ljava/lang/Object;)V
.end method
