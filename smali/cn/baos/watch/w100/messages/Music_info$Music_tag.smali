.class public Lcn/baos/watch/w100/messages/Music_info$Music_tag;
.super Ljava/lang/Object;
.source "Music_info.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/w100/messages/Music_info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Music_tag"
.end annotation


# instance fields
.field public album:Ljava/lang/String;

.field public artist:Ljava/lang/String;

.field public duration_ms:I

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Music_info$Music_tag;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 47
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Music_info$Music_tag;->title:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Music_info$Music_tag;->artist:Ljava/lang/String;

    .line 49
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Music_info$Music_tag;->album:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Music_info$Music_tag;->duration_ms:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Music_info$Music_tag;->title:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_8

    .line 26
    iput-object v1, p0, Lcn/baos/watch/w100/messages/Music_info$Music_tag;->title:Ljava/lang/String;

    .line 28
    :cond_8
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Music_info$Music_tag;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 30
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Music_info$Music_tag;->artist:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 31
    iput-object v1, p0, Lcn/baos/watch/w100/messages/Music_info$Music_tag;->artist:Ljava/lang/String;

    .line 33
    :cond_13
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Music_info$Music_tag;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 35
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Music_info$Music_tag;->album:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 36
    iput-object v1, p0, Lcn/baos/watch/w100/messages/Music_info$Music_tag;->album:Ljava/lang/String;

    .line 38
    :cond_1e
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Music_info$Music_tag;->album:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 40
    iget v0, p0, Lcn/baos/watch/w100/messages/Music_info$Music_tag;->duration_ms:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
