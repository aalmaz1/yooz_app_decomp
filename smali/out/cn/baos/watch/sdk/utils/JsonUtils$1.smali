.class Lcn/baos/watch/sdk/utils/JsonUtils$1;
.super Lcom/google/gson/reflect/TypeToken;
.source "JsonUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/utils/JsonUtils;->readDeviceJson(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/ArrayList<",
        "Lcn/baos/watch/sdk/utils/DeviceBean;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
