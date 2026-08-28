.class public Lcn/baos/watch/w100/messages/ModifyReminder;
.super Lcn/baos/watch/w100/messages/MessageBase;
.source "ModifyReminder.java"


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

.field public verison:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 92
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/MessageBase;-><init>()V

    const/16 v0, 0x4e8c

    .line 94
    iput v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/ModifyReminder;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/ModifyReminder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/ModifyReminder;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/ModifyReminder;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/ModifyReminder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;

    .line 76
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->verison:I

    .line 77
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->alarm_id:I

    .line 78
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->circle_type:I

    .line 79
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->circle_extra:I

    .line 80
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->mask_wday:I

    .line 81
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->mask_mday:I

    .line 82
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->mask_mweek:I

    .line 83
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->mask_ymonth:I

    .line 84
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->time_zone:I

    .line 85
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->start_time:I

    .line 86
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->reminder:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->event:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->status:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 38
    iget v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->verison:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 40
    iget v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->alarm_id:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 42
    iget v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->circle_type:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 44
    iget v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->circle_extra:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 46
    iget v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->mask_wday:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 48
    iget v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->mask_mday:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 50
    iget v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->mask_mweek:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 52
    iget v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->mask_ymonth:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 54
    iget v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->time_zone:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 56
    iget v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->start_time:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 58
    iget-object v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->reminder:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_47

    .line 59
    iput-object v1, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->reminder:Ljava/lang/String;

    .line 61
    :cond_47
    iget-object v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->reminder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 63
    iget-object v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->event:Ljava/lang/String;

    if-nez v0, :cond_52

    .line 64
    iput-object v1, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->event:Ljava/lang/String;

    .line 66
    :cond_52
    iget-object v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->event:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 68
    iget v0, p0, Lcn/baos/watch/w100/messages/ModifyReminder;->status:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
