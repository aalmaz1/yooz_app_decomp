.class public Lcn/baos/watch/w100/messages/Rpc_response;
.super Lcn/baos/message/Serializable;
.source "Rpc_response.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/w100/messages/Rpc_response$Rpc_response_obj;
    }
.end annotation


# instance fields
.field public api_id:I

.field public objs_result:[Lcn/baos/watch/w100/messages/Rpc_response$Rpc_response_obj;

.field public result1:I

.field public result2:I

.field public session_id:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 98
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0x13c69

    .line 100
    iput v0, p0, Lcn/baos/watch/w100/messages/Rpc_response;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Rpc_response;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Rpc_response;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Rpc_response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 80
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Rpc_response;->session_id:I

    .line 81
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Rpc_response;->api_id:I

    .line 82
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Rpc_response;->result1:I

    .line 83
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Rpc_response;->result2:I

    .line 85
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_0

    .line 87
    new-array v1, v0, [Lcn/baos/watch/w100/messages/Rpc_response$Rpc_response_obj;

    iput-object v1, p0, Lcn/baos/watch/w100/messages/Rpc_response;->objs_result:[Lcn/baos/watch/w100/messages/Rpc_response$Rpc_response_obj;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 89
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Rpc_response;->objs_result:[Lcn/baos/watch/w100/messages/Rpc_response$Rpc_response_obj;

    new-instance v3, Lcn/baos/watch/w100/messages/Rpc_response$Rpc_response_obj;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/Rpc_response$Rpc_response_obj;-><init>()V

    aput-object v3, v2, v1

    .line 90
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Rpc_response;->objs_result:[Lcn/baos/watch/w100/messages/Rpc_response$Rpc_response_obj;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcn/baos/watch/w100/messages/Rpc_response$Rpc_response_obj;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Rpc_response$Rpc_response_obj;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 53
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 55
    iget v0, p0, Lcn/baos/watch/w100/messages/Rpc_response;->session_id:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 57
    iget v0, p0, Lcn/baos/watch/w100/messages/Rpc_response;->api_id:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 59
    iget v0, p0, Lcn/baos/watch/w100/messages/Rpc_response;->result1:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 61
    iget v0, p0, Lcn/baos/watch/w100/messages/Rpc_response;->result2:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 63
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Rpc_response;->objs_result:[Lcn/baos/watch/w100/messages/Rpc_response$Rpc_response_obj;

    if-eqz v0, :cond_0

    .line 64
    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 65
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Rpc_response;->objs_result:[Lcn/baos/watch/w100/messages/Rpc_response$Rpc_response_obj;

    array-length v1, v0

    if-lez v1, :cond_1

    .line 66
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 67
    invoke-virtual {v3, p1}, Lcn/baos/watch/w100/messages/Rpc_response$Rpc_response_obj;->put(Lorg/msgpack/core/MessagePacker;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 71
    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
