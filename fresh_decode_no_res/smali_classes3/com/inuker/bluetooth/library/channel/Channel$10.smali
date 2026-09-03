.class Lcom/inuker/bluetooth/library/channel/Channel$10;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/channel/ChannelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/channel/Channel;->syncLostPacket()Z
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

    .line 432
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$10;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(I)V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$10;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$massertRuntime(Lcom/inuker/bluetooth/library/channel/Channel;Z)V

    if-nez p1, :cond_0

    .line 437
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$10;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    sget-object v0, Lcom/inuker/bluetooth/library/channel/ChannelState;->SYNC_ACK:Lcom/inuker/bluetooth/library/channel/ChannelState;

    invoke-static {p1, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$msetCurrentState(Lcom/inuker/bluetooth/library/channel/Channel;Lcom/inuker/bluetooth/library/channel/ChannelState;)V

    .line 438
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$10;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$mstartTimer(Lcom/inuker/bluetooth/library/channel/Channel;)V

    goto :goto_0

    .line 440
    :cond_0
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$10;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$mresetChannelStatus(Lcom/inuker/bluetooth/library/channel/Channel;)V

    :goto_0
    return-void
.end method
