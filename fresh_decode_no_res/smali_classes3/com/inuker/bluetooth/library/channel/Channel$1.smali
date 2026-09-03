.class Lcom/inuker/bluetooth/library/channel/Channel$1;
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

    .line 88
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$1;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs handleState([Ljava/lang/Object;)V
    .locals 3

    .line 92
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$1;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$massertRuntime(Lcom/inuker/bluetooth/library/channel/Channel;Z)V

    .line 94
    aget-object p1, p1, v1

    check-cast p1, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;

    .line 96
    invoke-virtual {p1}, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->getSeq()I

    move-result v0

    iget-object v2, p0, Lcom/inuker/bluetooth/library/channel/Channel$1;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {v2}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$fgetmCurrentSync(Lcom/inuker/bluetooth/library/channel/Channel;)I

    move-result v2

    if-eq v0, v2, :cond_0

    const-string p1, "sync packet not matched!!"

    new-array v0, v1, [Ljava/lang/Object;

    .line 97
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->w(Ljava/lang/String;)V

    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$1;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {v0, p1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$monDataPacketRecvd(Lcom/inuker/bluetooth/library/channel/Channel;Lcom/inuker/bluetooth/library/channel/packet/DataPacket;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "sync packet repeated!!"

    new-array v0, v1, [Ljava/lang/Object;

    .line 102
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->w(Ljava/lang/String;)V

    return-void

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$1;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$fgetmCurrentSync(Lcom/inuker/bluetooth/library/channel/Channel;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$fputmLastSync(Lcom/inuker/bluetooth/library/channel/Channel;I)V

    .line 107
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$1;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {p1, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$fputmCurrentSync(Lcom/inuker/bluetooth/library/channel/Channel;I)V

    .line 109
    iget-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$1;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$mstartSyncPacket(Lcom/inuker/bluetooth/library/channel/Channel;)V

    return-void
.end method
