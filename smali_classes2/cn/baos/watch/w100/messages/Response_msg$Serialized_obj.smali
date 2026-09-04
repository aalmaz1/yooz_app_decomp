.class public Lcn/baos/watch/w100/messages/Response_msg$Serialized_obj;
.super Ljava/lang/Object;
.source "Response_msg.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/w100/messages/Response_msg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serialized_obj"
.end annotation


# instance fields
.field public obj:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Response_msg$Serialized_obj;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackBinaryHeader()I

    move-result v0

    if-lez v0, :cond_0

    .line 46
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessageUnpacker;->readPayload(I)[B

    move-result-object p1

    iput-object p1, p0, Lcn/baos/watch/w100/messages/Response_msg$Serialized_obj;->obj:[B

    :cond_0
    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Response_msg$Serialized_obj;->obj:[B

    if-eqz v0, :cond_0

    .line 30
    array-length v0, v0

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packBinaryHeader(I)Lorg/msgpack/core/MessagePacker;

    .line 31
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Response_msg$Serialized_obj;->obj:[B

    array-length v1, v0

    if-lez v1, :cond_1

    .line 32
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->writePayload([B)Lorg/msgpack/core/MessagePacker;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 35
    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packBinaryHeader(I)Lorg/msgpack/core/MessagePacker;

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
