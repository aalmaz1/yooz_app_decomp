.class public Lcn/yoozworld/watch/utils/track/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final SERVICE_ID:J = 0xd4f7dL

.field public static TERMINAL_NAME:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-object v0, Lcn/baos/watch/sdk/constant/Constant;->AMAP_TERMINAL_NAME:Ljava/lang/String;

    sput-object v0, Lcn/yoozworld/watch/utils/track/Constants;->TERMINAL_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
