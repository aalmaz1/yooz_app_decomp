.class public Lcn/baos/watch/w100/messages/PublicKey;
.super Lcn/baos/watch/w100/messages/SyncBase;
.source "PublicKey.java"


# instance fields
.field public publickey:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/SyncBase;-><init>()V

    const/16 v0, 0x75f9

    .line 41
    iput v0, p0, Lcn/baos/watch/w100/messages/PublicKey;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/PublicKey;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/PublicKey;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/PublicKey;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/SyncBase;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/SyncBase;

    .line 30
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackBinaryHeader()I

    move-result v0

    if-lez v0, :cond_0

    .line 32
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessageUnpacker;->readPayload(I)[B

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/w100/messages/PublicKey;->publickey:[B

    :cond_0
    return-object p0
.end method

.method public bridge synthetic load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/SyncBase;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/PublicKey;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/PublicKey;

    move-result-object p1

    return-object p1
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/SyncBase;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 14
    iget-object v0, p0, Lcn/baos/watch/w100/messages/PublicKey;->publickey:[B

    if-eqz v0, :cond_0

    .line 15
    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packBinaryHeader(I)Lorg/msgpack/core/MessagePacker;

    .line 16
    iget-object v0, p0, Lcn/baos/watch/w100/messages/PublicKey;->publickey:[B

    array-length v1, v0

    if-lez v1, :cond_1

    .line 17
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->writePayload([B)Lorg/msgpack/core/MessagePacker;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packBinaryHeader(I)Lorg/msgpack/core/MessagePacker;

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
