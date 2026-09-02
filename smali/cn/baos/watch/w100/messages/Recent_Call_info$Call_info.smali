.class public Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;
.super Ljava/lang/Object;
.source "Recent_Call_info.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/w100/messages/Recent_Call_info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Call_info"
.end annotation


# instance fields
.field public count:I

.field public direction:I

.field public last_dir:I

.field public last_status:I

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public time:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;->name:Ljava/lang/String;

    .line 55
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;->number:Ljava/lang/String;

    .line 56
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;->time:I

    .line 57
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;->direction:I

    .line 58
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;->count:I

    .line 59
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;->last_dir:I

    .line 60
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;->last_status:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;->name:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_8

    .line 30
    iput-object v1, p0, Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;->name:Ljava/lang/String;

    .line 32
    :cond_8
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 34
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;->number:Ljava/lang/String;

    if-nez v0, :cond_13

    .line 35
    iput-object v1, p0, Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;->number:Ljava/lang/String;

    .line 37
    :cond_13
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 39
    iget v0, p0, Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;->time:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 41
    iget v0, p0, Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;->direction:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 43
    iget v0, p0, Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;->count:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 45
    iget v0, p0, Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;->last_dir:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 47
    iget v0, p0, Lcn/baos/watch/w100/messages/Recent_Call_info$Call_info;->last_status:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
