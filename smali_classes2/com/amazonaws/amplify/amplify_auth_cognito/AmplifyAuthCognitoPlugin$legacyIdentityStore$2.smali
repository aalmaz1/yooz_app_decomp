.class final Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin$legacyIdentityStore$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AmplifyAuthCognitoPlugin.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;",
        "invoke"
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
.field final synthetic this$0:Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;


# direct methods
.method constructor <init>(Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin$legacyIdentityStore$2;->this$0:Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;
    .locals 3

    .line 101
    new-instance v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;

    .line 102
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin$legacyIdentityStore$2;->this$0:Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;

    invoke-static {v1}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->access$getApplicationContext$p(Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v2, "com.amazonaws.android.auth"

    .line 101
    invoke-direct {v0, v1, v2}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 100
    invoke-virtual {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin$legacyIdentityStore$2;->invoke()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;

    move-result-object v0

    return-object v0
.end method
