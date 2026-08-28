.class final Lcom/amazonaws/amplify/amplify_auth_cognito/AtomicResult$Companion;
.super Ljava/lang/Object;
.source "AtomicResult.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/amplify/amplify_auth_cognito/AtomicResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0008\u0082\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/amazonaws/amplify/amplify_auth_cognito/AtomicResult$Companion;",
        "",
        "()V",
        "scope",
        "Lkotlinx/coroutines/CoroutineScope;",
        "getScope",
        "()Lkotlinx/coroutines/CoroutineScope;",
        "amplify_auth_cognito_release"
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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AtomicResult$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getScope()Lkotlinx/coroutines/CoroutineScope;
    .registers 2

    .line 24
    invoke-static {}, Lcom/amazonaws/amplify/amplify_auth_cognito/AtomicResult;->access$getScope$cp()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method
