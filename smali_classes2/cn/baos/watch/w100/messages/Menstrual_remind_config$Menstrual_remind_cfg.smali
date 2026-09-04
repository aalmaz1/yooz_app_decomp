.class public Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;
.super Ljava/lang/Object;
.source "Menstrual_remind_config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/w100/messages/Menstrual_remind_config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Menstrual_remind_cfg"
.end annotation


# instance fields
.field public last_mens_day:I

.field public last_mens_month:I

.field public last_mens_year:I

.field public mens_days:I

.field public mens_period:I

.field public mens_remind_before_days:I

.field public ovul_remind_before_days:I

.field public remind_hour:I

.field public remind_min:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;->mens_remind_before_days:I

    .line 59
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;->ovul_remind_before_days:I

    .line 60
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;->remind_hour:I

    .line 61
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;->remind_min:I

    .line 62
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;->last_mens_year:I

    .line 63
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;->last_mens_month:I

    .line 64
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;->last_mens_day:I

    .line 65
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;->mens_days:I

    .line 66
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;->mens_period:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    iget v0, p0, Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;->mens_remind_before_days:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 37
    iget v0, p0, Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;->ovul_remind_before_days:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 39
    iget v0, p0, Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;->remind_hour:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 41
    iget v0, p0, Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;->remind_min:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 43
    iget v0, p0, Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;->last_mens_year:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 45
    iget v0, p0, Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;->last_mens_month:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 47
    iget v0, p0, Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;->last_mens_day:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 49
    iget v0, p0, Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;->mens_days:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 51
    iget v0, p0, Lcn/baos/watch/w100/messages/Menstrual_remind_config$Menstrual_remind_cfg;->mens_period:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
