.class public Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;
.super Ljava/lang/Object;
.source "Wallpaper_info.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/w100/messages/Wallpaper_info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Control_info"
.end annotation


# instance fields
.field public bottom:I

.field public id:I

.field public left:I

.field public right:I

.field public text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

.field public top:I

.field public visible:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->id:I

    .line 90
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->visible:I

    .line 92
    new-instance v0, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    .line 93
    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    .line 95
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->left:I

    .line 96
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->right:I

    .line 97
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->top:I

    .line 98
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->bottom:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 70
    iget v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->id:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 72
    iget v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->visible:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 74
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->text_color:Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;

    invoke-virtual {v0, p1}, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_color;->put(Lorg/msgpack/core/MessagePacker;)Z

    .line 76
    iget v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->left:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 78
    iget v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->right:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 80
    iget v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->top:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    .line 82
    iget v0, p0, Lcn/baos/watch/w100/messages/Wallpaper_info$Control_info;->bottom:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
