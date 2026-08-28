.class Lcom/inuker/bluetooth/library/channel/Channel$7;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/channel/Channel;->performWrite(Lcom/inuker/bluetooth/library/channel/packet/Packet;Lcom/inuker/bluetooth/library/channel/ChannelCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/channel/Channel;

.field final synthetic val$bytes:[B

.field final synthetic val$callback:Lcom/inuker/bluetooth/library/channel/ChannelCallback;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/channel/Channel;[BLcom/inuker/bluetooth/library/channel/ChannelCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 255
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$7;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    iput-object p2, p0, Lcom/inuker/bluetooth/library/channel/Channel$7;->val$bytes:[B

    iput-object p3, p0, Lcom/inuker/bluetooth/library/channel/Channel$7;->val$callback:Lcom/inuker/bluetooth/library/channel/ChannelCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 259
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$7;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/channel/Channel$7;->val$bytes:[B

    new-instance v2, Lcom/inuker/bluetooth/library/channel/Channel$WriteCallback;

    iget-object v3, p0, Lcom/inuker/bluetooth/library/channel/Channel$7;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    iget-object v4, p0, Lcom/inuker/bluetooth/library/channel/Channel$7;->val$callback:Lcom/inuker/bluetooth/library/channel/ChannelCallback;

    invoke-direct {v2, v3, v4}, Lcom/inuker/bluetooth/library/channel/Channel$WriteCallback;-><init>(Lcom/inuker/bluetooth/library/channel/Channel;Lcom/inuker/bluetooth/library/channel/ChannelCallback;)V

    invoke-virtual {v0, v1, v2}, Lcom/inuker/bluetooth/library/channel/Channel;->write([BLcom/inuker/bluetooth/library/channel/ChannelCallback;)V

    return-void
.end method
