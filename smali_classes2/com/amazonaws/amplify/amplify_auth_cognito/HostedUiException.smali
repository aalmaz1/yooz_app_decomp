.class public abstract Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException;
.super Ljava/lang/Exception;
.source "HostedUiException.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$CANCELLED;,
        Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$Companion;,
        Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$NOBROWSER;,
        Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$UNKNOWN;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0008&\u0018\u0000 \u00072\u00060\u0001j\u0002`\u0002:\u0004\u0006\u0007\u0008\tB\u0011\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0002\u0010\u0005\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException;",
        "Ljava/lang/Exception;",
        "Lkotlin/Exception;",
        "message",
        "",
        "(Ljava/lang/String;)V",
        "CANCELLED",
        "Companion",
        "NOBROWSER",
        "UNKNOWN",
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


# static fields
.field public static final Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException;->Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException;-><init>(Ljava/lang/String;)V

    return-void
.end method
