.class public interface abstract Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi;
.super Ljava/lang/Object;
.source "GeneratedAndroidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HttpAuthHandlerHostApi"
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

    .line 3696
    new-instance v0, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$setup$0(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 7

    .line 3713
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3714
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 3715
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    if-nez p1, :cond_12

    const/4 p1, 0x0

    goto :goto_1a

    .line 3719
    :cond_12
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 3718
    :goto_1a
    invoke-interface {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi;->useHttpAuthUsernamePassword(Ljava/lang/Long;)Ljava/lang/Boolean;

    move-result-object p0

    .line 3720
    invoke-virtual {v0, v1, p0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception p0

    .line 3722
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3725
    :goto_27
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$1(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 8

    .line 3740
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3741
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 3742
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const/4 v2, 0x0

    if-nez p1, :cond_13

    move-object p1, v2

    goto :goto_1b

    .line 3744
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_1b
    invoke-interface {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi;->cancel(Ljava/lang/Long;)V

    .line 3745
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception p0

    .line 3747
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3750
    :goto_27
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$setup$2(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 10

    .line 3765
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3766
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 3767
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    const/4 v3, 0x1

    .line 3768
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x2

    .line 3769
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v2, :cond_21

    move-object v2, v4

    goto :goto_29

    .line 3772
    :cond_21
    :try_start_21
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 3771
    :goto_29
    invoke-interface {p0, v2, v3, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi;->proceed(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 3775
    invoke-virtual {v0, v1, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_2f
    .catchall {:try_start_21 .. :try_end_2f} :catchall_30

    goto :goto_35

    :catchall_30
    move-exception p0

    .line 3777
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 3780
    :goto_35
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi;)V
    .registers 6

    .line 3705
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v1, "dev.flutter.pigeon.webview_flutter_android.HttpAuthHandlerHostApi.useHttpAuthUsernamePassword"

    .line 3709
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    const/4 v1, 0x0

    if-eqz p1, :cond_17

    .line 3711
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_1a

    .line 3728
    :cond_17
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 3732
    :goto_1a
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.HttpAuthHandlerHostApi.cancel"

    .line 3736
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_30

    .line 3738
    new-instance v2, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi;)V

    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_33

    .line 3753
    :cond_30
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    .line 3757
    :goto_33
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v2, "dev.flutter.pigeon.webview_flutter_android.HttpAuthHandlerHostApi.proceed"

    .line 3761
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v3

    invoke-direct {v0, p0, v2, v3}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_49

    .line 3763
    new-instance p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi$$ExternalSyntheticLambda2;

    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi$$ExternalSyntheticLambda2;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$HttpAuthHandlerHostApi;)V

    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_4c

    .line 3783
    :cond_49
    invoke-virtual {v0, v1}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    :goto_4c
    return-void
.end method


# virtual methods
.method public abstract cancel(Ljava/lang/Long;)V
.end method

.method public abstract proceed(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract useHttpAuthUsernamePassword(Ljava/lang/Long;)Ljava/lang/Boolean;
.end method
