.class public final enum Lcom/inuker/bluetooth/library/channel/ChannelState;
.super Ljava/lang/Enum;
.source "ChannelState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/inuker/bluetooth/library/channel/ChannelState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/inuker/bluetooth/library/channel/ChannelState;

.field public static final enum IDLE:Lcom/inuker/bluetooth/library/channel/ChannelState;

.field public static final enum READING:Lcom/inuker/bluetooth/library/channel/ChannelState;

.field public static final enum READY:Lcom/inuker/bluetooth/library/channel/ChannelState;

.field public static final enum SYNC:Lcom/inuker/bluetooth/library/channel/ChannelState;

.field public static final enum SYNC_ACK:Lcom/inuker/bluetooth/library/channel/ChannelState;

.field public static final enum SYNC_WAIT_PACKET:Lcom/inuker/bluetooth/library/channel/ChannelState;

.field public static final enum WAIT_START_ACK:Lcom/inuker/bluetooth/library/channel/ChannelState;

.field public static final enum WRITING:Lcom/inuker/bluetooth/library/channel/ChannelState;


# direct methods
.method private static synthetic $values()[Lcom/inuker/bluetooth/library/channel/ChannelState;
    .locals 3

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/inuker/bluetooth/library/channel/ChannelState;

    const/4 v1, 0x0

    .line 7
    sget-object v2, Lcom/inuker/bluetooth/library/channel/ChannelState;->IDLE:Lcom/inuker/bluetooth/library/channel/ChannelState;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/inuker/bluetooth/library/channel/ChannelState;->READY:Lcom/inuker/bluetooth/library/channel/ChannelState;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/inuker/bluetooth/library/channel/ChannelState;->WAIT_START_ACK:Lcom/inuker/bluetooth/library/channel/ChannelState;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/inuker/bluetooth/library/channel/ChannelState;->WRITING:Lcom/inuker/bluetooth/library/channel/ChannelState;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/inuker/bluetooth/library/channel/ChannelState;->SYNC:Lcom/inuker/bluetooth/library/channel/ChannelState;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/inuker/bluetooth/library/channel/ChannelState;->SYNC_ACK:Lcom/inuker/bluetooth/library/channel/ChannelState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/inuker/bluetooth/library/channel/ChannelState;->SYNC_WAIT_PACKET:Lcom/inuker/bluetooth/library/channel/ChannelState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/inuker/bluetooth/library/channel/ChannelState;->READING:Lcom/inuker/bluetooth/library/channel/ChannelState;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 9
    new-instance v0, Lcom/inuker/bluetooth/library/channel/ChannelState;

    const-string v1, "IDLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/inuker/bluetooth/library/channel/ChannelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inuker/bluetooth/library/channel/ChannelState;->IDLE:Lcom/inuker/bluetooth/library/channel/ChannelState;

    .line 14
    new-instance v0, Lcom/inuker/bluetooth/library/channel/ChannelState;

    const-string v1, "READY"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/inuker/bluetooth/library/channel/ChannelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inuker/bluetooth/library/channel/ChannelState;->READY:Lcom/inuker/bluetooth/library/channel/ChannelState;

    .line 19
    new-instance v0, Lcom/inuker/bluetooth/library/channel/ChannelState;

    const-string v1, "WAIT_START_ACK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/inuker/bluetooth/library/channel/ChannelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inuker/bluetooth/library/channel/ChannelState;->WAIT_START_ACK:Lcom/inuker/bluetooth/library/channel/ChannelState;

    .line 24
    new-instance v0, Lcom/inuker/bluetooth/library/channel/ChannelState;

    const-string v1, "WRITING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/inuker/bluetooth/library/channel/ChannelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inuker/bluetooth/library/channel/ChannelState;->WRITING:Lcom/inuker/bluetooth/library/channel/ChannelState;

    .line 29
    new-instance v0, Lcom/inuker/bluetooth/library/channel/ChannelState;

    const-string v1, "SYNC"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/inuker/bluetooth/library/channel/ChannelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inuker/bluetooth/library/channel/ChannelState;->SYNC:Lcom/inuker/bluetooth/library/channel/ChannelState;

    .line 34
    new-instance v0, Lcom/inuker/bluetooth/library/channel/ChannelState;

    const-string v1, "SYNC_ACK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/inuker/bluetooth/library/channel/ChannelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inuker/bluetooth/library/channel/ChannelState;->SYNC_ACK:Lcom/inuker/bluetooth/library/channel/ChannelState;

    .line 39
    new-instance v0, Lcom/inuker/bluetooth/library/channel/ChannelState;

    const-string v1, "SYNC_WAIT_PACKET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/inuker/bluetooth/library/channel/ChannelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inuker/bluetooth/library/channel/ChannelState;->SYNC_WAIT_PACKET:Lcom/inuker/bluetooth/library/channel/ChannelState;

    .line 44
    new-instance v0, Lcom/inuker/bluetooth/library/channel/ChannelState;

    const-string v1, "READING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/inuker/bluetooth/library/channel/ChannelState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/inuker/bluetooth/library/channel/ChannelState;->READING:Lcom/inuker/bluetooth/library/channel/ChannelState;

    .line 7
    invoke-static {}, Lcom/inuker/bluetooth/library/channel/ChannelState;->$values()[Lcom/inuker/bluetooth/library/channel/ChannelState;

    move-result-object v0

    sput-object v0, Lcom/inuker/bluetooth/library/channel/ChannelState;->$VALUES:[Lcom/inuker/bluetooth/library/channel/ChannelState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/inuker/bluetooth/library/channel/ChannelState;
    .locals 1

    .line 7
    const-class v0, Lcom/inuker/bluetooth/library/channel/ChannelState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/inuker/bluetooth/library/channel/ChannelState;

    return-object p0
.end method

.method public static values()[Lcom/inuker/bluetooth/library/channel/ChannelState;
    .locals 1

    .line 7
    sget-object v0, Lcom/inuker/bluetooth/library/channel/ChannelState;->$VALUES:[Lcom/inuker/bluetooth/library/channel/ChannelState;

    invoke-virtual {v0}, [Lcom/inuker/bluetooth/library/channel/ChannelState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/inuker/bluetooth/library/channel/ChannelState;

    return-object v0
.end method
