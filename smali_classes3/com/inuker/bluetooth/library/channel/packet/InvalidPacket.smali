.class public Lcom/inuker/bluetooth/library/channel/packet/InvalidPacket;
.super Lcom/inuker/bluetooth/library/channel/packet/Packet;
.source "InvalidPacket.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/packet/Packet;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "invalid"

    return-object v0
.end method

.method public toBytes()[B
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "InvalidPacket{}"

    return-object v0
.end method
