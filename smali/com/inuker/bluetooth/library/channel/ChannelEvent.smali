.class public final enum Lcom/inuker/bluetooth/library/channel/ChannelEvent;
.super Ljava/lang/Enum;
.source "ChannelEvent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/inuker/bluetooth/library/channel/ChannelEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inuker/bluetooth/library/channel/ChannelEvent;

.field public static final enum RECV_ACK:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

.field public static final enum RECV_CTR:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

.field public static final enum RECV_DATA:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

.field public static final enum SEND_ACK:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

.field public static final enum SEND_CTR:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

.field public static final enum SEND_DATA:Lcom/inuker/bluetooth/library/channel/ChannelEvent;


# direct methods
.method private static synthetic $values()[Lcom/inuker/bluetooth/library/channel/ChannelEvent;
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    const/4 v1, 0x0

    .line 7
    sget-object v2, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->RECV_CTR:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->SEND_CTR:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->RECV_DATA:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->SEND_DATA:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->RECV_ACK:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->SEND_ACK:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 12
    new-instance v0, Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    const-string v1, "RECV_CTR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/inuker/bluetooth/library/channel/ChannelEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->RECV_CTR:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    .line 17
    new-instance v0, Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    const-string v1, "SEND_CTR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/inuker/bluetooth/library/channel/ChannelEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->SEND_CTR:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    .line 22
    new-instance v0, Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    const-string v1, "RECV_DATA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/inuker/bluetooth/library/channel/ChannelEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->RECV_DATA:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    .line 27
    new-instance v0, Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    const-string v1, "SEND_DATA"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/inuker/bluetooth/library/channel/ChannelEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->SEND_DATA:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    .line 32
    new-instance v0, Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    const-string v1, "RECV_ACK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/inuker/bluetooth/library/channel/ChannelEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->RECV_ACK:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    .line 37
    new-instance v0, Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    const-string v1, "SEND_ACK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inuker/bluetooth/library/channel/ChannelEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->SEND_ACK:Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    .line 7
    invoke-static {}, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->$values()[Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    move-result-object v0

    sput-object v0, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->$VALUES:[Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inuker/bluetooth/library/channel/ChannelEvent;
    .registers 2

    .line 7
    const-class v0, Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    return-object p0
.end method

.method public static values()[Lcom/inuker/bluetooth/library/channel/ChannelEvent;
    .registers 1

    .line 7
    sget-object v0, Lcom/inuker/bluetooth/library/channel/ChannelEvent;->$VALUES:[Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    invoke-virtual {v0}, [Lcom/inuker/bluetooth/library/channel/ChannelEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inuker/bluetooth/library/channel/ChannelEvent;

    return-object v0
.end method
