.class public final Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$NOBROWSER;
.super Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException;
.source "HostedUiException.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "NOBROWSER"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$NOBROWSER;",
        "Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException;",
        "()V",
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
    .locals 1

    const-string v0, "No browser available for launching URL intent"

    .line 19
    invoke-direct {p0, v0}, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException;-><init>(Ljava/lang/String;)V

    return-void
.end method
