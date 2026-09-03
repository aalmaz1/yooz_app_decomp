.class public final enum Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;
.super Ljava/lang/Enum;
.source "BleStatusEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_BINDING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_BIND_FAILED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_BOND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_CONNECTING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_CONNECT_FAIL:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_CONNECT_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_DEVICE_FOUND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_DISCONNECTING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_MTU_CHANGED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_MTU_CHANGING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_PAIRED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_PAIRING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_PAIR_FAILED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_PAIR_ING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_SCANNING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_SERVICE_DISCOVERED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_SERVICE_DISCOVEREDING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_TX_OPENED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_UNBINDING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

.field public static final enum HB_BLE_UNBIND_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;


# instance fields
.field private mValue:I


# direct methods
.method private static synthetic $values()[Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;
    .locals 3

    const/16 v0, 0x15

    new-array v0, v0, [Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/4 v1, 0x0

    .line 3
    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECT_FAIL:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_PAIR_FAILED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_BIND_FAILED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_PAIR_ING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DEVICE_FOUND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECTING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SCANNING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_UNBIND_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECT_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_PAIRING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SERVICE_DISCOVERED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SERVICE_DISCOVEREDING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_TX_OPENED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_PAIRED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_MTU_CHANGING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_MTU_CHANGED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_BINDING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_UNBINDING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_BOND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 5
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const-string v1, "HB_BLE_CONNECT_FAIL"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECT_FAIL:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 6
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const-string v1, "HB_BLE_PAIR_FAILED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v3, v2}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_PAIR_FAILED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 7
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const-string v1, "HB_BLE_BIND_FAILED"

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_BIND_FAILED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 8
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const-string v1, "HB_BLE_PAIR_ING"

    const v2, 0x10009

    invoke-direct {v0, v1, v3, v2}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_PAIR_ING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 12
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/4 v1, 0x4

    const/16 v2, 0x100

    const-string v3, "HB_BLE_DISCONNECTED"

    invoke-direct {v0, v3, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 14
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/4 v1, 0x5

    const/16 v2, 0x101

    const-string v3, "HB_BLE_DEVICE_FOUND"

    invoke-direct {v0, v3, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DEVICE_FOUND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 15
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/4 v1, 0x6

    const/16 v2, 0x102

    const-string v3, "HB_BLE_CONNECTING"

    invoke-direct {v0, v3, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECTING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 16
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/4 v1, 0x7

    const/16 v2, 0x103

    const-string v3, "HB_BLE_DISCONNECTING"

    invoke-direct {v0, v3, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 18
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const-string v1, "HB_BLE_SCANNING"

    const/16 v2, 0x8

    const/16 v3, 0x104

    invoke-direct {v0, v1, v2, v3}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SCANNING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 20
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const-string v1, "HB_BLE_UNBIND_SUCCESS"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_UNBIND_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 23
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/16 v1, 0xa

    const/16 v2, 0x1000

    const-string v3, "HB_BLE_CONNECT_SUCCESS"

    invoke-direct {v0, v3, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECT_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 26
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/16 v1, 0xb

    const/16 v2, 0x1001

    const-string v3, "HB_BLE_PAIRING"

    invoke-direct {v0, v3, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_PAIRING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 27
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const-string v1, "HB_BLE_SERVICE_DISCOVERED"

    const/16 v2, 0xc

    const/16 v3, 0x1002

    invoke-direct {v0, v1, v2, v3}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SERVICE_DISCOVERED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 28
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/16 v1, 0xd

    const/16 v2, 0x1006

    const-string v4, "HB_BLE_SERVICE_DISCOVEREDING"

    invoke-direct {v0, v4, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SERVICE_DISCOVEREDING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 29
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const-string v1, "HB_BLE_TX_OPENED"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_TX_OPENED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 30
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/16 v1, 0xf

    const/high16 v2, 0x10000

    const-string v3, "HB_BLE_PAIRED"

    invoke-direct {v0, v3, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_PAIRED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 32
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/16 v1, 0x10

    const v2, 0x10001

    const-string v3, "HB_BLE_MTU_CHANGING"

    invoke-direct {v0, v3, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_MTU_CHANGING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 34
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/16 v1, 0x11

    const v2, 0x10003

    const-string v3, "HB_BLE_MTU_CHANGED"

    invoke-direct {v0, v3, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_MTU_CHANGED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 35
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/16 v1, 0x12

    const v2, 0x10005

    const-string v3, "HB_BLE_BINDING"

    invoke-direct {v0, v3, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_BINDING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 36
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/16 v1, 0x13

    const v2, 0x10007

    const-string v3, "HB_BLE_UNBINDING"

    invoke-direct {v0, v3, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_UNBINDING:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 37
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    const/16 v1, 0x14

    const/high16 v2, 0x100000

    const-string v3, "HB_BLE_BOND"

    invoke-direct {v0, v3, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_BOND:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    .line 3
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->$values()[Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    move-result-object v0

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->$VALUES:[Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 41
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 42
    iput p3, p0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->mValue:I

    return-void
.end method

.method public static hasBleConnectError(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 54
    :cond_0
    iget p0, p0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->mValue:I

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    iget v1, v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->mValue:I

    if-gt p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static hasBleConnectIng(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 60
    :cond_0
    iget p0, p0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->mValue:I

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_SERVICE_DISCOVERED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    iget v1, v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->mValue:I

    if-le p0, v1, :cond_1

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_MTU_CHANGED:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    iget v1, v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->mValue:I

    if-gt p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static isBleConnected(Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 48
    :cond_0
    iget p0, p0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->mValue:I

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->HB_BLE_CONNECT_SUCCESS:Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    iget v1, v1, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->mValue:I

    if-le p0, v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;
    .locals 1

    .line 3
    const-class v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    return-object p0
.end method

.method public static values()[Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;
    .locals 1

    .line 3
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->$VALUES:[Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    invoke-virtual {v0}, [Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/baos/watch/sdk/interfac/ble/BleStatusEnum;

    return-object v0
.end method
