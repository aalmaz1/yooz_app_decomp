.class Lcom/inuker/bluetooth/library/channel/Channel$WriteCallback;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/channel/ChannelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inuker/bluetooth/library/channel/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WriteCallback"
.end annotation


# instance fields
.field callback:Lcom/inuker/bluetooth/library/channel/ChannelCallback;

.field final synthetic this$0:Lcom/inuker/bluetooth/library/channel/Channel;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/channel/Channel;Lcom/inuker/bluetooth/library/channel/ChannelCallback;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$WriteCallback;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 269
    iput-object p2, p0, Lcom/inuker/bluetooth/library/channel/Channel$WriteCallback;->callback:Lcom/inuker/bluetooth/library/channel/ChannelCallback;

    return-void
.end method


# virtual methods
.method public onCallback(I)V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$WriteCallback;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {v0}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$misExceptionTimerOn(Lcom/inuker/bluetooth/library/channel/Channel;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$WriteCallback;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {v0}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$mstopTimer(Lcom/inuker/bluetooth/library/channel/Channel;)V

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$WriteCallback;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {v0}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$fgetmWorkerHandler(Lcom/inuker/bluetooth/library/channel/Channel;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/inuker/bluetooth/library/channel/Channel$WriteCallback;->callback:Lcom/inuker/bluetooth/library/channel/ChannelCallback;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, p1, v1, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
