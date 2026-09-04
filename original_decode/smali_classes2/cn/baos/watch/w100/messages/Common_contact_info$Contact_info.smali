.class public Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;
.super Ljava/lang/Object;
.source "Common_contact_info.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/w100/messages/Common_contact_info;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Contact_info"
.end annotation


# instance fields
.field public flag:I

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Lorg/msgpack/core/MessageUnpacker;)Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 38
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;->name:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;->number:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lorg/msgpack/core/MessageUnpacker;->unpackLong()J

    move-result-wide v0

    long-to-int p1, v0

    iput p1, p0, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;->flag:I

    return-object p0
.end method

.method public put(Lorg/msgpack/core/MessagePacker;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;->name:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 22
    iput-object v1, p0, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;->name:Ljava/lang/String;

    .line 24
    :cond_0
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 26
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;->number:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 27
    iput-object v1, p0, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;->number:Ljava/lang/String;

    .line 29
    :cond_1
    iget-object v0, p0, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;->number:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/msgpack/core/MessagePacker;->packString(Ljava/lang/String;)Lorg/msgpack/core/MessagePacker;

    .line 31
    iget v0, p0, Lcn/baos/watch/w100/messages/Common_contact_info$Contact_info;->flag:I

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Lorg/msgpack/core/MessagePacker;->packLong(J)Lorg/msgpack/core/MessagePacker;

    const/4 p1, 0x1

    return p1
.end method
