.class Lcom/inuker/bluetooth/library/channel/Channel$14;
.super Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;
.source "Channel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/channel/Channel;->startExceptionTimer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/channel/Channel;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/channel/Channel;Ljava/lang/String;)V
    .registers 3

    .line 648
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$14;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-direct {p0, p2}, Lcom/inuker/bluetooth/library/channel/Timer$TimerCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTimerCallback()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    .line 651
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v0
.end method
