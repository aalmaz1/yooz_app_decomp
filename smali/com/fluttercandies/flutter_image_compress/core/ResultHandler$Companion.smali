.class public final Lcom/fluttercandies/flutter_image_compress/core/ResultHandler$Companion;
.super Ljava/lang/Object;
.source "ResultHandler.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0016\u0010\u0003\u001a\u00020\u00048\u0002X\u0083\u0004\u00a2\u0006\u0008\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002R\u001c\u0010\u0006\u001a\u00020\u00078\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0008\u0010\u0002\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcom/fluttercandies/flutter_image_compress/core/ResultHandler$Companion;",
        "",
        "()V",
        "handler",
        "Landroid/os/Handler;",
        "getHandler$annotations",
        "threadPool",
        "Ljava/util/concurrent/ExecutorService;",
        "getThreadPool$annotations",
        "getThreadPool",
        "()Ljava/util/concurrent/ExecutorService;",
        "flutter_image_compress_common_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler$Companion;-><init>()V

    return-void
.end method

.method private static synthetic getHandler$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static synthetic getThreadPool$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getThreadPool()Ljava/util/concurrent/ExecutorService;
    .registers 2

    .line 15
    invoke-static {}, Lcom/fluttercandies/flutter_image_compress/core/ResultHandler;->access$getThreadPool$cp()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method
