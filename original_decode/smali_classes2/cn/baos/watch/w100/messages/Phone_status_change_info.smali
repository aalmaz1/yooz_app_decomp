.class public Lcn/baos/watch/w100/messages/Phone_status_change_info;
.super Lcn/baos/message/Serializable;
.source "Phone_status_change_info.java"


# instance fields
.field public contact:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public reserved1:I

.field public reserved2:I

.field public status:I

.field public tick:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 57
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0x222e2

    .line 59
    iput v0, p0, Lcn/baos/watch/w100/messages/Phone_status_change_info;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Phone_status_change_info;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Phone_status_change_info;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Phone_status_change_info;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 48
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Phone_status_change_info;->status:I

    .line 49
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Phone_status_change_info;->contact:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Phone_status_change_info;->number:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Phone_status_change_info;->tick:I

    .line 52
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Phone_status_change_info;->reserved1:I

    .line 53
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Phone_status_change_info;->reserved2:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 22
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 24
    iget v0, p0, Lcn/baos/watch/w100/messages/Phone_status_change_info;->status:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 26
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Phone_status_change_info;->contact:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 27
    iput-object v1, p0, Lcn/baos/watch/w100/messages/Phone_status_change_info;->contact:Ljava/lang/String;

    .line 29
    :cond_0
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Phone_status_change_info;->contact:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 31
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Phone_status_change_info;->number:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 32
    iput-object v1, p0, Lcn/baos/watch/w100/messages/Phone_status_change_info;->number:Ljava/lang/String;

    .line 34
    :cond_1
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Phone_status_change_info;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 36
    iget v0, p0, Lcn/baos/watch/w100/messages/Phone_status_change_info;->tick:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 38
    iget v0, p0, Lcn/baos/watch/w100/messages/Phone_status_change_info;->reserved1:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 40
    iget v0, p0, Lcn/baos/watch/w100/messages/Phone_status_change_info;->reserved2:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
