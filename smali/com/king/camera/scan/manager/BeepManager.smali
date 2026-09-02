.class public final Lcom/king/camera/scan/manager/BeepManager;
.super Ljava/lang/Object;
.source "BeepManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Ljava/io/Closeable;


# static fields
.field private static final VIBRATE_DURATION:J = 0xc8L


# instance fields
.field private final context:Landroid/content/Context;

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playBeep:Z

.field private vibrate:Z

.field private vibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/king/camera/scan/manager/BeepManager;->context:Landroid/content/Context;

    const/4 p1, 0x0

    .line 50
    iput-object p1, p0, Lcom/king/camera/scan/manager/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 51
    invoke-direct {p0}, Lcom/king/camera/scan/manager/BeepManager;->updatePrefs()V

    return-void
.end method

.method private buildMediaPlayer(Landroid/content/Context;)Landroid/media/MediaPlayer;
    .registers 9

    .line 89
    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    .line 91
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/king/camera/scan/R$raw;->camera_scan_beep:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->openRawResourceFd(I)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 93
    invoke-virtual {v6, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    const/4 p1, 0x0

    .line 94
    invoke-virtual {v6, p1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 95
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_29} :catch_2a

    return-object v6

    :catch_2a
    move-exception p1

    .line 98
    invoke-static {p1}, Lcom/king/camera/scan/util/LogUtils;->w(Ljava/lang/Throwable;)V

    .line 99
    invoke-virtual {v6}, Landroid/media/MediaPlayer;->release()V

    const/4 p1, 0x0

    return-object p1
.end method

.method private declared-synchronized updatePrefs()V
    .registers 3

    monitor-enter p0

    .line 63
    :try_start_1
    iget-object v0, p0, Lcom/king/camera/scan/manager/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_d

    .line 64
    iget-object v0, p0, Lcom/king/camera/scan/manager/BeepManager;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/king/camera/scan/manager/BeepManager;->buildMediaPlayer(Landroid/content/Context;)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/king/camera/scan/manager/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 66
    :cond_d
    iget-object v0, p0, Lcom/king/camera/scan/manager/BeepManager;->vibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_34

    .line 67
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_28

    .line 68
    iget-object v0, p0, Lcom/king/camera/scan/manager/BeepManager;->context:Landroid/content/Context;

    const-string v1, "vibrator_manager"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibratorManager;

    invoke-virtual {v0}, Landroid/os/VibratorManager;->getDefaultVibrator()Landroid/os/Vibrator;

    move-result-object v0

    iput-object v0, p0, Lcom/king/camera/scan/manager/BeepManager;->vibrator:Landroid/os/Vibrator;

    goto :goto_34

    .line 70
    :cond_28
    iget-object v0, p0, Lcom/king/camera/scan/manager/BeepManager;->context:Landroid/content/Context;

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/king/camera/scan/manager/BeepManager;->vibrator:Landroid/os/Vibrator;
    :try_end_34
    .catchall {:try_start_1 .. :try_end_34} :catchall_36

    .line 73
    :cond_34
    :goto_34
    monitor-exit p0

    return-void

    :catchall_36
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 2

    monitor-enter p0

    .line 114
    :try_start_1
    iget-object v0, p0, Lcom/king/camera/scan/manager/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_12

    .line 115
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    const/4 v0, 0x0

    .line 116
    iput-object v0, p0, Lcom/king/camera/scan/manager/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_b} :catch_e
    .catchall {:try_start_1 .. :try_end_b} :catchall_c

    goto :goto_12

    :catchall_c
    move-exception v0

    goto :goto_14

    :catch_e
    move-exception v0

    .line 119
    :try_start_f
    invoke-static {v0}, Lcom/king/camera/scan/util/LogUtils;->e(Ljava/lang/Throwable;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_c

    .line 121
    :cond_12
    :goto_12
    monitor-exit p0

    return-void

    :goto_14
    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    monitor-enter p0

    .line 106
    :try_start_1
    invoke-virtual {p0}, Lcom/king/camera/scan/manager/BeepManager;->close()V

    .line 107
    invoke-direct {p0}, Lcom/king/camera/scan/manager/BeepManager;->updatePrefs()V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_a

    .line 108
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized playBeepSoundAndVibrate()V
    .registers 5

    monitor-enter p0

    .line 76
    :try_start_1
    iget-boolean v0, p0, Lcom/king/camera/scan/manager/BeepManager;->playBeep:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/king/camera/scan/manager/BeepManager;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_c

    .line 77
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 79
    :cond_c
    iget-boolean v0, p0, Lcom/king/camera/scan/manager/BeepManager;->vibrate:Z

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/king/camera/scan/manager/BeepManager;->vibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 81
    iget-object v0, p0, Lcom/king/camera/scan/manager/BeepManager;->vibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0xc8

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 86
    :cond_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPlayBeep(Z)V
    .registers 2

    .line 59
    iput-boolean p1, p0, Lcom/king/camera/scan/manager/BeepManager;->playBeep:Z

    return-void
.end method

.method public setVibrate(Z)V
    .registers 2

    .line 55
    iput-boolean p1, p0, Lcom/king/camera/scan/manager/BeepManager;->vibrate:Z

    return-void
.end method
