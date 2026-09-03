.class public Lcn/baos/watch/w100/messages/Sensor_data_weather;
.super Lcn/baos/watch/w100/messages/Sensor_data;
.source "Sensor_data_weather.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;
    }
.end annotation


# instance fields
.field public current_temperature:I

.field public current_weather_type:I

.field public daily_Weathers:[Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;

.field public location:Ljava/lang/String;

.field public provider:Ljava/lang/String;

.field public today_high_temperature:I

.field public today_low_temperature:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/Sensor_data;-><init>()V

    const v0, 0x1fbd3

    .line 113
    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data_weather;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_weather;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data_weather;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_weather;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data_weather;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_weather;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_weather;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data;

    .line 91
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->provider:Ljava/lang/String;

    .line 92
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->location:Ljava/lang/String;

    .line 93
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->current_weather_type:I

    .line 94
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->current_temperature:I

    .line 95
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->today_high_temperature:I

    .line 96
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->today_low_temperature:I

    .line 98
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_0

    .line 100
    new-array v1, v0, [Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;

    iput-object v1, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->daily_Weathers:[Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 102
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->daily_Weathers:[Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;

    new-instance v3, Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;-><init>()V

    aput-object v3, v2, v1

    .line 103
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->daily_Weathers:[Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;

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

    .line 54
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 56
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->provider:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 57
    iput-object v1, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->provider:Ljava/lang/String;

    .line 59
    :cond_0
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->provider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 61
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->location:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 62
    iput-object v1, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->location:Ljava/lang/String;

    .line 64
    :cond_1
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->location:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 66
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->current_weather_type:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 68
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->current_temperature:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 70
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->today_high_temperature:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 72
    iget v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->today_low_temperature:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 74
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->daily_Weathers:[Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;

    if-eqz v0, :cond_2

    .line 75
    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 76
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sensor_data_weather;->daily_Weathers:[Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;

    array-length v1, v0

    if-lez v1, :cond_3

    .line 77
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 78
    invoke-virtual {v3, p1}, Lcn/baos/watch/w100/messages/Sensor_data_weather$daily_Weather;->put(Lorg/msgpack/core/MessagePacker;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x0

    .line 82
    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    :cond_3
    const/4 p1, 0x1

    return p1
.end method
