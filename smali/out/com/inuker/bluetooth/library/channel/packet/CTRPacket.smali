.class public Lcom/inuker/bluetooth/library/channel/packet/CTRPacket;
.super Lcom/inuker/bluetooth/library/channel/packet/Packet;
.source "CTRPacket.java"


# instance fields
.field private frameCount:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    .line 13
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/packet/Packet;-><init>()V

    .line 14
    iput p1, p0, Lcom/inuker/bluetooth/library/channel/packet/CTRPacket;->frameCount:I

    return-void
.end method


# virtual methods
.method public getFrameCount()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/inuker/bluetooth/library/channel/packet/CTRPacket;->frameCount:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "ctr"

    return-object v0
.end method

.method public toBytes()[B
    .registers 3

    .line 28
    sget-object v0, Lcom/inuker/bluetooth/library/channel/packet/CTRPacket;->BUFFER:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 29
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 30
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 31
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 32
    iget v1, p0, Lcom/inuker/bluetooth/library/channel/packet/CTRPacket;->frameCount:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 33
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FlowPacket{frameCount="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/inuker/bluetooth/library/channel/packet/CTRPacket;->frameCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
