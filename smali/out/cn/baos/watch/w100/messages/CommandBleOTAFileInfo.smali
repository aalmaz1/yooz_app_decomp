.class public Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;
.super Lcn/baos/watch/w100/messages/MessageBase;
.source "CommandBleOTAFileInfo.java"


# instance fields
.field public desc:Ljava/lang/String;

.field public dest_addr:I

.field public file_id:I

.field public file_md5:Ljava/lang/String;

.field public file_size:I

.field public file_type:I

.field public hardware_id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public new_version:Ljava/lang/String;

.field public old_addr:I

.field public old_version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 94
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/MessageBase;-><init>()V

    const v0, 0xea60

    .line 96
    iput v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;

    .line 80
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->file_type:I

    .line 81
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->file_size:I

    .line 82
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->file_md5:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->old_version:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->new_version:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->hardware_id:Ljava/lang/String;

    .line 86
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->name:Ljava/lang/String;

    .line 87
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->desc:Ljava/lang/String;

    .line 88
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->file_id:I

    .line 89
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->old_addr:I

    .line 90
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->dest_addr:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;

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

    .line 32
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 34
    iget v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->file_type:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 36
    iget v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->file_size:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 38
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->file_md5:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_17

    .line 39
    iput-object v1, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->file_md5:Ljava/lang/String;

    .line 41
    :cond_17
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->file_md5:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 43
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->old_version:Ljava/lang/String;

    if-nez v0, :cond_22

    .line 44
    iput-object v1, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->old_version:Ljava/lang/String;

    .line 46
    :cond_22
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->old_version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 48
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->new_version:Ljava/lang/String;

    if-nez v0, :cond_2d

    .line 49
    iput-object v1, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->new_version:Ljava/lang/String;

    .line 51
    :cond_2d
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->new_version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 53
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->hardware_id:Ljava/lang/String;

    if-nez v0, :cond_38

    .line 54
    iput-object v1, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->hardware_id:Ljava/lang/String;

    .line 56
    :cond_38
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->hardware_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 58
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->name:Ljava/lang/String;

    if-nez v0, :cond_43

    .line 59
    iput-object v1, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->name:Ljava/lang/String;

    .line 61
    :cond_43
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 63
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->desc:Ljava/lang/String;

    if-nez v0, :cond_4e

    .line 64
    iput-object v1, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->desc:Ljava/lang/String;

    .line 66
    :cond_4e
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 68
    iget v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->file_id:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 70
    iget v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->old_addr:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 72
    iget v0, p0, Lcn/baos/watch/w100/messages/CommandBleOTAFileInfo;->dest_addr:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
