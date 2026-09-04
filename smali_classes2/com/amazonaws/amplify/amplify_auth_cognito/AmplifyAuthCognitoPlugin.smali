.class public Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;
.super Ljava/lang/Object;
.source "AmplifyAuthCognitoPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/embedding/engine/plugins/activity/ActivityAware;
.implements Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;
.implements Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;
.implements Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u009e\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010%\n\u0002\u0010\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0006\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0016\u0018\u0000 S2\u00020\u00012\u00020\u00022\u00020\u00032\u00020\u00042\u00020\u0005:\u0001SB\u0005\u00a2\u0006\u0002\u0010\u0006J\u0008\u0010*\u001a\u00020(H\u0002J\"\u0010+\u001a\u00020(2\u0018\u0010,\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020(0&\u0012\u0004\u0012\u00020(0%H\u0016J2\u0010-\u001a\u00020(2\u0006\u0010.\u001a\u00020\u00122\u0006\u0010/\u001a\u00020\u00122\u0018\u0010,\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020(0&\u0012\u0004\u0012\u00020(0%H\u0016J4\u00100\u001a\u00020(2\u0006\u0010.\u001a\u00020\u00122\u0006\u0010/\u001a\u00020\u00122\u001a\u0010,\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u0001010&\u0012\u0004\u0012\u00020(0%H\u0016J\u0008\u00102\u001a\u00020\u0012H\u0016J\u0008\u00103\u001a\u000204H\u0016J6\u00105\u001a\u00020(2\u0008\u00106\u001a\u0004\u0018\u00010\u00122\u0008\u00107\u001a\u0004\u0018\u00010\u00122\u0018\u0010,\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u0002080&\u0012\u0004\u0012\u00020(0%H\u0016J\u0014\u00109\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\'H\u0016J\u001c\u0010:\u001a\u00020;2\u0012\u0010<\u001a\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\'H\u0002J\u0008\u0010=\u001a\u00020;H\u0002J\u001a\u0010>\u001a\u00020(2\u0006\u0010?\u001a\u00020\u00122\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0016J\"\u0010@\u001a\u00020;2\u0006\u0010A\u001a\u00020B2\u0006\u0010C\u001a\u00020B2\u0008\u0010D\u001a\u0004\u0018\u00010EH\u0016J\u0010\u0010F\u001a\u00020(2\u0006\u0010G\u001a\u00020\u0008H\u0016J\u0010\u0010H\u001a\u00020(2\u0006\u0010G\u001a\u00020IH\u0016J\u0008\u0010J\u001a\u00020(H\u0016J\u0008\u0010K\u001a\u00020(H\u0016J\u0010\u0010L\u001a\u00020(2\u0006\u0010G\u001a\u00020IH\u0016J\u0010\u0010M\u001a\u00020;2\u0006\u0010D\u001a\u00020EH\u0016J\u0010\u0010N\u001a\u00020(2\u0006\u0010G\u001a\u00020\u0008H\u0016JP\u0010O\u001a\u00020(2\u0006\u0010?\u001a\u00020\u00122\u0006\u0010P\u001a\u00020\u00122\u0006\u0010Q\u001a\u00020;2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122$\u0010,\u001a \u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\u00170&\u0012\u0004\u0012\u00020(0%H\u0016JD\u0010R\u001a\u00020(2\u0006\u0010?\u001a\u00020\u00122\u0006\u0010P\u001a\u00020\u00122\u0006\u0010Q\u001a\u00020;2\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0018\u0010,\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020(0&\u0012\u0004\u0012\u00020(0%H\u0016R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u000b\u001a\u00020\u000c8BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\r\u0010\u000eR\u001d\u0010\u0011\u001a\u0004\u0018\u00010\u00128BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u0010\u001a\u0004\u0008\u0013\u0010\u0014R\u001c\u0010\u0016\u001a\u0010\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u0012\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001b\u0010\u0018\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001c\u0010\u0010\u001a\u0004\u0008\u001a\u0010\u001bR\u001b\u0010\u001d\u001a\u00020\u00198BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u0010\u001a\u0004\u0008\u001e\u0010\u001bR\u0010\u0010 \u001a\u0004\u0018\u00010!X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\"\u001a\u0004\u0018\u00010#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R.\u0010$\u001a\"\u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0012\u0012\u0004\u0012\u00020\u00120\'0&\u0012\u0004\u0012\u00020(\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\"\u0010)\u001a\u0016\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020(0&\u0012\u0004\u0012\u00020(\u0018\u00010%X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006T"
    }
    d2 = {
        "Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityAware;",
        "Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;",
        "Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;",
        "Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge;",
        "()V",
        "activityBinding",
        "Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;",
        "applicationContext",
        "Landroid/content/Context;",
        "asfDeviceSecretsStore",
        "Landroid/content/SharedPreferences;",
        "getAsfDeviceSecretsStore",
        "()Landroid/content/SharedPreferences;",
        "asfDeviceSecretsStore$delegate",
        "Lkotlin/Lazy;",
        "browserPackageName",
        "",
        "getBrowserPackageName",
        "()Ljava/lang/String;",
        "browserPackageName$delegate",
        "initialParameters",
        "",
        "legacyIdentityStore",
        "Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;",
        "getLegacyIdentityStore",
        "()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;",
        "legacyIdentityStore$delegate",
        "legacyUserPoolStore",
        "getLegacyUserPoolStore",
        "legacyUserPoolStore$delegate",
        "mainActivity",
        "Landroid/app/Activity;",
        "nativePlugin",
        "Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin;",
        "signInResult",
        "Lkotlin/Function1;",
        "Lkotlin/Result;",
        "",
        "",
        "signOutResult",
        "cancelCurrentOperation",
        "clearLegacyCredentials",
        "callback",
        "deleteLegacyDeviceSecrets",
        "username",
        "userPoolId",
        "fetchLegacyDeviceSecrets",
        "Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;",
        "getBundleId",
        "getContextData",
        "Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;",
        "getLegacyCredentials",
        "identityPoolId",
        "appClientId",
        "Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;",
        "getValidationData",
        "handleSignInResult",
        "",
        "queryParameters",
        "handleSignOutResult",
        "launchUrl",
        "url",
        "onActivityResult",
        "requestCode",
        "",
        "resultCode",
        "intent",
        "Landroid/content/Intent;",
        "onAttachedToActivity",
        "binding",
        "onAttachedToEngine",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromActivity",
        "onDetachedFromActivityForConfigChanges",
        "onDetachedFromEngine",
        "onNewIntent",
        "onReattachedToActivityForConfigChanges",
        "signInWithUrl",
        "callbackUrlScheme",
        "preferPrivateSession",
        "signOutWithUrl",
        "Companion",
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
.field public static final CUSTOM_TAB_CANCEL_EXTRA:Ljava/lang/String; = "com.amazonaws.amplify.auth.hosted_ui.cancel"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CUSTOM_TAB_REQUEST_CODE:I = 0x22b8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin$Companion;

.field public static final TAG:Ljava/lang/String; = "AmplifyAuthCognitoPlugin"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field private activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

.field private applicationContext:Landroid/content/Context;

.field private final asfDeviceSecretsStore$delegate:Lkotlin/Lazy;

.field private final browserPackageName$delegate:Lkotlin/Lazy;

.field private initialParameters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final legacyIdentityStore$delegate:Lkotlin/Lazy;

.field private final legacyUserPoolStore$delegate:Lkotlin/Lazy;

.field private mainActivity:Landroid/app/Activity;

.field private nativePlugin:Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin;

.field private signInResult:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private signOutResult:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin$legacyUserPoolStore$2;

    invoke-direct {v0, p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin$legacyUserPoolStore$2;-><init>(Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->legacyUserPoolStore$delegate:Lkotlin/Lazy;

    .line 100
    new-instance v0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin$legacyIdentityStore$2;

    invoke-direct {v0, p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin$legacyIdentityStore$2;-><init>(Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->legacyIdentityStore$delegate:Lkotlin/Lazy;

    .line 110
    new-instance v0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin$asfDeviceSecretsStore$2;

    invoke-direct {v0, p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin$asfDeviceSecretsStore$2;-><init>(Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->asfDeviceSecretsStore$delegate:Lkotlin/Lazy;

    .line 365
    new-instance v0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin$browserPackageName$2;

    invoke-direct {v0, p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin$browserPackageName$2;-><init>(Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;)V

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->browserPackageName$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getApplicationContext$p(Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;)Landroid/content/Context;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->applicationContext:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic access$getMainActivity$p(Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;)Landroid/app/Activity;
    .locals 0

    .line 26
    iget-object p0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->mainActivity:Landroid/app/Activity;

    return-object p0
.end method

.method private final cancelCurrentOperation()V
    .locals 4

    .line 582
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->signInResult:Lkotlin/jvm/functions/Function1;

    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->signOutResult:Lkotlin/jvm/functions/Function1;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[cancelCurrentOperation] Canceling with state: signInResult="

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", signOutResult="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmplifyAuthCognitoPlugin"

    invoke-static {v1, v0}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->signInResult:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_1

    .line 584
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$CANCELLED;

    invoke-direct {v1}, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$CANCELLED;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 585
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->signOutResult:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    if-eqz v0, :cond_1

    .line 586
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    new-instance v1, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$CANCELLED;

    invoke-direct {v1}, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$CANCELLED;-><init>()V

    check-cast v1, Ljava/lang/Throwable;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 588
    iput-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->signInResult:Lkotlin/jvm/functions/Function1;

    .line 589
    iput-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->signOutResult:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method private final getAsfDeviceSecretsStore()Landroid/content/SharedPreferences;
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->asfDeviceSecretsStore$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "getValue(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private final getBrowserPackageName()Ljava/lang/String;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->browserPackageName$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private final getLegacyIdentityStore()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;
    .locals 1

    .line 100
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->legacyIdentityStore$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;

    return-object v0
.end method

.method private final getLegacyUserPoolStore()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->legacyUserPoolStore$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;

    return-object v0
.end method

.method private final handleSignInResult(Ljava/util/Map;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 343
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->signInResult:Lkotlin/jvm/functions/Function1;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSignInResult: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (signInResult="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmplifyAuthCognitoPlugin"

    invoke-static {v1, v0}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->signInResult:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x0

    .line 345
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->signInResult:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    return p1
.end method

.method private final handleSignOutResult()Z
    .locals 3

    .line 353
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->signOutResult:Lkotlin/jvm/functions/Function1;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleSignOutResult (signOutResult="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmplifyAuthCognitoPlugin"

    invoke-static {v1, v0}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->signOutResult:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 v0, 0x0

    .line 355
    iput-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->signOutResult:Lkotlin/jvm/functions/Function1;

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public clearLegacyCredentials(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 334
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->getLegacyUserPoolStore()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->clear()V

    .line 335
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->getLegacyIdentityStore()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->clear()V

    .line 336
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object v0

    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public deleteLegacyDeviceSecrets(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userPoolId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 321
    new-instance v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;

    .line 322
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CognitoIdentityProviderDeviceCache."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "."

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 321
    invoke-direct {v0, v1, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->clear()V

    .line 326
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->getAsfDeviceSecretsStore()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 327
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public fetchLegacyDeviceSecrets(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "username"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userPoolId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 292
    new-instance v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 294
    new-instance v1, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;

    .line 295
    iget-object v2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 296
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "CognitoIdentityProviderDeviceCache."

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v3, "."

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 294
    invoke-direct {v1, v2, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string p1, "DeviceKey"

    .line 299
    invoke-virtual {v1, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "DeviceSecret"

    .line 300
    invoke-virtual {v1, p2}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v2, "DeviceGroupKey"

    .line 301
    invoke-virtual {v1, v2}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 304
    invoke-virtual {v0, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->setDeviceKey(Ljava/lang/String;)V

    .line 305
    invoke-virtual {v0, p2}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->setDeviceSecret(Ljava/lang/String;)V

    .line 306
    invoke-virtual {v0, v1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->setDeviceGroupKey(Ljava/lang/String;)V

    .line 309
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->getAsfDeviceSecretsStore()Landroid/content/SharedPreferences;

    move-result-object p1

    const-string p2, "CognitoDeviceId"

    const/4 v1, 0x0

    invoke-interface {p1, p2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 311
    invoke-virtual {v0, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->setAsfDeviceId(Ljava/lang/String;)V

    .line 314
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsBuilder;->build()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyDeviceDetailsSecret;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getBundleId()Ljava/lang/String;
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "getPackageName(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getContextData()Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;
    .locals 11
    new-instance v10, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;
    const-string v1, "yooz_private_device"
    const-string v2, "yooz_private_id"
    const-string v3, "yooz_private_fingerprint"
    const-string v4, "YOOZ"
    const-string v5, "1.2.0"
    const-string v6, "en-US"
    const-string v7, "14"
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    move-object v8, v0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;)V
    return-object v10
.end method

.method public getLegacyCredentials(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 252
    new-instance v0, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xff

    const/4 v11, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v11}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    if-eqz p2, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->getLegacyUserPoolStore()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "CognitoIdentityProvider."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".LastAuthUser"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->getLegacyUserPoolStore()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".accessToken"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->getLegacyUserPoolStore()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".refreshToken"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 258
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->getLegacyUserPoolStore()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ".idToken"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 260
    invoke-virtual {v0, v2}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->setAccessToken(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, v4}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->setRefreshToken(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p2}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->setIdToken(Ljava/lang/String;)V

    :cond_0
    if-eqz p1, :cond_2

    .line 267
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->getLegacyIdentityStore()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".accessKey"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 268
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->getLegacyIdentityStore()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".secretKey"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 269
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->getLegacyIdentityStore()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".sessionToken"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 270
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->getLegacyIdentityStore()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".expirationDate"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 271
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->getLegacyIdentityStore()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v5, ".identityId"

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyKeyValueStore;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 273
    invoke-virtual {v0, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->setIdentityId(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v0, p2}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->setAccessKeyId(Ljava/lang/String;)V

    .line 275
    invoke-virtual {v0, v1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->setSecretAccessKey(Ljava/lang/String;)V

    .line 276
    invoke-virtual {v0, v2}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->setSessionToken(Ljava/lang/String;)V

    if-eqz v3, :cond_1

    .line 277
    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->setExpirationMsSinceEpoch(Ljava/lang/Long;)V

    .line 281
    :cond_2
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-virtual {v0}, Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreDataBuilder;->build()Lcom/amazonaws/amplify/amplify_auth_cognito/LegacyCredentialStoreData;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    invoke-interface {p3, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getValidationData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public launchUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 436
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->mainActivity:Landroid/app/Activity;

    if-eqz v0, :cond_2

    .line 439
    new-instance v0, Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    invoke-direct {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;-><init>()V

    const/4 v1, 0x2

    .line 440
    invoke-virtual {v0, v1}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->setShareState(I)Landroidx/browser/customtabs/CustomTabsIntent$Builder;

    .line 441
    invoke-virtual {v0}, Landroidx/browser/customtabs/CustomTabsIntent$Builder;->build()Landroidx/browser/customtabs/CustomTabsIntent;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p2, :cond_1

    .line 443
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->getBrowserPackageName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 444
    :cond_0
    new-instance p1, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$NOBROWSER;

    invoke-direct {p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$NOBROWSER;-><init>()V

    throw p1

    .line 445
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[launchUrl] Using browser package: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AmplifyAuthCognitoPlugin"

    invoke-static {v2, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v1, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 447
    iget-object p2, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    .line 449
    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->mainActivity:Landroid/app/Activity;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "android-app://"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    check-cast v1, Landroid/os/Parcelable;

    const-string v2, "android.intent.extra.REFERRER"

    .line 447
    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 451
    iget-object p2, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 466
    iget-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->mainActivity:Landroid/app/Activity;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p2, v0, Landroidx/browser/customtabs/CustomTabsIntent;->intent:Landroid/content/Intent;

    const/16 v0, 0x22b8

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    .line 437
    :cond_2
    new-instance p1, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$UNKNOWN;

    const-string p2, "No activity found"

    invoke-direct {p1, p2}, Lcom/amazonaws/amplify/amplify_auth_cognito/HostedUiException$UNKNOWN;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    .line 566
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onActivityResult] Got result: requestCode="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", resultCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", intent="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AmplifyAuthCognitoPlugin"

    invoke-static {p3, p2}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 p2, 0x22b8

    if-ne p1, p2, :cond_0

    .line 568
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p3, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->mainActivity:Landroid/app/Activity;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 p2, 0x10000000

    .line 569
    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string p2, "com.amazonaws.amplify.auth.hosted_ui.cancel"

    const/4 p3, 0x1

    .line 570
    invoke-virtual {p1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 572
    iget-object p2, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->applicationContext:Landroid/content/Context;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return p3

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onAttachedToActivity(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AmplifyAuthCognitoPlugin"

    const-string v1, "onAttachedToActivity"

    .line 136
    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->mainActivity:Landroid/app/Activity;

    .line 138
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 141
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "getIntent(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->onNewIntent(Landroid/content/Intent;)Z

    .line 142
    move-object v0, p0

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;

    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    .line 143
    move-object v0, p0

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AmplifyAuthCognitoPlugin"

    const-string v1, "onAttachedToEngine"

    .line 115
    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->applicationContext:Landroid/content/Context;

    .line 117
    new-instance v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin;

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object v1

    const-string v2, "getBinaryMessenger(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin;-><init>(Lio/flutter/plugin/common/BinaryMessenger;)V

    iput-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->nativePlugin:Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin;

    .line 118
    sget-object v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge;->Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge$Companion;

    .line 119
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 120
    move-object v1, p0

    check-cast v1, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge;

    .line 118
    invoke-virtual {v0, p1, v1}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge$Companion;->setUp(Lio/flutter/plugin/common/BinaryMessenger;Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge;)V

    return-void
.end method

.method public onDetachedFromActivity()V
    .locals 2

    const-string v0, "AmplifyAuthCognitoPlugin"

    const-string v1, "onDetachedFromActivity"

    .line 163
    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 165
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 167
    iput-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->mainActivity:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromActivityForConfigChanges()V
    .locals 2

    const-string v0, "AmplifyAuthCognitoPlugin"

    const-string v1, "onDetachedFromActivityForConfigChanges"

    .line 147
    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    if-eqz v0, :cond_0

    move-object v1, p0

    check-cast v1, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    if-eqz v0, :cond_1

    move-object v1, p0

    check-cast v1, Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;

    invoke-interface {v0, v1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->removeOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    :cond_1
    const/4 v0, 0x0

    .line 150
    iput-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 151
    iput-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->mainActivity:Landroid/app/Activity;

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 3

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AmplifyAuthCognitoPlugin"

    const-string v1, "onDetachedFromEngine"

    .line 125
    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 126
    iput-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->applicationContext:Landroid/content/Context;

    .line 127
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->cancelCurrentOperation()V

    .line 128
    iput-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->nativePlugin:Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin;

    .line 129
    sget-object v1, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge;->Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge$Companion;

    .line 130
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const-string v2, "getBinaryMessenger(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 129
    invoke-virtual {v1, p1, v0}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge$Companion;->setUp(Lio/flutter/plugin/common/BinaryMessenger;Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge;)V

    return-void
.end method

.method public onNewIntent(Landroid/content/Intent;)Z
    .locals 7

    const-string v0, "intent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 515
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[onNewIntent] Got intent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AmplifyAuthCognitoPlugin"

    invoke-static {v1, v0}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    const-string v0, "android.intent.category.BROWSABLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 517
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "No data associated with intent"

    .line 519
    invoke-static {v1, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    .line 522
    :cond_0
    invoke-static {p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPluginKt;->getQueryParameters(Landroid/net/Uri;)Ljava/util/Map;

    move-result-object p1

    .line 523
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->signInResult:Lkotlin/jvm/functions/Function1;

    iget-object v4, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->signOutResult:Lkotlin/jvm/functions/Function1;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "[onNewIntent] Handling intent with query parameters: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " (signInResult="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ", signOutResult="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ")"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->signInResult:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_1

    iget-object v4, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->signOutResult:Lkotlin/jvm/functions/Function1;

    if-eqz v4, :cond_1

    const-string p1, "Inconsistent state. Pending sign in and sign out."

    .line 525
    invoke-static {v1, p1}, Lio/flutter/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 528
    invoke-direct {p0, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->handleSignInResult(Ljava/util/Map;)Z

    move-result v2

    goto :goto_0

    .line 529
    :cond_2
    iget-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->signOutResult:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_3

    .line 530
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->handleSignOutResult()Z

    move-result v2

    goto :goto_0

    .line 532
    :cond_3
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_4

    .line 533
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->initialParameters:Ljava/util/Map;

    :cond_4
    :goto_0
    return v2

    :cond_5
    const-string v0, "com.amazonaws.amplify.auth.hosted_ui.cancel"

    .line 537
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "[onNewIntent] Cancelling current operation"

    .line 540
    invoke-static {v1, p1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 541
    invoke-direct {p0}, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->cancelCurrentOperation()V

    return v2

    :cond_6
    const-string p1, "[onNewIntent] Not handling intent"

    .line 544
    invoke-static {v1, p1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3
.end method

.method public onReattachedToActivityForConfigChanges(Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "AmplifyAuthCognitoPlugin"

    const-string v1, "onReattachedToActivityForConfigChanges"

    .line 155
    invoke-static {v0, v1}, Lio/flutter/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-interface {p1}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->mainActivity:Landroid/app/Activity;

    .line 157
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/AmplifyAuthCognitoPlugin;->activityBinding:Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;

    .line 158
    move-object v0, p0

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;

    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addOnNewIntentListener(Lio/flutter/plugin/common/PluginRegistry$NewIntentListener;)V

    .line 159
    move-object v0, p0

    check-cast v0, Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;

    invoke-interface {p1, v0}, Lio/flutter/embedding/engine/plugins/activity/ActivityPluginBinding;->addActivityResultListener(Lio/flutter/plugin/common/PluginRegistry$ActivityResultListener;)V

    return-void
.end method

.method public signInWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    return-void
.end method

.method public signOutWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .locals 0
    return-void
.end method
