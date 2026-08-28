.class Lcn/baos/watch/sdk/bluetooth/bt/BleUtils$1;
.super Ljava/lang/Object;
.source "BleUtils.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils$1;->this$0:Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .registers 12

    const-string v0, "jili-A2DP:"

    const-string v1, "jili-HEADSET:"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne p1, v3, :cond_4d

    .line 181
    :try_start_8
    move-object v4, p2

    check-cast v4, Landroid/bluetooth/BluetoothHeadset;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_b} :catch_4b

    .line 184
    :try_start_b
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "jili-HEADSET-Action:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils$1;->this$0:Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;

    iget-object v6, v6, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->mContentDisTip:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils$1;->this$0:Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;

    iget-object v6, v6, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->mContentDisTip:Ljava/lang/String;

    new-array v7, v3, [Ljava/lang/Class;

    const-class v8, Landroid/bluetooth/BluetoothDevice;

    aput-object v8, v7, v2

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 185
    invoke-virtual {v5, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v6, v3, [Ljava/lang/Object;

    .line 186
    iget-object v7, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils$1;->this$0:Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;

    invoke-static {v7}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->-$$Nest$fgetcurrentBluetoothDevice(Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v7

    aput-object v7, v6, v2

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_34} :catch_35

    goto :goto_3a

    :catch_35
    move-exception v4

    .line 188
    :try_start_36
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    move v4, v2

    .line 190
    :goto_3a
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    goto :goto_4d

    :catch_4b
    move-exception p1

    goto :goto_91

    :cond_4d
    :goto_4d
    const/4 v1, 0x2

    if-ne p1, v1, :cond_94

    .line 193
    check-cast p2, Landroid/bluetooth/BluetoothA2dp;
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_52} :catch_4b

    .line 196
    :try_start_52
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    iget-object v1, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils$1;->this$0:Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;

    iget-object v1, v1, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->mContentDisTip:Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/bluetooth/BluetoothDevice;

    aput-object v5, v4, v2

    invoke-virtual {p1, v1, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 197
    invoke-virtual {p1, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v3, [Ljava/lang/Object;

    .line 198
    iget-object v3, p0, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils$1;->this$0:Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;

    invoke-static {v3}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->-$$Nest$fgetcurrentBluetoothDevice(Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p1, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_7b
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_7b} :catch_7c

    goto :goto_80

    :catch_7c
    move-exception p1

    .line 200
    :try_start_7d
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    :goto_80
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_90
    .catch Ljava/lang/Exception; {:try_start_7d .. :try_end_90} :catch_4b

    goto :goto_94

    .line 205
    :goto_91
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_94
    :goto_94
    return-void
.end method

.method public onServiceDisconnected(I)V
    .registers 2

    return-void
.end method
