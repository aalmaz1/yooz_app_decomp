.class public interface abstract Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelHostApi;
.super Ljava/lang/Object;
.source "GeneratedAndroidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JavaScriptChannelHostApi"
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

    .line 2291
    new-instance v0, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$setup$0(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 9

    .line 2308
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2309
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 2310
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/4 v3, 0x1

    .line 2311
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_1a

    move-object v2, v3

    goto :goto_22

    .line 2314
    :cond_1a
    :try_start_1a
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 2313
    :goto_22
    invoke-interface {p0, v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelHostApi;->create(Ljava/lang/Long;Ljava/lang/String;)V

    .line 2315
    invoke-virtual {v0, v1, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_28
    .catchall {:try_start_1a .. :try_end_28} :catchall_29

    goto :goto_2e

    :catchall_29
    move-exception p0

    .line 2317
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2320
    :goto_2e
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelHostApi;)V
    .registers 5

    .line 2300
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v1, "dev.flutter.pigeon.webview_flutter_android.JavaScriptChannelHostApi.create"

    .line 2304
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_16

    .line 2306
    new-instance p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelHostApi$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelHostApi$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelHostApi;)V

    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_1a

    :cond_16
    const/4 p0, 0x0

    .line 2323
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    :goto_1a
    return-void
.end method


# virtual methods
.method public abstract create(Ljava/lang/Long;Ljava/lang/String;)V
.end method
