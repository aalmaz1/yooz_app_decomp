.class Lcom/inuker/bluetooth/library/channel/Channel$8;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/channel/ChannelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/channel/Channel;->sendStartFlowPacket()V
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

    .line 287
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$8;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(I)V
    .registers 4

    .line 290
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$8;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$massertRuntime(Lcom/inuker/bluetooth/library/channel/Channel;Z)V

    if-nez p1, :cond_12

    .line 293
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$8;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    sget-object v0, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->SEND_CTR:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1, v0, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$monPostState(Lcom/inuker/bluetooth/library/channel/Channel;Lcom/inuker/bluetooth/library/channel/ChannelEvent;[Ljava/lang/Object;)V

    goto :goto_1d

    .line 295
    :cond_12
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$8;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$monSendCallback(Lcom/inuker/bluetooth/library/channel/Channel;I)V

    .line 296
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$8;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$mresetChannelStatus(Lcom/inuker/bluetooth/library/channel/Channel;)V

    :goto_1d
    return-void
.end method
