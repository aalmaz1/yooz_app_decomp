.class public Lcom/inuker/bluetooth/library/channel/packet/DataPacket;
.super Lcom/inuker/bluetooth/library/channel/packet/Packet;
.source "DataPacket.java"


# instance fields
.field private bytes:Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;

.field private crc:[B

.field private seq:I


# direct methods
.method public constructor <init>(ILcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;)V
    .registers 3

    .line 21
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/packet/Packet;-><init>()V

    .line 22
    iput p1, p0, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->seq:I

    .line 23
    iput-object p2, p0, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->bytes:Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;

    return-void
.end method

.method public constructor <init>(I[BII)V
    .registers 6

    .line 27
    new-instance v0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;

    invoke-direct {v0, p2, p3, p4}, Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;-><init>([BII)V

    invoke-direct {p0, p1, v0}, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;-><init>(ILcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;)V

    return-void
.end method


# virtual methods
.method public fillByteBuffer(Ljava/nio/ByteBuffer;)V
    .registers 5

    .line 72
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->bytes:Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;

    iget-object v0, v0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;->value:[B

    iget-object v1, p0, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->bytes:Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;

    iget v1, v1, Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;->start:I

    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->getDataLength()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    return-void
.end method

.method public getCrc()[B
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->crc:[B

    return-object v0
.end method

.method public getDataLength()I
    .registers 2

    .line 35
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->bytes:Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;

    invoke-virtual {v0}, Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;->getSize()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "data"

    return-object v0
.end method

.method public getSeq()I
    .registers 2

    .line 31
    iget v0, p0, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->seq:I

    return v0
.end method

.method public setLastFrame()V
    .registers 4

    .line 44
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->bytes:Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;

    iget v1, v0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;->end:I

    const/4 v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;->end:I

    .line 45
    iget-object v0, p0, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->bytes:Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;

    iget-object v0, v0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;->value:[B

    iget-object v1, p0, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->bytes:Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;

    iget v1, v1, Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;->end:I

    invoke-static {v0, v1, v2}, Lcom/inuker/bluetooth/library/utils/ByteUtils;->get([BII)[B

    move-result-object v0

    iput-object v0, p0, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->crc:[B

    return-void
.end method

.method public toBytes()[B
    .registers 3

    .line 56
    invoke-virtual {p0}, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->getDataLength()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    const/16 v1, 0x14

    if-ne v0, v1, :cond_17

    .line 59
    sget-object v0, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->BUFFER:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    .line 60
    sget-object v0, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->BUFFER:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    goto :goto_1b

    .line 62
    :cond_17
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 65
    :goto_1b
    iget v1, p0, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->seq:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 66
    invoke-virtual {p0, v0}, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->fillByteBuffer(Ljava/nio/ByteBuffer;)V

    .line 68
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataPacket{seq="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->seq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;->bytes:Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;

    .line 79
    invoke-virtual {v1}, Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;->getSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
