.class Lcn/baos/watch/sdk/base/AppDataConfig$3;
.super Lcom/google/gson/reflect/TypeToken;
.source "AppDataConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/base/AppDataConfig;->updateCurrentConfig(Ljava/lang/String;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/reflect/TypeToken<",
        "Ljava/util/LinkedList<",
        "Lcn/baos/watch/sdk/interfac/ble/ConnectConfig;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/base/AppDataConfig;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/base/AppDataConfig;)V
    .registers 2

    .line 237
    iput-object p1, p0, Lcn/baos/watch/sdk/base/AppDataConfig$3;->this$0:Lcn/baos/watch/sdk/base/AppDataConfig;

    invoke-direct {p0}, Lcom/google/gson/reflect/TypeToken;-><init>()V

    return-void
.end method
