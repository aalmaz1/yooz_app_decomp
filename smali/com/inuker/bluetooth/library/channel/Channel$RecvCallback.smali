.class Lcom/inuker/bluetooth/library/channel/Channel$RecvCallback;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inuker/bluetooth/library/channel/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RecvCallback"
.end annotation


# instance fields
.field private bytes:[B

.field final synthetic this$0:Lcom/inuker/bluetooth/library/channel/Channel;


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/channel/Channel;[B)V
    .registers 3

    .line 378
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$RecvCallback;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    iput-object p2, p0, Lcom/inuker/bluetooth/library/channel/Channel$RecvCallback;->bytes:[B

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 384
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$RecvCallback;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    iget-object v1, p0, Lcom/inuker/bluetooth/library/channel/Channel$RecvCallback;->bytes:[B

    invoke-virtual {v0, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->onRecv([B)V

    return-void
.end method
