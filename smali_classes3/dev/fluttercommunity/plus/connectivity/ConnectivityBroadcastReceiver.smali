.class public Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ConnectivityBroadcastReceiver.java"

# interfaces
.implements Lio/flutter/plugin/common/EventChannel$StreamHandler;


# static fields
.field public static final CONNECTIVITY_ACTION:Ljava/lang/String; = "android.net.conn.CONNECTIVITY_CHANGE"


# instance fields
.field private final connectivity:Ldev/fluttercommunity/plus/connectivity/Connectivity;

.field private final context:Landroid/content/Context;

.field private events:Lio/flutter/plugin/common/EventChannel$EventSink;

.field private final mainHandler:Landroid/os/Handler;

.field private networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;


# direct methods
.method public static synthetic $r8$lambda$UNnA0IevybhaAad2yhFOyHeg6sk(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->lambda$sendEvent$1(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$wBKXyAQdsEvvGTXEtUJCYFTfyU8(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->lambda$sendEvent$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendEvent(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V
    .locals 0

    invoke-direct {p0}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->sendEvent()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendEvent(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->sendEvent(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldev/fluttercommunity/plus/connectivity/Connectivity;)V
    .locals 2

    .line 35
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 31
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->mainHandler:Landroid/os/Handler;

    .line 36
    iput-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->context:Landroid/content/Context;

    .line 37
    iput-object p2, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->connectivity:Ldev/fluttercommunity/plus/connectivity/Connectivity;

    return-void
.end method

.method private synthetic lambda$sendEvent$0()V
    .locals 2

    .line 86
    iget-object v0, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->events:Lio/flutter/plugin/common/EventChannel$EventSink;

    iget-object v1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->connectivity:Ldev/fluttercommunity/plus/connectivity/Connectivity;

    invoke-virtual {v1}, Ldev/fluttercommunity/plus/connectivity/Connectivity;->getNetworkType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private synthetic lambda$sendEvent$1(Ljava/lang/String;)V
    .locals 1

    .line 91
    iget-object v0, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->events:Lio/flutter/plugin/common/EventChannel$EventSink;

    invoke-interface {v0, p1}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private sendEvent()V
    .locals 2

    .line 86
    new-instance v0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$$ExternalSyntheticLambda0;-><init>(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V

    .line 87
    iget-object v1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private sendEvent(Ljava/lang/String;)V
    .locals 1

    .line 91
    new-instance v0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$$ExternalSyntheticLambda1;-><init>(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/Object;)V
    .locals 1

    .line 65
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->connectivity:Ldev/fluttercommunity/plus/connectivity/Connectivity;

    invoke-virtual {p1}, Ldev/fluttercommunity/plus/connectivity/Connectivity;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object v0, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_0
    return-void
.end method

.method public onListen(Ljava/lang/Object;Lio/flutter/plugin/common/EventChannel$EventSink;)V
    .locals 0

    .line 42
    iput-object p2, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->events:Lio/flutter/plugin/common/EventChannel$EventSink;

    .line 44
    new-instance p1, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$1;

    invoke-direct {p1, p0}, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver$1;-><init>(Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;)V

    iput-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 56
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->connectivity:Ldev/fluttercommunity/plus/connectivity/Connectivity;

    invoke-virtual {p1}, Ldev/fluttercommunity/plus/connectivity/Connectivity;->getConnectivityManager()Landroid/net/ConnectivityManager;

    move-result-object p1

    iget-object p2, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->networkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->registerDefaultNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 80
    iget-object p1, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->events:Lio/flutter/plugin/common/EventChannel$EventSink;

    if-eqz p1, :cond_0

    .line 81
    iget-object p2, p0, Ldev/fluttercommunity/plus/connectivity/ConnectivityBroadcastReceiver;->connectivity:Ldev/fluttercommunity/plus/connectivity/Connectivity;

    invoke-virtual {p2}, Ldev/fluttercommunity/plus/connectivity/Connectivity;->getNetworkType()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lio/flutter/plugin/common/EventChannel$EventSink;->success(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
