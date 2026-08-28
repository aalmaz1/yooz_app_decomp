.class public interface abstract Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaObjectHostApi;
.super Ljava/lang/Object;
.source "GeneratedAndroidWebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "JavaObjectHostApi"
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

    .line 719
    new-instance v0, Lio/flutter/plugin/common/StandardMessageCodec;

    invoke-direct {v0}, Lio/flutter/plugin/common/StandardMessageCodec;-><init>()V

    return-object v0
.end method

.method public static synthetic lambda$setup$0(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaObjectHostApi;Ljava/lang/Object;Lio/flutter/plugin/common/BasicMessageChannel$Reply;)V
    .registers 8

    .line 734
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 735
    check-cast p1, Ljava/util/ArrayList;

    const/4 v1, 0x0

    .line 736
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    const/4 v2, 0x0

    if-nez p1, :cond_13

    move-object p1, v2

    goto :goto_1b

    .line 738
    :cond_13
    :try_start_13
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    :goto_1b
    invoke-interface {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaObjectHostApi;->dispose(Ljava/lang/Long;)V

    .line 739
    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_22

    goto :goto_27

    :catchall_22
    move-exception p0

    .line 741
    invoke-static {p0}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView;->wrapError(Ljava/lang/Throwable;)Ljava/util/ArrayList;

    move-result-object v0

    .line 744
    :goto_27
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/BasicMessageChannel$Reply;->reply(Ljava/lang/Object;)V

    return-void
.end method

.method public static setup(Lio/flutter/plugin/common/BinaryMessenger;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaObjectHostApi;)V
    .registers 5

    .line 726
    new-instance v0, Lio/flutter/plugin/common/BasicMessageChannel;

    const-string v1, "dev.flutter.pigeon.webview_flutter_android.JavaObjectHostApi.dispose"

    .line 730
    invoke-static {}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaObjectHostApi;->getCodec()Lio/flutter/plugin/common/MessageCodec;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lio/flutter/plugin/common/BasicMessageChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MessageCodec;)V

    if-eqz p1, :cond_16

    .line 732
    new-instance p0, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaObjectHostApi$$ExternalSyntheticLambda0;

    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaObjectHostApi$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaObjectHostApi;)V

    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    goto :goto_1a

    :cond_16
    const/4 p0, 0x0

    .line 747
    invoke-virtual {v0, p0}, Lio/flutter/plugin/common/BasicMessageChannel;->setMessageHandler(Lio/flutter/plugin/common/BasicMessageChannel$MessageHandler;)V

    :goto_1a
    return-void
.end method


# virtual methods
.method public abstract dispose(Ljava/lang/Long;)V
.end method
