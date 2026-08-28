.class public Lcn/baos/watch/w100/messages/Lcd_config$Night_timespan;
.super Ljava/lang/Object;
.source "Lcd_config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/w100/messages/Lcd_config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Night_timespan"
.end annotation


# instance fields
.field public begin_hour:I

.field public begin_min:I

.field public end_hour:I

.field public end_min:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Lcd_config$Night_timespan;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 42
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Lcd_config$Night_timespan;->begin_hour:I

    .line 43
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Lcd_config$Night_timespan;->begin_min:I

    .line 44
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Lcd_config$Night_timespan;->end_hour:I

    .line 45
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Lcd_config$Night_timespan;->end_min:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget v0, p0, Lcn/baos/watch/w100/messages/Lcd_config$Night_timespan;->begin_hour:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 31
    iget v0, p0, Lcn/baos/watch/w100/messages/Lcd_config$Night_timespan;->begin_min:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 33
    iget v0, p0, Lcn/baos/watch/w100/messages/Lcd_config$Night_timespan;->end_hour:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 35
    iget v0, p0, Lcn/baos/watch/w100/messages/Lcd_config$Night_timespan;->end_min:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
