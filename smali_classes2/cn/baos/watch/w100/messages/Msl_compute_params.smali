.class public Lcn/baos/watch/w100/messages/Msl_compute_params;
.super Lcn/baos/message/Serializable;
.source "Msl_compute_params.java"


# instance fields
.field public action_bits:I

.field public gps:Lcn/baos/watch/w100/messages/Sensor_data_gps1;

.field public method:Lcn/baos/watch/w100/messages/Prayer_time_params;

.field public msl_day_offset:I

.field public timestamp:I

.field public timezone:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0x249f2

    .line 57
    iput v0, p0, Lcn/baos/watch/w100/messages/Msl_compute_params;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Msl_compute_params;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Msl_compute_params;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Msl_compute_params;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 42
    new-instance v0, Lcn/baos/watch/w100/messages/Prayer_time_params;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Prayer_time_params;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Msl_compute_params;->method:Lcn/baos/watch/w100/messages/Prayer_time_params;

    .line 43
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Prayer_time_params;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Prayer_time_params;

    .line 45
    new-instance v0, Lcn/baos/watch/w100/messages/Sensor_data_gps1;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Sensor_data_gps1;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Msl_compute_params;->gps:Lcn/baos/watch/w100/messages/Sensor_data_gps1;

    .line 46
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Sensor_data_gps1;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_gps1;

    .line 48
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Msl_compute_params;->timestamp:I

    .line 49
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Msl_compute_params;->timezone:I

    .line 50
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Msl_compute_params;->msl_day_offset:I

    .line 51
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Msl_compute_params;->action_bits:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 24
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Msl_compute_params;->method:Lcn/baos/watch/w100/messages/Prayer_time_params;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Prayer_time_params;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 26
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Msl_compute_params;->gps:Lcn/baos/watch/w100/messages/Sensor_data_gps1;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Sensor_data_gps1;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 28
    iget v0, p0, Lcn/baos/watch/w100/messages/Msl_compute_params;->timestamp:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 30
    iget v0, p0, Lcn/baos/watch/w100/messages/Msl_compute_params;->timezone:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 32
    iget v0, p0, Lcn/baos/watch/w100/messages/Msl_compute_params;->msl_day_offset:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 34
    iget v0, p0, Lcn/baos/watch/w100/messages/Msl_compute_params;->action_bits:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
