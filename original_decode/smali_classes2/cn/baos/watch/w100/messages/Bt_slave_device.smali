.class public Lcn/baos/watch/w100/messages/Bt_slave_device;
.super Lcn/baos/message/Serializable;
.source "Bt_slave_device.java"


# instance fields
.field public mac:[B

.field public name:Ljava/lang/String;

.field public rssi:I

.field public status:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0x27107

    .line 64
    iput v0, p0, Lcn/baos/watch/w100/messages/Bt_slave_device;->catagory:I

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Bt_slave_device;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Bt_slave_device;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Bt_slave_device;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 49
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackBinaryHeader()I

    move-result v0

    if-lez v0, :cond_0

    .line 51
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessageUnpacker;->readPayload(I)[B

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Bt_slave_device;->mac:[B

    .line 55
    :cond_0
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Bt_slave_device;->name:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Bt_slave_device;->type:I

    .line 57
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Bt_slave_device;->rssi:I

    .line 58
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Bt_slave_device;->status:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 22
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Bt_slave_device;->mac:[B

    if-eqz v0, :cond_0

    .line 23
    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packBinaryHeader(I)Lorg/msgpack/core/MessagePacker;

    .line 24
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Bt_slave_device;->mac:[B

    array-length v1, v0

    if-lez v1, :cond_1

    .line 25
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->writePayload([B)Lorg/msgpack/core/MessagePacker;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 28
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packBinaryHeader(I)Lorg/msgpack/core/MessagePacker;

    .line 31
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Bt_slave_device;->name:Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, ""

    .line 32
    iput-object v0, p0, Lcn/baos/watch/w100/messages/Bt_slave_device;->name:Ljava/lang/String;

    .line 34
    :cond_2
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Bt_slave_device;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 36
    iget v0, p0, Lcn/baos/watch/w100/messages/Bt_slave_device;->type:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 38
    iget v0, p0, Lcn/baos/watch/w100/messages/Bt_slave_device;->rssi:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 40
    iget v0, p0, Lcn/baos/watch/w100/messages/Bt_slave_device;->status:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
