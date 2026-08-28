.class public Lcn/baos/watch/w100/messages/CommandTimeSync;
.super Lcn/baos/watch/w100/messages/MessageBase;
.source "CommandTimeSync.java"


# instance fields
.field public sync_id:I

.field public time_zone:Ljava/lang/String;

.field public timestamp:I

.field public tv_nsec:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/MessageBase;-><init>()V

    const/16 v0, 0x7537

    .line 46
    iput v0, p0, Lcn/baos/watch/w100/messages/CommandTimeSync;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/CommandTimeSync;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/CommandTimeSync;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/CommandTimeSync;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;

    .line 37
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/CommandTimeSync;->timestamp:I

    .line 38
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/CommandTimeSync;->time_zone:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/CommandTimeSync;->tv_nsec:I

    .line 40
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/CommandTimeSync;->sync_id:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/CommandTimeSync;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/CommandTimeSync;

    move-result-object p1

    return-object p1
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 20
    iget v0, p0, Lcn/baos/watch/w100/messages/CommandTimeSync;->timestamp:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 22
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandTimeSync;->time_zone:Ljava/lang/String;

    if-nez v0, :cond_11

    const-string v0, ""

    .line 23
    iput-object v0, p0, Lcn/baos/watch/w100/messages/CommandTimeSync;->time_zone:Ljava/lang/String;

    .line 25
    :cond_11
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandTimeSync;->time_zone:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 27
    iget v0, p0, Lcn/baos/watch/w100/messages/CommandTimeSync;->tv_nsec:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 29
    iget v0, p0, Lcn/baos/watch/w100/messages/CommandTimeSync;->sync_id:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
