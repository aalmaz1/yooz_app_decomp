.class public Lcn/baos/watch/w100/messages/QueryReminderResponse;
.super Lcn/baos/watch/w100/messages/MessageBase;
.source "QueryReminderResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/w100/messages/QueryReminderResponse$ReminderData;
    }
.end annotation


# instance fields
.field public current_page:I

.field public has_next_page:I

.field public reminder_datas:[Lcn/baos/watch/w100/messages/QueryReminderResponse$ReminderData;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 146
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/MessageBase;-><init>()V

    const/16 v0, 0x4e8f

    .line 148
    iput v0, p0, Lcn/baos/watch/w100/messages/QueryReminderResponse;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/QueryReminderResponse;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/QueryReminderResponse;

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/QueryReminderResponse;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/QueryReminderResponse;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/QueryReminderResponse;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 128
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;

    .line 131
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_24

    .line 133
    new-array v1, v0, [Lcn/baos/watch/w100/messages/QueryReminderResponse$ReminderData;

    iput-object v1, p0, Lcn/baos/watch/w100/messages/QueryReminderResponse;->reminder_datas:[Lcn/baos/watch/w100/messages/QueryReminderResponse$ReminderData;

    const/4 v1, 0x0

    :goto_f
    if-ge v1, v0, :cond_24

    .line 135
    iget-object v2, p0, Lcn/baos/watch/w100/messages/QueryReminderResponse;->reminder_datas:[Lcn/baos/watch/w100/messages/QueryReminderResponse$ReminderData;

    new-instance v3, Lcn/baos/watch/w100/messages/QueryReminderResponse$ReminderData;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/QueryReminderResponse$ReminderData;-><init>()V

    aput-object v3, v2, v1

    .line 136
    iget-object v2, p0, Lcn/baos/watch/w100/messages/QueryReminderResponse;->reminder_datas:[Lcn/baos/watch/w100/messages/QueryReminderResponse$ReminderData;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcn/baos/watch/w100/messages/QueryReminderResponse$ReminderData;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/QueryReminderResponse$ReminderData;

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 141
    :cond_24
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/QueryReminderResponse;->current_page:I

    .line 142
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/QueryReminderResponse;->has_next_page:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 107
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 109
    iget-object v0, p0, Lcn/baos/watch/w100/messages/QueryReminderResponse;->reminder_datas:[Lcn/baos/watch/w100/messages/QueryReminderResponse$ReminderData;

    if-eqz v0, :cond_1d

    .line 110
    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 111
    iget-object v0, p0, Lcn/baos/watch/w100/messages/QueryReminderResponse;->reminder_datas:[Lcn/baos/watch/w100/messages/QueryReminderResponse$ReminderData;

    array-length v1, v0

    if-lez v1, :cond_22

    .line 112
    array-length v1, v0

    const/4 v2, 0x0

    :goto_13
    if-ge v2, v1, :cond_22

    aget-object v3, v0, v2

    .line 113
    invoke-virtual {v3, p1}, Lcn/baos/watch/w100/messages/QueryReminderResponse$ReminderData;->put(Lorg/msgpack/core/MessagePacker;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    :cond_1d
    const-wide/16 v0, 0x0

    .line 117
    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 120
    :cond_22
    iget v0, p0, Lcn/baos/watch/w100/messages/QueryReminderResponse;->current_page:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 122
    iget v0, p0, Lcn/baos/watch/w100/messages/QueryReminderResponse;->has_next_page:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
