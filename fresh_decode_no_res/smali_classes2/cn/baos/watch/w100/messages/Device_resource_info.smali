.class public Lcn/baos/watch/w100/messages/Device_resource_info;
.super Lcn/baos/watch/w100/messages/MessageBase;
.source "Device_resource_info.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/w100/messages/Device_resource_info$Dev_res;
    }
.end annotation


# instance fields
.field public active_res_location:I

.field public resource_array:[Lcn/baos/watch/w100/messages/Device_resource_info$Dev_res;

.field public resource_count:I

.field public resource_type:I

.field public sync_param:I

.field public sync_reason:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 95
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/MessageBase;-><init>()V

    const/16 v0, 0x2ee3

    .line 97
    iput v0, p0, Lcn/baos/watch/w100/messages/Device_resource_info;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Device_resource_info;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Device_resource_info;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Device_resource_info;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;

    .line 76
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Device_resource_info;->resource_type:I

    .line 77
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Device_resource_info;->sync_reason:I

    .line 78
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Device_resource_info;->sync_param:I

    .line 79
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Device_resource_info;->resource_count:I

    .line 80
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Device_resource_info;->active_res_location:I

    .line 82
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_0

    .line 84
    new-array v1, v0, [Lcn/baos/watch/w100/messages/Device_resource_info$Dev_res;

    iput-object v1, p0, Lcn/baos/watch/w100/messages/Device_resource_info;->resource_array:[Lcn/baos/watch/w100/messages/Device_resource_info$Dev_res;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 86
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Device_resource_info;->resource_array:[Lcn/baos/watch/w100/messages/Device_resource_info$Dev_res;

    new-instance v3, Lcn/baos/watch/w100/messages/Device_resource_info$Dev_res;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/Device_resource_info$Dev_res;-><init>()V

    aput-object v3, v2, v1

    .line 87
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Device_resource_info;->resource_array:[Lcn/baos/watch/w100/messages/Device_resource_info$Dev_res;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcn/baos/watch/w100/messages/Device_resource_info$Dev_res;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Device_resource_info$Dev_res;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Device_resource_info;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Device_resource_info;

    move-result-object p1

    return-object p1
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 49
    iget v0, p0, Lcn/baos/watch/w100/messages/Device_resource_info;->resource_type:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 51
    iget v0, p0, Lcn/baos/watch/w100/messages/Device_resource_info;->sync_reason:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 53
    iget v0, p0, Lcn/baos/watch/w100/messages/Device_resource_info;->sync_param:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 55
    iget v0, p0, Lcn/baos/watch/w100/messages/Device_resource_info;->resource_count:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 57
    iget v0, p0, Lcn/baos/watch/w100/messages/Device_resource_info;->active_res_location:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 59
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Device_resource_info;->resource_array:[Lcn/baos/watch/w100/messages/Device_resource_info$Dev_res;

    if-eqz v0, :cond_0

    .line 60
    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 61
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Device_resource_info;->resource_array:[Lcn/baos/watch/w100/messages/Device_resource_info$Dev_res;

    array-length v1, v0

    if-lez v1, :cond_1

    .line 62
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 63
    invoke-virtual {v3, p1}, Lcn/baos/watch/w100/messages/Device_resource_info$Dev_res;->put(Lorg/msgpack/core/MessagePacker;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 67
    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
