.class public Lcn/baos/watch/sdk/bluetooth/constant/BTConstant;
.super Ljava/lang/Object;
.source "BTConstant.java"


# static fields
.field public static final CHAR_NOTIFICATION_UUID:Ljava/util/UUID;

.field public static final CHAR_WRITE_WITHOUT_RESPONSE_NOTIFY_UUID:Ljava/util/UUID;

.field public static final COMPANY_ID:Ljava/lang/String; = "16"

.field public static final COMPANY_ID_TWO:Ljava/lang/String; = "18"

.field public static final MAX_BLE_MTU_SIZE:I = 0xf4

.field public static final SERVICE_UUID:Ljava/util/UUID;

.field public static final ST_TARGET:I = 0x2

.field public static final UUID_CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "efcdab89-6745-2301-efcd-ab8967452301"

    .line 12
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Lcn/baos/watch/sdk/bluetooth/constant/BTConstant;->SERVICE_UUID:Ljava/util/UUID;

    const-string v1, "a6ed0202-d344-460a-8075-b9e8ec90d71b"

    .line 13
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    sput-object v1, Lcn/baos/watch/sdk/bluetooth/constant/BTConstant;->CHAR_NOTIFICATION_UUID:Ljava/util/UUID;

    .line 14
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/constant/BTConstant;->CHAR_WRITE_WITHOUT_RESPONSE_NOTIFY_UUID:Ljava/util/UUID;

    const-string v0, "00002902-0000-1000-8000-00805f9b34fb"

    .line 15
    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/constant/BTConstant;->UUID_CLIENT_CHARACTERISTIC_CONFIG_DESCRIPTOR:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
