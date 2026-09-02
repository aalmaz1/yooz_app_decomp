.class public final Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$UNKNOWN;
.super Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException;
.source "HostedUiException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UNKNOWN"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0011\u0012\n\u0008\u0002\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u00a2\u0006\u0002\u0010\u0004\u00a8\u0006\u0005"
    }
    d2 = {
        "Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$UNKNOWN;",
        "Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException;",
        "message",
        "",
        "(Ljava/lang/String;)V",
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
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$UNKNOWN;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    .line 20
    invoke-direct {p0, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_5

    const/4 p1, 0x0

    .line 20
    :cond_5
    invoke-direct {p0, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$UNKNOWN;-><init>(Ljava/lang/String;)V

    return-void
.end method
