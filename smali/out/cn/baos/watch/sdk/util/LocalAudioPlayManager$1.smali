.class Lcn/baos/watch/sdk/util/LocalAudioPlayManager$1;
.super Ljava/lang/Object;
.source "LocalAudioPlayManager.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->playAudio()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/baos/watch/sdk/util/LocalAudioPlayManager;


# direct methods
.method constructor <init>(Lcn/baos/watch/sdk/util/LocalAudioPlayManager;)V
    .registers 2

    .line 55
    iput-object p1, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager$1;->this$0:Lcn/baos/watch/sdk/util/LocalAudioPlayManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .registers 6

    const-string p1, "\u97f3\u9891\u64ad\u653e\u5b8c\u6210\uff0c\u5f00\u59cb\u5faa\u73af\u64ad\u653e"

    .line 58
    invoke-static {p1}, Lcn/baos/watch/sdk/util/LogUtil;->d(Ljava/lang/String;)V

    .line 59
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 60
    iget-object p1, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager$1;->this$0:Lcn/baos/watch/sdk/util/LocalAudioPlayManager;

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->-$$Nest$fgetstartPlayTime(Lcn/baos/watch/sdk/util/LocalAudioPlayManager;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long p1, v0, v2

    if-lez p1, :cond_32

    .line 61
    iget-object p1, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager$1;->this$0:Lcn/baos/watch/sdk/util/LocalAudioPlayManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->-$$Nest$fputstartPlayTime(Lcn/baos/watch/sdk/util/LocalAudioPlayManager;J)V

    .line 62
    iget-object p1, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager$1;->this$0:Lcn/baos/watch/sdk/util/LocalAudioPlayManager;

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->-$$Nest$fgetmMediaPlayer(Lcn/baos/watch/sdk/util/LocalAudioPlayManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 63
    iget-object p1, p0, Lcn/baos/watch/sdk/util/LocalAudioPlayManager$1;->this$0:Lcn/baos/watch/sdk/util/LocalAudioPlayManager;

    invoke-static {p1}, Lcn/baos/watch/sdk/util/LocalAudioPlayManager;->-$$Nest$fgetmMediaPlayer(Lcn/baos/watch/sdk/util/LocalAudioPlayManager;)Landroid/media/MediaPlayer;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :cond_32
    return-void
.end method
