.class public Lcn/baos/watch/sdk/old/volume/VolumeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "VolumeBroadcastReceiver.java"


# instance fields
.field private mVolumeManager:Lcn/baos/watch/sdk/old/volume/VolumeManager;


# direct methods
.method public constructor <init>(Lcn/baos/watch/sdk/old/volume/VolumeManager;)V
    .registers 2

    .line 22
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 23
    iput-object p1, p0, Lcn/baos/watch/sdk/old/volume/VolumeBroadcastReceiver;->mVolumeManager:Lcn/baos/watch/sdk/old/volume/VolumeManager;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    const-string p1, "android.media.VOLUME_CHANGED_ACTION"

    .line 29
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    const-string p1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3f

    const-string p1, "android.media.VOLUME_CHANGED_ACTION,\u7528\u6237\u8c03\u8282\u97f3\u91cf\u4fee\u6539\u4e86..."

    .line 30
    invoke-static {p1}, Lcn/baos/watch/sdk/utils/LogUtil;->d(Ljava/lang/String;)V

    .line 31
    invoke-static {}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->getInstance()Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->getCurrentVolume()I

    move-result p1

    .line 32
    invoke-static {}, Lcn/baos/watch/sdk/old/MainHandler;->getInstance()Lcn/baos/watch/sdk/old/MainHandler;

    move-result-object p2

    const/16 v0, 0xb7

    invoke-virtual {p2, v0}, Lcn/baos/watch/sdk/old/MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 33
    iget-object p2, p0, Lcn/baos/watch/sdk/old/volume/VolumeBroadcastReceiver;->mVolumeManager:Lcn/baos/watch/sdk/old/volume/VolumeManager;

    if-eqz p2, :cond_3f

    .line 34
    invoke-virtual {p2}, Lcn/baos/watch/sdk/old/volume/VolumeManager;->getVolumeChangeListener()Lcn/baos/watch/sdk/old/volume/VolumeChangeListener;

    move-result-object p2

    if-eqz p2, :cond_3f

    if-ltz p1, :cond_3f

    .line 37
    invoke-interface {p2, p1}, Lcn/baos/watch/sdk/old/volume/VolumeChangeListener;->onVolumeChanged(I)V

    :cond_3f
    return-void
.end method
