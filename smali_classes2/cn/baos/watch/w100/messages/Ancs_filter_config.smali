.class public Lcn/baos/watch/w100/messages/Ancs_filter_config;
.super Lcn/baos/watch/w100/messages/MessageBase;
.source "Ancs_filter_config.java"


# instance fields
.field public app_id_array:[Ljava/lang/String;

.field public show_or_hide:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 49
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/MessageBase;-><init>()V

    const v0, 0x1d4c2

    .line 51
    iput v0, p0, Lcn/baos/watch/w100/messages/Ancs_filter_config;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Ancs_filter_config;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Ancs_filter_config;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Ancs_filter_config;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 33
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;

    .line 35
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Ancs_filter_config;->show_or_hide:I

    .line 37
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_0

    .line 39
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcn/baos/watch/w100/messages/Ancs_filter_config;->app_id_array:[Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 41
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Ancs_filter_config;->app_id_array:[Ljava/lang/String;

    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Ancs_filter_config;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Ancs_filter_config;

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

    .line 14
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 16
    iget v0, p0, Lcn/baos/watch/w100/messages/Ancs_filter_config;->show_or_hide:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 18
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Ancs_filter_config;->app_id_array:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 19
    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 20
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Ancs_filter_config;->app_id_array:[Ljava/lang/String;

    array-length v1, v0

    if-lez v1, :cond_1

    .line 21
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 22
    invoke-virtual {p1, v3}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 26
    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    :cond_1
    const/4 p1, 0x1

    return p1
.end method
