.class public Lcn/baos/watch/w100/messages/AppSystemPhone;
.super Lcn/baos/watch/w100/messages/MessageBase;
.source "AppSystemPhone.java"


# instance fields
.field public contacter:Ljava/lang/String;

.field public phone_num:Ljava/lang/String;

.field public phone_state:I

.field public start_time_s:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 47
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/MessageBase;-><init>()V

    const/16 v0, 0x2714

    .line 49
    iput v0, p0, Lcn/baos/watch/w100/messages/AppSystemPhone;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/AppSystemPhone;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/AppSystemPhone;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/AppSystemPhone;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;

    .line 40
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/AppSystemPhone;->phone_num:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/AppSystemPhone;->contacter:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/AppSystemPhone;->phone_state:I

    .line 43
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/AppSystemPhone;->start_time_s:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/AppSystemPhone;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/AppSystemPhone;

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

    .line 18
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 20
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AppSystemPhone;->phone_num:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_b

    .line 21
    iput-object v1, p0, Lcn/baos/watch/w100/messages/AppSystemPhone;->phone_num:Ljava/lang/String;

    .line 23
    :cond_b
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AppSystemPhone;->phone_num:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 25
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AppSystemPhone;->contacter:Ljava/lang/String;

    if-nez v0, :cond_16

    .line 26
    iput-object v1, p0, Lcn/baos/watch/w100/messages/AppSystemPhone;->contacter:Ljava/lang/String;

    .line 28
    :cond_16
    iget-object v0, p0, Lcn/baos/watch/w100/messages/AppSystemPhone;->contacter:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 30
    iget v0, p0, Lcn/baos/watch/w100/messages/AppSystemPhone;->phone_state:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 32
    iget v0, p0, Lcn/baos/watch/w100/messages/AppSystemPhone;->start_time_s:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
