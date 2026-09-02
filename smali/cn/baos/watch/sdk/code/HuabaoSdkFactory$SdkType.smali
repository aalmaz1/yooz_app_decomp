.class public final enum Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;
.super Ljava/lang/Enum;
.source "HuabaoSdkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/code/HuabaoSdkFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SdkType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;

.field public static final enum SDK_HUABAO:Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;

.field public static final enum SDK_XIAOJU:Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;


# direct methods
.method private static synthetic $values()[Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;

    const/4 v1, 0x0

    .line 11
    sget-object v2, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;->SDK_HUABAO:Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;->SDK_XIAOJU:Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;

    aput-object v2, v0, v1

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 12
    new-instance v0, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;

    const-string v1, "SDK_HUABAO"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;->SDK_HUABAO:Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;

    new-instance v0, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;

    const-string v1, "SDK_XIAOJU"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;->SDK_XIAOJU:Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;

    .line 11
    invoke-static {}, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;->$values()[Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;

    move-result-object v0

    sput-object v0, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;->$VALUES:[Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;
    .registers 2

    .line 11
    const-class v0, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;

    return-object p0
.end method

.method public static values()[Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;
    .registers 1

    .line 11
    sget-object v0, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;->$VALUES:[Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;

    invoke-virtual {v0}, [Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;

    return-object v0
.end method
