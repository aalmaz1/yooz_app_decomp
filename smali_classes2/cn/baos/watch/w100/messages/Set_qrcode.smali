.class public Lcn/baos/watch/w100/messages/Set_qrcode;
.super Lcn/baos/message/Serializable;
.source "Set_qrcode.java"


# instance fields
.field public text:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const/16 v0, 0x2ee7

    .line 36
    iput v0, p0, Lcn/baos/watch/w100/messages/Set_qrcode;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Set_qrcode;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Set_qrcode;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Set_qrcode;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 29
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Set_qrcode;->type:I

    .line 30
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/w100/messages/Set_qrcode;->text:Ljava/lang/String;

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 16
    iget v0, p0, Lcn/baos/watch/w100/messages/Set_qrcode;->type:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 18
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Set_qrcode;->text:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcn/baos/watch/w100/messages/Set_qrcode;->text:Ljava/lang/String;

    .line 21
    :cond_0
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Set_qrcode;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
