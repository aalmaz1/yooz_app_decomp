.class public Lcn/baos/watch/w100/messages/Response_msg;
.super Lcn/baos/message/Serializable;
.source "Response_msg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/w100/messages/Response_msg$Serialized_obj;
    }
.end annotation


# instance fields
.field public act_catagory:I

.field public act_sequence_id:I

.field public result:I

.field public return_obj_catagory:I

.field public return_objs:[Lcn/baos/watch/w100/messages/Response_msg$Serialized_obj;

.field public return_value_u16:I

.field public return_value_u8:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const/16 v0, 0x765c

    .line 110
    iput v0, p0, Lcn/baos/watch/w100/messages/Response_msg;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Response_msg;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Response_msg;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Response_msg;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 88
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Response_msg;->act_catagory:I

    .line 89
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Response_msg;->act_sequence_id:I

    .line 90
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Response_msg;->result:I

    .line 91
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Response_msg;->return_value_u8:I

    .line 92
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Response_msg;->return_value_u16:I

    .line 94
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_0

    .line 96
    new-array v1, v0, [Lcn/baos/watch/w100/messages/Response_msg$Serialized_obj;

    iput-object v1, p0, Lcn/baos/watch/w100/messages/Response_msg;->return_objs:[Lcn/baos/watch/w100/messages/Response_msg$Serialized_obj;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 98
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Response_msg;->return_objs:[Lcn/baos/watch/w100/messages/Response_msg$Serialized_obj;

    new-instance v3, Lcn/baos/watch/w100/messages/Response_msg$Serialized_obj;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/Response_msg$Serialized_obj;-><init>()V

    aput-object v3, v2, v1

    .line 99
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Response_msg;->return_objs:[Lcn/baos/watch/w100/messages/Response_msg$Serialized_obj;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcn/baos/watch/w100/messages/Response_msg$Serialized_obj;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Response_msg$Serialized_obj;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 104
    :cond_0
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Response_msg;->return_obj_catagory:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 59
    iget v0, p0, Lcn/baos/watch/w100/messages/Response_msg;->act_catagory:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 61
    iget v0, p0, Lcn/baos/watch/w100/messages/Response_msg;->act_sequence_id:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 63
    iget v0, p0, Lcn/baos/watch/w100/messages/Response_msg;->result:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 65
    iget v0, p0, Lcn/baos/watch/w100/messages/Response_msg;->return_value_u8:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 67
    iget v0, p0, Lcn/baos/watch/w100/messages/Response_msg;->return_value_u16:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 69
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Response_msg;->return_objs:[Lcn/baos/watch/w100/messages/Response_msg$Serialized_obj;

    if-eqz v0, :cond_0

    .line 70
    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 71
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Response_msg;->return_objs:[Lcn/baos/watch/w100/messages/Response_msg$Serialized_obj;

    array-length v1, v0

    if-lez v1, :cond_1

    .line 72
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 73
    invoke-virtual {v3, p1}, Lcn/baos/watch/w100/messages/Response_msg$Serialized_obj;->put(Lorg/msgpack/core/MessagePacker;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 77
    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 80
    :cond_1
    iget v0, p0, Lcn/baos/watch/w100/messages/Response_msg;->return_obj_catagory:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
