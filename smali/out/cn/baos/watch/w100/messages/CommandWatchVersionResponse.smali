.class public Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;
.super Lcn/baos/watch/w100/messages/MessageBase;
.source "CommandWatchVersionResponse.java"


# instance fields
.field public apollo_software_ver:Ljava/lang/String;

.field public hardware_ver:Ljava/lang/String;

.field public software_ver:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 45
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/MessageBase;-><init>()V

    const v0, 0xea64

    .line 47
    iput v0, p0, Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 37
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;

    .line 39
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;->hardware_ver:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;->software_ver:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;->apollo_software_ver:Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;

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

    .line 16
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 18
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;->hardware_ver:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_b

    .line 19
    iput-object v1, p0, Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;->hardware_ver:Ljava/lang/String;

    .line 21
    :cond_b
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;->hardware_ver:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 23
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;->software_ver:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 24
    iput-object v1, p0, Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;->software_ver:Ljava/lang/String;

    .line 26
    :cond_16
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;->software_ver:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 28
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;->apollo_software_ver:Ljava/lang/String;

    if-nez v0, :cond_21

    .line 29
    iput-object v1, p0, Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;->apollo_software_ver:Ljava/lang/String;

    .line 31
    :cond_21
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandWatchVersionResponse;->apollo_software_ver:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
