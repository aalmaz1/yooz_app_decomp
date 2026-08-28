.class public Lcn/baos/watch/w100/messages/Device_log_content;
.super Lcn/baos/message/Serializable;
.source "Device_log_content.java"


# instance fields
.field public action_id:I

.field public sys_tick:I

.field public text:Ljava/lang/String;

.field public timestamp:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 49
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0xc357

    .line 51
    iput v0, p0, Lcn/baos/watch/w100/messages/Device_log_content;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Device_log_content;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Device_log_content;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Device_log_content;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 41
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Device_log_content;->timestamp:I

    .line 42
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Device_log_content;->sys_tick:I

    .line 43
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Device_log_content;->type:I

    .line 44
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Device_log_content;->action_id:I

    .line 45
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/w100/messages/Device_log_content;->text:Ljava/lang/String;

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
    iget v0, p0, Lcn/baos/watch/w100/messages/Device_log_content;->timestamp:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 24
    iget v0, p0, Lcn/baos/watch/w100/messages/Device_log_content;->sys_tick:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 26
    iget v0, p0, Lcn/baos/watch/w100/messages/Device_log_content;->type:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 28
    iget v0, p0, Lcn/baos/watch/w100/messages/Device_log_content;->action_id:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 30
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Device_log_content;->text:Ljava/lang/String;

    if-nez v0, :cond_23

    const-string v0, ""

    .line 31
    iput-object v0, p0, Lcn/baos/watch/w100/messages/Device_log_content;->text:Ljava/lang/String;

    .line 33
    :cond_23
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Device_log_content;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
