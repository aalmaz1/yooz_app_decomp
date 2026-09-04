.class public final enum Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;
.super Ljava/lang/Enum;
.source "SyncDataImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SYNC_RIGHT_NOW_DATA_CONTROL"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

.field public static final enum CLOSE:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

.field public static final enum OPEN:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;


# direct methods
.method private static synthetic $values()[Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    const/4 v1, 0x0

    .line 78
    sget-object v2, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->OPEN:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->CLOSE:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 79
    new-instance v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    const-string v1, "OPEN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->OPEN:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    new-instance v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    const-string v1, "CLOSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->CLOSE:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    .line 78
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->$values()[Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    move-result-object v0

    sput-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->$VALUES:[Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 78
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;
    .locals 1

    .line 78
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    return-object p0
.end method

.method public static values()[Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;
    .locals 1

    .line 78
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->$VALUES:[Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    invoke-virtual {v0}, [Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_RIGHT_NOW_DATA_CONTROL;

    return-object v0
.end method
