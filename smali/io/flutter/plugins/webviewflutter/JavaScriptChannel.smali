.class public Lio/flutter/plugins/webviewflutter/JavaScriptChannel;
.super Ljava/lang/Object;
.source "JavaScriptChannel.java"


# instance fields
.field private final flutterApi:Lio/flutter/plugins/webviewflutter/JavaScriptChannelFlutterApiImpl;

.field final javaScriptChannelName:Ljava/lang/String;

.field private final platformThreadHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$zLbxZtWP94AbNKuPaAw-uxTqIfo(Lio/flutter/plugins/webviewflutter/JavaScriptChannel;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lio/flutter/plugins/webviewflutter/JavaScriptChannel;->lambda$postMessage$1(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lio/flutter/plugins/webviewflutter/JavaScriptChannelFlutterApiImpl;Ljava/lang/String;Landroid/os/Handler;)V
    .registers 4

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannel;->flutterApi:Lio/flutter/plugins/webviewflutter/JavaScriptChannelFlutterApiImpl;

    .line 36
    iput-object p2, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannel;->javaScriptChannelName:Ljava/lang/String;

    .line 37
    iput-object p3, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannel;->platformThreadHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic lambda$postMessage$0(Ljava/lang/Void;)V
    .registers 1

    return-void
.end method

.method private synthetic lambda$postMessage$1(Ljava/lang/String;)V
    .registers 4

    .line 45
    iget-object v0, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannel;->flutterApi:Lio/flutter/plugins/webviewflutter/JavaScriptChannelFlutterApiImpl;

    new-instance v1, Lio/flutter/plugins/webviewflutter/JavaScriptChannel$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lio/flutter/plugins/webviewflutter/JavaScriptChannel$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, p0, p1, v1}, Lio/flutter/plugins/webviewflutter/JavaScriptChannelFlutterApiImpl;->postMessage(Lio/flutter/plugins/webviewflutter/JavaScriptChannel;Ljava/lang/String;Lio/flutter/plugins/webviewflutter/GeneratedAndroidWebView$JavaScriptChannelFlutterApi$Reply;)V

    return-void
.end method


# virtual methods
.method public postMessage(Ljava/lang/String;)V
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 44
    new-instance v0, Lio/flutter/plugins/webviewflutter/JavaScriptChannel$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lio/flutter/plugins/webviewflutter/JavaScriptChannel$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugins/webviewflutter/JavaScriptChannel;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannel;->platformThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne p1, v1, :cond_15

    .line 48
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1a

    .line 50
    :cond_15
    iget-object p1, p0, Lio/flutter/plugins/webviewflutter/JavaScriptChannel;->platformThreadHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1a
    return-void
.end method
