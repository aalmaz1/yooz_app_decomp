.class public Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;
.super Lcom/inuker/bluetooth/library/channel/packet/Packet;
.source "ACKPacket.java"


# static fields
.field public static final BUSY:I = 0x2

.field public static final CANCEL:I = 0x4

.field public static final READY:I = 0x1

.field public static final SUCCESS:I = 0x0

.field public static final SYNC:I = 0x5

.field public static final TIMEOUT:I = 0x3


# instance fields
.field private seq:I

.field private status:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;-><init>(II)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 54
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/packet/Packet;-><init>()V

    .line 55
    iput p1, p0, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;->status:I

    .line 56
    iput p2, p0, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;->seq:I

    return-void
.end method

.method private getStatusDesc(I)Ljava/lang/String;
    .registers 8

    .line 92
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_2d

    aget-object v3, v0, v2

    .line 93
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    and-int/lit8 v4, v4, 0x18

    if-lez v4, :cond_2a

    const/4 v4, 0x0

    .line 95
    :try_start_17
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    if-ne v4, v5, :cond_2a

    .line 96
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1
    :try_end_25
    .catch Ljava/lang/IllegalAccessException; {:try_start_17 .. :try_end_25} :catch_26

    return-object p1

    :catch_26
    move-exception v3

    .line 99
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 103
    :cond_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    const-string v0, "ack"

    return-object v0
.end method

.method public getSeq()I
    .registers 2

    .line 69
    iget v0, p0, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;->seq:I

    return v0
.end method

.method public getStatus()I
    .registers 2

    .line 65
    iget v0, p0, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;->status:I

    return v0
.end method

.method public toBytes()[B
    .registers 4

    .line 74
    sget-object v0, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;->BUFFER:[B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 75
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    const/4 v2, 0x1

    .line 76
    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 77
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 78
    iget v1, p0, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;->status:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 79
    iget v1, p0, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;->seq:I

    int-to-short v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    .line 80
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ACKPacket{status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;->status:I

    .line 86
    invoke-direct {p0, v1}, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;->getStatusDesc(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", seq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;->seq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
