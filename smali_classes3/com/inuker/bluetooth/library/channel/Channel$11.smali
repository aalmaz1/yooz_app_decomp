.class Lcom/inuker/bluetooth/library/channel/Channel$11;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Lcom/inuker/bluetooth/library/channel/ChannelCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inuker/bluetooth/library/channel/Channel;->sendDataPacket(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inuker/bluetooth/library/channel/Channel;

.field final synthetic val$index:I

.field final synthetic val$looped:Z


# direct methods
.method constructor <init>(Lcom/inuker/bluetooth/library/channel/Channel;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 488
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$11;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    iput p2, p0, Lcom/inuker/bluetooth/library/channel/Channel$11;->val$index:I

    iput-boolean p3, p0, Lcom/inuker/bluetooth/library/channel/Channel$11;->val$looped:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallback(I)V
    .locals 3

    .line 491
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/Channel$11;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$massertRuntime(Lcom/inuker/bluetooth/library/channel/Channel;Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    new-array p1, v0, [Ljava/lang/Object;

    .line 493
    iget v2, p0, Lcom/inuker/bluetooth/library/channel/Channel$11;->val$index:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v1, ">>> packet %d write failed"

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/inuker/bluetooth/library/utils/BluetoothLog;->w(Ljava/lang/String;)V

    .line 495
    :cond_0
    iget-boolean p1, p0, Lcom/inuker/bluetooth/library/channel/Channel$11;->val$looped:Z

    if-eqz p1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/inuker/bluetooth/library/channel/Channel$11;->this$0:Lcom/inuker/bluetooth/library/channel/Channel;

    iget v2, p0, Lcom/inuker/bluetooth/library/channel/Channel$11;->val$index:I

    add-int/2addr v2, v0

    invoke-static {v1, v2, p1}, Lcom/inuker/bluetooth/library/channel/Channel;->-$$Nest$msendDataPacket(Lcom/inuker/bluetooth/library/channel/Channel;IZ)V

    :cond_1
    return-void
.end method
