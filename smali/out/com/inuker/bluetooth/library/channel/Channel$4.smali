.class Lcom/inuker/bluetooth/library/channel/Channel$4;
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

    .line 171
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$4;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs handleState([Ljava/lang/Object;)V
    .registers 3

    .line 174
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$4;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$massertRuntime(Lcom/inuker/bluetooth/library/channel/Channel;Z)V

    .line 175
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$4;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    sget-object v0, Lcom/inuker/bluetooth/library/channel/ChannelState;->WAIT_START_ACK:Lcom/inuker/bluetooth/library/channel/ChannelState;

    invoke-static {p1, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$msetCurrentState(Lcom/inuker/bluetooth/library/channel/Channel;Lcom/inuker/bluetooth/library/channel/ChannelState;)V

    .line 176
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$4;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$mstartTimer(Lcom/inuker/bluetooth/library/channel/Channel;)V

    return-void
.end method
