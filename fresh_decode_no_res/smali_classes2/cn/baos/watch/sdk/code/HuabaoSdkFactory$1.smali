.class synthetic Lcn/baos/watch/sdk/code/HuabaoSdkFactory$1;
.super Ljava/lang/Object;
.source "HuabaoSdkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/code/HuabaoSdkFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$baos$watch$sdk$code$HuabaoSdkFactory$SdkType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 22
    invoke-static {}, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;->values()[Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$1;->$SwitchMap$cn$baos$watch$sdk$code$HuabaoSdkFactory$SdkType:[I

    :try_start_0
    sget-object v1, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;->SDK_HUABAO:Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :try_start_1
    sget-object v0, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$1;->$SwitchMap$cn$baos$watch$sdk$code$HuabaoSdkFactory$SdkType:[I

    sget-object v1, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;->SDK_XIAOJU:Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    return-void
.end method
