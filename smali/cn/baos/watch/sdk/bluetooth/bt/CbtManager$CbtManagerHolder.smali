.class Lcn/baos/watch/sdk/bluetooth/bt/CbtManager$CbtManagerHolder;
.super Ljava/lang/Object;
.source "CbtManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CbtManagerHolder"
.end annotation


# static fields
.field private static final CBT_MANAGER:Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;


# direct methods
.method static bridge synthetic -$$Nest$sfgetCBT_MANAGER()Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;
    .registers 1

    sget-object v0, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager$CbtManagerHolder;->CBT_MANAGER:Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 70
    new-instance v0, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;

    invoke-direct {v0}, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;-><init>()V

    sput-object v0, Lcn/baos/watch/sdk/bluetooth/bt/CbtManager$CbtManagerHolder;->CBT_MANAGER:Lcn/baos/watch/sdk/bluetooth/bt/CbtManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
