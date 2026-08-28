.class Lcom/inuker/bluetooth/library/channel/Channel$3;
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
    .registers 2

    .line 145
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$3;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs handleState([Ljava/lang/Object;)V
    .registers 4

    .line 148
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$3;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$massertRuntime(Lcom/inuker/bluetooth/library/channel/Channel;Z)V

    .line 150
    aget-object p1, p1, v1

    check-cast p1, Lcom/inuker/bluetooth/library/channel/packet/CTRPacket;

    .line 151
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$3;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/channel/packet/CTRPacket;->getFrameCount()I

    move-result p1

    invoke-static {v0, p1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$fputmFrameCount(Lcom/inuker/bluetooth/library/channel/Channel;I)V

    .line 152
    new-instance p1, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;-><init>(I)V

    .line 154
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$3;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    sget-object v1, Lcom/inuker/bluetooth/library/channel/ChannelState;->READY:Lcom/inuker/bluetooth/library/channel/ChannelState;

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$msetCurrentState(Lcom/inuker/bluetooth/library/channel/Channel;Lcom/inuker/bluetooth/library/channel/ChannelState;)V

    .line 156
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$3;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    new-instance v1, Lcom/inuker/bluetooth/library/channel/Channel$3$1;

    invoke-direct {v1, p0}, Lcom/inuker/bluetooth/library/channel/Channel$3$1;-><init>(Lcom/inuker/bluetooth/library/channel/Channel$3;)V

    invoke-static {v0, p1, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$mperformWrite(Lcom/inuker/bluetooth/library/channel/Channel;Lcom/inuker/bluetooth/library/channel/packet/Packet;Lcom/inuker/bluetooth/library/channel/ChannelCallback;)V

    return-void
.end method
