.class public Lcn/baos/watch/w100/messages/Hbapp_sync_peer;
.super Lcn/baos/message/Serializable;
.source "Hbapp_sync_peer.java"


# instance fields
.field public app_id:I

.field public txt:Ljava/lang/String;

.field public u32v1:I

.field public u32v2:I

.field public u32v3:I

.field public u32v4:I

.field public u32v5:I

.field public u32v6:I

.field public u32v7:I

.field public u8v1:I

.field public u8v2:I

.field public u8v3:I

.field public u8v4:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 89
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const/16 v0, 0x2ee8

    .line 91
    iput v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Hbapp_sync_peer;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Hbapp_sync_peer;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 71
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 73
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->txt:Ljava/lang/String;

    .line 74
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->app_id:I

    .line 75
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u32v1:I

    .line 76
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u32v2:I

    .line 77
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u32v3:I

    .line 78
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u32v4:I

    .line 79
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u32v5:I

    .line 80
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u32v6:I

    .line 81
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u32v7:I

    .line 82
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u8v1:I

    .line 83
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u8v2:I

    .line 84
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u8v3:I

    .line 85
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u8v4:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 38
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->txt:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 39
    iput-object v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->txt:Ljava/lang/String;

    .line 41
    :cond_0
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->txt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 43
    iget v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->app_id:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 45
    iget v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u32v1:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 47
    iget v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u32v2:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 49
    iget v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u32v3:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 51
    iget v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u32v4:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 53
    iget v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u32v5:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 55
    iget v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u32v6:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 57
    iget v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u32v7:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 59
    iget v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u8v1:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 61
    iget v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u8v2:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 63
    iget v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u8v3:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 65
    iget v0, p0, Lcn/baos/watch/w100/messages/Hbapp_sync_peer;->u8v4:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
