.class public Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;
.super Ljava/lang/Object;
.source "Regular_remind_config.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/w100/messages/Regular_remind_config;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Regular_remind_cfg"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg$Regular_timespan;
    }
.end annotation


# instance fields
.field public interval_sec:I

.field public timespan:Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg$Regular_timespan;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 67
    new-instance v0, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg$Regular_timespan;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg$Regular_timespan;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;->timespan:Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg$Regular_timespan;

    .line 68
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg$Regular_timespan;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg$Regular_timespan;

    .line 70
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;->interval_sec:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;->timespan:Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg$Regular_timespan;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg$Regular_timespan;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 60
    iget v0, p0, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;->interval_sec:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
