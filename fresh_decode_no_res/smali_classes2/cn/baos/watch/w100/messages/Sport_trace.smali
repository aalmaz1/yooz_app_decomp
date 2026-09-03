.class public Lcn/baos/watch/w100/messages/Sport_trace;
.super Lcn/baos/watch/w100/messages/Sensor_data;
.source "Sport_trace.java"


# instance fields
.field public begin_timestamp:I

.field public end_timestamp:I

.field public points_x:[B

.field public points_y:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 67
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/Sensor_data;-><init>()V

    const v0, 0x1607e

    .line 69
    iput v0, p0, Lcn/baos/watch/w100/messages/Sport_trace;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sport_trace;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sport_trace;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sport_trace;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sport_trace;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sport_trace;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sport_trace;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sport_trace;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data;

    .line 48
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sport_trace;->begin_timestamp:I

    .line 49
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sport_trace;->end_timestamp:I

    .line 51
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackBinaryHeader()I

    move-result v0

    if-lez v0, :cond_0

    .line 53
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessageUnpacker;->readPayload(I)[B

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Sport_trace;->points_x:[B

    .line 58
    :cond_0
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackBinaryHeader()I

    move-result v0

    if-lez v0, :cond_1

    .line 60
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessageUnpacker;->readPayload(I)[B

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/w100/messages/Sport_trace;->points_y:[B

    :cond_1
    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 20
    iget v0, p0, Lcn/baos/watch/w100/messages/Sport_trace;->begin_timestamp:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 22
    iget v0, p0, Lcn/baos/watch/w100/messages/Sport_trace;->end_timestamp:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 24
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sport_trace;->points_x:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 25
    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packBinaryHeader(I)Lorg/msgpack/core/MessagePacker;

    .line 26
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sport_trace;->points_x:[B

    array-length v2, v0

    if-lez v2, :cond_1

    .line 27
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->writePayload([B)Lorg/msgpack/core/MessagePacker;

    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p1, v1}, Lorg/msgpack/core/MessagePacker;->packBinaryHeader(I)Lorg/msgpack/core/MessagePacker;

    .line 33
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sport_trace;->points_y:[B

    if-eqz v0, :cond_2

    .line 34
    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packBinaryHeader(I)Lorg/msgpack/core/MessagePacker;

    .line 35
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sport_trace;->points_y:[B

    array-length v1, v0

    if-lez v1, :cond_3

    .line 36
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->writePayload([B)Lorg/msgpack/core/MessagePacker;

    goto :goto_1

    .line 39
    :cond_2
    invoke-virtual {p1, v1}, Lorg/msgpack/core/MessagePacker;->packBinaryHeader(I)Lorg/msgpack/core/MessagePacker;

    :cond_3
    :goto_1
    const/4 p1, 0x1

    return p1
.end method
