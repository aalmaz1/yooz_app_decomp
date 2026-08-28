.class public Lcn/baos/watch/w100/messages/CommandBleOTAFile;
.super Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;
.source "CommandBleOTAFile.java"


# instance fields
.field public data:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;-><init>()V

    const v0, 0xea65

    .line 41
    iput v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/CommandBleOTAFile;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/CommandBleOTAFile;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;

    .line 30
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackBinaryHeader()I

    move-result v0

    if-lez v0, :cond_f

    .line 32
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessageUnpacker;->readPayload(I)[B

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->data:[B

    :cond_f
    return-object p0
.end method

.method public bridge synthetic load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/CommandBleOTAFile;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/CommandBleOTAFile;

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

    .line 12
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 14
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->data:[B

    if-eqz v0, :cond_14

    .line 15
    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packBinaryHeader(I)Lorg/msgpack/core/MessagePacker;

    .line 16
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFile;->data:[B

    array-length v1, v0

    if-lez v1, :cond_18

    .line 17
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->writePayload([B)Lorg/msgpack/core/MessagePacker;

    goto :goto_18

    :cond_14
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packBinaryHeader(I)Lorg/msgpack/core/MessagePacker;

    :cond_18
    :goto_18
    const/4 p1, 0x1

    return p1
.end method
