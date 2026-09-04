.class Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$VolumeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MusicControlManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VolumeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;)V
    .locals 0

    .line 394
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$VolumeReceiver;->this$0:Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
