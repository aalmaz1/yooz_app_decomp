.class public Lcn/baos/watch/w100/messages/AddReminder;
.super Lcn/baos/watch/w100/messages/MessageBase;
.source "AddReminder.java"


# instance fields
.field public circle_extra:I

.field public circle_type:I

.field public event:Ljava/lang/String;

.field public mask_mday:I

.field public mask_mweek:I

.field public mask_wday:I

.field public mask_ymonth:I

.field public reminder:Ljava/lang/String;

.field public start_time:I

.field public time_zone:I

.field public verison:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/MessageBase;-><init>()V

    const/16 v0, 0x4e8a

    .line 84
    iput v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/AddReminder;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/AddReminder;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/AddReminder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;

    .line 68
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->verison:I

    .line 69
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->circle_type:I

    .line 70
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->circle_extra:I

    .line 71
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->mask_wday:I

    .line 72
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->mask_mday:I

    .line 73
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->mask_mweek:I

    .line 74
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->mask_ymonth:I

    .line 75
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->time_zone:I

    .line 76
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->start_time:I

    .line 77
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->reminder:Ljava/lang/String;

    .line 78
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/w100/messages/AddReminder;->event:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/AddReminder;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/AddReminder;

    move-result-object p1

    return-object p1
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 34
    iget v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->verison:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 36
    iget v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->circle_type:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 38
    iget v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->circle_extra:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 40
    iget v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->mask_wday:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 42
    iget v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->mask_mday:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 44
    iget v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->mask_mweek:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 46
    iget v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->mask_ymonth:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 48
    iget v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->time_zone:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 50
    iget v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->start_time:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 52
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->reminder:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 53
    iput-object v1, p0, Lcn/baos/watch/w100/messages/AddReminder;->reminder:Ljava/lang/String;

    .line 55
    :cond_0
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->reminder:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 57
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->event:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 58
    iput-object v1, p0, Lcn/baos/watch/w100/messages/AddReminder;->event:Ljava/lang/String;

    .line 60
    :cond_1
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AddReminder;->event:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
