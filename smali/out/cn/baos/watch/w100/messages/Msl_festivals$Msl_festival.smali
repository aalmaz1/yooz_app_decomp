.class public Lcn/baos/watch/w100/messages/Msl_festivals$Msl_festival;
.super Ljava/lang/Object;
.source "Msl_festivals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/w100/messages/Msl_festivals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Msl_festival"
.end annotation


# instance fields
.field public begin_date_msl:Lcn/baos/watch/w100/messages/Hb_date;

.field public begin_timestamp:I

.field public duration_day:I

.field public type:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Msl_festivals$Msl_festival;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Msl_festivals$Msl_festival;->begin_timestamp:I

    .line 38
    new-instance v0, Lcn/baos/watch/w100/messages/Hb_date;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Hb_date;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Msl_festivals$Msl_festival;->begin_date_msl:Lcn/baos/watch/w100/messages/Hb_date;

    .line 39
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Hb_date;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Hb_date;

    .line 41
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Msl_festivals$Msl_festival;->duration_day:I

    .line 42
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Msl_festivals$Msl_festival;->type:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    iget v0, p0, Lcn/baos/watch/w100/messages/Msl_festivals$Msl_festival;->begin_timestamp:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 25
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Msl_festivals$Msl_festival;->begin_date_msl:Lcn/baos/watch/w100/messages/Hb_date;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Hb_date;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 27
    iget v0, p0, Lcn/baos/watch/w100/messages/Msl_festivals$Msl_festival;->duration_day:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 29
    iget v0, p0, Lcn/baos/watch/w100/messages/Msl_festivals$Msl_festival;->type:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
