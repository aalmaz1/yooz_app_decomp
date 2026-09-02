.class public Lcn/baos/watch/w100/messages/Sport_record;
.super Lcn/baos/watch/w100/messages/Sensor_data;
.source "Sport_record.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;,
        Lcn/baos/watch/w100/messages/Sport_record$Sport_target;
    }
.end annotation


# instance fields
.field public begin_timestamp:I

.field public end_timestamp:I

.field public initiator:I

.field public mode:I

.field public remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

.field public status:I

.field public target:Lcn/baos/watch/w100/messages/Sport_record$Sport_target;

.field public timezone:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 135
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/Sensor_data;-><init>()V

    const v0, 0x16061

    .line 137
    iput v0, p0, Lcn/baos/watch/w100/messages/Sport_record;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sport_record;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sport_record;

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sport_record;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sport_record;

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sport_record;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sport_record;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sport_record;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sensor_data;

    .line 120
    new-instance v0, Lcn/baos/watch/w100/messages/Sport_record$Sport_target;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Sport_record$Sport_target;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Sport_record;->target:Lcn/baos/watch/w100/messages/Sport_record$Sport_target;

    .line 121
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Sport_record$Sport_target;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sport_record$Sport_target;

    .line 123
    new-instance v0, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    .line 124
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    .line 126
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sport_record;->begin_timestamp:I

    .line 127
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sport_record;->end_timestamp:I

    .line 128
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sport_record;->timezone:I

    .line 129
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sport_record;->initiator:I

    .line 130
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sport_record;->mode:I

    .line 131
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Sport_record;->status:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 96
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/Sensor_data;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 98
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sport_record;->target:Lcn/baos/watch/w100/messages/Sport_record$Sport_target;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Sport_record$Sport_target;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 100
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sport_record;->remind:Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Sport_record$Sporting_remind;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 102
    iget v0, p0, Lcn/baos/watch/w100/messages/Sport_record;->begin_timestamp:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 104
    iget v0, p0, Lcn/baos/watch/w100/messages/Sport_record;->end_timestamp:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 106
    iget v0, p0, Lcn/baos/watch/w100/messages/Sport_record;->timezone:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 108
    iget v0, p0, Lcn/baos/watch/w100/messages/Sport_record;->initiator:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 110
    iget v0, p0, Lcn/baos/watch/w100/messages/Sport_record;->mode:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 112
    iget v0, p0, Lcn/baos/watch/w100/messages/Sport_record;->status:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
