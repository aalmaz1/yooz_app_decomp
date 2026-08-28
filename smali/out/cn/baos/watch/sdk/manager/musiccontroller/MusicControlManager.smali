.class public Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;
.super Ljava/lang/Object;
.source "MusicControlManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$VolumeReceiver;,
        Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$MusicInfo;
    }
.end annotation


# static fields
.field private static instance:Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;


# instance fields
.field handler:Landroid/os/Handler;

.field isNeedPushVolume:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentVolume:I

.field private mKeyEvent:Landroid/view/KeyEvent;

.field private mMaxValue:I

.field private mMinValue:I

.field private mMusicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

.field sendCommandToWatch2:Ljava/lang/Runnable;

.field sendCommandToWatchResponse:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetmMusicControlResponse(Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;)Lcn/baos/watch/w100/messages/MusicControlResponse;
    .registers 1

    iget-object p0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMusicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Lcn/baos/watch/w100/messages/MusicControlResponse;

    invoke-direct {v0}, Lcn/baos/watch/w100/messages/MusicControlResponse;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMusicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    .line 224
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->handler:Landroid/os/Handler;

    .line 240
    new-instance v0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$1;

    invoke-direct {v0, p0}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$1;-><init>(Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->sendCommandToWatchResponse:Ljava/lang/Runnable;

    .line 264
    new-instance v0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$2;

    invoke-direct {v0, p0}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$2;-><init>(Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;)V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->sendCommandToWatch2:Ljava/lang/Runnable;

    const/4 v0, 0x1

    .line 272
    iput-boolean v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->isNeedPushVolume:Z

    return-void
.end method

.method private dispatchMediaKeyToAudioService(Landroid/view/KeyEvent;)V
    .registers 3

    .line 133
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_c

    .line 135
    :try_start_4
    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_7} :catch_8

    goto :goto_c

    :catch_8
    move-exception p1

    .line 137
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_c
    :goto_c
    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;
    .registers 2

    .line 41
    sget-object v0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->instance:Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    if-nez v0, :cond_17

    .line 42
    const-class v0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    monitor-enter v0

    .line 43
    :try_start_7
    sget-object v1, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->instance:Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    if-nez v1, :cond_12

    .line 44
    new-instance v1, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    invoke-direct {v1}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;-><init>()V

    sput-object v1, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->instance:Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    .line 46
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 48
    :cond_17
    :goto_17
    sget-object v0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->instance:Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    return-object v0
.end method


# virtual methods
.method public doMusicControlKeyEvent(I)Z
    .registers 13

    .line 115
    invoke-static {}, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;->getInstance()Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;->getRemoteController()Landroid/media/RemoteController;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_41

    const-string v0, "RemoteControllerManager control"

    .line 116
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 117
    new-instance v0, Landroid/view/KeyEvent;

    invoke-direct {v0, v1, p1}, Landroid/view/KeyEvent;-><init>(II)V

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mKeyEvent:Landroid/view/KeyEvent;

    .line 118
    invoke-static {}, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;->getInstance()Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;->getRemoteController()Landroid/media/RemoteController;

    move-result-object v0

    iget-object v3, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {v0, v3}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 119
    new-instance v3, Landroid/view/KeyEvent;

    invoke-direct {v3, v2, p1}, Landroid/view/KeyEvent;-><init>(II)V

    iput-object v3, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mKeyEvent:Landroid/view/KeyEvent;

    .line 120
    invoke-static {}, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;->getInstance()Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/manager/musiccontroller/RemoteControllerManager;->getRemoteController()Landroid/media/RemoteController;

    move-result-object p1

    iget-object v3, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mKeyEvent:Landroid/view/KeyEvent;

    invoke-virtual {p1, v3}, Landroid/media/RemoteController;->sendMediaKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz v0, :cond_40

    if-eqz p1, :cond_40

    move v1, v2

    :cond_40
    return v1

    :cond_41
    const-string v0, "AudioManager control"

    .line 123
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 124
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 125
    new-instance v0, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v3, v0

    move-wide v4, v6

    move v9, p1

    invoke-direct/range {v3 .. v10}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 126
    invoke-direct {p0, v0}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->dispatchMediaKeyToAudioService(Landroid/view/KeyEvent;)V

    .line 127
    invoke-static {v0, v2}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->dispatchMediaKeyToAudioService(Landroid/view/KeyEvent;)V

    return v1
.end method

.method public getCurrentVolume()I
    .registers 3

    .line 158
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_b

    const/4 v1, 0x3

    .line 159
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mCurrentVolume:I

    .line 161
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u97f3\u91cf:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mCurrentVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 162
    iget v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mCurrentVolume:I

    return v0
