.class Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$1;
.super Ljava/lang/Object;
.source "BT625Client.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;)V
    .registers 2

    .line 214
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$1;->this$0:Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 12

    # p0: this
    # p1: profile (I)
    # p2: proxy (BluetoothProfile)

    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$1;->this$0:Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    invoke-static {v0}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->-$$Nest$fgetcurrentBluetoothDevice(Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    if-nez v0, :cond_return

    return-void

    :cond_return
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x64 # PRIORITY_ON / CONNECTION_POLICY_ALLOWED

    # 1. Log connection
    new-instance v4, Ljava/lang/StringBuilder;
    const-string v5, "\u84dd\u7259\uff1aBT onServiceConnected profile="
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    move-result-object v4
    invoke-static {v4}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    # 2. Try setConnectionPolicy (API 29+)
    :try_start_policy
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v4
    const-string v5, "setConnectionPolicy"
    const/4 v6, 0x2
    new-array v6, v6, [Ljava/lang/Class;
    const-class v7, Landroid/bluetooth/BluetoothDevice;
    aput-object v7, v6, v2
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v7, v6, v1
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v4
    const/4 v5, 0x2
    new-array v5, v5, [Ljava/lang/Object;
    aput-object v0, v5, v2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v6
    aput-object v6, v5, v1
    invoke-virtual {v4, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_policy
    .catch Ljava/lang/Exception; {:try_start_policy .. :try_end_policy} :catch_policy

    :catch_policy
    nop

    # 3. Try setPriority (Legacy)
    :try_start_priority
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v4
    const-string v5, "setPriority"
    const/4 v6, 0x2
    new-array v6, v6, [Ljava/lang/Class;
    const-class v7, Landroid/bluetooth/BluetoothDevice;
    aput-object v7, v6, v2
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
    aput-object v7, v6, v1
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v4
    const/4 v5, 0x2
    new-array v5, v5, [Ljava/lang/Object;
    aput-object v0, v5, v2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    move-result-object v3
    aput-object v3, v5, v1
    invoke-virtual {v4, p2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_priority
    .catch Ljava/lang/Exception; {:try_start_priority .. :try_end_priority} :catch_priority

    :catch_priority
    nop

    # 4. Explicit Connect
    invoke-interface {p2, v0}, Landroid/bluetooth/BluetoothProfile;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    move-result v3
    const/4 v4, 0x2 # STATE_CONNECTED
    if-eq v3, v4, :cond_try_active

    :try_start_connect
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v3
    const-string v4, "connect"
    new-array v5, v1, [Ljava/lang/Class;
    const-class v6, Landroid/bluetooth/BluetoothDevice;
    aput-object v6, v5, v2
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v3
    new-array v4, v1, [Ljava/lang/Object;
    aput-object v0, v4, v2
    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_connect
    .catch Ljava/lang/Exception; {:try_start_connect .. :try_end_connect} :catch_connect

    :catch_connect
    nop

    # 5. Set Active Device for A2DP
    :cond_try_active
    const/4 v3, 0x2 # A2DP
    if-ne p1, v3, :cond_chain

    :try_start_active
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    move-result-object v3
    const-string v4, "setActiveDevice"
    new-array v5, v1, [Ljava/lang/Class;
    const-class v6, Landroid/bluetooth/BluetoothDevice;
    aput-object v6, v5, v2
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    move-result-object v3
    new-array v4, v1, [Ljava/lang/Object;
    aput-object v0, v4, v2
    invoke-virtual {v3, p2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_active
    .catch Ljava/lang/Exception; {:try_start_active .. :try_end_active} :catch_active

    :catch_active
    nop

    # 6. Chaining: Headset -> A2DP with delay for Samsung
    :cond_chain
    if-ne p1, v1, :cond_check_done

    const-wide/16 v3, 0x1f4 # 500ms
    :try_start_delay
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V
    :try_end_delay
    .catch Ljava/lang/Exception; {:try_start_delay .. :try_end_delay} :catch_delay
    :catch_delay

    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$1;->this$0:Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BleService;->getInstance()Lcn/baos/watch/sdk/bluetooth/BleService;
    move-result-object v1
    iget-object v1, v1, Lcn/baos/watch/sdk/bluetooth/BleService;->mContext:Landroid/content/Context;
    if-eqz v1, :cond_check_done
    iget-object v0, v0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    const/4 v2, 0x2 # profile=A2DP
    invoke-virtual {v0, v1, p0, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    goto :cond_final

    :cond_check_done
    const/4 v0, 0x2
    if-ne p1, v0, :cond_final
    iget-object v0, p0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$1;->this$0:Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;
    iput-boolean v2, v0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->isConnectingClassical:Z

    :cond_final
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 2

    return-void
.end method
