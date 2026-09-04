.class public Lcn/baos/watch/w100/messages/Music_play_context;
.super Lcn/baos/message/Serializable;
.source "Music_play_context.java"


# instance fields
.field public music:Lcn/baos/watch/w100/messages/Music_info;

.field public music_list:Lcn/baos/watch/w100/messages/Music_list_info;

.field public play_mode:I

.field public play_pos_file:I

.field public play_pos_ms:I

.field public play_status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0x27104

    .line 57
    iput v0, p0, Lcn/baos/watch/w100/messages/Music_play_context;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Music_play_context;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Music_play_context;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Music_play_context;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 42
    new-instance v0, Lcn/baos/watch/w100/messages/Music_list_info;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Music_list_info;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Music_play_context;->music_list:Lcn/baos/watch/w100/messages/Music_list_info;

    .line 43
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Music_list_info;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Music_list_info;

    .line 45
    new-instance v0, Lcn/baos/watch/w100/messages/Music_info;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Music_info;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Music_play_context;->music:Lcn/baos/watch/w100/messages/Music_info;

    .line 46
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Music_info;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Music_info;

    .line 48
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Music_play_context;->play_pos_ms:I

    .line 49
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Music_play_context;->play_pos_file:I

    .line 50
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Music_play_context;->play_status:I

    .line 51
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Music_play_context;->play_mode:I

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
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Music_play_context;->music_list:Lcn/baos/watch/w100/messages/Music_list_info;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Music_list_info;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 26
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Music_play_context;->music:Lcn/baos/watch/w100/messages/Music_info;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Music_info;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 28
    iget v0, p0, Lcn/baos/watch/w100/messages/Music_play_context;->play_pos_ms:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 30
    iget v0, p0, Lcn/baos/watch/w100/messages/Music_play_context;->play_pos_file:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 32
    iget v0, p0, Lcn/baos/watch/w100/messages/Music_play_context;->play_status:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 34
    iget v0, p0, Lcn/baos/watch/w100/messages/Music_play_context;->play_mode:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
