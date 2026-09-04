.class public Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientCreator;
.super Ljava/lang/Object;
.source "WebViewClientHostApiImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WebViewClientCreator"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createWebViewClient(Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;)Landroid/webkit/WebViewClient;
    .locals 1

    .line 255
    new-instance v0, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientImpl;

    invoke-direct {v0, p1}, Lio/flutter/plugins/webviewflutter/WebViewClientHostApiImpl$WebViewClientImpl;-><init>(Lio/flutter/plugins/webviewflutter/WebViewClientFlutterApiImpl;)V

    return-object v0
.end method
