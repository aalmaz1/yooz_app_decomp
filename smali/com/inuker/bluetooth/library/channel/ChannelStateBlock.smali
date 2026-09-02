.class public Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;
.super Ljava/lang/Object;
.source "ChannelStateBlock.java"


# instance fields
.field public event:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

.field public handler:Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;

.field public state:Lcom/inuker/bluetooth/library/channel/ChannelState;


# direct methods
.method public constructor <init>(Lcom/inuker/bluetooth/library/channel/ChannelState;Lcom/inuker/bluetooth/library/channel/ChannelEvent;Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;)V
    .registers 4

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;->state:Lcom/inuker/bluetooth/library/channel/ChannelState;

    .line 17
    iput-object p2, p0, Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;->event:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    .line 18
    iput-object p3, p0, Lcom/inuker/bluetooth/library/channel/ChannelStateBlock;->handler:Lcom/inuker/bluetooth/library/channel/IChannelStateHandler;

    return-void
.end method
