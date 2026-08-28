.class Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;
.super Ljava/lang/Object;
.source "Packet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inuker/bluetooth/library/channel/packet/Packet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Header"
.end annotation


# instance fields
.field command:I

.field parameter:I

.field sn:I

.field type:I

.field value:[B


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/inuker/bluetooth/library/channel/packet/Packet$Header-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/inuker/bluetooth/library/channel/packet/Packet$Header;-><init>()V

    return-void
.end method
