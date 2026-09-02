.class public Lcn/baos/watch/w100/messages/Wallpaper_info;
.super Lcn/baos/watch/w100/messages/MessageBase;
.source "Wallpaper_info.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;,
        Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;
    }
.end annotation


# instance fields
.field public bgColor:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

.field public bg_img_left:I

.field public bg_img_top:I

.field public controls:[Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 150
    invoke-direct {p0}, Lcn/baos/watch/w100/messages/MessageBase;-><init>()V

    const/16 v0, 0x2ee5

    .line 152
    iput v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info;->catagory:I

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
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Wallpaper_info;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Wallpaper_info;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Lcn/baos/watch/w100/messages/Wallpaper_info;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Wallpaper_info;

    move-result-object p1

    return-object p1
.end method

.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Wallpaper_info;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/MessageBase;

    .line 131
    new-instance v0, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info;->bgColor:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    .line 132
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    .line 134
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info;->bg_img_left:I

    .line 135
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info;->bg_img_top:I

    .line 137
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    if-lez v0, :cond_3c

    .line 139
    new-array v1, v0, [Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    iput-object v1, p0, Lcn/baos/watch/w100/messages/Wallpaper_info;->controls:[Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    const/4 v1, 0x0

    :goto_27
    if-ge v1, v0, :cond_3c

    .line 141
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Wallpaper_info;->controls:[Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    new-instance v3, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    invoke-direct {v3}, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;-><init>()V

    aput-object v3, v2, v1

    .line 142
    iget-object v2, p0, Lcn/baos/watch/w100/messages/Wallpaper_info;->controls:[Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    add-int/lit8 v1, v1, 0x1

    goto :goto_27

    :cond_3c
    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 106
    invoke-super {p0, p1}, Lcn/baos/watch/w100/messages/MessageBase;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 108
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info;->bgColor:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 110
    iget v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info;->bg_img_left:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 112
    iget v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info;->bg_img_top:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 114
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info;->controls:[Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    if-eqz v0, :cond_2e

    .line 115
    array-length v0, v0

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 116
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info;->controls:[Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;

    array-length v1, v0

    if-lez v1, :cond_33

    .line 117
    array-length v1, v0

    const/4 v2, 0x0

    :goto_24
    if-ge v2, v1, :cond_33

    aget-object v3, v0, v2

    .line 118
    invoke-virtual {v3, p1}, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->put(Lorg/msgpack/core/MessagePacker;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_2e
    const-wide/16 v0, 0x0

    .line 122
    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    :cond_33
    const/4 p1, 0x1

    return p1
.end method
