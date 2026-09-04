.class public Lcn/baos/watch/w100/messages/Sensor_data_array;
.super Lcn/baos/message/Serializable;
.source "Sensor_data_array.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;
    }
.end annotation


# instance fields
.field public data_catagory:I

.field public datas:[Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0x1607b

    .line 85
    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_array;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data_array;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_array;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_array;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 66
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 68
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_array;->data_catagory:I

    .line 70
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_0

    .line 72
    new-array v1, v0, [Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;

    iput-object v1, p0, Lcn/baos/watch/w100/messages/Sensor_data_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 74
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Sensor_data_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;

    new-instance v3, Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;-><init>()V

    aput-object v3, v2, v1

    .line 75
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Sensor_data_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;

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

    .line 47
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 49
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_array;->data_catagory:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 51
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;

    if-eqz v0, :cond_0

    .line 52
    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 53
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_array;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;

    array-length v1, v0

    if-lez v1, :cond_1

    .line 54
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 55
    invoke-virtual {v3, p1}, Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;->put(Lorg/msgpack/core/MessagePacker;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 59
    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
