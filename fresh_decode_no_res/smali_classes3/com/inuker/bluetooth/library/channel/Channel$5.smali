.class Lcom/inuker/bluetooth/library/channel/Channel$5;
.super Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;
.source "Channel.java"


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
.method constructor <init>(Lcom/inuker/bluetooth/library/channel/Channel;Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$5;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-direct {p0, p2}, Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTimerCallback()V
    .locals 2

    .line 184
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$5;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$massertRuntime(Lcom/inuker/bluetooth/library/channel/Channel;Z)V

    .line 185
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$5;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    const/4 v1, -0x2

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$monSendCallback(Lcom/inuker/bluetooth/library/channel/Channel;I)V

    .line 186
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$5;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {v0}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$mresetChannelStatus(Lcom/inuker/bluetooth/library/channel/Channel;)V

    return-void
.end method
