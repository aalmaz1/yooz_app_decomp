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
    .locals 0

    .line 214
    iput-object p1, p0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$1;->this$0:Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6

    const-string v0, "\u84dd\u7259\uff1aBT -\u8fde\u63a5-\u72b6\u6001 - \uff1aHEADSET:"

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 224
    :try_start_0
    check-cast p2, Landroid/bluetooth/BluetoothHeadset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 p1, 0x0

    .line 227
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    iget-object v3, p0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$1;->this$0:Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    iget-object v3, v3, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->mContentDisTip:Ljava/lang/String;

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/bluetooth/BluetoothDevice;

    aput-object v5, v4, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 228
    invoke-virtual {v2, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    .line 229
    iget-object v3, p0, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client$1;->this$0:Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    invoke-static {v3}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->-$$Nest$fgetcurrentBluetoothDevice(Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    aput-object v3, v1, p1

    invoke-virtual {v2, p2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 231
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 234
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 237
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0

    return-void
.end method
