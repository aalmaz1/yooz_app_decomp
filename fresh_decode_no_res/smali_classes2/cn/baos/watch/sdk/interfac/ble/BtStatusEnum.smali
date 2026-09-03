.class public final enum Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;
.super Ljava/lang/Enum;
.source "BtStatusEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

.field public static final enum HB_BT_DIALOG:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

.field public static final enum HB_BT_PAIRED:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

.field public static final enum HB_BT_PAIRING:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

.field public static final enum HB_BT_PAIR_FAILED:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;


# direct methods
.method private static synthetic $values()[Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    const/4 v1, 0x0

    .line 3
    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_PAIRING:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_PAIRED:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_PAIR_FAILED:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_DIALOG:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 4
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    const-string v1, "HB_BT_PAIRING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_PAIRING:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    .line 5
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    const-string v1, "HB_BT_PAIRED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_PAIRED:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    .line 6
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    const-string v1, "HB_BT_PAIR_FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_PAIR_FAILED:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    .line 7
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    const-string v1, "HB_BT_DIALOG"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_DIALOG:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    .line 3
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->$values()[Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    move-result-object v0

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->$VALUES:[Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;
    .locals 1

    .line 3
    const-class v0, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    return-object p0
.end method

.method public static values()[Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;
    .locals 1

    .line 3
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->$VALUES:[Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    invoke-virtual {v0}, [Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    return-object v0
.end method
