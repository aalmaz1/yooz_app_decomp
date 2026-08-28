.class public interface abstract Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterAssetManagerHostApi;
.super Ljava/lang/Object;
.source "GeneratedAndroidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FlutterAssetManagerHostApi"
.end annotation


# direct methods
.method public static getCodec()Lio/flutter/plugin/common/MessageCodec;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/flutter/plugin/common/MessageCodec<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 2927
    new-instance v0, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$setup$0(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterAssetManagerHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 5

    .line 2944
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2945
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 2946
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2948
    :try_start_e
    invoke-interface {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterAssetManagerHostApi;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    .line 2949
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception p0

    .line 2951
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2954
    :goto_1b
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$1(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterAssetManagerHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 5

    .line 2969
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2970
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 2971
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 2973
    :try_start_e
    invoke-interface {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterAssetManagerHostApi;->getAssetFilePathByName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2974
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_15
    .catchall {:try_start_e .. :try_end_15} :catchall_16

    goto :goto_1b

    :catchall_16
    move-exception p0

    .line 2976
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2979
    :goto_1b
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterAssetManagerHostApi;)V
    .registers 6

    .line 2936
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v1, "dev.flutter.pigeon.webview_flutter_android.FlutterAssetManagerHostApi.list"

    .line 2940
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterAssetManagerHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    .line 2942
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterAssetManagerHostApi$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterAssetManagerHostApi$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterAssetManagerHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_1a

    .line 2957
    :cond_17
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 2961
    :goto_1a
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.FlutterAssetManagerHostApi.getAssetFilePathByName"

    .line 2965
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterAssetManagerHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_30

    .line 2967
    new-instance p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterAssetManagerHostApi$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterAssetManagerHostApi$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$FlutterAssetManagerHostApi;)V

    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_33

    .line 2982
    :cond_30
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    :goto_33
    return-void
.end method


# virtual methods
.method public abstract getAssetFilePathByName(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract list(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
