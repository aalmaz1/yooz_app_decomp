.class public final enum Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;
.super Ljava/lang/Enum;
.source "HbBleConnectStatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BleConnectEvent"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

.field public static final enum CONNECT_STATE_CHANGE:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

.field public static final enum DATA_ARRIVED:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

.field public static final enum MTU_CHANGE_RESULT:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

.field public static final enum SERVICE_DISCOVERED:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

.field public static final enum TX_WRITABLE:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

.field public static final enum WRITE_RESULT:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;


# direct methods
.method private static synthetic $values()[Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;
    .registers 3

    const/4 v0, 0x6

    new-array v0, v0, [Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    const/4 v1, 0x0

    .line 113
    sget-object v2, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->DATA_ARRIVED:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->WRITE_RESULT:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->MTU_CHANGE_RESULT:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->SERVICE_DISCOVERED:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->TX_WRITABLE:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->CONNECT_STATE_CHANGE:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 114
    new-instance v0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    const-string v1, "DATA_ARRIVED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->DATA_ARRIVED:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    new-instance v0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    const-string v1, "WRITE_RESULT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->WRITE_RESULT:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    new-instance v0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    const-string v1, "MTU_CHANGE_RESULT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->MTU_CHANGE_RESULT:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    new-instance v0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    const-string v1, "SERVICE_DISCOVERED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->SERVICE_DISCOVERED:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    new-instance v0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    const-string v1, "TX_WRITABLE"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->TX_WRITABLE:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    new-instance v0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    const-string v1, "CONNECT_STATE_CHANGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->CONNECT_STATE_CHANGE:Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    .line 113
    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->$values()[Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    move-result-object v0

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->$VALUES:[Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 113
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;
    .registers 2

    .line 113
    const-class v0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    return-object p0
.end method

.method public static values()[Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;
    .registers 1

    .line 113
    sget-object v0, Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->$VALUES:[Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    invoke-virtual {v0}, [Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/baos/watch/sdk/bluetooth/HbBleConnectStatusCallback$BleConnectEvent;

    return-object v0
.end method
