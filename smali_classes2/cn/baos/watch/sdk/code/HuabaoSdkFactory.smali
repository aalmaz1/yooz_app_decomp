.class public Lcn/baos/watch/sdk/code/HuabaoSdkFactory;
.super Ljava/lang/Object;
.source "HuabaoSdkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMessage(Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;)Lcn/baos/watch/sdk/code/bleSdkWrapper/BleSdkWrapper;
    .locals 1

    .line 22
    sget-object v0, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$1;->$SwitchMap$cn$baos$watch$sdk$code$HuabaoSdkFactory$SdkType:[I

    invoke-virtual {p0}, Lcn/baos/watch/sdk/code/HuabaoSdkFactory$SdkType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 31
    new-instance p0, Lcn/baos/watch/sdk/code/HuabaoImpl;

    invoke-direct {p0}, Lcn/baos/watch/sdk/code/HuabaoImpl;-><init>()V

    goto :goto_0

    .line 28
    :cond_0
    new-instance p0, Lcn/baos/watch/sdk/code/HuabaoImpl;

    invoke-direct {p0}, Lcn/baos/watch/sdk/code/HuabaoImpl;-><init>()V

    goto :goto_0

    .line 24
    :cond_1
    new-instance p0, Lcn/baos/watch/sdk/code/HuabaoImpl;

    invoke-direct {p0}, Lcn/baos/watch/sdk/code/HuabaoImpl;-><init>()V

    :goto_0
    return-object p0
.end method
