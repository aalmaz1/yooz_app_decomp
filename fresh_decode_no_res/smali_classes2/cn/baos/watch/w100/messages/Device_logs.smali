.class public Lcn/baos/watch/w100/messages/Device_logs;
.super Lcn/baos/watch/w100/messages/MessageBase;
.source "Device_logs.java"


# instance fields
.field public logs:[Lcn/baos/watch/w100/messages/Device_log_content;

.field public mac_address:Ljava/lang/String;

.field public reserve:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/MessageBase;-><init>()V

    const v0, 0xc358

    .line 60
    iput v0, p0, Lcn/baos/watch/w100/messages/Device_logs;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Device_logs;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Device_logs;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Device_logs;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 40
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;

    .line 42
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Device_logs;->mac_address:Ljava/lang/String;

    .line 44
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_0

    .line 46
    new-array v1, v0, [Lcn/baos/watch/w100/messages/Device_log_content;

    iput-object v1, p0, Lcn/baos/watch/w100/messages/Device_logs;->logs:[Lcn/baos/watch/w100/messages/Device_log_content;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 48
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Device_logs;->logs:[Lcn/baos/watch/w100/messages/Device_log_content;

    new-instance v3, Lcn/baos/watch/w100/messages/Device_log_content;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/Device_log_content;-><init>()V

    aput-object v3, v2, v1

    .line 49
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Device_logs;->logs:[Lcn/baos/watch/w100/messages/Device_log_content;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcn/baos/watch/w100/messages/Device_log_content;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Device_log_content;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Device_logs;->reserve:I

    return-object p0
.end method

.method public bridge synthetic load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Device_logs;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Device_logs;

    move-result-object p1

    return-object p1
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 18
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Device_logs;->mac_address:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    .line 19
    iput-object v0, p0, Lcn/baos/watch/w100/messages/Device_logs;->mac_address:Ljava/lang/String;

    .line 21
    :cond_0
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Device_logs;->mac_address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 23
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Device_logs;->logs:[Lcn/baos/watch/w100/messages/Device_log_content;

    if-eqz v0, :cond_1

    .line 24
    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 25
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Device_logs;->logs:[Lcn/baos/watch/w100/messages/Device_log_content;

    array-length v1, v0

    if-lez v1, :cond_2

    .line 26
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 27
    invoke-virtual {v3, p1}, Lcn/baos/watch/w100/messages/Device_log_content;->put(Lorg/msgpack/core/MessagePacker;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x0

    .line 31
    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 34
    :cond_2
    iget v0, p0, Lcn/baos/watch/w100/messages/Device_logs;->reserve:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
