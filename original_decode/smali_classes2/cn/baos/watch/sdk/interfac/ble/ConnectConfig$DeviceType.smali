.class public final enum Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;
.super Ljava/lang/Enum;
.source "ConnectConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DeviceType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

.field public static final enum DeviceTypeAny:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

.field public static final enum DeviceTypeBT:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

.field public static final enum DeviceTypeBle:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;


# direct methods
.method private static synthetic $values()[Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    const/4 v1, 0x0

    .line 6
    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;->DeviceTypeBT:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;->DeviceTypeBle:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;->DeviceTypeAny:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 6
    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    const-string v1, "DeviceTypeBT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;->DeviceTypeBT:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    const-string v1, "DeviceTypeBle"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;->DeviceTypeBle:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    new-instance v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    const-string v1, "DeviceTypeAny"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;->DeviceTypeAny:Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    invoke-static {}, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;->$values()[Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    move-result-object v0

    sput-object v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;->$VALUES:[Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;
    .locals 1

    .line 6
    const-class v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    return-object p0
.end method

.method public static values()[Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;
    .locals 1

    .line 6
    sget-object v0, Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;->$VALUES:[Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    invoke-virtual {v0}, [Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/baos/watch/sdk/interfac/ble/ConnectConfig$DeviceType;

    return-object v0
.end method
