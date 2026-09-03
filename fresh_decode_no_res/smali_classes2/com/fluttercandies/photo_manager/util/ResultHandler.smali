.class public final Lcom/fluttercandies/photo_manager/util/ResultHandler;
.super Ljava/lang/Object;
.source "ResultHandler.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fluttercandies/photo_manager/util/ResultHandler$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u0004\u0018\u0000 \u00182\u00020\u0001:\u0001\u0018B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u0006\u0010\t\u001a\u00020\nJ\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0011\u001a\u00020\u00102\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u0001J&\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u00152\n\u0008\u0002\u0010\u0016\u001a\u0004\u0018\u00010\u00152\n\u0008\u0002\u0010\u0017\u001a\u0004\u0018\u00010\u0001R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/fluttercandies/photo_manager/util/ResultHandler;",
        "",
        "result",
        "Lio/flutter/plugin/common/MethodChannel$Result;",
        "call",
        "Lio/flutter/plugin/common/MethodCall;",
        "(Lio/flutter/plugin/common/MethodChannel$Result;Lio/flutter/plugin/common/MethodCall;)V",
        "getCall",
        "()Lio/flutter/plugin/common/MethodCall;",
        "isReplied",
        "",
        "getResult",
        "()Lio/flutter/plugin/common/MethodChannel$Result;",
        "setResult",
        "(Lio/flutter/plugin/common/MethodChannel$Result;)V",
        "notImplemented",
        "",
        "reply",
        "any",
        "replyError",
        "code",
        "",
        "message",
        "obj",
        "Companion",
        "photo_manager_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final Companion:Lcom/fluttercandies/photo_manager/util/ResultHandler$Companion;

.field public static final handler:Landroid/os/Handler;


# instance fields
.field private final call:Lio/flutter/plugin/common/MethodCall;

.field private isReplied:Z

.field private result:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method public static synthetic $r8$lambda$-viJAA1ICfp9aUtuK5fWz1HD-G0(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->reply$lambda$0(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$QQtvmi9KxpvS-iy2whtCnpo9eaY(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 0

    invoke-static {p0}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->notImplemented$lambda$2(Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eAqeP9NPKjNS4wgyUlNKQ4U64nk(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->replyError$lambda$1(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/fluttercandies/photo_manager/util/ResultHandler$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/fluttercandies/photo_manager/util/ResultHandler$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->Companion:Lcom/fluttercandies/photo_manager/util/ResultHandler$Companion;

    .line 15
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->handler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugin/common/MethodChannel$Result;Lio/flutter/plugin/common/MethodCall;)V
    .locals 1

    const-string v0, "result"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "call"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    iput-object p2, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->call:Lio/flutter/plugin/common/MethodCall;

    .line 10
    sget-object p1, Lcom/fluttercandies/photo_manager/util/ResultHandler;->handler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    return-void
.end method

.method private static final notImplemented$lambda$2(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    const-string v0, "$result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    invoke-interface {p0}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    return-void
.end method

.method private static final reply$lambda$0(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    :try_start_0
    invoke-interface {p0, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static synthetic replyError$default(Lcom/fluttercandies/photo_manager/util/ResultHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ILjava/lang/Object;)V
    .locals 1

    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x0

    if-eqz p5, :cond_0

    move-object p2, v0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    move-object p3, v0

    .line 35
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/util/ResultHandler;->replyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private static final replyError$lambda$1(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const-string v0, "$result"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-interface {p0, p1, p2, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getCall()Lio/flutter/plugin/common/MethodCall;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->call:Lio/flutter/plugin/common/MethodCall;

    return-object v0
.end method

.method public final getResult()Lio/flutter/plugin/common/MethodChannel$Result;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    return-object v0
.end method

.method public final isReplied()Z
    .locals 1

    .line 58
    iget-boolean v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->isReplied:Z

    return v0
.end method

.method public final notImplemented()V
    .locals 3

    .line 47
    iget-boolean v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->isReplied:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 50
    iput-boolean v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->isReplied:Z

    .line 51
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 52
    sget-object v1, Lcom/fluttercandies/photo_manager/util/ResultHandler;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/fluttercandies/photo_manager/util/ResultHandler$$ExternalSyntheticLambda1;

    invoke-direct {v2, v0}, Lcom/fluttercandies/photo_manager/util/ResultHandler$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final reply(Ljava/lang/Object;)V
    .locals 3

    .line 21
    iget-boolean v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->isReplied:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 24
    iput-boolean v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->isReplied:Z

    .line 25
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 26
    sget-object v1, Lcom/fluttercandies/photo_manager/util/ResultHandler;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/fluttercandies/photo_manager/util/ResultHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0, p1}, Lcom/fluttercandies/photo_manager/util/ResultHandler$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final replyError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    const-string v0, "code"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-boolean v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->isReplied:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->isReplied:Z

    .line 40
    iget-object v0, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    .line 41
    sget-object v1, Lcom/fluttercandies/photo_manager/util/ResultHandler;->handler:Landroid/os/Handler;

    new-instance v2, Lcom/fluttercandies/photo_manager/util/ResultHandler$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0, p1, p2, p3}, Lcom/fluttercandies/photo_manager/util/ResultHandler$$ExternalSyntheticLambda2;-><init>(Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setResult(Lio/flutter/plugin/common/MethodChannel$Result;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/fluttercandies/photo_manager/util/ResultHandler;->result:Lio/flutter/plugin/common/MethodChannel$Result;

    return-void
.end method
