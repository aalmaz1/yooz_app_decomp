.class public Lcn/baos/watch/w100/messages/AppSetAlarm;
.super Lcn/baos/watch/w100/messages/MessageBase;
.source "AppSetAlarm.java"


# instance fields
.field public action_name:Ljava/lang/String;

.field public alarm_at_time_s:I

.field public alarm_id:I

.field public alarm_name:Ljava/lang/String;

.field public alarm_type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 52
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/MessageBase;-><init>()V

    const/16 v0, 0x28a1

    .line 54
    iput v0, p0, Lcn/baos/watch/w100/messages/AppSetAlarm;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/AppSetAlarm;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/AppSetAlarm;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/AppSetAlarm;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;

    .line 44
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/AppSetAlarm;->alarm_id:I

    .line 45
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/AppSetAlarm;->alarm_type:I

    .line 46
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/AppSetAlarm;->action_name:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/AppSetAlarm;->alarm_at_time_s:I

    .line 48
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/w100/messages/AppSetAlarm;->alarm_name:Ljava/lang/String;

    return-object p0
.end method

.method public bridge synthetic load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/AppSetAlarm;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/AppSetAlarm;

    move-result-object p1

    return-object p1
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 22
    iget v0, p0, Lcn/baos/watch/w100/messages/AppSetAlarm;->alarm_id:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 24
    iget v0, p0, Lcn/baos/watch/w100/messages/AppSetAlarm;->alarm_type:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 26
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AppSetAlarm;->action_name:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_17

    .line 27
    iput-object v1, p0, Lcn/baos/watch/w100/messages/AppSetAlarm;->action_name:Ljava/lang/String;

    .line 29
    :cond_17
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AppSetAlarm;->action_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 31
    iget v0, p0, Lcn/baos/watch/w100/messages/AppSetAlarm;->alarm_at_time_s:I

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 33
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AppSetAlarm;->alarm_name:Ljava/lang/String;

    if-nez v0, :cond_28

    .line 34
    iput-object v1, p0, Lcn/baos/watch/w100/messages/AppSetAlarm;->alarm_name:Ljava/lang/String;

    .line 36
    :cond_28
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AppSetAlarm;->alarm_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
