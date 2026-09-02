.class public Lcn/baos/watch/w100/messages/AppTencentQQ;
.super Lcn/baos/watch/w100/messages/MessageBase;
.source "AppTencentQQ.java"


# instance fields
.field public content:Ljava/lang/String;

.field public from:Ljava/lang/String;

.field public start_time_s:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/MessageBase;-><init>()V

    const/16 v0, 0x2712

    .line 44
    iput v0, p0, Lcn/baos/watch/w100/messages/AppTencentQQ;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/AppTencentQQ;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/AppTencentQQ;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/AppTencentQQ;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;

    .line 36
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/AppTencentQQ;->from:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/AppTencentQQ;->content:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/AppTencentQQ;->start_time_s:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/AppTencentQQ;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/AppTencentQQ;

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

    .line 16
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 18
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AppTencentQQ;->from:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_b

    .line 19
    iput-object v1, p0, Lcn/baos/watch/w100/messages/AppTencentQQ;->from:Ljava/lang/String;

    .line 21
    :cond_b
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AppTencentQQ;->from:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 23
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AppTencentQQ;->content:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 24
    iput-object v1, p0, Lcn/baos/watch/w100/messages/AppTencentQQ;->content:Ljava/lang/String;

    .line 26
    :cond_16
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AppTencentQQ;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 28
    iget v0, p0, Lcn/baos/watch/w100/messages/AppTencentQQ;->start_time_s:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
