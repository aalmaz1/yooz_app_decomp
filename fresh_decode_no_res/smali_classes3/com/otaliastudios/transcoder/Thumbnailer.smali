.class public final Lcom/otaliastudios/transcoder/Thumbnailer;
.super Ljava/lang/Object;
.source "Thumbnailer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/Thumbnailer$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \r2\u00020\u0001:\u0001\rB\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0014\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0006\u001a\u00020\u0007J%\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u00042\u0017\u0010\u0008\u001a\u0013\u0012\u0004\u0012\u00020\n\u0012\u0004\u0012\u00020\u000b0\t\u00a2\u0006\u0002\u0008\u000c\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/otaliastudios/transcoder/Thumbnailer;",
        "",
        "()V",
        "thumbnails",
        "Ljava/util/concurrent/Future;",
        "Ljava/lang/Void;",
        "options",
        "Lcom/otaliastudios/transcoder/ThumbnailerOptions;",
        "builder",
        "Lkotlin/Function1;",
        "Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;",
        "",
        "Lkotlin/ExtensionFunctionType;",
        "Companion",
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
.field public static final Companion:Lcom/otaliastudios/transcoder/Thumbnailer$Companion;


# direct methods
.method public static synthetic $r8$lambda$P7RBsNTHmYGn9jiLQYnljGSPm7s(Lcom/otaliastudios/transcoder/ThumbnailerOptions;)Ljava/lang/Void;
    .locals 0

    invoke-static {p0}, Lcom/otaliastudios/transcoder/Thumbnailer;->thumbnails$lambda-0(Lcom/otaliastudios/transcoder/ThumbnailerOptions;)Ljava/lang/Void;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/otaliastudios/transcoder/Thumbnailer$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/Thumbnailer$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/otaliastudios/transcoder/Thumbnailer;->Companion:Lcom/otaliastudios/transcoder/Thumbnailer$Companion;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/otaliastudios/transcoder/Thumbnailer;-><init>()V

    return-void
.end method

.method private static final thumbnails$lambda-0(Lcom/otaliastudios/transcoder/ThumbnailerOptions;)Ljava/lang/Void;
    .locals 1

    const-string v0, "$options"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine;->Companion:Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion;

    invoke-virtual {v0, p0}, Lcom/otaliastudios/transcoder/internal/thumbnails/ThumbnailsEngine$Companion;->thumbnails(Lcom/otaliastudios/transcoder/ThumbnailerOptions;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final thumbnails(Lcom/otaliastudios/transcoder/ThumbnailerOptions;)Ljava/util/concurrent/Future;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/otaliastudios/transcoder/ThumbnailerOptions;",
            ")",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "options"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcom/otaliastudios/transcoder/internal/utils/ThreadPool;->getExecutor()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v0

    new-instance v1, Lcom/otaliastudios/transcoder/Thumbnailer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/otaliastudios/transcoder/Thumbnailer$$ExternalSyntheticLambda0;-><init>(Lcom/otaliastudios/transcoder/ThumbnailerOptions;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object p1

    const-string v0, "executor.submit(Callable\u2026          null\n        })"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final thumbnails(Lkotlin/jvm/functions/Function1;)Ljava/util/concurrent/Future;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    const-string v0, "builder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v0, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;-><init>()V

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/ThumbnailerOptions$Builder;->build()Lcom/otaliastudios/transcoder/ThumbnailerOptions;

    move-result-object p1

    .line 18
    invoke-virtual {p0, p1}, Lcom/otaliastudios/transcoder/Thumbnailer;->thumbnails(Lcom/otaliastudios/transcoder/ThumbnailerOptions;)Ljava/util/concurrent/Future;

    move-result-object p1

    return-object p1
.end method
