.class Lcom/inuker/bluetooth/library/channel/Channel$6;
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

    .line 193
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$6;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs handleState([Ljava/lang/Object;)V
    .locals 4

    .line 196
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$6;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$massertRuntime(Lcom/inuker/bluetooth/library/channel/Channel;Z)V

    .line 198
    aget-object p1, p1, v1

    check-cast p1, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;

    .line 200
    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;->getStatus()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    .line 221
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$6;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$monSendCallback(Lcom/inuker/bluetooth/library/channel/Channel;I)V

    .line 222
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$6;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$mresetChannelStatus(Lcom/inuker/bluetooth/library/channel/Channel;)V

    goto :goto_0

    .line 208
    :cond_0
    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;->getSeq()I

    move-result p1

    if-lt p1, v2, :cond_3

    .line 209
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$6;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {v0}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$fgetmFrameCount(Lcom/inuker/bluetooth/library/channel/Channel;)I

    move-result v0

    if-gt p1, v0, :cond_3

    .line 210
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$6;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    sub-int/2addr p1, v2

    invoke-static {v0, p1, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$msendDataPacket(Lcom/inuker/bluetooth/library/channel/Channel;IZ)V

    .line 211
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$6;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$mstartTimer(Lcom/inuker/bluetooth/library/channel/Channel;)V

    goto :goto_0

    .line 202
    :cond_1
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$6;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$mstopTimer(Lcom/inuker/bluetooth/library/channel/Channel;)V

    .line 203
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$6;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    sget-object v0, Lcom/inuker/bluetooth/library/channel/ChannelState;->WRITING:Lcom/inuker/bluetooth/library/channel/ChannelState;

    invoke-static {p1, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$msetCurrentState(Lcom/inuker/bluetooth/library/channel/Channel;Lcom/inuker/bluetooth/library/channel/ChannelState;)V

    .line 204
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$6;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {p1, v1, v2}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$msendDataPacket(Lcom/inuker/bluetooth/library/channel/Channel;IZ)V

    goto :goto_0

    .line 216
    :cond_2
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$6;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {p1, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$monSendCallback(Lcom/inuker/bluetooth/library/channel/Channel;I)V

    .line 217
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$6;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$mresetChannelStatus(Lcom/inuker/bluetooth/library/channel/Channel;)V

    :cond_3
    :goto_0
    return-void
.end method
