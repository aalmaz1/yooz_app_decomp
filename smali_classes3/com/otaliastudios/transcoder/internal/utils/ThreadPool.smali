.class public final Lcom/otaliastudios/transcoder/internal/utils/ThreadPool;
.super Ljava/lang/Object;
.source "ThreadPool.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c0\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087\u0004\u00a2\u0006\u000e\n\u0000\u0012\u0004\u0008\u0005\u0010\u0002\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/internal/utils/ThreadPool;",
        "",
        "()V",
        "executor",
        "Ljava/util/concurrent/ThreadPoolExecutor;",
        "getExecutor$annotations",
        "getExecutor",
        "()Ljava/util/concurrent/ThreadPoolExecutor;",
        "lib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lcom/otaliastudios/transcoder/internal/utils/ThreadPool;

.field private static final executor:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/ThreadPool;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/internal/utils/ThreadPool;-><init>()V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/utils/ThreadPool;->INSTANCE:Lcom/otaliastudios/transcoder/internal/utils/ThreadPool;

    .line 17
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    .line 18
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    .line 19
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v1

    add-int/lit8 v3, v1, 0x1

    const-wide/16 v4, 0x3c

    .line 21
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 22
    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    move-object v7, v1

    check-cast v7, Ljava/util/concurrent/BlockingQueue;

    .line 23
    new-instance v1, Lcom/otaliastudios/transcoder/internal/utils/ThreadPool$executor$1;

    invoke-direct {v1}, Lcom/otaliastudios/transcoder/internal/utils/ThreadPool$executor$1;-><init>()V

    move-object v8, v1

    check-cast v8, Ljava/util/concurrent/ThreadFactory;

    move-object v1, v0

    .line 17
    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/otaliastudios/transcoder/internal/utils/ThreadPool;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;
    .locals 1

    .line 17
    sget-object v0, Lcom/otaliastudios/transcoder/internal/utils/ThreadPool;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-object v0
.end method

.method public static synthetic getExecutor$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method
