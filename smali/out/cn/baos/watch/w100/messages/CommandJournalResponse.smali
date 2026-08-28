.class public Lcn/baos/watch/w100/messages/CommandJournalResponse;
.super Lcn/baos/watch/w100/messages/MessageBase;
.source "CommandJournalResponse.java"


# instance fields
.field public from:I

.field public mac_address:Ljava/lang/String;

.field public response:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 42
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/MessageBase;-><init>()V

    const v0, 0xc356

    .line 44
    iput v0, p0, Lcn/baos/watch/w100/messages/CommandJournalResponse;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/CommandJournalResponse;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/CommandJournalResponse;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/CommandJournalResponse;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 34
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;

    .line 36
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/CommandJournalResponse;->from:I

    .line 37
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/CommandJournalResponse;->mac_address:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/w100/messages/CommandJournalResponse;->response:Ljava/lang/String;

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/CommandJournalResponse;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/CommandJournalResponse;

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
    iget v0, p0, Lcn/baos/watch/w100/messages/CommandJournalResponse;->from:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 20
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandJournalResponse;->mac_address:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_11

    .line 21
    iput-object v1, p0, Lcn/baos/watch/w100/messages/CommandJournalResponse;->mac_address:Ljava/lang/String;

    .line 23
    :cond_11
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandJournalResponse;->mac_address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 25
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandJournalResponse;->response:Ljava/lang/String;

    if-nez v0, :cond_1c

    .line 26
    iput-object v1, p0, Lcn/baos/watch/w100/messages/CommandJournalResponse;->response:Ljava/lang/String;

    .line 28
    :cond_1c
    iget-object v0, p0, Lcn/baos/watch/w100/messages/CommandJournalResponse;->response:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
