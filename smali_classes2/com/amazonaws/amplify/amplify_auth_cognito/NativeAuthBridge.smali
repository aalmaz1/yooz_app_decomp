.class public interface abstract Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge;
.super Ljava/lang/Object;
.source "NativeAuthPluginBindingsPigeon.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\u0008f\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dJ\"\u0010\u0002\u001a\u00020\u00032\u0018\u0010\u0004\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u0004\u0012\u00020\u00030\u0005H&J2\u0010\u0007\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u0018\u0010\u0004\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u0004\u0012\u00020\u00030\u0005H&J4\u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\t2\u001a\u0010\u0004\u001a\u0016\u0012\u000c\u0012\n\u0012\u0006\u0012\u0004\u0018\u00010\u000c0\u0006\u0012\u0004\u0012\u00020\u00030\u0005H&J\u0008\u0010\r\u001a\u00020\tH&J\u0008\u0010\u000e\u001a\u00020\u000fH&J6\u0010\u0010\u001a\u00020\u00032\u0008\u0010\u0011\u001a\u0004\u0018\u00010\t2\u0008\u0010\u0012\u001a\u0004\u0018\u00010\t2\u0018\u0010\u0004\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00130\u0006\u0012\u0004\u0012\u00020\u00030\u0005H&J\u0014\u0010\u0014\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u0015H&JP\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\t2$\u0010\u0004\u001a \u0012\u0016\u0012\u0014\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00150\u0006\u0012\u0004\u0012\u00020\u00030\u0005H&JD\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u0017\u001a\u00020\t2\u0006\u0010\u0018\u001a\u00020\t2\u0006\u0010\u0019\u001a\u00020\u001a2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\t2\u0018\u0010\u0004\u001a\u0014\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u0006\u0012\u0004\u0012\u00020\u00030\u0005H&\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge;",
        "",
        "clearLegacyCredentials",
        "",
        "callback",
        "Lkotlin/Function1;",
        "Lkotlin/Result;",
        "deleteLegacyDeviceSecrets",
        "username",
        "",
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
        "",
        "signInWithUrl",
        "url",
        "callbackUrlScheme",
        "preferPrivateSession",
        "",
        "browserPackageName",
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
.field public static final Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge$Companion;->$$INSTANCE:Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge$Companion;

    sput-object v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge;->Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthBridge$Companion;

    return-void
.end method


# virtual methods
.method public abstract clearLegacyCredentials(Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract deleteLegacyDeviceSecrets(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract fetchLegacyDeviceSecrets(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract getBundleId()Ljava/lang/String;
.end method

.method public abstract getContextData()Lcom/amazonaws/amplify/amplify_auth_cognito/NativeUserContextData;
.end method

.method public abstract getLegacyCredentials(Ljava/lang/String;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
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
.end method

.method public abstract getValidationData()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract signInWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/Result<",
            "+",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract signOutWithUrl(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
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
.end method
