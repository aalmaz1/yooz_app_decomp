.class Lcom/inuker/bluetooth/library/channel/Channel$2$1;
.super Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/channel/Channel$2;->handleState([Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/inuker/bluetooth/library/channel/Channel$2;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/channel/Channel$2;Ljava/lang/String;)V
    .registers 3

    .line 132
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$2$1;->this$1:Lcom/inuker/bluetooth/library/channel/Channel$2;

    invoke-direct {p0, p2}, Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTimerCallback()V
    .registers 2

    .line 135
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$2$1;->this$1:Lcom/inuker/bluetooth/library/channel/Channel$2;

    iget-object v0, v0, Lcom/inuker/bluetooth/library/channel/Channel$2;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-static {v0}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$mstartSyncPacket(Lcom/inuker/bluetooth/library/channel/Channel;)V

    return-void
.end method
