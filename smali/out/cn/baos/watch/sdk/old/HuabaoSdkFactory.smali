.class public Lcn/baos/watch/sdk/old/HuabaoSdkFactory;
.super Ljava/lang/Object;
.source "HuabaoSdkFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/old/HuabaoSdkFactory$SdkType;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMessage(Lcn/baos/watch/sdk/old/HuabaoSdkFactory$SdkType;)Lcn/baos/watch/sdk/old/bleSdkWrapper/BleSdkWrapper;
    .registers 2

    .line 22
    sget-object v0, Lcn/baos/watch/sdk/old/HuabaoSdkFactory$1;->$SwitchMap$cn$baos$watch$sdk$old$HuabaoSdkFactory$SdkType:[I

    invoke-virtual {p0}, Lcn/baos/watch/sdk/old/HuabaoSdkFactory$SdkType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p0, v0, :cond_14

    .line 31
    new-instance p0, Lcn/baos/watch/sdk/old/HuabaoImpl;

    invoke-direct {p0}, Lcn/baos/watch/sdk/old/HuabaoImpl;-><init>()V

    goto :goto_1f

    .line 28
    :cond_14
    new-instance p0, Lcn/baos/watch/sdk/old/HuabaoImpl;

    invoke-direct {p0}, Lcn/baos/watch/sdk/old/HuabaoImpl;-><init>()V

    goto :goto_1f

    .line 24
    :cond_1a
    new-instance p0, Lcn/baos/watch/sdk/old/HuabaoImpl;

    invoke-direct {p0}, Lcn/baos/watch/sdk/old/HuabaoImpl;-><init>()V

    :goto_1f
    return-object p0
.end method
