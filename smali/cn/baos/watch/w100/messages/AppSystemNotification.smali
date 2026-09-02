.class public Lcn/baos/watch/w100/messages/AppSystemNotification;
.super Lcn/baos/watch/w100/messages/MessageBase;
.source "AppSystemNotification.java"


# instance fields
.field public content:Ljava/lang/String;

.field public highlight:I

.field public package_name:Ljava/lang/String;

.field public start_time_s:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 55
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/MessageBase;-><init>()V

    const/16 v0, 0x2710

    .line 57
    iput v0, p0, Lcn/baos/watch/w100/messages/AppSystemNotification;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/AppSystemNotification;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/AppSystemNotification;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/AppSystemNotification;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 45
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;

    .line 47
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/AppSystemNotification;->title:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/AppSystemNotification;->content:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/AppSystemNotification;->highlight:I

    .line 50
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/AppSystemNotification;->package_name:Ljava/lang/String;

    .line 51
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/AppSystemNotification;->start_time_s:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/AppSystemNotification;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/AppSystemNotification;

    move-result-object p1

    return-object p1
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 22
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AppSystemNotification;->title:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_b

    .line 23
    iput-object v1, p0, Lcn/baos/watch/w100/messages/AppSystemNotification;->title:Ljava/lang/String;

    .line 25
    :cond_b
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AppSystemNotification;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 27
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AppSystemNotification;->content:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 28
    iput-object v1, p0, Lcn/baos/watch/w100/messages/AppSystemNotification;->content:Ljava/lang/String;

    .line 30
    :cond_16
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AppSystemNotification;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 32
    iget v0, p0, Lcn/baos/watch/w100/messages/AppSystemNotification;->highlight:I

    int-to-long v2, v0

    invoke-virtual {p1, v2, v3}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 34
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AppSystemNotification;->package_name:Ljava/lang/String;

    if-nez v0, :cond_27

    .line 35
    iput-object v1, p0, Lcn/baos/watch/w100/messages/AppSystemNotification;->package_name:Ljava/lang/String;

    .line 37
    :cond_27
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AppSystemNotification;->package_name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 39
    iget v0, p0, Lcn/baos/watch/w100/messages/AppSystemNotification;->start_time_s:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
