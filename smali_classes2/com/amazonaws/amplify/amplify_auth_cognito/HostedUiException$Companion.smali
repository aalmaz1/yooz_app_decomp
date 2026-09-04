.class public final Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$Companion;
.super Ljava/lang/Object;
.source "HostedUiException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$Companion;",
        "",
        "()V",
        "fromThrowable",
        "Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException;",
        "e",
        "",
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
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final fromThrowable(Ljava/lang/Throwable;)Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException;
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    instance-of v0, p1, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException;

    if-eqz v0, :cond_0

    .line 13
    check-cast p1, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException;

    return-object p1

    .line 15
    :cond_0
    new-instance v0, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$UNKNOWN;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$UNKNOWN;-><init>(Ljava/lang/String;)V

    check-cast v0, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException;

    return-object v0
.end method
