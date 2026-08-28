.class public Lcn/baos/watch/w100/messages/SyncMessage;
.super Lcn/baos/message/Serializable;
.source "SyncMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/w100/messages/SyncMessage$SyncObj;
    }
.end annotation


# instance fields
.field public begin_seq:I

.field public dev_id:[B

.field public end_seq:I

.field public seq_received:I

.field public serialized_bytes:[Lcn/baos/watch/w100/messages/SyncMessage$SyncObj;

.field public sign:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 129
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const/16 v0, 0x75f8

    .line 131
    iput v0, p0, Lcn/baos/watch/w100/messages/SyncMessage;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/SyncMessage;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/SyncMessage;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/SyncMessage;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 98
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/SyncMessage;->begin_seq:I

    .line 99
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/SyncMessage;->end_seq:I

    .line 100
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/SyncMessage;->seq_received:I

    .line 102
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackBinaryHeader()I

    move-result v0

    if-lez v0, :cond_24

    .line 104
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessageUnpacker;->readPayload(I)[B

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/SyncMessage;->dev_id:[B

    .line 109
    :cond_24
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_45

    .line 111
    new-array v1, v0, [Lcn/baos/watch/w100/messages/SyncMessage$SyncObj;

    iput-object v1, p0, Lcn/baos/watch/w100/messages/SyncMessage;->serialized_bytes:[Lcn/baos/watch/w100/messages/SyncMessage$SyncObj;

    const/4 v1, 0x0

    :goto_30
    if-ge v1, v0, :cond_45

    .line 113
    iget-object v2, p0, Lcn/baos/watch/w100/messages/SyncMessage;->serialized_bytes:[Lcn/baos/watch/w100/messages/SyncMessage$SyncObj;

    new-instance v3, Lcn/baos/watch/w100/messages/SyncMessage$SyncObj;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/SyncMessage$SyncObj;-><init>()V

    aput-object v3, v2, v1

    .line 114
    iget-object v2, p0, Lcn/baos/watch/w100/messages/SyncMessage;->serialized_bytes:[Lcn/baos/watch/w100/messages/SyncMessage$SyncObj;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcn/baos/watch/w100/messages/SyncMessage$SyncObj;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/SyncMessage$SyncObj;

    add-int/lit8 v1, v1, 0x1

    goto :goto_30

    .line 120
    :cond_45
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackBinaryHeader()I

    move-result v0

    if-lez v0, :cond_51

    .line 122
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessageUnpacker;->readPayload(I)[B

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/w100/messages/SyncMessage;->sign:[B

    :cond_51
    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 57
    iget v0, p0, Lcn/baos/watch/w100/messages/SyncMessage;->begin_seq:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 59
    iget v0, p0, Lcn/baos/watch/w100/messages/SyncMessage;->end_seq:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 61
    iget v0, p0, Lcn/baos/watch/w100/messages/SyncMessage;->seq_received:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 63
    iget-object v0, p0, Lcn/baos/watch/w100/messages/SyncMessage;->dev_id:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 64
    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packBinaryHeader(I)Lorg/msgpack/core/MessagePacker;

    .line 65
    iget-object v0, p0, Lcn/baos/watch/w100/messages/SyncMessage;->dev_id:[B

    array-length v2, v0

    if-lez v2, :cond_2a

    .line 66
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->writePayload([B)Lorg/msgpack/core/MessagePacker;

    goto :goto_2a

    .line 69
    :cond_27
    invoke-virtual {p1, v1}, Lorg/msgpack/core/MessagePacker;->packBinaryHeader(I)Lorg/msgpack/core/MessagePacker;

    .line 72
    :cond_2a
    :goto_2a
    iget-object v0, p0, Lcn/baos/watch/w100/messages/SyncMessage;->serialized_bytes:[Lcn/baos/watch/w100/messages/SyncMessage$SyncObj;

    if-eqz v0, :cond_44

    .line 73
    array-length v0, v0

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 74
    iget-object v0, p0, Lcn/baos/watch/w100/messages/SyncMessage;->serialized_bytes:[Lcn/baos/watch/w100/messages/SyncMessage$SyncObj;

    array-length v2, v0

    if-lez v2, :cond_49

    .line 75
    array-length v2, v0

    move v3, v1

    :goto_3a
    if-ge v3, v2, :cond_49

    aget-object v4, v0, v3

    .line 76
    invoke-virtual {v4, p1}, Lcn/baos/watch/w100/messages/SyncMessage$SyncObj;->put(Lorg/msgpack/core/MessagePacker;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_3a

    :cond_44
    const-wide/16 v2, 0x0

    .line 80
    invoke-virtual {p1, v2, v3}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 83
    :cond_49
    iget-object v0, p0, Lcn/baos/watch/w100/messages/SyncMessage;->sign:[B

    if-eqz v0, :cond_5a

    .line 84
    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packBinaryHeader(I)Lorg/msgpack/core/MessagePacker;

    .line 85
    iget-object v0, p0, Lcn/baos/watch/w100/messages/SyncMessage;->sign:[B

    array-length v1, v0

    if-lez v1, :cond_5d

    .line 86
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->writePayload([B)Lorg/msgpack/core/MessagePacker;

    goto :goto_5d

    .line 89
    :cond_5a
    invoke-virtual {p1, v1}, Lorg/msgpack/core/MessagePacker;->packBinaryHeader(I)Lorg/msgpack/core/MessagePacker;

    :cond_5d
    :goto_5d
    const/4 p1, 0x1

    return p1
.end method
