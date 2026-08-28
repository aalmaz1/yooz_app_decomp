.class public Lcn/baos/watch/w100/messages/Music_list_info;
.super Lcn/baos/message/Serializable;
.source "Music_list_info.java"


# instance fields
.field public count:I

.field public id:I

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0x27100

    .line 41
    iput v0, p0, Lcn/baos/watch/w100/messages/Music_list_info;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Music_list_info;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Music_list_info;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Music_list_info;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 33
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Music_list_info;->name:Ljava/lang/String;

    .line 34
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Music_list_info;->count:I

    .line 35
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Music_list_info;->id:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 18
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Music_list_info;->name:Ljava/lang/String;

    if-nez v0, :cond_b

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcn/baos/watch/w100/messages/Music_list_info;->name:Ljava/lang/String;

    .line 21
    :cond_b
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Music_list_info;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 23
    iget v0, p0, Lcn/baos/watch/w100/messages/Music_list_info;->count:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 25
    iget v0, p0, Lcn/baos/watch/w100/messages/Music_list_info;->id:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
