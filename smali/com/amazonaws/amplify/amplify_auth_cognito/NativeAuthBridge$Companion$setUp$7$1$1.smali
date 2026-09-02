.class final Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge$Companion$setUp$7$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NativeAuthPluginBindingsPigeon.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge$Companion;->setUp(Lio/flutter/plugin/common/BinaryMessenger;Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/Result<",
        "+",
        "Lkotlin/Unit;",
        ">;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000c\u0010\u0002\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u0003H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "result",
        "Lkotlin/Result;",
        "invoke",
        "(Ljava/lang/Object;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $reply:Lio/flutter/plugin/common/BasicMessageChannel$Reply;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/flutter/plugin/common/BasicMessageChannel$Reply<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/flutter/plugin/common/BasicMessageChannel$Reply<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge$Companion$setUp$7$1$1;->$reply:Lio/flutter/plugin/common/BasicMessageChannel$Reply;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 376
    check-cast p1, Lkotlin/Result;

    invoke-virtual {p1}, Lkotlin/Result;->unbox-impl()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge$Companion$setUp$7$1$1;->invoke(Ljava/lang/Object;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;)V
    .registers 3

    .line 377
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 379
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge$Companion$setUp$7$1$1;->$reply:Lio/flutter/plugin/common/BasicMessageChannel$Reply;

    invoke-static {p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPluginBindingsPigeonKt;->access$wrapError(Ljava/lang/Throwable;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    goto :goto_1a

    .line 381
    :cond_10
    iget-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge$Companion$setUp$7$1$1;->$reply:Lio/flutter/plugin/common/BasicMessageChannel$Reply;

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPluginBindingsPigeonKt;->access$wrapResult(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    :goto_1a
    return-void
.end method
