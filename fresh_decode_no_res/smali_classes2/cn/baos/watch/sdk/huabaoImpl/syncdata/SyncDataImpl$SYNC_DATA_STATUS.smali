.class final enum Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;
.super Ljava/lang/Enum;
.source "SyncDataImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "SYNC_DATA_STATUS"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

.field public static final enum SYNC_DATA_END:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

.field public static final enum SYNC_DATA_START:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;


# direct methods
.method private static synthetic $values()[Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    const/4 v1, 0x0

    .line 74
    sget-object v2, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;->SYNC_DATA_START:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;->SYNC_DATA_END:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 75
    new-instance v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    const-string v1, "SYNC_DATA_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;->SYNC_DATA_START:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    new-instance v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    const-string v1, "SYNC_DATA_END"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;->SYNC_DATA_END:Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    .line 74
    invoke-static {}, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;->$values()[Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    move-result-object v0

    sput-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;->$VALUES:[Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;
    .locals 1

    .line 74
    const-class v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    return-object p0
.end method

.method public static values()[Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;
    .locals 1

    .line 74
    sget-object v0, Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;->$VALUES:[Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    invoke-virtual {v0}, [Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/baos/watch/sdk/huabaoImpl/syncdata/SyncDataImpl$SYNC_DATA_STATUS;

    return-object v0
.end method
