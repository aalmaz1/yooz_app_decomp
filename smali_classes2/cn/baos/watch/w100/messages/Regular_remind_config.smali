.class public Lcn/baos/watch/w100/messages/Regular_remind_config;
.super Lcn/baos/message/Serializable;
.source "Regular_remind_config.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;
    }
.end annotation


# instance fields
.field public cfg:Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;

.field public is_enable:I

.field public remind_item:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0x1605a

    .line 103
    iput v0, p0, Lcn/baos/watch/w100/messages/Regular_remind_config;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Regular_remind_config;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Regular_remind_config;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Regular_remind_config;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 92
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Regular_remind_config;->remind_item:I

    .line 93
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Regular_remind_config;->is_enable:I

    .line 95
    new-instance v0, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Regular_remind_config;->cfg:Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;

    .line 96
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 80
    iget v0, p0, Lcn/baos/watch/w100/messages/Regular_remind_config;->remind_item:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 82
    iget v0, p0, Lcn/baos/watch/w100/messages/Regular_remind_config;->is_enable:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 84
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Regular_remind_config;->cfg:Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Regular_remind_config$Regular_remind_cfg;->put(Lorg/msgpack/core/MessagePacker;)Z

    const/4 p1, 0x1

    return p1
.end method