.end method

.method public getMusicInfo()Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$MusicInfo;
    .registers 3

    .line 363
    new-instance v0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$MusicInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$MusicInfo;-><init>(Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$MusicInfo-IA;)V

    return-object v0
.end method

.method public handleCommandFromWatchToControlMusic(Lcn/baos/watch/w100/messages/MusicControlRequest;)V
    .registers 4

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u624b\u8868\u7aef\u97f3\u4e50\u8bf7\u6c42\u6307\u4ee4:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/baos/watch/sdk/util/W100Utils;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 296
    iget v0, p1, Lcn/baos/watch/w100/messages/MusicControlRequest;->action:I

    if-eqz v0, :cond_50

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4c

    const/4 v1, 0x2

    if-eq v0, v1, :cond_48

    const/4 v1, 0x3

    if-eq v0, v1, :cond_44

    const/4 v1, 0x4

    if-eq v0, v1, :cond_40

    const/4 v1, 0x5

    if-eq v0, v1, :cond_3a

    const/16 p1, 0x14

    if-eq v0, p1, :cond_36

    const/16 p1, 0x15

    if-eq v0, p1, :cond_32

    goto :goto_57

    .line 333
    :cond_32
    invoke-virtual {p0}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->turnDownVolume()V

    goto :goto_57

    .line 329
    :cond_36
    invoke-virtual {p0}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->turnUpVolume()V

    goto :goto_57

    .line 322
    :cond_3a
    iget p1, p1, Lcn/baos/watch/w100/messages/MusicControlRequest;->volumn:I

    invoke-virtual {p0, p1}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->setVolume(I)V

    goto :goto_57

    .line 306
    :cond_40
    invoke-virtual {p0}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->nextMusic()V

    goto :goto_57

    .line 302
    :cond_44
    invoke-virtual {p0}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->previousMusic()V

    goto :goto_57

    .line 314
    :cond_48
    invoke-virtual {p0}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->stopMusic()V

    goto :goto_57

    .line 310
    :cond_4c
    invoke-virtual {p0}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->playMusic()V

    goto :goto_57

    .line 298
    :cond_50
    invoke-static {}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->getInstance()Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->sendSongStatusAndVolumeToWatchResponse()V

    :goto_57
    return-void
.end method

.method public isMusicPlaying()Z
    .registers 3

    .line 148
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u5f53\u524d\u64ad\u653e\u72b6\u6001:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    return v0
.end method

.method public nextMusic()V
    .registers 2

    const-string v0, "nextMusic"

    .line 97
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/16 v0, 0x57

    .line 98
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->doMusicControlKeyEvent(I)Z

    return-void
.end method

.method public playMusic()V
    .registers 5

    const-string v0, "playMusic"

    .line 70
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    move-result-object v0

    invoke-virtual {v0}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->btIsA2dpConnected()Z

    move-result v0

    if-nez v0, :cond_check_reconnect

    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_check_reconnect

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BleUtils;->getCurrentMac()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_check_reconnect

    invoke-static {}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->getInstance()Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcn/baos/watch/sdk/bluetooth/bt/BT625Client;->connect(Landroid/content/Context;Ljava/lang/String;)V

    :cond_check_reconnect
    const/16 v0, 0x7e

    .line 71
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->doMusicControlKeyEvent(I)Z

    return-void
.end method

.method public previousMusic()V
    .registers 2

    const-string v0, "previousMusic"

    .line 105
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/16 v0, 0x58

    .line 106
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->doMusicControlKeyEvent(I)Z

    return-void
.end method

