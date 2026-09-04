.class public final Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin;
.super Ljava/lang/Object;
.source "NativeAuthPluginBindingsPigeon.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u000c2\u00020\u0001:\u0001\u000cB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J(\u0010\u0005\u001a\u00020\u00062\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\t\u0012\u0004\u0012\u00020\t0\u00082\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u000bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin;",
        "",
        "binaryMessenger",
        "Lio/flutter/plugin/common/BinaryMessenger;",
        "(Lio/flutter/plugin/common/BinaryMessenger;)V",
        "exchange",
        "",
        "paramsArg",
        "",
        "",
        "callback",
        "Lkotlin/Function0;",
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
.field public static final Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin$Companion;

.field private static final codec$delegate:Lkotlin/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Lazy<",
            "Lio/flutter/plugin/common/StandardMessageCodec;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;


# direct methods
.method public static synthetic $r8$lambda$Dsy8IlFNwuytRO3U_VvoD2GpT50(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin;->exchange$lambda$0(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin;->Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin$Companion;

    .line 165
    sget-object v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin$Companion$codec$2;->INSTANCE:Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin$Companion$codec$2;

    check-cast v0, Lkotlin/jvm/functions/Function0;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin;->codec$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugin/common/BinaryMessenger;)V
    .locals 1

    const-string v0, "binaryMessenger"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    iput-object p1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    return-void
.end method

.method public static final synthetic access$getCodec$delegate$cp()Lkotlin/Lazy;
    .locals 1

    .line 161
    sget-object v0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin;->codec$delegate:Lkotlin/Lazy;

    return-object v0
.end method

.method private static final exchange$lambda$0(Lkotlin/jvm/functions/Function0;Ljava/lang/Object;)V
    .locals 0

    const-string p1, "$callback"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final exchange(Ljava/util/Map;Lkotlin/jvm/functions/Function0;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "paramsArg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    iget-object v1, p0, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin;->binaryMessenger:Lio/flutter/plugin/common/BinaryMessenger;

    sget-object v2, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin;->Companion:Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin$Companion;

    invoke-virtual {v2}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin$Companion;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v2

    const-string v3, "dev.flutter.pigeon.amplify_auth_cognito.NativeAuthPlugin.exchange"

    invoke-direct {v0, v1, v3, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    .line 176
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    new-instance v1, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/amazonaws/amplify/amplify_auth_cognito/NativeAuthPlugin$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, p1, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->send(Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V

    return-void
.end method
