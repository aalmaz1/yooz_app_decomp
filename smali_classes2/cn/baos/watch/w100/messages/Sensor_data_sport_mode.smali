.class public Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;
.super Lcn/baos/watch/w100/messages/Sensor_data;
.source "Sensor_data_sport_mode.java"


# instance fields
.field public avg_frequency_cpm:I

.field public avg_hrate:I

.field public avg_pace_s:I

.field public avg_step_len_cm:I

.field public cur_frequency_cpm:I

.field public cur_hrate:I

.field public cur_pace_s:I

.field public cur_step_len_cm:I

.field public latitude:I

.field public longitude:I

.field public max_frequency_cpm:I

.field public max_hrate:I

.field public max_pace_s:I

.field public max_step_len_cm:I

.field public min_frequency_cpm:I

.field public min_hrate:I

.field public min_pace_s:I

.field public min_step_len_cm:I

.field public mode:I

.field public status:I

.field public sum_action_count:I

.field public sum_calories:I

.field public sum_distance_m:I

.field public sum_times_s:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/Sensor_data;-><init>()V

    const v0, 0x1606d

    .line 143
    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 112
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data;

    .line 114
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->longitude:I

    .line 115
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->latitude:I

    .line 116
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_hrate:I

    .line 117
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_hrate:I

    .line 118
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_hrate:I

    .line 119
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_hrate:I

    .line 120
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_step_len_cm:I

    .line 121
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_step_len_cm:I

    .line 122
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_step_len_cm:I

    .line 123
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_step_len_cm:I

    .line 124
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_frequency_cpm:I

    .line 125
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_frequency_cpm:I

    .line 126
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_frequency_cpm:I

    .line 127
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_frequency_cpm:I

    .line 128
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_pace_s:I

    .line 129
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_pace_s:I

    .line 130
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_pace_s:I

    .line 131
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_pace_s:I

    .line 132
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_distance_m:I

    .line 133
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_action_count:I

    .line 134
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_calories:I

    .line 135
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_times_s:I

    .line 136
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->mode:I

    .line 137
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->status:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 60
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->longitude:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 62
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->latitude:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 64
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_hrate:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 66
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_hrate:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 68
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_hrate:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 70
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_hrate:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 72
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_step_len_cm:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 74
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_step_len_cm:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 76
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_step_len_cm:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 78
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_step_len_cm:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 80
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_frequency_cpm:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 82
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_frequency_cpm:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 84
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_frequency_cpm:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 86
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_frequency_cpm:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 88
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->avg_pace_s:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 90
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->max_pace_s:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 92
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->min_pace_s:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 94
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->cur_pace_s:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 96
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_distance_m:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 98
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_action_count:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 100
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_calories:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 102
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->sum_times_s:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 104
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->mode:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 106
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_sport_mode;->status:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
