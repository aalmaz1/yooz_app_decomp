.class public Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;
.super Lcn/baos/message/Serializable;
.source "Sensor_data_sleep_stats_array.java"


# instance fields
.field public datas:[Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0x16066

    .line 47
    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;->catagory:I

    return-void
.end method


# virtual methods
.method public bridge synthetic load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 32
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_24

    .line 34
    new-array v1, v0, [Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    iput-object v1, p0, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_24

    .line 36
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    new-instance v3, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;-><init>()V

    aput-object v3, v2, v1

    .line 37
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_24
    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 14
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    if-eqz v0, :cond_1d

    .line 15
    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 16
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;

    array-length v1, v0

    if-lez v1, :cond_22

    .line 17
    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    .line 18
    invoke-virtual {v3, p1}, Lcn/baos/watch/w100/messages/Sensor_data_sleep_stats;->put(Lorg/msgpack/core/MessagePacker;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1d
    const-wide/16 v0, 0x0

    .line 22
    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    :cond_22
    const/4 p1, 0x1

    return p1
.end method
