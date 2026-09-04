.class public Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;
.super Lcn/baos/watch/w100/messages/Sensor_data;
.source "Sensor_data_daily_active_sum_v2.java"


# instance fields
.field public reserve1:I

.field public reserve2:I

.field public sum_calorie:I

.field public sum_distance_m:I

.field public sum_met:I

.field public sum_step:I

.field public sum_times:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/Sensor_data;-><init>()V

    const v0, 0x16076

    .line 58
    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data;

    .line 46
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->sum_distance_m:I

    .line 47
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->sum_step:I

    .line 48
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->sum_calorie:I

    .line 49
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->sum_times:I

    .line 50
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->sum_met:I

    .line 51
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->reserve1:I

    .line 52
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->reserve2:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 24
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 26
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->sum_distance_m:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 28
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->sum_step:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 30
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->sum_calorie:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 32
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->sum_times:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 34
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->sum_met:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 36
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->reserve1:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 38
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_daily_active_sum_v2;->reserve2:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
