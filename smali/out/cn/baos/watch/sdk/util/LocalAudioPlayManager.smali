.class public Lcn/baos/watch/sdk/util/LocalAudioPlayManager;
.super Ljava/lang/Object;
.source "LocalAudioPlayManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.implements Landroid/media/MediaPlayer$OnErrorListener;
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# static fields
.field private static instance:Lcn/baos/watch/sdk/util/LocalAudioPlayManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMediaPlayer:Landroid/media/MediaPlayer;

.field private startPlayTime:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmMediaPlayer(Lcn/baos/watch/sdk/util/LocalAudioPlayManager;)Landroid/media/MediaPlayer;
    .registers 1

    iget-object p0, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetstartPlayTime(Lcn/baos/watch/sdk/util/LocalAudioPlayManager;)J
    .registers 3

    iget-wide v0, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->startPlayTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fputstartPlayTime(Lcn/baos/watch/sdk/util/LocalAudioPlayManager;J)V
    .registers 3

    iput-wide p1, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->startPlayTime:J

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 31
    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 32
    iget-object v0, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 33
    iget-object v0, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    return-void
.end method

.method public static getInstance()Lcn/baos/watch/sdk/util/LocalAudioPlayManager;
    .registers 1

    .line 23
    sget-object v0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->instance:Lcn/baos/watch/sdk/util/LocalAudioPlayManager;

    if-nez v0, :cond_b

    .line 24
    new-instance v0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;

    invoke-direct {v0}, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;-><init>()V

    sput-object v0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->instance:Lcn/baos/watch/sdk/util/LocalAudioPlayManager;

    .line 26
    :cond_b
    sget-object v0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->instance:Lcn/baos/watch/sdk/util/LocalAudioPlayManager;

    return-object v0
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 2

    .line 84
    iget-object p1, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 85
    iget-object p1, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method public onError(Landroid/media/MediaPlayer;II)Z
    .registers 4

    const/4 p1, 0x0

    return p1
.end method

.method public onPrepared(Landroid/media/MediaPlayer;)V
    .registers 2

    return-void
.end method

.method public playAudio()V
    .registers 10

    :try_start_0
    const-string v0, "\u5f00\u59cb\u64ad\u653e\u97f3\u9891"

    .line 45
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_53

    .line 47
    iget-object v0, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "findphone.wav"

    invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 50
    iget-object v3, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7

    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 51
    iget-object v0, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    .line 52
    iget-object v0, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 54
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->startPlayTime:J

    .line 55
    iget-object v0, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v1, Lcn/baos/watch/sdk/util/LocalAudioPlayManager$1;

    invoke-direct {v1, p0}, Lcn/baos/watch/sdk/util/LocalAudioPlayManager$1;-><init>(Lcn/baos/watch/sdk/util/LocalAudioPlayManager;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_4e} :catch_4f

    goto :goto_53

    :catch_4f
    move-exception v0

    .line 69
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_53
    :goto_53
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2

    .line 37
    iput-object p1, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public stopAudio()V
    .registers 2

    const-string v0, "\u505c\u6b62\u64ad\u653e\u97f3\u9891"

    .line 74
    invoke-static {v0}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 76
    iget-object v0, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 77
    iget-object v0, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    :cond_17
    return-void
.end method
