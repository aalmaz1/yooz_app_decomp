.class public Lcn/baos/watch/w100/messages/Music_id;
.super Lcn/baos/message/Serializable;
.source "Music_id.java"


# instance fields
.field public id:I

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0x27101

    .line 36
    iput v0, p0, Lcn/baos/watch/w100/messages/Music_id;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Music_id;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Music_id;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Music_id;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 29
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Music_id;->url:Ljava/lang/String;

    .line 30
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Music_id;->id:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 16
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Music_id;->url:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 17
    iput-object v0, p0, Lcn/baos/watch/w100/messages/Music_id;->url:Ljava/lang/String;

    .line 19
    :cond_0
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Music_id;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 21
    iget v0, p0, Lcn/baos/watch/w100/messages/Music_id;->id:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
