.class public Lcn/baos/watch/w100/messages/Music_info;
.super Lcn/baos/message/Serializable;
.source "Music_info.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/w100/messages/Music_info$Music_tag;
    }
.end annotation


# instance fields
.field public music_id:Lcn/baos/watch/w100/messages/Music_id;

.field public tag:Lcn/baos/watch/w100/messages/Music_info$Music_tag;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 79
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0x27102

    .line 81
    iput v0, p0, Lcn/baos/watch/w100/messages/Music_info;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Music_info;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Music_info;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Music_info;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 68
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 70
    new-instance v0, Lcn/baos/watch/w100/messages/Music_id;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Music_id;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Music_info;->music_id:Lcn/baos/watch/w100/messages/Music_id;

    .line 71
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Music_id;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Music_id;

    .line 73
    new-instance v0, Lcn/baos/watch/w100/messages/Music_info$Music_tag;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Music_info$Music_tag;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Music_info;->tag:Lcn/baos/watch/w100/messages/Music_info$Music_tag;

    .line 74
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Music_info$Music_tag;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Music_info$Music_tag;

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 60
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Music_info;->music_id:Lcn/baos/watch/w100/messages/Music_id;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Music_id;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 62
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Music_info;->tag:Lcn/baos/watch/w100/messages/Music_info$Music_tag;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Music_info$Music_tag;->put(Lorg/msgpack/core/MessagePacker;)Z

    const/4 p1, 0x1

    return p1
.end method
