.class synthetic Lcn/yoozworld/watch/ui/SsManager$3;
.super Ljava/lang/Object;
.source "SsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/yoozworld/watch/ui/SsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$baos$watch$sdk$interfac$ble$BtStatusEnum:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 242
    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->values()[Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/yoozworld/watch/ui/SsManager$3;->$SwitchMap$cn$baos$watch$sdk$interfac$ble$BtStatusEnum:[I

    :try_start_9
    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_PAIRING:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcn/yoozworld/watch/ui/SsManager$3;->$SwitchMap$cn$baos$watch$sdk$interfac$ble$BtStatusEnum:[I

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_PAIR_FAILED:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    :try_start_1d
    sget-object v0, Lcn/yoozworld/watch/ui/SsManager$3;->$SwitchMap$cn$baos$watch$sdk$interfac$ble$BtStatusEnum:[I

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_DIALOG:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_28} :catch_28

    :catch_28
    :try_start_28
    sget-object v0, Lcn/yoozworld/watch/ui/SsManager$3;->$SwitchMap$cn$baos$watch$sdk$interfac$ble$BtStatusEnum:[I

    sget-object v1, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->HB_BT_PAIRED:Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/interfac/ble/BtStatusEnum;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_33} :catch_33

    :catch_33
    return-void
.end method
