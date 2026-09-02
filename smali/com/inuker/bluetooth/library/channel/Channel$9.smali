.class Lcom/inuker/bluetooth/library/channel/Channel$9;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/channel/ChannelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/channel/Channel;->startSyncPacket()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/channel/Channel;

.field final synthetic val$bytes:[B


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/channel/Channel;[B)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 350
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$9;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    iput-object p2, p0, Lcom/inuker/bluetooth/library/channel/Channel$9;->val$bytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(I)V
    .registers 4

    .line 353
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$9;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$massertRuntime(Lcom/inuker/bluetooth/library/channel/Channel;Z)V

    .line 354
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$9;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {v0}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$mresetChannelStatus(Lcom/inuker/bluetooth/library/channel/Channel;)V

    if-nez p1, :cond_14

    .line 357
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$9;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$9;->val$bytes:[B

    invoke-static {p1, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$mdispatchOnReceive(Lcom/inuker/bluetooth/library/channel/Channel;[B)V

    :cond_14
    return-void
.end method
