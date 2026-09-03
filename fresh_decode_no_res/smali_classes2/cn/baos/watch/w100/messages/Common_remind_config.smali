.class public Lcn/baos/watch/w100/messages/Common_remind_config;
.super Lcn/baos/message/Serializable;
.source "Common_remind_config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/w100/messages/Common_remind_config$CRC_timespan;
    }
.end annotation


# instance fields
.field public enable:I

.field public interval_sec:I

.field public reserve1:I

.field public reserve2:I

.field public timespan:Lcn/baos/watch/w100/messages/Common_remind_config$CRC_timespan;

.field public type:I

.field public week_day_mask:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 93
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0x1607c

    .line 95
    iput v0, p0, Lcn/baos/watch/w100/messages/Common_remind_config;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Common_remind_config;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Common_remind_config;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Common_remind_config;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 81
    new-instance v0, Lcn/baos/watch/w100/messages/Common_remind_config$CRC_timespan;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Common_remind_config$CRC_timespan;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Common_remind_config;->timespan:Lcn/baos/watch/w100/messages/Common_remind_config$CRC_timespan;

    .line 82
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Common_remind_config$CRC_timespan;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Common_remind_config$CRC_timespan;

    .line 84
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Common_remind_config;->interval_sec:I

    .line 85
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Common_remind_config;->week_day_mask:I

    .line 86
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Common_remind_config;->type:I

    .line 87
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Common_remind_config;->enable:I

    .line 88
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Common_remind_config;->reserve1:I

    .line 89
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Common_remind_config;->reserve2:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 61
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Common_remind_config;->timespan:Lcn/baos/watch/w100/messages/Common_remind_config$CRC_timespan;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Common_remind_config$CRC_timespan;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 63
    iget v0, p0, Lcn/baos/watch/w100/messages/Common_remind_config;->interval_sec:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 65
    iget v0, p0, Lcn/baos/watch/w100/messages/Common_remind_config;->week_day_mask:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 67
    iget v0, p0, Lcn/baos/watch/w100/messages/Common_remind_config;->type:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 69
    iget v0, p0, Lcn/baos/watch/w100/messages/Common_remind_config;->enable:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 71
    iget v0, p0, Lcn/baos/watch/w100/messages/Common_remind_config;->reserve1:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 73
    iget v0, p0, Lcn/baos/watch/w100/messages/Common_remind_config;->reserve2:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
