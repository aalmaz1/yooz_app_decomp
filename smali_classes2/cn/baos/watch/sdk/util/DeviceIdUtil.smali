.class public Lcn/baos/watch/sdk/util/DeviceIdUtil;
.super Ljava/lang/Object;
.source "DeviceIdUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public static byteToHex(B)Ljava/lang/String;
    .locals 1
    const-string v0, ""
    return-object v0
.end method

.method public static bytesToHex([B)Ljava/lang/String;
    .locals 1
    const-string v0, ""
    return-object v0
.end method

.method private static getAndroidId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    const-string v0, "yooz_private_id"
    return-object v0
.end method

.method public static getDeviceId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    const-string v0, "yooz_private_id"
    return-object v0
.end method

.method private static getDeviceUUID()Ljava/lang/String;
    .locals 1
    const-string v0, "yooz_private_device_uuid"
    return-object v0
.end method

.method private static getHashByString(Ljava/lang/String;)[B
    .locals 1
    const/4 v0, 0x0
    new-array v0, v0, [B
    return-object v0
.end method

.method private static getIMEI(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    const-string v0, "yooz_private_id"
    return-object v0
.end method

.method private static getSerial()Ljava/lang/String;
    .locals 1
    const-string v0, "yooz_private_id"
    return-object v0
.end method

.method private static getTelId(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    const-string v0, "yooz_private_id"
    return-object v0
.end method

.method private static getUUID()Ljava/lang/String;
    .locals 1
    const-string v0, "yooz_private_uuid"
    return-object v0
.end method

.method public static getUniqueID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    const-string v0, "yooz_private_id"
    return-object v0
.end method

.method public static hexToByte(Ljava/lang/String;)B
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public static uuid()Ljava/lang/String;
    .locals 1
    const-string v0, "yooz_private_uuid_gen"
    return-object v0
.end method
