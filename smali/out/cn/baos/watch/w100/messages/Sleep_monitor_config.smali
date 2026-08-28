.class public Lcn/baos/watch/w100/messages/Sleep_monitor_config;
.super Lcn/baos/message/Serializable;
.source "Sleep_monitor_config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/w100/messages/Sleep_monitor_config$Sleep_timespan;
    }
.end annotation


# instance fields
.field public is_enable:I

.field public timespan:Lcn/baos/watch/w100/messages/Sleep_monitor_config$Sleep_timespan;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 69
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0x16058

    .line 71
    iput v0, p0, Lcn/baos/watch/w100/messages/Sleep_monitor_config;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sleep_monitor_config;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sleep_monitor_config;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sleep_monitor_config;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 59
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 61
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sleep_monitor_config;->is_enable:I

    .line 63
    new-instance v0, Lcn/baos/watch/w100/messages/Sleep_monitor_config$Sleep_timespan;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Sleep_monitor_config$Sleep_timespan;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Sleep_monitor_config;->timespan:Lcn/baos/watch/w100/messages/Sleep_monitor_config$Sleep_timespan;

    .line 64
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Sleep_monitor_config$Sleep_timespan;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sleep_monitor_config$Sleep_timespan;

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 51
    iget v0, p0, Lcn/baos/watch/w100/messages/Sleep_monitor_config;->is_enable:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 53
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sleep_monitor_config;->timespan:Lcn/baos/watch/w100/messages/Sleep_monitor_config$Sleep_timespan;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Sleep_monitor_config$Sleep_timespan;->put(Lorg/msgpack/core/MessagePacker;)Z

    const/4 p1, 0x1

    return p1
.end method
