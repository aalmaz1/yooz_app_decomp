.class public Lcn/baos/watch/w100/messages/Rpc_param_alarm;
.super Lcn/baos/message/Serializable;
.source "Rpc_param_alarm.java"


# instance fields
.field public after_trigger_count:I

.field public after_trigger_min:I

.field public alarm_action:Ljava/lang/String;

.field public alarm_id:I

.field public alarm_name:Ljava/lang/String;

.field public alarm_status:I

.field public alarm_type:I

.field public alarm_verison:I

.field public before_trigger_min:I

.field public circle_definition:I

.field public circle_mask:J

.field public end_definition:I

.field public next_delay_def:I

.field public next_trigger_time:I

.field public start_time:I

.field public time_zone:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0x13ccd

    .line 109
    iput v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Rpc_param_alarm;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Rpc_param_alarm;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 88
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->circle_mask:J

    .line 89
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->start_time:I

    .line 90
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->before_trigger_min:I

    .line 91
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->after_trigger_count:I

    .line 92
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->after_trigger_min:I

    .line 93
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->end_definition:I

    .line 94
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->next_delay_def:I

    .line 95
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->next_trigger_time:I

    .line 96
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->time_zone:I

    .line 97
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->alarm_id:I

    .line 98
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->alarm_verison:I

    .line 99
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->alarm_type:I

    .line 100
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->alarm_status:I

    .line 101
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->circle_definition:I

    .line 102
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->alarm_name:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->alarm_action:Ljava/lang/String;

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 44
    iget-wide v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->circle_mask:J

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 46
    iget v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->start_time:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 48
    iget v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->before_trigger_min:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 50
    iget v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->after_trigger_count:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 52
    iget v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->after_trigger_min:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 54
    iget v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->end_definition:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 56
    iget v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->next_delay_def:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 58
    iget v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->next_trigger_time:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 60
    iget v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->time_zone:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 62
    iget v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->alarm_id:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 64
    iget v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->alarm_verison:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 66
    iget v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->alarm_type:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 68
    iget v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->alarm_status:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 70
    iget v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->circle_definition:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 72
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->alarm_name:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 73
    iput-object v1, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->alarm_name:Ljava/lang/String;

    .line 75
    :cond_0
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->alarm_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 77
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->alarm_action:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 78
    iput-object v1, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->alarm_action:Ljava/lang/String;

    .line 80
    :cond_1
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Rpc_param_alarm;->alarm_action:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
