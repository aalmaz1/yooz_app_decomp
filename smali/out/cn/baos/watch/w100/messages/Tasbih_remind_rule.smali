.class public Lcn/baos/watch/w100/messages/Tasbih_remind_rule;
.super Lcn/baos/message/Serializable;
.source "Tasbih_remind_rule.java"


# instance fields
.field public enable:I

.field public interval_min:I

.field public timespan:Lcn/baos/watch/w100/messages/Hb_timespan;

.field public week_day_mask:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0x249f3

    .line 45
    iput v0, p0, Lcn/baos/watch/w100/messages/Tasbih_remind_rule;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Tasbih_remind_rule;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Tasbih_remind_rule;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Tasbih_remind_rule;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 32
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 34
    new-instance v0, Lcn/baos/watch/w100/messages/Hb_timespan;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Hb_timespan;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Tasbih_remind_rule;->timespan:Lcn/baos/watch/w100/messages/Hb_timespan;

    .line 35
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Hb_timespan;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Hb_timespan;

    .line 37
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Tasbih_remind_rule;->interval_min:I

    .line 38
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Tasbih_remind_rule;->week_day_mask:I

    .line 39
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Tasbih_remind_rule;->enable:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 20
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Tasbih_remind_rule;->timespan:Lcn/baos/watch/w100/messages/Hb_timespan;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Hb_timespan;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 22
    iget v0, p0, Lcn/baos/watch/w100/messages/Tasbih_remind_rule;->interval_min:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 24
    iget v0, p0, Lcn/baos/watch/w100/messages/Tasbih_remind_rule;->week_day_mask:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 26
    iget v0, p0, Lcn/baos/watch/w100/messages/Tasbih_remind_rule;->enable:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
