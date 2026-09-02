.class public Lcn/baos/watch/w100/messages/Device_base_info;
.super Lcn/baos/message/Serializable;
.source "Device_base_info.java"


# instance fields
.field public device_model:Ljava/lang/String;

.field public device_name:Ljava/lang/String;

.field public hardware_version:Ljava/lang/String;

.field public serial_number:Ljava/lang/String;

.field public software_version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 61
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const/16 v0, 0x7598

    .line 63
    iput v0, p0, Lcn/baos/watch/w100/messages/Device_base_info;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Device_base_info;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Device_base_info;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Device_base_info;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 53
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Device_base_info;->device_model:Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Device_base_info;->device_name:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Device_base_info;->serial_number:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Device_base_info;->software_version:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/w100/messages/Device_base_info;->hardware_version:Ljava/lang/String;

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 22
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Device_base_info;->device_model:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_b

    .line 23
    iput-object v1, p0, Lcn/baos/watch/w100/messages/Device_base_info;->device_model:Ljava/lang/String;

    .line 25
    :cond_b
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Device_base_info;->device_model:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 27
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Device_base_info;->device_name:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 28
    iput-object v1, p0, Lcn/baos/watch/w100/messages/Device_base_info;->device_name:Ljava/lang/String;

    .line 30
    :cond_16
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Device_base_info;->device_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 32
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Device_base_info;->serial_number:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 33
    iput-object v1, p0, Lcn/baos/watch/w100/messages/Device_base_info;->serial_number:Ljava/lang/String;

    .line 35
    :cond_21
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Device_base_info;->serial_number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 37
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Device_base_info;->software_version:Ljava/lang/String;

    if-nez v0, :cond_2c

    .line 38
    iput-object v1, p0, Lcn/baos/watch/w100/messages/Device_base_info;->software_version:Ljava/lang/String;

    .line 40
    :cond_2c
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Device_base_info;->software_version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 42
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Device_base_info;->hardware_version:Ljava/lang/String;

    if-nez v0, :cond_37

    .line 43
    iput-object v1, p0, Lcn/baos/watch/w100/messages/Device_base_info;->hardware_version:Ljava/lang/String;

    .line 45
    :cond_37
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Device_base_info;->hardware_version:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
