.class public Lcn/baos/watch/w100/messages/Lcd_config;
.super Lcn/baos/watch/w100/messages/MessageBase;
.source "Lcd_config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/w100/messages/Lcd_config$Night_timespan;
    }
.end annotation


# instance fields
.field public default_lightup_sec:I

.field public light_level:I

.field public night_light_adjust_enable:I

.field public night_timespan:Lcn/baos/watch/w100/messages/Lcd_config$Night_timespan;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 79
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/MessageBase;-><init>()V

    const/16 v0, 0x2ee0

    .line 81
    iput v0, p0, Lcn/baos/watch/w100/messages/Lcd_config;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Lcd_config;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Lcd_config;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Lcd_config;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;

    .line 69
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Lcd_config;->night_light_adjust_enable:I

    .line 71
    new-instance v0, Lcn/baos/watch/w100/messages/Lcd_config$Night_timespan;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Lcd_config$Night_timespan;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Lcd_config;->night_timespan:Lcn/baos/watch/w100/messages/Lcd_config$Night_timespan;

    .line 72
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Lcd_config$Night_timespan;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Lcd_config$Night_timespan;

    .line 74
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Lcd_config;->light_level:I

    .line 75
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Lcd_config;->default_lightup_sec:I

    return-object p0
.end method

.method public bridge synthetic load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Lcd_config;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Lcd_config;

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

    .line 53
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 55
    iget v0, p0, Lcn/baos/watch/w100/messages/Lcd_config;->night_light_adjust_enable:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 57
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Lcd_config;->night_timespan:Lcn/baos/watch/w100/messages/Lcd_config$Night_timespan;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Lcd_config$Night_timespan;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 59
    iget v0, p0, Lcn/baos/watch/w100/messages/Lcd_config;->light_level:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 61
    iget v0, p0, Lcn/baos/watch/w100/messages/Lcd_config;->default_lightup_sec:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
