.class public Lcn/baos/watch/w100/messages/Music_list_infos;
.super Lcn/baos/message/Serializable;
.source "Music_list_infos.java"


# instance fields
.field public lists:Lcn/baos/watch/w100/messages/Music_list_info;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 28
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0x27105

    .line 30
    iput v0, p0, Lcn/baos/watch/w100/messages/Music_list_infos;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Music_list_infos;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Music_list_infos;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Music_list_infos;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 20
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 22
    new-instance v0, Lcn/baos/watch/w100/messages/Music_list_info;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Music_list_info;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Music_list_infos;->lists:Lcn/baos/watch/w100/messages/Music_list_info;

    .line 23
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Music_list_info;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Music_list_info;

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 12
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 14
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Music_list_infos;->lists:Lcn/baos/watch/w100/messages/Music_list_info;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Music_list_info;->put(Lorg/msgpack/core/MessagePacker;)Z

    const/4 p1, 0x1

    return p1
.end method
