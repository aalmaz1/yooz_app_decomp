.class public Lcn/baos/watch/w100/messages/Health_measure_config;
.super Lcn/baos/message/Serializable;
.source "Health_measure_config.java"


# instance fields
.field public hrate_measure_auto_save_value:I

.field public hrate_measure_interval:I

.field public hrate_remind_max:I

.field public hrate_remind_min:I

.field public spo_measure_interval:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 46
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0x1605c

    .line 48
    iput v0, p0, Lcn/baos/watch/w100/messages/Health_measure_config;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Health_measure_config;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Health_measure_config;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Health_measure_config;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 38
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Health_measure_config;->hrate_remind_max:I

    .line 39
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Health_measure_config;->hrate_remind_min:I

    .line 40
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Health_measure_config;->hrate_measure_interval:I

    .line 41
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Health_measure_config;->hrate_measure_auto_save_value:I

    .line 42
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Health_measure_config;->spo_measure_interval:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 22
    iget v0, p0, Lcn/baos/watch/w100/messages/Health_measure_config;->hrate_remind_max:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 24
    iget v0, p0, Lcn/baos/watch/w100/messages/Health_measure_config;->hrate_remind_min:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 26
    iget v0, p0, Lcn/baos/watch/w100/messages/Health_measure_config;->hrate_measure_interval:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 28
    iget v0, p0, Lcn/baos/watch/w100/messages/Health_measure_config;->hrate_measure_auto_save_value:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 30
    iget v0, p0, Lcn/baos/watch/w100/messages/Health_measure_config;->spo_measure_interval:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
