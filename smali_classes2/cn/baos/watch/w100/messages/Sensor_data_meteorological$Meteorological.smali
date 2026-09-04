.class public Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;
.super Ljava/lang/Object;
.source "Sensor_data_meteorological.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/w100/messages/Sensor_data_meteorological;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Meteorological"
.end annotation


# instance fields
.field public UVI:I

.field public air_pressure:I

.field public cloud_amount:I

.field public humidity:I

.field public precipitation:I

.field public reserve:I

.field public wind_direction:I

.field public wind_speed:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 52
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->air_pressure:I

    .line 53
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->precipitation:I

    .line 54
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->UVI:I

    .line 55
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->humidity:I

    .line 56
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->wind_speed:I

    .line 57
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->wind_direction:I

    .line 58
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->cloud_amount:I

    .line 59
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->reserve:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->air_pressure:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 33
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->precipitation:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 35
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->UVI:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 37
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->humidity:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 39
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->wind_speed:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 41
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->wind_direction:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 43
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->cloud_amount:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 45
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_meteorological$Meteorological;->reserve:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
