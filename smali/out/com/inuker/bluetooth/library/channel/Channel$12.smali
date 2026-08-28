.class Lcom/inuker/bluetooth/library/channel/Channel$12;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/channel/IChannel;


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

    .line 556
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$12;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRead([B)V
    .registers 3

    .line 565
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$12;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {v0, p1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$mperformOnRead(Lcom/inuker/bluetooth/library/channel/Channel;[B)V

    return-void
.end method

.method public onRecv([B)V
    .registers 2

    .line 570
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public send([BLcom/inuker/bluetooth/library/channel/ChannelCallback;)V
    .registers 4

    .line 575
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$12;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {v0, p1, p2}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$mperformSend(Lcom/inuker/bluetooth/library/channel/Channel;[BLcom/inuker/bluetooth/library/channel/ChannelCallback;)V

    return-void
.end method

.method public write([BLcom/inuker/bluetooth/library/channel/ChannelCallback;)V
    .registers 3

    .line 560
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method
