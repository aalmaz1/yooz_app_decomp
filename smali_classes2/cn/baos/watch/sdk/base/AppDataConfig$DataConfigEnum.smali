.class final enum Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;
.super Ljava/lang/Enum;
.source "AppDataConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/base/AppDataConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "DataConfigEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

.field public static final enum KEY_CONNECT_CONFIG:Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;


# direct methods
.method private static synthetic $values()[Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    const/4 v1, 0x0

    .line 85
    sget-object v2, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;->KEY_CONNECT_CONFIG:Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 85
    new-instance v0, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    const-string v1, "KEY_CONNECT_CONFIG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;->KEY_CONNECT_CONFIG:Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    invoke-static {}, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;->$values()[Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    move-result-object v0

    sput-object v0, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;->$VALUES:[Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;
    .locals 1

    .line 85
    const-class v0, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    return-object p0
.end method

.method public static values()[Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;
    .locals 1

    .line 85
    sget-object v0, Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;->$VALUES:[Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    invoke-virtual {v0}, [Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/baos/watch/sdk/base/AppDataConfig$DataConfigEnum;

    return-object v0
.end method
