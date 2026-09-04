.class Lcom/inuker/bluetooth/library/channel/Channel$2;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inuker/bluetooth/library/channel/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/channel/Channel;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/channel/Channel;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$2;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs handleState([Ljava/lang/Object;)V
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$2;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$massertRuntime(Lcom/inuker/bluetooth/library/channel/Channel;Z)V

    .line 121
    aget-object p1, p1, v1

    check-cast p1, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;

    .line 123
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$2;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {v0, p1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$monDataPacketRecvd(Lcom/inuker/bluetooth/library/channel/Channel;Lcom/inuker/bluetooth/library/channel/packet/DataPacket;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "dataPacket repeated!!"

    new-array v0, v1, [Ljava/lang/Object;

    .line 124
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->w(Ljava/lang/String;)V

    return-void

    .line 128
    :cond_0
    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->getSeq()I

    move-result p1

    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$2;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {v0}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$fgetmFrameCount(Lcom/inuker/bluetooth/library/channel/Channel;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 130
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$2;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$mstartSyncPacket(Lcom/inuker/bluetooth/library/channel/Channel;)V

    goto :goto_0

    .line 132
    :cond_1
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$2;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    new-instance v0, Lcom/inuker/bluetooth/library/channel/Channel$2$1;

    const-string v1, "WaitData"

    invoke-direct {v0, p0, v1}, Lcom/inuker/bluetooth/library/channel/Channel$2$1;-><init>(Lcom/inuker/bluetooth/library/channel/Channel$2;Ljava/lang/String;)V

    const-wide/16 v1, 0x1388

    invoke-static {p1, v1, v2, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$mstartTimer(Lcom/inuker/bluetooth/library/channel/Channel;JLcom/inuker/bluetooth/library/channel/Timer$TimerCallback;)V

    :goto_0
    return-void
.end method
