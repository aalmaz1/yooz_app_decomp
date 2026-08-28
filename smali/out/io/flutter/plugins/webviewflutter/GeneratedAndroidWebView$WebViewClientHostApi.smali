.class public interface abstract Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientHostApi;
.super Ljava/lang/Object;
.source "GeneratedAndroidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "WebViewClientHostApi"
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

    .line 2368
    new-instance v0, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$setup$0(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 8

    .line 2385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2386
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 2387
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const/4 v2, 0x0

    if-nez p1, :cond_13

    move-object p1, v2

    goto :goto_1b

    .line 2389
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_1b
    invoke-interface {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientHostApi;->create(Ljava/lang/Long;)V

    .line 2390
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception p0

    .line 2392
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2395
    :goto_27
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$1(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 9

    .line 2410
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2411
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 2412
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/4 v3, 0x1

    .line 2413
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    move-object v2, v3

    goto :goto_22

    .line 2416
    :cond_1a
    :try_start_1a
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2415
    :goto_22
    invoke-interface {p0, v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientHostApi;->setSynchronousReturnValueForShouldOverrideUrlLoading(Ljava/lang/Long;Ljava/lang/Boolean;)V

    .line 2417
    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_29

    goto :goto_2e

    :catchall_29
    move-exception p0

    .line 2419
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2422
    :goto_2e
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientHostApi;)V
    .registers 6

    .line 2377
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v1, "dev.flutter.pigeon.webview_flutter_android.WebViewClientHostApi.create"

    .line 2381
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    .line 2383
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientHostApi$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientHostApi$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_1a

    .line 2398
    :cond_17
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 2402
    :goto_1a
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.WebViewClientHostApi.setSynchronousReturnValueForShouldOverrideUrlLoading"

    .line 2406
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_30

    .line 2408
    new-instance p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientHostApi$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientHostApi$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$WebViewClientHostApi;)V

    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_33

    .line 2425
    :cond_30
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    :goto_33
    return-void
.end method


# virtual methods
.method public abstract create(Ljava/lang/Long;)V
.end method

.method public abstract setSynchronousReturnValueForShouldOverrideUrlLoading(Ljava/lang/Long;Ljava/lang/Boolean;)V
.end method
