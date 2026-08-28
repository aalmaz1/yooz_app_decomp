.class Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;
.super Ljava/lang/Object;
.source "Packet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inuker/bluetooth/library/channel/packet/Packet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Bytes"
.end annotation


# instance fields
.field end:I

.field start:I

.field value:[B


# direct methods
.method constructor <init>([BI)V
    .registers 4

    .line 52
    array-length v0, p1

    invoke-direct {p0, p1, p2, v0}, Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;-><init>([BII)V

    return-void
.end method

.method constructor <init>([BII)V
    .registers 4

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;->value:[B

    .line 57
    iput p2, p0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;->start:I

    .line 58
    iput p3, p0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;->end:I

    return-void
.end method


# virtual methods
.method getSize()I
    .registers 3

    .line 62
    iget v0, p0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;->end:I

    iget v1, p0, Lcom/inuker/bluetooth/library/channel/packet/Packet$Bytes;->start:I

    sub-int/2addr v0, v1

    return v0
.end method
