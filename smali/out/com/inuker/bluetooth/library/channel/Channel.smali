.class public abstract Lcom/inuker/bluetooth/library/channel/Channel;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/channel/IChannel;
.implements Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inuker/bluetooth/library/channel/Channel$RecvCallback;,
        Lcom/inuker/bluetooth/library/channel/Channel$WriteCallback;
    }
.end annotation


# static fields
.field private static final MSG_WRITE_CALLBACK:I = 0x1

.field private static final TIMEOUT:J = 0x1388L

.field private static final TIMER_EXCEPTION:Ljava/lang/String; = "exception"


# instance fields
.field private final STATE_MACHINE:[Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;

.field private mBytesToWrite:[B

.field private final mCallback:Landroid/os/Handler$Callback;

.field private mChannel:Lcom/inuker/bluetooth/library/channel/IChannel;

.field private mChannelCallback:Lcom/inuker/bluetooth/library/channel/ChannelCallback;

.field private final mChannelImpl:Lcom/inuker/bluetooth/library/channel/IChannel;

.field private mCurrentState:Lcom/inuker/bluetooth/library/channel/ChannelState;

.field private mCurrentSync:I

.field private mFrameCount:I

.field private mLastSync:I

.field private mPacketRecv:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/inuker/bluetooth/library/channel/packet/Packet;",
            ">;"
        }
    .end annotation
.end field

.field private final mRecvACKHandler:Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;

.field private final mRecvCTRHandler:Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;

.field private final mRecvDataHandler:Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;

.field private final mSyncPacketHandler:Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;

.field private final mTimeoutHandler:Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;

.field private mTotalBytes:I

.field private final mWaitStartACKHandler:Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;

.field private mWorkerHandler:Landroid/os/Handler;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCurrentSync(Lcom/inuker/bluetooth/library/channel/Channel;)I
    .registers 1

    iget p0, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mCurrentSync:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmFrameCount(Lcom/inuker/bluetooth/library/channel/Channel;)I
    .registers 1

    iget p0, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mFrameCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmWorkerHandler(Lcom/inuker/bluetooth/library/channel/Channel;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mWorkerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCurrentSync(Lcom/inuker/bluetooth/library/channel/Channel;I)V
    .registers 2

    iput p1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mCurrentSync:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFrameCount(Lcom/inuker/bluetooth/library/channel/Channel;I)V
    .registers 2

    iput p1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mFrameCount:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastSync(Lcom/inuker/bluetooth/library/channel/Channel;I)V
    .registers 2

    iput p1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mLastSync:I

    return-void
.end method

.method static bridge synthetic -$$Nest$massertRuntime(Lcom/inuker/bluetooth/library/channel/Channel;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/channel/Channel;->assertRuntime(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdispatchOnReceive(Lcom/inuker/bluetooth/library/channel/Channel;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/channel/Channel;->dispatchOnReceive([B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$misExceptionTimerOn(Lcom/inuker/bluetooth/library/channel/Channel;)Z
    .registers 1

    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->isExceptionTimerOn()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monDataPacketRecvd(Lcom/inuker/bluetooth/library/channel/Channel;Lcom/inuker/bluetooth/library/channel/packet/DataPacket;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/channel/Channel;->onDataPacketRecvd(Lcom/inuker/bluetooth/library/channel/packet/DataPacket;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$monPostState(Lcom/inuker/bluetooth/library/channel/Channel;Lcom/inuker/bluetooth/library/channel/ChannelEvent;[Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/channel/Channel;->onPostState(Lcom/inuker/bluetooth/library/channel/ChannelEvent;[Ljava/lang/Object;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monSendCallback(Lcom/inuker/bluetooth/library/channel/Channel;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/channel/Channel;->onSendCallback(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformOnRead(Lcom/inuker/bluetooth/library/channel/Channel;[B)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/channel/Channel;->performOnRead([B)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformSend(Lcom/inuker/bluetooth/library/channel/Channel;[BLcom/inuker/bluetooth/library/channel/ChannelCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/channel/Channel;->performSend([BLcom/inuker/bluetooth/library/channel/ChannelCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mperformWrite(Lcom/inuker/bluetooth/library/channel/Channel;Lcom/inuker/bluetooth/library/channel/packet/Packet;Lcom/inuker/bluetooth/library/channel/ChannelCallback;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/channel/Channel;->performWrite(Lcom/inuker/bluetooth/library/channel/packet/Packet;Lcom/inuker/bluetooth/library/channel/ChannelCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetChannelStatus(Lcom/inuker/bluetooth/library/channel/Channel;)V
    .registers 1

    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->resetChannelStatus()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendDataPacket(Lcom/inuker/bluetooth/library/channel/Channel;IZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/channel/Channel;->sendDataPacket(IZ)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetCurrentState(Lcom/inuker/bluetooth/library/channel/Channel;Lcom/inuker/bluetooth/library/channel/ChannelState;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/channel/Channel;->setCurrentState(Lcom/inuker/bluetooth/library/channel/ChannelState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartSyncPacket(Lcom/inuker/bluetooth/library/channel/Channel;)V
    .registers 1

    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->startSyncPacket()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartTimer(Lcom/inuker/bluetooth/library/channel/Channel;)V
    .registers 1

    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->startTimer()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartTimer(Lcom/inuker/bluetooth/library/channel/Channel;JLcom/inuker/bluetooth/library/channel/Timer$TimerCallback;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/inuker/bluetooth/library/channel/Channel;->startTimer(JLcom/inuker/bluetooth/library/channel/Timer$TimerCallback;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstopTimer(Lcom/inuker/bluetooth/library/channel/Channel;)V
    .registers 1

    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->stopTimer()V

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    sget-object v0, Lcom/inuker/bluetooth/library/channel/ChannelState;->IDLE:Lcom/inuker/bluetooth/library/channel/ChannelState;

    iput-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mCurrentState:Lcom/inuker/bluetooth/library/channel/ChannelState;

    .line 88
    new-instance v0, Lcom/inuker/bluetooth/library/channel/Channel$1;

    invoke-direct {v0, p0}, Lcom/inuker/bluetooth/library/channel/Channel$1;-><init>(Lcom/inuker/bluetooth/library/channel/Channel;)V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mSyncPacketHandler:Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;

    .line 116
    new-instance v1, Lcom/inuker/bluetooth/library/channel/Channel$2;

    invoke-direct {v1, p0}, Lcom/inuker/bluetooth/library/channel/Channel$2;-><init>(Lcom/inuker/bluetooth/library/channel/Channel;)V

    iput-object v1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mRecvDataHandler:Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;

    .line 145
    new-instance v2, Lcom/inuker/bluetooth/library/channel/Channel$3;

    invoke-direct {v2, p0}, Lcom/inuker/bluetooth/library/channel/Channel$3;-><init>(Lcom/inuker/bluetooth/library/channel/Channel;)V

    iput-object v2, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mRecvCTRHandler:Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;

    .line 171
    new-instance v3, Lcom/inuker/bluetooth/library/channel/Channel$4;

    invoke-direct {v3, p0}, Lcom/inuker/bluetooth/library/channel/Channel$4;-><init>(Lcom/inuker/bluetooth/library/channel/Channel;)V

    iput-object v3, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mWaitStartACKHandler:Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;

    .line 180
    new-instance v4, Lcom/inuker/bluetooth/library/channel/Channel$5;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/inuker/bluetooth/library/channel/Channel$5;-><init>(Lcom/inuker/bluetooth/library/channel/Channel;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mTimeoutHandler:Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;

    .line 193
    new-instance v4, Lcom/inuker/bluetooth/library/channel/Channel$6;

    invoke-direct {v4, p0}, Lcom/inuker/bluetooth/library/channel/Channel$6;-><init>(Lcom/inuker/bluetooth/library/channel/Channel;)V

    iput-object v4, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mRecvACKHandler:Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;

    const/4 v5, 0x6

    new-array v5, v5, [Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;

    .line 227
    new-instance v6, Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;

    sget-object v7, Lcom/inuker/bluetooth/library/channel/ChannelState;->READY:Lcom/inuker/bluetooth/library/channel/ChannelState;

    sget-object v8, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->SEND_CTR:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    invoke-direct {v6, v7, v8, v3}, Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;-><init>(Lcom/inuker/bluetooth/library/channel/ChannelState;Lcom/inuker/bluetooth/library/channel/ChannelEvent;Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;)V

    const/4 v3, 0x0

    aput-object v6, v5, v3

    new-instance v3, Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;

    sget-object v6, Lcom/inuker/bluetooth/library/channel/ChannelState;->WAIT_START_ACK:Lcom/inuker/bluetooth/library/channel/ChannelState;

    sget-object v7, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->RECV_ACK:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    invoke-direct {v3, v6, v7, v4}, Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;-><init>(Lcom/inuker/bluetooth/library/channel/ChannelState;Lcom/inuker/bluetooth/library/channel/ChannelEvent;Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;)V

    const/4 v6, 0x1

    aput-object v3, v5, v6

    new-instance v3, Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;

    sget-object v6, Lcom/inuker/bluetooth/library/channel/ChannelState;->SYNC:Lcom/inuker/bluetooth/library/channel/ChannelState;

    sget-object v7, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->RECV_ACK:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    invoke-direct {v3, v6, v7, v4}, Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;-><init>(Lcom/inuker/bluetooth/library/channel/ChannelState;Lcom/inuker/bluetooth/library/channel/ChannelEvent;Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;)V

    const/4 v4, 0x2

    aput-object v3, v5, v4

    new-instance v3, Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;

    sget-object v4, Lcom/inuker/bluetooth/library/channel/ChannelState;->IDLE:Lcom/inuker/bluetooth/library/channel/ChannelState;

    sget-object v6, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->RECV_CTR:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    invoke-direct {v3, v4, v6, v2}, Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;-><init>(Lcom/inuker/bluetooth/library/channel/ChannelState;Lcom/inuker/bluetooth/library/channel/ChannelEvent;Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;)V

    const/4 v2, 0x3

    aput-object v3, v5, v2

    new-instance v2, Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;

    sget-object v3, Lcom/inuker/bluetooth/library/channel/ChannelState;->READING:Lcom/inuker/bluetooth/library/channel/ChannelState;

    sget-object v4, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->RECV_DATA:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    invoke-direct {v2, v3, v4, v1}, Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;-><init>(Lcom/inuker/bluetooth/library/channel/ChannelState;Lcom/inuker/bluetooth/library/channel/ChannelEvent;Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;)V

    const/4 v1, 0x4

    aput-object v2, v5, v1

    new-instance v1, Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;

    sget-object v2, Lcom/inuker/bluetooth/library/channel/ChannelState;->SYNC_ACK:Lcom/inuker/bluetooth/library/channel/ChannelState;

    sget-object v3, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->RECV_DATA:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    invoke-direct {v1, v2, v3, v0}, Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;-><init>(Lcom/inuker/bluetooth/library/channel/ChannelState;Lcom/inuker/bluetooth/library/channel/ChannelEvent;Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;)V

    const/4 v0, 0x5

    aput-object v1, v5, v0

    iput-object v5, p0, Lcom/inuker/bluetooth/library/channel/Channel;->STATE_MACHINE:[Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;

    .line 556
    new-instance v0, Lcom/inuker/bluetooth/library/channel/Channel$12;

    invoke-direct {v0, p0}, Lcom/inuker/bluetooth/library/channel/Channel$12;-><init>(Lcom/inuker/bluetooth/library/channel/Channel;)V

    iput-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mChannelImpl:Lcom/inuker/bluetooth/library/channel/IChannel;

    .line 609
    new-instance v1, Lcom/inuker/bluetooth/library/channel/Channel$13;

    invoke-direct {v1, p0}, Lcom/inuker/bluetooth/library/channel/Channel$13;-><init>(Lcom/inuker/bluetooth/library/channel/Channel;)V

    iput-object v1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mCallback:Landroid/os/Handler$Callback;

    .line 67
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mPacketRecv:Landroid/util/SparseArray;

    .line 69
    invoke-static {v0, p0}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getProxy(Ljava/lang/Object;Lcom/inuker/bluetooth/library/utils/proxy/ProxyInterceptor;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inuker/bluetooth/library/channel/IChannel;

    iput-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mChannel:Lcom/inuker/bluetooth/library/channel/IChannel;

    .line 71
    new-instance v0, Landroid/os/HandlerThread;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 72
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 74
    new-instance v2, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v2, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mWorkerHandler:Landroid/os/Handler;

    return-void
.end method

.method private assertRuntime(Z)V
    .registers 3

    if-eqz p1, :cond_7

    .line 524
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_d

    :cond_7
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mWorkerHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    .line 525
    :goto_d
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne v0, p1, :cond_14

    return-void

    .line 526
    :cond_14
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1}, Ljava/lang/RuntimeException;-><init>()V

    throw p1
.end method

.method private checkCRC([B[B)Z
    .registers 3

    .line 679
    invoke-static {p1}, Lcom/inuker/bluetooth/library/channel/CRC16;->get([B)[B

    move-result-object p1

    invoke-static {p2, p1}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->equals([B[B)Z

    move-result p1

    return p1
.end method

.method private dispatchOnReceive([B)V
    .registers 5

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 370
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ">>> receive: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    .line 371
    new-instance v0, Lcom/inuker/bluetooth/library/channel/Channel$RecvCallback;

    invoke-direct {v0, p0, p1}, Lcom/inuker/bluetooth/library/channel/Channel$RecvCallback;-><init>(Lcom/inuker/bluetooth/library/channel/Channel;[B)V

    invoke-static {v0}, Lcom/inuker/bluetooth/library/BluetoothContext;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private getFrameCount(I)I
    .registers 2

    add-int/lit8 p1, p1, 0x2

    add-int/lit8 p1, p1, -0x1

    .line 640
    div-int/lit8 p1, p1, 0x12

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private getLogTag()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 629
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    .line 630
    invoke-static {}, Lcom/inuker/bluetooth/library/BluetoothContext;->getCurrentMethodName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s.%s"

    .line 629
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTotalRecvdBytes()[B
    .registers 6

    const/4 v0, 0x0

    .line 389
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->assertRuntime(Z)V

    .line 391
    iget-object v1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mPacketRecv:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iget v2, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mFrameCount:I

    if-ne v1, v2, :cond_66

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 395
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->getLogTag()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget v2, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mTotalBytes:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "%s: totalBytes = %d"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 397
    iget v1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mTotalBytes:I

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 399
    :goto_2f
    iget v2, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mFrameCount:I

    if-gt v3, v2, :cond_61

    .line 400
    iget-object v2, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mPacketRecv:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;

    .line 402
    invoke-virtual {v2, v1}, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->fillByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 404
    iget v4, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mFrameCount:I

    if-ne v3, v4, :cond_5e

    .line 405
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-virtual {v2}, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->getCrc()[B

    move-result-object v2

    invoke-direct {p0, v4, v2}, Lcom/inuker/bluetooth/library/channel/Channel;->checkCRC([B[B)Z

    move-result v2

    if-nez v2, :cond_5e

    const-string v1, "check crc failed!!"

    new-array v0, v0, [Ljava/lang/Object;

    .line 406
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    .line 407
    sget-object v0, Lcom/inuker/bluetooth/library/utils/ByteUtils;->EMPTY_BYTES:[B

    return-object v0

    :cond_5e
    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    .line 412
    :cond_61
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    .line 392
    :cond_66
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method private isExceptionTimerOn()Z
    .registers 3

    const-string v0, "exception"

    .line 675
    invoke-static {}, Lcom/inuker/bluetooth/library/channel/Timer;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isTimerOn()Z
    .registers 2

    .line 671
    invoke-static {}, Lcom/inuker/bluetooth/library/channel/Timer;->isRunning()Z

    move-result v0

    return v0
.end method

.method private onDataPacketRecvd(Lcom/inuker/bluetooth/library/channel/packet/DataPacket;)Z
    .registers 5

    const/4 v0, 0x0

    .line 314
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->assertRuntime(Z)V

    .line 317
    iget-object v1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mPacketRecv:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->getSeq()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_11

    return v0

    .line 321
    :cond_11
    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->getSeq()I

    move-result v0

    iget v1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mFrameCount:I

    if-ne v0, v1, :cond_1c

    .line 322
    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->setLastFrame()V

    .line 325
    :cond_1c
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mPacketRecv:Landroid/util/SparseArray;

    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->getSeq()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 326
    iget v0, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mTotalBytes:I

    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->getDataLength()I

    move-result p1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mTotalBytes:I

    .line 327
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->stopTimer()V

    const/4 p1, 0x1

    return p1
.end method

.method private varargs onPostState(Lcom/inuker/bluetooth/library/channel/ChannelEvent;[Ljava/lang/Object;)V
    .registers 9

    const/4 v0, 0x0

    .line 510
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->assertRuntime(Z)V

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 513
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->getLogTag()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mCurrentState:Lcom/inuker/bluetooth/library/channel/ChannelState;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p1, v1, v2

    const-string v2, "%s: state = %s, event = %s"

    .line 512
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 515
    iget-object v1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->STATE_MACHINE:[Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;

    array-length v2, v1

    :goto_21
    if-ge v0, v2, :cond_38

    aget-object v3, v1, v0

    .line 516
    iget-object v4, v3, Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;->state:Lcom/inuker/bluetooth/library/channel/ChannelState;

    iget-object v5, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mCurrentState:Lcom/inuker/bluetooth/library/channel/ChannelState;

    if-ne v4, v5, :cond_35

    iget-object v4, v3, Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;->event:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    if-ne v4, p1, :cond_35

    .line 517
    iget-object p1, v3, Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;->handler:Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;

    invoke-interface {p1, p2}, Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;->handleState([Ljava/lang/Object;)V

    goto :goto_38

    :cond_35
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_38
    :goto_38
    return-void
.end method

.method private onSendCallback(I)V
    .registers 5

    const/4 v0, 0x0

    .line 304
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->assertRuntime(Z)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 306
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->getLogTag()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "%s: code = %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 308
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mChannelCallback:Lcom/inuker/bluetooth/library/channel/ChannelCallback;

    if-eqz v0, :cond_24

    .line 309
    invoke-interface {v0, p1}, Lcom/inuker/bluetooth/library/channel/ChannelCallback;->onCallback(I)V

    :cond_24
    return-void
.end method

.method private performOnRead([B)V
    .registers 8

    const/4 v0, 0x0

    .line 531
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->assertRuntime(Z)V

    .line 533
    invoke-static {p1}, Lcom/inuker/bluetooth/library/channel/packet/Packet;->getPacket([B)Lcom/inuker/bluetooth/library/channel/packet/Packet;

    move-result-object p1

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    .line 535
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v4, "%s: %s"

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->w(Ljava/lang/String;)V

    .line 537
    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/channel/packet/Packet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, -0x1

    sparse-switch v4, :sswitch_data_6e

    :goto_2c
    move v1, v5

    goto :goto_4c

    :sswitch_2e
    const-string v4, "data"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4c

    goto :goto_2c

    :sswitch_37
    const-string v1, "ctr"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_40

    goto :goto_2c

    :cond_40
    move v1, v3

    goto :goto_4c

    :sswitch_42
    const-string v1, "ack"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4b

    goto :goto_2c

    :cond_4b
    move v1, v0

    :cond_4c
    :goto_4c
    packed-switch v1, :pswitch_data_7c

    goto :goto_6d

    .line 543
    :pswitch_50
    sget-object v1, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->RECV_DATA:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/inuker/bluetooth/library/channel/Channel;->onPostState(Lcom/inuker/bluetooth/library/channel/ChannelEvent;[Ljava/lang/Object;)V

    goto :goto_6d

    .line 547
    :pswitch_5a
    sget-object v1, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->RECV_CTR:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/inuker/bluetooth/library/channel/Channel;->onPostState(Lcom/inuker/bluetooth/library/channel/ChannelEvent;[Ljava/lang/Object;)V

    goto :goto_6d

    .line 539
    :pswitch_64
    sget-object v1, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->RECV_ACK:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v0

    invoke-direct {p0, v1, v2}, Lcom/inuker/bluetooth/library/channel/Channel;->onPostState(Lcom/inuker/bluetooth/library/channel/ChannelEvent;[Ljava/lang/Object;)V

    :goto_6d
    return-void

    :sswitch_data_6e
    .sparse-switch
        0x17889 -> :sswitch_42
        0x18221 -> :sswitch_37
        0x2eefaa -> :sswitch_2e
    .end sparse-switch

    :pswitch_data_7c
    .packed-switch 0x0
        :pswitch_64
        :pswitch_5a
        :pswitch_50
    .end packed-switch
.end method

.method private performSend([BLcom/inuker/bluetooth/library/channel/ChannelCallback;)V
    .registers 6

    const/4 v0, 0x0

    .line 580
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->assertRuntime(Z)V

    .line 582
    iget-object v1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mCurrentState:Lcom/inuker/bluetooth/library/channel/ChannelState;

    sget-object v2, Lcom/inuker/bluetooth/library/channel/ChannelState;->IDLE:Lcom/inuker/bluetooth/library/channel/ChannelState;

    if-eq v1, v2, :cond_f

    const/4 p1, -0x3

    .line 583
    invoke-interface {p2, p1}, Lcom/inuker/bluetooth/library/channel/ChannelCallback;->onCallback(I)V

    return-void

    .line 587
    :cond_f
    sget-object v1, Lcom/inuker/bluetooth/library/channel/ChannelState;->READY:Lcom/inuker/bluetooth/library/channel/ChannelState;

    iput-object v1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mCurrentState:Lcom/inuker/bluetooth/library/channel/ChannelState;

    .line 588
    invoke-static {p2}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyUtils;->getUIProxy(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/inuker/bluetooth/library/channel/ChannelCallback;

    iput-object p2, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mChannelCallback:Lcom/inuker/bluetooth/library/channel/ChannelCallback;

    .line 590
    array-length p2, p1

    iput p2, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mTotalBytes:I

    .line 591
    invoke-direct {p0, p2}, Lcom/inuker/bluetooth/library/channel/Channel;->getFrameCount(I)I

    move-result p2

    iput p2, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mFrameCount:I

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/Object;

    .line 594
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->getLogTag()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p2, v0

    iget v1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mTotalBytes:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, p2, v2

    iget v1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mFrameCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, p2, v2

    const-string v1, "%s: totalBytes = %d, frameCount = %d"

    .line 593
    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 596
    array-length p2, p1

    add-int/2addr p2, v2

    invoke-static {p1, p2}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object p2

    iput-object p2, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mBytesToWrite:[B

    .line 597
    invoke-static {p1}, Lcom/inuker/bluetooth/library/channel/CRC16;->get([B)[B

    move-result-object p2

    .line 598
    iget-object v1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mBytesToWrite:[B

    array-length p1, p1

    invoke-static {p2, v0, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 600
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->sendStartFlowPacket()V

    return-void
.end method

.method private performWrite(Lcom/inuker/bluetooth/library/channel/packet/Packet;Lcom/inuker/bluetooth/library/channel/ChannelCallback;)V
    .registers 7

    const/4 v0, 0x0

    .line 241
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->assertRuntime(Z)V

    if-eqz p2, :cond_31

    .line 248
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->isTimerOn()Z

    move-result v1

    if-nez v1, :cond_f

    .line 249
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->startExceptionTimer()V

    .line 252
    :cond_f
    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/channel/packet/Packet;->toBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 253
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    aput-object p1, v2, v0

    const-string p1, "%s: %s"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->w(Ljava/lang/String;)V

    .line 255
    new-instance p1, Lcom/inuker/bluetooth/library/channel/Channel$7;

    invoke-direct {p1, p0, v1, p2}, Lcom/inuker/bluetooth/library/channel/Channel$7;-><init>(Lcom/inuker/bluetooth/library/channel/Channel;[BLcom/inuker/bluetooth/library/channel/ChannelCallback;)V

    invoke-static {p1}, Lcom/inuker/bluetooth/library/BluetoothContext;->post(Ljava/lang/Runnable;)V

    return-void

    .line 244
    :cond_31
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "callback can\'t be null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private resetChannelStatus()V
    .registers 3

    const/4 v0, 0x0

    .line 452
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->assertRuntime(Z)V

    .line 454
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 456
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->stopTimer()V

    .line 457
    sget-object v1, Lcom/inuker/bluetooth/library/channel/ChannelState;->IDLE:Lcom/inuker/bluetooth/library/channel/ChannelState;

    invoke-direct {p0, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->setCurrentState(Lcom/inuker/bluetooth/library/channel/ChannelState;)V

    const/4 v1, 0x0

    .line 458
    iput-object v1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mBytesToWrite:[B

    .line 459
    iput v0, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mFrameCount:I

    .line 460
    iput-object v1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mChannelCallback:Lcom/inuker/bluetooth/library/channel/ChannelCallback;

    .line 461
    iget-object v1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mPacketRecv:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 462
    iput v0, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mCurrentSync:I

    .line 463
    iput v0, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mLastSync:I

    .line 464
    iput v0, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mTotalBytes:I

    return-void
.end method

.method private sendDataPacket(IZ)V
    .registers 8

    const/4 v0, 0x0

    .line 472
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->assertRuntime(Z)V

    .line 474
    iget v1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mFrameCount:I

    const/4 v2, 0x1

    if-lt p1, v1, :cond_25

    new-array p1, v2, [Ljava/lang/Object;

    .line 475
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->getLogTag()Ljava/lang/String;

    move-result-object p2

    aput-object p2, p1, v0

    const-string p2, "%s: all packets sended!!"

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 476
    sget-object p1, Lcom/inuker/bluetooth/library/channel/ChannelState;->SYNC:Lcom/inuker/bluetooth/library/channel/ChannelState;

    invoke-direct {p0, p1}, Lcom/inuker/bluetooth/library/channel/Channel;->setCurrentState(Lcom/inuker/bluetooth/library/channel/ChannelState;)V

    const-wide/16 p1, 0x3a98

    .line 477
    invoke-direct {p0, p1, p2}, Lcom/inuker/bluetooth/library/channel/Channel;->startTimer(J)V

    return-void

    :cond_25
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 481
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->getLogTag()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v0

    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%s: index = %d, looped = %b"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    mul-int/lit8 v1, p1, 0x12

    .line 484
    iget-object v2, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mBytesToWrite:[B

    array-length v2, v2

    mul-int/lit8 v3, v0, 0x12

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 486
    new-instance v3, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;

    iget-object v4, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mBytesToWrite:[B

    invoke-direct {v3, v0, v4, v1, v2}, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;-><init>(I[BII)V

    .line 488
    new-instance v0, Lcom/inuker/bluetooth/library/channel/Channel$11;

    invoke-direct {v0, p0, p1, p2}, Lcom/inuker/bluetooth/library/channel/Channel$11;-><init>(Lcom/inuker/bluetooth/library/channel/Channel;IZ)V

    invoke-direct {p0, v3, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->performWrite(Lcom/inuker/bluetooth/library/channel/packet/Packet;Lcom/inuker/bluetooth/library/channel/ChannelCallback;)V

    return-void
.end method

.method private sendStartFlowPacket()V
    .registers 3

    const/4 v0, 0x0

    .line 283
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->assertRuntime(Z)V

    .line 285
    new-instance v0, Lcom/inuker/bluetooth/library/channel/packet/CTRPacket;

    iget v1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mFrameCount:I

    invoke-direct {v0, v1}, Lcom/inuker/bluetooth/library/channel/packet/CTRPacket;-><init>(I)V

    .line 287
    new-instance v1, Lcom/inuker/bluetooth/library/channel/Channel$8;

    invoke-direct {v1, p0}, Lcom/inuker/bluetooth/library/channel/Channel$8;-><init>(Lcom/inuker/bluetooth/library/channel/Channel;)V

    invoke-direct {p0, v0, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->performWrite(Lcom/inuker/bluetooth/library/channel/packet/Packet;Lcom/inuker/bluetooth/library/channel/ChannelCallback;)V

    return-void
.end method

.method private setCurrentState(Lcom/inuker/bluetooth/library/channel/ChannelState;)V
    .registers 5

    const/4 v0, 0x0

    .line 504
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->assertRuntime(Z)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 505
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->getLogTag()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const/4 v0, 0x1

    aput-object p1, v1, v0

    const-string v0, "%s: state = %s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 506
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mCurrentState:Lcom/inuker/bluetooth/library/channel/ChannelState;

    return-void
.end method

.method private startExceptionTimer()V
    .registers 4

    .line 648
    new-instance v0, Lcom/inuker/bluetooth/library/channel/Channel$14;

    const-string v1, "exception"

    invoke-direct {v0, p0, v1}, Lcom/inuker/bluetooth/library/channel/Channel$14;-><init>(Lcom/inuker/bluetooth/library/channel/Channel;Ljava/lang/String;)V

    const-wide/16 v1, 0x1388

    invoke-direct {p0, v1, v2, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->startTimer(JLcom/inuker/bluetooth/library/channel/Timer$TimerCallback;)V

    return-void
.end method

.method private startSyncPacket()V
    .registers 4

    const/4 v0, 0x0

    .line 336
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->assertRuntime(Z)V

    .line 338
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 340
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->startTimer()V

    .line 341
    sget-object v1, Lcom/inuker/bluetooth/library/channel/ChannelState;->SYNC:Lcom/inuker/bluetooth/library/channel/ChannelState;

    invoke-direct {p0, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->setCurrentState(Lcom/inuker/bluetooth/library/channel/ChannelState;)V

    .line 343
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->syncLostPacket()Z

    move-result v1

    if-nez v1, :cond_34

    .line 346
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->getTotalRecvdBytes()[B

    move-result-object v1

    .line 348
    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->isEmpty([B)Z

    move-result v2

    if-nez v2, :cond_31

    .line 349
    new-instance v2, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;

    invoke-direct {v2, v0}, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;-><init>(I)V

    .line 350
    new-instance v0, Lcom/inuker/bluetooth/library/channel/Channel$9;

    invoke-direct {v0, p0, v1}, Lcom/inuker/bluetooth/library/channel/Channel$9;-><init>(Lcom/inuker/bluetooth/library/channel/Channel;[B)V

    invoke-direct {p0, v2, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->performWrite(Lcom/inuker/bluetooth/library/channel/packet/Packet;Lcom/inuker/bluetooth/library/channel/ChannelCallback;)V

    goto :goto_34

    .line 362
    :cond_31
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->resetChannelStatus()V

    :cond_34
    :goto_34
    return-void
.end method

.method private startTimer()V
    .registers 3

    const-wide/16 v0, 0x1388

    .line 644
    invoke-direct {p0, v0, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->startTimer(J)V

    return-void
.end method

.method private startTimer(J)V
    .registers 4

    .line 657
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mTimeoutHandler:Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;

    invoke-direct {p0, p1, p2, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->startTimer(JLcom/inuker/bluetooth/library/channel/Timer$TimerCallback;)V

    return-void
.end method

.method private startTimer(JLcom/inuker/bluetooth/library/channel/Timer$TimerCallback;)V
    .registers 7

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 661
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->getLogTag()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "%s: duration = %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 662
    invoke-static {p3, p1, p2}, Lcom/inuker/bluetooth/library/channel/Timer;->start(Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;J)V

    return-void
.end method

.method private stopTimer()V
    .registers 2

    .line 666
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->getLogTag()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 667
    invoke-static {}, Lcom/inuker/bluetooth/library/channel/Timer;->stop()V

    return-void
.end method

.method private syncLostPacket()Z
    .registers 5

    const/4 v0, 0x0

    .line 416
    invoke-direct {p0, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->assertRuntime(Z)V

    .line 418
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/Channel;->getLogTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->v(Ljava/lang/String;)V

    .line 422
    iget v1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mLastSync:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    :goto_f
    iget v3, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mFrameCount:I

    if-gt v1, v3, :cond_1f

    .line 423
    iget-object v3, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mPacketRecv:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1c

    goto :goto_1f

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 428
    :cond_1f
    :goto_1f
    iget v3, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mFrameCount:I

    if-gt v1, v3, :cond_34

    .line 429
    iput v1, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mCurrentSync:I

    .line 431
    new-instance v0, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;

    const/4 v3, 0x5

    invoke-direct {v0, v3, v1}, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;-><init>(II)V

    .line 432
    new-instance v1, Lcom/inuker/bluetooth/library/channel/Channel$10;

    invoke-direct {v1, p0}, Lcom/inuker/bluetooth/library/channel/Channel$10;-><init>(Lcom/inuker/bluetooth/library/channel/Channel;)V

    invoke-direct {p0, v0, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->performWrite(Lcom/inuker/bluetooth/library/channel/packet/Packet;Lcom/inuker/bluetooth/library/channel/ChannelCallback;)V

    return v2

    :cond_34
    return v0
.end method


# virtual methods
.method public onIntercept(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Z
    .registers 6

    .line 605
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mWorkerHandler:Landroid/os/Handler;

    new-instance v1, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;

    invoke-direct {v1, p1, p2, p3}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;-><init>(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    const/4 p1, 0x1

    return p1
.end method

.method public final onRead([B)V
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mChannel:Lcom/inuker/bluetooth/library/channel/IChannel;

    invoke-interface {v0, p1}, Lcom/inuker/bluetooth/library/channel/IChannel;->onRead([B)V

    return-void
.end method

.method public final send([BLcom/inuker/bluetooth/library/channel/ChannelCallback;)V
    .registers 6

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 84
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ">>> send %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->e(Ljava/lang/String;)V

    .line 85
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel;->mChannel:Lcom/inuker/bluetooth/library/channel/IChannel;

    invoke-interface {v0, p1, p2}, Lcom/inuker/bluetooth/library/channel/IChannel;->send([BLcom/inuker/bluetooth/library/channel/ChannelCallback;)V

    return-void
.end method
