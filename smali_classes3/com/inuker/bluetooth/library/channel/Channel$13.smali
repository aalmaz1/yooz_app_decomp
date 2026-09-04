.class Lcom/inuker/bluetooth/library/channel/Channel$13;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Landroid/os/Handler$Callback;


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

    .line 609
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$13;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 2

    .line 613
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 620
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/proxy/ProxyBulk;->safeInvoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 615
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/inuker/bluetooth/library/channel/ChannelCallback;

    .line 616
    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, p1}, Lcom/inuker/bluetooth/library/channel/ChannelCallback;->onCallback(I)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