.method public sendSongStatusAndVolumeToWatch(Lcn/baos/watch/w100/messages/MusicControlResponse;)V
    .registers 5

    .line 255
    iget v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMaxValue:I

    if-eqz v0, :cond_13

    .line 256
    invoke-virtual {p0}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->getCurrentVolume()I

    move-result v0

    mul-int/lit8 v0, v0, 0x64

    iget v1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMaxValue:I

    div-int/2addr v0, v1

    iput v0, p1, Lcn/baos/watch/w100/messages/MusicControlResponse;->volumn:I

    .line 257
    iget v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMaxValue:I

    iput v0, p1, Lcn/baos/watch/w100/messages/MusicControlResponse;->rank:I

    .line 259
    :cond_13
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMusicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    .line 260
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->sendCommandToWatch2:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->sendCommandToWatch2:Ljava/lang/Runnable;

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public sendSongStatusAndVolumeToWatchResponse()V
    .registers 5

    .line 232
    iget v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMaxValue:I

    if-eqz v0, :cond_17

    .line 233
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMusicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    invoke-virtual {p0}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->getCurrentVolume()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMaxValue:I

    div-int/2addr v1, v2

    iput v1, v0, Lcn/baos/watch/w100/messages/MusicControlResponse;->volumn:I

    .line 234
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMusicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    iget v1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMaxValue:I

    iput v1, v0, Lcn/baos/watch/w100/messages/MusicControlResponse;->rank:I

    .line 236
    :cond_17
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->sendCommandToWatchResponse:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 237
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->sendCommandToWatchResponse:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public sendVolumeWhenChange()V
    .registers 4

    .line 278
    iget-boolean v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->isNeedPushVolume:Z

    if-eqz v0, :cond_22

    .line 279
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMusicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    if-eqz v0, :cond_22

    .line 281
    invoke-virtual {p0}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->getCurrentVolume()I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    iget v2, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMaxValue:I

    div-int/2addr v1, v2

    iput v1, v0, Lcn/baos/watch/w100/messages/MusicControlResponse;->volumn:I

    .line 282
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMusicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    iget v1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMaxValue:I

    iput v1, v0, Lcn/baos/watch/w100/messages/MusicControlResponse;->rank:I

    .line 283
    invoke-static {}, Lcn/baos/watch/sdk/manager/message/MessageManager;->getInstance()Lcn/baos/watch/sdk/manager/message/MessageManager;

    move-result-object v0

    iget-object v1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMusicControlResponse:Lcn/baos/watch/w100/messages/MusicControlResponse;

    invoke-virtual {v0, v1}, Lcn/baos/watch/sdk/manager/message/MessageManager;->sendMusicStatusAndVolume(Lcn/baos/watch/w100/messages/MusicControlResponse;)V

    :cond_22
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 4

    .line 52
    iput-object p1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mContext:Landroid/content/Context;

    const-string v0, "audio"

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    .line 54
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v0

    iput v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMaxValue:I

    .line 56
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamMinVolume(I)I

    move-result v0

    iput v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMinValue:I

    .line 58
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mCurrentVolume:I

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6700\u5927\u97f3\u91cf:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMaxValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u6700\u5c0f\u97f3\u91cf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMinValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5f53\u524d\u97f3\u91cf:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mCurrentVolume:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 60
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    .line 61
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$VolumeReceiver;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager$VolumeReceiver;-><init>(Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;)V

    .line 63
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public setVolume(I)V
    .registers 5

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "\u6536\u5230\u97f3\u91cf:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " \u97f3\u91cf\u6700\u5927\u503c:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMaxValue:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 200
    iget v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMaxValue:I

    mul-int/2addr p1, v0

    div-int/lit8 p1, p1, 0x64

    iput p1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mCurrentVolume:I

    .line 201
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "\u8bbe\u7f6e\u97f3\u91cf:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mCurrentVolume:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMaxValue:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 202
    iget-object p1, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mAudioManager:Landroid/media/AudioManager;

    iget v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mCurrentVolume:I

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0, v1}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public stopMusic()V
    .registers 2

    const-string v0, "stopMusic"

    .line 83
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    const/16 v0, 0x7f

    .line 84
    invoke-virtual {p0, v0}, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->doMusicControlKeyEvent(I)Z

    return-void
.end method

.method public turnDownVolume()V
    .registers 5

    .line 185
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mCurrentVolume:I

    .line 186
    iget v2, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMinValue:I

    const/4 v3, 0x1

    if-le v0, v2, :cond_11

    sub-int/2addr v0, v3

    .line 187
    iput v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mCurrentVolume:I

    .line 189
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u8c03\u5c0f\u97f3\u91cf\u5230:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mCurrentVolume:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mCurrentVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public turnUpVolume()V
    .registers 5

    .line 171
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mCurrentVolume:I

    .line 172
    iget v2, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mMaxValue:I

    const/4 v3, 0x1

    if-ge v0, v2, :cond_11

    add-int/2addr v0, v3

    .line 173
    iput v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mCurrentVolume:I

    .line 175
    :cond_11
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\u8c03\u5927\u97f3\u91cf\u5230:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mCurrentVolume:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mAudioManager:Landroid/media/AudioManager;

    iget v2, p0, Lcn/baos/watch/sdk/manager/musiccontroller/MusicControlManager;->mCurrentVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method
