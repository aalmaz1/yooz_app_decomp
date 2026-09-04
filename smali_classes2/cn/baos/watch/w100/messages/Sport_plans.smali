.class public Lcn/baos/watch/w100/messages/Sport_plans;
.super Lcn/baos/message/Serializable;
.source "Sport_plans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;
    }
.end annotation


# instance fields
.field public enable:I

.field public plans:[Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;

.field public reserve1:I

.field public reserve2:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 105
    invoke-direct {p0}, Lcn/baos/message/Serializable;-><init>()V

    const v0, 0x1607d

    .line 107
    iput v0, p0, Lcn/baos/watch/w100/messages/Sport_plans;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Sport_plans;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sport_plans;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sport_plans;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/message/Serializable;

    .line 89
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_0

    .line 91
    new-array v1, v0, [Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;

    iput-object v1, p0, Lcn/baos/watch/w100/messages/Sport_plans;->plans:[Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 93
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Sport_plans;->plans:[Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;

    new-instance v3, Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;-><init>()V

    aput-object v3, v2, v1

    .line 94
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Sport_plans;->plans:[Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sport_plans;->enable:I

    .line 100
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Sport_plans;->reserve1:I

    .line 101
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Sport_plans;->reserve2:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-super {p0, p1}, Lcn/baos/message/Serializable;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 65
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sport_plans;->plans:[Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;

    if-eqz v0, :cond_0

    .line 66
    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 67
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Sport_plans;->plans:[Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;

    array-length v1, v0

    if-lez v1, :cond_1

    .line 68
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 69
    invoke-virtual {v3, p1}, Lcn/baos/watch/w100/messages/Sport_plans$Sport_plan;->put(Lorg/msgpack/core/MessagePacker;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    .line 73
    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 76
    :cond_1
    iget v0, p0, Lcn/baos/watch/w100/messages/Sport_plans;->enable:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 78
    iget v0, p0, Lcn/baos/watch/w100/messages/Sport_plans;->reserve1:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 80
    iget v0, p0, Lcn/baos/watch/w100/messages/Sport_plans;->reserve2:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
