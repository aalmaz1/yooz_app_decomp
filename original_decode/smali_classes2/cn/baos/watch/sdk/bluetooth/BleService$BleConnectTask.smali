.class public Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;
.super Ljava/lang/Thread;
.source "BleService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/bluetooth/BleService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BleConnectTask"
.end annotation


# instance fields
.field private connect_session:Ljava/util/UUID;

.field public mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcn/baos/watch/sdk/bluetooth/BleService;


# direct methods
.method public constructor <init>(Lcn/baos/watch/sdk/bluetooth/BleService;)V
    .locals 0

    .line 1242
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public cleaSessionAsyncDelayJob()V
    .locals 3

    .line 1269
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->connect_session:Ljava/util/UUID;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1270
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->connect_session:Ljava/util/UUID;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1271
    iput-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->connect_session:Ljava/util/UUID;

    .line 1273
    :cond_0
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1274
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public run()V
    .locals 2

    .line 1247
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 1248
    new-instance v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask$1;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask$1;-><init>(Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;Landroid/os/Looper;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    .line 1253
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method public runSessionAsyncDelayJob(Ljava/lang/Runnable;I)V
    .locals 4

    .line 1258
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->connect_session:Ljava/util/UUID;

    if-nez v0, :cond_1

    .line 1259
    monitor-enter p0

    .line 1260
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->connect_session:Ljava/util/UUID;

    if-nez v0, :cond_0

    .line 1261
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->connect_session:Ljava/util/UUID;

    .line 1263
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 1265
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->this$0:Lcn/baos/watch/sdk/bluetooth/BleService;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService;->mConnectTask:Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;

    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/BleService$BleConnectTask;->connect_session:Ljava/util/UUID;

    int-to-long v2, p2

    invoke-virtual {v0, p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    return-void
.end method
