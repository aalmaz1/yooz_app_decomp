.class public abstract Lcom/inuker/bluetooth/library/channel/packet/Packet;
.super Ljava/lang/Object;
.source "Packet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;,
        Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;
    }
.end annotation


# static fields
.field public static final ACK:Ljava/lang/String; = "ack"

.field static final BUFFER:[B

.field static final BUFFER_SIZE:I = 0x14

.field public static final CTR:Ljava/lang/String; = "ctr"

.field public static final DATA:Ljava/lang/String; = "data"

.field static final SN_CTR:I = 0x0

.field public static final TYPE_ACK:I = 0x1

.field public static final TYPE_CMD:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x14

    new-array v0, v0, [B

    .line 16
    sput-object v0, Lcom/inuker/bluetooth/library/channel/packet/Packet;->BUFFER:[B

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getDataPacket(Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;)Lcom/inuker/bluetooth/library/channel/packet/Packet;
    .registers 5

    .line 115
    new-instance v0, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;

    iget v1, p0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;->sn:I

    new-instance v2, Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;

    iget-object p0, p0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;->value:[B

    const/4 v3, 0x2

    invoke-direct {v2, p0, v3}, Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;-><init>([BI)V

    invoke-direct {v0, v1, v2}, Lcom/inuker/bluetooth/library/channel/packet/DataPacket;-><init>(ILcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;)V

    return-object v0
.end method

.method private static getFlowPacket(Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;)Lcom/inuker/bluetooth/library/channel/packet/Packet;
    .registers 3

    .line 97
    iget v0, p0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;->parameter:I

    .line 99
    iget p0, p0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;->type:I

    if-eqz p0, :cond_1b

    const/4 v1, 0x1

    if-eq p0, v1, :cond_f

    .line 110
    new-instance p0, Lcom/inuker/bluetooth/library/channel/packet/InvalidPacket;

    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/packet/InvalidPacket;-><init>()V

    return-object p0

    :cond_f
    shr-int/lit8 p0, v0, 0x10

    const v1, 0xffff

    and-int/2addr v0, v1

    .line 107
    new-instance v1, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;

    invoke-direct {v1, p0, v0}, Lcom/inuker/bluetooth/library/channel/packet/ACKPacket;-><init>(II)V

    return-object v1

    :cond_1b
    shr-int/lit8 p0, v0, 0x10

    .line 102
    new-instance v0, Lcom/inuker/bluetooth/library/channel/packet/CTRPacket;

    invoke-direct {v0, p0}, Lcom/inuker/bluetooth/library/channel/packet/CTRPacket;-><init>(I)V

    return-object v0
.end method

.method public static getPacket([B)Lcom/inuker/bluetooth/library/channel/packet/Packet;
    .registers 2

    .line 82
    invoke-static {p0}, Lcom/inuker/bluetooth/library/channel/packet/Packet;->parse([B)Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;

    move-result-object p0

    .line 84
    iget v0, p0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;->sn:I

    if-eqz v0, :cond_d

    .line 89
    invoke-static {p0}, Lcom/inuker/bluetooth/library/channel/packet/Packet;->getDataPacket(Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;)Lcom/inuker/bluetooth/library/channel/packet/Packet;

    move-result-object p0

    return-object p0

    .line 86
    :cond_d
    invoke-static {p0}, Lcom/inuker/bluetooth/library/channel/packet/Packet;->getFlowPacket(Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;)Lcom/inuker/bluetooth/library/channel/packet/Packet;

    move-result-object p0

    return-object p0
.end method

.method private static parse([B)Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;
    .registers 4

    .line 67
    new-instance v0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;-><init>(Lcom/inuker/bluetooth/library/channel/packet/Packet$Header-IA;)V

    .line 68
    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 69
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getShort()S

    move-result v2

    iput v2, v0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;->sn:I

    .line 70
    iput-object p0, v0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;->value:[B

    .line 72
    iget p0, v0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;->sn:I

    if-nez p0, :cond_28

    .line 73
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    iput p0, v0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;->type:I

    .line 74
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    iput p0, v0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;->command:I

    .line 75
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    iput p0, v0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;->parameter:I

    :cond_28
    return-object v0
.end method


# virtual methods
.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract toBytes()[B
.end method
