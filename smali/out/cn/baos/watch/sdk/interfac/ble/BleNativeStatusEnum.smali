.class public final enum Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;
.super Ljava/lang/Enum;
.source "BleNativeStatusEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

.field public static final enum BLE_NETWORK_DOWN:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

.field public static final enum HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

.field public static final enum HB_BLE_WRITABLE:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;


# instance fields
.field public mValue:I


# direct methods
.method private static synthetic $values()[Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;
    .registers 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    const/4 v1, 0x0

    .line 3
    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->HB_BLE_WRITABLE:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->BLE_NETWORK_DOWN:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 5
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    const-string v1, "HB_BLE_DISCONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->HB_BLE_DISCONNECTED:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    .line 6
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    const/4 v1, 0x1

    const/16 v2, 0x80

    const-string v3, "HB_BLE_WRITABLE"

    invoke-direct {v0, v3, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->HB_BLE_WRITABLE:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    .line 7
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    const/4 v1, 0x2

    const/16 v2, 0x8

    const-string v3, "BLE_NETWORK_DOWN"

    invoke-direct {v0, v3, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->BLE_NETWORK_DOWN:Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    .line 3
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->$values()[Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    move-result-object v0

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->$VALUES:[Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 12
    iput p3, p0, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->mValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;
    .registers 2

    .line 3
    const-class v0, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    return-object p0
.end method

.method public static values()[Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;
    .registers 1

    .line 3
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->$VALUES:[Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    invoke-virtual {v0}, [Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/baos/watch/sdk/interfac/ble/BleNativeStatusEnum;

    return-object v0
.end method
