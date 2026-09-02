.class public Lcn/baos/watch/w100/messages/Sedentary_monitor_config;
.super Lcn/baos/message/Serializable;
.source "Sedentary_monitor_config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_rule;,
        Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_timespan;
    }
.end annotation


# instance fields
.field public is_enable:I

.field public rule:Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_rule;

.field public timespan:Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_timespan;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 111
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0x16059

    .line 113
    iput v0, p0, Lcn/baos/watch/w100/messages/Sedentary_monitor_config;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sedentary_monitor_config;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sedentary_monitor_config;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sedentary_monitor_config;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 100
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sedentary_monitor_config;->is_enable:I

    .line 102
    new-instance v0, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_timespan;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_timespan;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Sedentary_monitor_config;->timespan:Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_timespan;

    .line 103
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_timespan;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_timespan;

    .line 105
    new-instance v0, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_rule;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_rule;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Sedentary_monitor_config;->rule:Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_rule;

    .line 106
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_rule;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_rule;

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 88
    iget v0, p0, Lcn/baos/watch/w100/messages/Sedentary_monitor_config;->is_enable:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 90
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sedentary_monitor_config;->timespan:Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_timespan;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_timespan;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 92
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sedentary_monitor_config;->rule:Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_rule;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Sedentary_monitor_config$Sedentary_rule;->put(Lorg/msgpack/core/MessagePacker;)Z

    const/4 p1, 0x1

    return p1
.end method
