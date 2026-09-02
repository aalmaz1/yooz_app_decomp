.class synthetic Lcn/baos/watch/sdk/old/HuabaoSdkFactory$1;
.super Ljava/lang/Object;
.source "HuabaoSdkFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/old/HuabaoSdkFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$cn$baos$watch$sdk$old$HuabaoSdkFactory$SdkType:[I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 22
    invoke-static {}, Lcn/baos/watch/sdk/old/HuabaoSdkFactory$SdkType;->values()[Lcn/baos/watch/sdk/old/HuabaoSdkFactory$SdkType;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lcn/baos/watch/sdk/old/HuabaoSdkFactory$1;->$SwitchMap$cn$baos$watch$sdk$old$HuabaoSdkFactory$SdkType:[I

    :try_start_9
    sget-object v1, Lcn/baos/watch/sdk/old/HuabaoSdkFactory$SdkType;->SDK_HUABAO:Lcn/baos/watch/sdk/old/HuabaoSdkFactory$SdkType;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/old/HuabaoSdkFactory$SdkType;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_12} :catch_12

    :catch_12
    :try_start_12
    sget-object v0, Lcn/baos/watch/sdk/old/HuabaoSdkFactory$1;->$SwitchMap$cn$baos$watch$sdk$old$HuabaoSdkFactory$SdkType:[I

    sget-object v1, Lcn/baos/watch/sdk/old/HuabaoSdkFactory$SdkType;->SDK_XIAOJU:Lcn/baos/watch/sdk/old/HuabaoSdkFactory$SdkType;

    invoke-virtual {v1}, Lcn/baos/watch/sdk/old/HuabaoSdkFactory$SdkType;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_1d} :catch_1d

    :catch_1d
    return-void
.end method
