.class public Lcn/baos/watch/w100/messages/Sensor_data_meteorological;
.super Lcn/baos/watch/w100/messages/Sensor_data;
.source "Sensor_data_meteorological.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;
    }
.end annotation


# instance fields
.field public datas:[Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 100
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/Sensor_data;-><init>()V

    const v0, 0x1fbd8

    .line 102
    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data_meteorological;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_meteorological;

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data_meteorological;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_meteorological;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data_meteorological;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_meteorological;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_meteorological;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data;

    .line 87
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_24

    .line 89
    new-array v1, v0, [Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;

    iput-object v1, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_24

    .line 91
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;

    new-instance v3, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;-><init>()V

    aput-object v3, v2, v1

    .line 92
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_24
    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 69
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;

    if-eqz v0, :cond_1d

    .line 70
    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 71
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological;->datas:[Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;

    array-length v1, v0

    if-lez v1, :cond_22

    .line 72
    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    .line 73
    invoke-virtual {v3, p1}, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->put(Lorg/msgpack/core/MessagePacker;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1d
    const-wide/16 v0, 0x0

    .line 77
    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    :cond_22
    const/4 p1, 0x1

    return p1
.end method
