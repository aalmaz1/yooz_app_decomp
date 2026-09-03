.class public Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;
.super Ljava/lang/Object;
.source "QueryAlarmResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/w100/messages/QueryAlarmResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlarmData"
.end annotation


# instance fields
.field public alarm_id:I

.field public circle_extra:I

.field public circle_type:I

.field public event:Ljava/lang/String;

.field public mask_mday:I

.field public mask_mweek:I

.field public mask_wday:I

.field public mask_ymonth:I

.field public reminder:Ljava/lang/String;

.field public start_time:I

.field public status:I

.field public time_zone:I

.field public trigger_time:I

.field public verison:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->verison:I

    .line 87
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->alarm_id:I

    .line 88
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->circle_type:I

    .line 89
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->circle_extra:I

    .line 90
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->mask_wday:I

    .line 91
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->mask_mday:I

    .line 92
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->mask_mweek:I

    .line 93
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->mask_ymonth:I

    .line 94
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->time_zone:I

    .line 95
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->start_time:I

    .line 96
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->trigger_time:I

    .line 97
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->reminder:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->event:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->status:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    iget v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->verison:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 49
    iget v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->alarm_id:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 51
    iget v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->circle_type:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 53
    iget v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->circle_extra:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 55
    iget v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->mask_wday:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 57
    iget v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->mask_mday:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 59
    iget v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->mask_mweek:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 61
    iget v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->mask_ymonth:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 63
    iget v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->time_zone:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 65
    iget v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->start_time:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 67
    iget v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->trigger_time:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 69
    iget-object v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->reminder:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 70
    iput-object v1, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->reminder:Ljava/lang/String;

    .line 72
    :cond_0
    iget-object v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->reminder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 74
    iget-object v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->event:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 75
    iput-object v1, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->event:Ljava/lang/String;

    .line 77
    :cond_1
    iget-object v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->event:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 79
    iget v0, p0, Lcn/baos/watch/w100/messages/QueryAlarmResponse$AlarmData;->status:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
