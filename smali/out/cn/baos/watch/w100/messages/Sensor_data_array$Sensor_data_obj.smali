.class public Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;
.super Ljava/lang/Object;
.source "Sensor_data_array.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/w100/messages/Sensor_data_array;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sensor_data_obj"
.end annotation


# instance fields
.field public obj:[B


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackBinaryHeader()I

    move-result v0

    if-lez v0, :cond_c

    .line 36
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessageUnpacker;->readPayload(I)[B

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;->obj:[B

    :cond_c
    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 19
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;->obj:[B

    if-eqz v0, :cond_11

    .line 20
    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packBinaryHeader(I)Lorg/msgpack/core/MessagePacker;

    .line 21
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_array$Sensor_data_obj;->obj:[B

    array-length v1, v0

    if-lez v1, :cond_15

    .line 22
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->writePayload([B)Lorg/msgpack/core/MessagePacker;

    goto :goto_15

    :cond_11
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packBinaryHeader(I)Lorg/msgpack/core/MessagePacker;

    :cond_15
    :goto_15
    const/4 p1, 0x1

    return p1
.end method
