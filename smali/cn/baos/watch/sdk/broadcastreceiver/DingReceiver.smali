.class public Lcn/baos/watch/sdk/broadcastreceiver/DingReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DingReceiver.java"


# static fields
.field public static ACTION_WAKE_UP_NAME:Ljava/lang/String; = "cn.baos.watch.sdk.intent.WAKEUP"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 3

    return-void
.end method
