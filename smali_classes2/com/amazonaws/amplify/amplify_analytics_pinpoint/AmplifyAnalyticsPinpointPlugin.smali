.class public final Lcom/amazonaws/amplify/amplify_analytics_pinpoint/AmplifyAnalyticsPinpointPlugin;
.super Ljava/lang/Object;
.source "AmplifyAnalyticsPinpointPlugin.kt"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/amplify/amplify_analytics_pinpoint/AmplifyAnalyticsPinpointPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00122\u00020\u00012\u00020\u0002:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0003J \u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u000e\u0010\u000c\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u000b0\rH\u0016J\u0010\u0010\u000e\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016J\u0010\u0010\u0011\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0016R\u0010\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/amazonaws/amplify/amplify_analytics_pinpoint/AmplifyAnalyticsPinpointPlugin;",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin;",
        "Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider;",
        "()V",
        "context",
        "Landroid/content/Context;",
        "sharedPrefs",
        "Landroid/content/SharedPreferences;",
        "getEndpointId",
        "",
        "pinpointAppId",
        "",
        "result",
        "Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$Result;",
        "onAttachedToEngine",
        "binding",
        "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;",
        "onDetachedFromEngine",
        "Companion",
        "amplify_analytics_pinpoint_release"
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
.field public static final Companion:Lcom/amazonaws/amplify/amplify_analytics_pinpoint/AmplifyAnalyticsPinpointPlugin$Companion;

.field private static final PINPOINT_SHARED_PREFS_SUFFIX:Ljava/lang/String; = "515d6767-01b7-49e5-8273-c8d11b0f331d"

.field private static final UNIQUE_ID_KEY:Ljava/lang/String; = "UniqueId"


# instance fields
.field private context:Landroid/content/Context;

.field private sharedPrefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/AmplifyAnalyticsPinpointPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/AmplifyAnalyticsPinpointPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/AmplifyAnalyticsPinpointPlugin;->Companion:Lcom/amazonaws/amplify/amplify_analytics_pinpoint/AmplifyAnalyticsPinpointPlugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getEndpointId(Ljava/lang/String;Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$Result;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$Result<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "yooz_private_id"

    invoke-interface {p2, v0}, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/AmplifyAnalyticsPinpointPlugin;->context:Landroid/content/Context;

    .line 22
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    move-object v0, p0

    check-cast v0, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider;

    invoke-static {p1, v0}, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider;->setup(Lio/flutter/plugin/common/BinaryMessenger;Lcom/amazonaws/amplify/amplify_analytics_pinpoint/Messages$PigeonLegacyDataProvider;)V

    .line 27
    iput-object v0, p0, Lcom/amazonaws/amplify/amplify_analytics_pinpoint/AmplifyAnalyticsPinpointPlugin;->context:Landroid/content/Context;

    return-void
.end method
