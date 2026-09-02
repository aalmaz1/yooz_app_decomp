.class Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;
.super Landroid/os/AsyncTask;
.source "BLESPPUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConnectTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "[",
        "Ljava/lang/Byte;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

.field isConnectStatus:Z

.field isRunning:Z

.field onBluetoothAction:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;

.field romoteDevice:Landroid/bluetooth/BluetoothDevice;

.field stopString:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .registers 3

    .line 61
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 62
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v0, 0x0

    .line 66
    iput-boolean v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->isRunning:Z

    const-string v1, "\r\n"

    .line 67
    iput-object v1, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->stopString:Ljava/lang/String;

    .line 68
    iput-boolean v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->isConnectStatus:Z

    return-void
.end method

.method synthetic constructor <init>(Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask-IA;)V
    .registers 2

    invoke-direct {p0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;-><init>()V

    return-void
.end method


# virtual methods
.method public destory()V
    .registers 3

    .line 71
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_f

    .line 73
    :try_start_4
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_f

    :catch_8
    move-exception v0

    .line 75
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_f
    :goto_f
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 61
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .registers 10

    const/4 v0, 0x1

    .line 83
    iput-boolean v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->isRunning:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_5
    const-string v3, "\u5f00\u59cb\u8fde\u63a5"

    .line 86
    invoke-static {v3}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->-$$Nest$smlogD(Ljava/lang/String;)V

    const-string v3, "00001101-0000-1000-8000-00805F9B34FB"

    .line 87
    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v3

    .line 88
    iget-object v4, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    aget-object p1, p1, v2

    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->romoteDevice:Landroid/bluetooth/BluetoothDevice;

    .line 89
    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_20} :catch_17c

    if-nez p1, :cond_31

    const-string p1, "\u8fde\u63a5\u5931\u8d25 \u83b7\u53d6Socket\u5931\u8d25"

    .line 99
    invoke-static {p1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->-$$Nest$smlogD(Ljava/lang/String;)V

    .line 100
    iget-object p1, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->onBluetoothAction:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;

    const-string v0, "\u8fde\u63a5\u5931\u8d25:\u83b7\u53d6Socket\u5931\u8d25"

    invoke-interface {p1, v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;->onConnectFailed(Ljava/lang/String;)V

    .line 101
    iput-boolean v2, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->isRunning:Z

    return-object v1

    .line 108
    :cond_31
    :try_start_31
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->connect()V

    .line 109
    iput-boolean v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->isConnectStatus:Z

    .line 110
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setSppTransLateData(Z)V

    const-string p1, "Spp \u8fde\u63a5\u6210\u529f"

    .line 111
    invoke-static {p1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->-$$Nest$smlogD(Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->onBluetoothAction:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;

    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->romoteDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;->onConnectSuccess(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_49} :catch_140

    .line 124
    :try_start_49
    iget-object p1, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    new-array v0, v2, [B

    .line 126
    :goto_51
    iget-boolean v3, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->isRunning:Z

    if-eqz v3, :cond_13f

    const-string v3, "looping"

    .line 127
    invoke-static {v3}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->-$$Nest$smlogD(Ljava/lang/String;)V

    const/16 v3, 0x100

    new-array v3, v3, [B

    .line 130
    :cond_5e
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v4

    if-nez v4, :cond_72

    iget-boolean v4, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->isRunning:Z

    if-eqz v4, :cond_72

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-gez v4, :cond_5e

    .line 131
    :cond_72
    :goto_72
    iget-boolean v4, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->isRunning:Z
    :try_end_74
    .catch Ljava/lang/Exception; {:try_start_49 .. :try_end_74} :catch_11a

    if-eqz v4, :cond_b5

    .line 133
    :try_start_76
    invoke-virtual {p1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 134
    array-length v5, v0

    add-int/2addr v5, v4

    new-array v5, v5, [B

    .line 135
    array-length v6, v0

    invoke-static {v0, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    array-length v6, v0

    invoke-static {v3, v2, v5, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_86
    .catch Ljava/lang/Exception; {:try_start_76 .. :try_end_86} :catch_92

    .line 138
    :try_start_86
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_8a
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8a} :catch_90

    if-nez v0, :cond_8e

    :goto_8c
    move-object v0, v5

    goto :goto_b5

    :cond_8e
    move-object v0, v5

    goto :goto_72

    :catch_90
    move-exception v0

    goto :goto_95

    :catch_92
    move-exception v3

    move-object v5, v0

    move-object v0, v3

    .line 140
    :goto_95
    :try_start_95
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 141
    iget-object v3, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->onBluetoothAction:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u63a5\u6536\u6570\u636e\u5355\u6b21\u5931\u8d25\uff1a"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;->onConnectFailed(Ljava/lang/String;)V
    :try_end_b4
    .catch Ljava/lang/Exception; {:try_start_95 .. :try_end_b4} :catch_11a

    goto :goto_8c

    .line 147
    :cond_b5
    :goto_b5
    :try_start_b5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u5f53\u524d\u7d2f\u8ba1\u6536\u5230\u7684\u6570\u636e=>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->byte2Hex([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->-$$Nest$smlogD(Ljava/lang/String;)V

    .line 148
    iget-object v3, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->stopString:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    .line 151
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6807\u5fd7\u4f4d\u4e3a\uff1a"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v3}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->byte2Hex([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->-$$Nest$smlogD(Ljava/lang/String;)V

    .line 168
    iget-object v3, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->onBluetoothAction:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;

    invoke-interface {v3, v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;->onReceiveBytes([B)V

    new-array v0, v2, [B
    :try_end_f6
    .catch Ljava/lang/Exception; {:try_start_b5 .. :try_end_f6} :catch_f8

    goto/16 :goto_51

    :catch_f8
    move-exception v3

    .line 173
    :try_start_f9
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 174
    iget-object v4, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->onBluetoothAction:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u9a8c\u8bc1\u6536\u5230\u6570\u636e\u7ed3\u675f\u6807\u5fd7\u51fa\u9519\uff1a"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;->onConnectFailed(Ljava/lang/String;)V
    :try_end_118
    .catch Ljava/lang/Exception; {:try_start_f9 .. :try_end_118} :catch_11a

    goto/16 :goto_51

    :catch_11a
    move-exception p1

    .line 178
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 179
    iput-boolean v2, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->isConnectStatus:Z

    .line 180
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setSppTransLateData(Z)V

    .line 181
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->onBluetoothAction:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u63a5\u6536\u6570\u636e\u5931\u8d25\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;->onConnectFailed(Ljava/lang/String;)V

    :cond_13f
    return-object v1

    :catch_140
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "Spp \u8fde\u63a5\u5931\u8d25:"

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->-$$Nest$smlogD(Ljava/lang/String;)V

    .line 116
    iput-boolean v2, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->isConnectStatus:Z

    .line 117
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setSppTransLateData(Z)V

    .line 118
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->onBluetoothAction:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "\u8fde\u63a5\u5931\u8d25:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;->onConnectFailed(Ljava/lang/String;)V

    return-object v1

    :catch_17c
    move-exception p1

    const-string v0, "\u83b7\u53d6Socket\u5931\u8d25"

    .line 91
    invoke-static {v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->-$$Nest$smlogD(Ljava/lang/String;)V

    .line 92
    iput-boolean v2, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->isRunning:Z

    .line 93
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v1
.end method

.method protected onCancelled()V
    .registers 2

    :try_start_0
    const-string v0, "AsyncTask \u5f00\u59cb\u91ca\u653e\u8d44\u6e90"

    .line 189
    invoke-static {v0}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils;->-$$Nest$smlogD(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 190
    iput-boolean v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->isRunning:Z

    .line 191
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    if-eqz v0, :cond_14

    .line 192
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_14

    :catch_10
    move-exception v0

    .line 194
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_14
    :goto_14
    return-void
.end method

.method send([B)V
    .registers 4

    .line 205
    :try_start_0
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 206
    iget-object v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->onBluetoothAction:Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;

    invoke-interface {v0, p1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$OnBluetoothAction;->onSendBytes([B)V

    .line 208
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->HB_BLE_WRITABLE:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    iget v0, v0, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->mValue:I

    invoke-static {v0}, Lcn/baos/watch/sdk/manager/jni/BlueToothJniManager;->bleWritableNotify(I)Z
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_40

    :catch_16
    move-exception v0

    .line 210
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    .line 211
    iput-boolean v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->isConnectStatus:Z

    .line 212
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcn/baos/watch/sdk/manager/message/MessageManager;->setSppTransLateData(Z)V

    const-string v1, "spp-\u901a\u9053\u65ad\u5f00"

    .line 215
    invoke-static {v1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 217
    :try_start_29
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->getInstance()Lcn/baos/watch/sdk/bluetooth/BlueToothManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/baos/watch/sdk/bluetooth/BlueToothManager;->writeData([B)Z

    .line 219
    iput-boolean v0, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->isRunning:Z

    const/4 p1, 0x1

    .line 220
    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->cancel(Z)Z

    .line 221
    iget-object p1, p0, Lcn/baos/watch/sdk/interfac/spp/BLESPPUtils$ConnectTask;->bluetoothSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothSocket;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3b} :catch_3c

    goto :goto_40

    :catch_3c
    move-exception p1

    .line 223
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_40
    return-void
.end method
