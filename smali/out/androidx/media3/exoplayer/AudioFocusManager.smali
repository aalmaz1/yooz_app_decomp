.class final Landroidx/media3/exoplayer/AudioFocusManager;
.super Ljava/lang/Object;
.source "AudioFocusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;,
        Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;,
        Landroidx/media3/exoplayer/AudioFocusManager$PlayerCommand;
    }
.end annotation


# static fields
.field private static final AUDIOFOCUS_GAIN:I = 0x1

.field private static final AUDIOFOCUS_GAIN_TRANSIENT:I = 0x2

.field private static final AUDIOFOCUS_GAIN_TRANSIENT_EXCLUSIVE:I = 0x4

.field private static final AUDIOFOCUS_GAIN_TRANSIENT_MAY_DUCK:I = 0x3

.field private static final AUDIOFOCUS_NONE:I = 0x0

.field private static final AUDIO_FOCUS_STATE_HAVE_FOCUS:I = 0x2

.field private static final AUDIO_FOCUS_STATE_LOSS_TRANSIENT:I = 0x3

.field private static final AUDIO_FOCUS_STATE_LOSS_TRANSIENT_DUCK:I = 0x4

.field private static final AUDIO_FOCUS_STATE_NOT_REQUESTED:I = 0x0

.field private static final AUDIO_FOCUS_STATE_NO_FOCUS:I = 0x1

.field public static final PLAYER_COMMAND_DO_NOT_PLAY:I = -0x1

.field public static final PLAYER_COMMAND_PLAY_WHEN_READY:I = 0x1

.field public static final PLAYER_COMMAND_WAIT_FOR_CALLBACK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "AudioFocusManager"

.field private static final VOLUME_MULTIPLIER_DEFAULT:F = 1.0f

.field private static final VOLUME_MULTIPLIER_DUCK:F = 0.2f


# instance fields
.field private audioAttributes:Landroidx/media3/common/AudioAttributes;

.field private audioFocusRequest:Landroid/media/AudioFocusRequest;

.field private audioFocusState:I

.field private final audioManager:Landroid/media/AudioManager;

.field private focusGainToRequest:I

.field private final focusListener:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

.field private playerControl:Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;

.field private rebuildAudioFocusRequest:Z

.field private volumeMultiplier:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;)V
    .registers 5

    .line 182
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 170
    iput v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    .line 185
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 184
    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    .line 186
    iput-object p3, p0, Landroidx/media3/exoplayer/AudioFocusManager;->playerControl:Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;

    .line 187
    new-instance p1, Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    invoke-direct {p1, p0, p2}, Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;-><init>(Landroidx/media3/exoplayer/AudioFocusManager;Landroid/os/Handler;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusListener:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    const/4 p1, 0x0

    .line 188
    iput p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    return-void
.end method

.method private abandonAudioFocusDefault()V
    .registers 3

    .line 319
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusListener:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method private abandonAudioFocusIfHeld()V
    .registers 3

    .line 278
    iget v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_15

    if-nez v0, :cond_8

    goto :goto_15

    .line 282
    :cond_8
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_12

    .line 283
    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->abandonAudioFocusV26()V

    goto :goto_15

    .line 285
    :cond_12
    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->abandonAudioFocusDefault()V

    :cond_15
    :goto_15
    return-void
.end method

.method private abandonAudioFocusV26()V
    .registers 3

    .line 324
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_9

    .line 325
    iget-object v1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->abandonAudioFocusRequest(Landroid/media/AudioFocusRequest;)I

    :cond_9
    return-void
.end method

.method static synthetic access$000(Landroidx/media3/exoplayer/AudioFocusManager;I)V
    .registers 2

    .line 42
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/AudioFocusManager;->handlePlatformAudioFocusChange(I)V

    return-void
.end method

.method private static convertAudioAttributesToFocusGain(Landroidx/media3/common/AudioAttributes;)I
    .registers 7

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 349
    :cond_4
    iget v1, p0, Landroidx/media3/common/AudioAttributes;->usage:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const-string v4, "AudioFocusManager"

    const/4 v5, 0x1

    packed-switch v1, :pswitch_data_34

    .line 403
    :pswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unidentified audio usage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/media3/common/AudioAttributes;->usage:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :pswitch_23
    const/4 p0, 0x4

    return p0

    .line 397
    :pswitch_25
    iget p0, p0, Landroidx/media3/common/AudioAttributes;->contentType:I

    if-ne p0, v5, :cond_2a

    return v3

    :cond_2a
    :pswitch_2a
    return v2

    :pswitch_2b
    return v0

    :pswitch_2c
    return v3

    :pswitch_2d
    return v5

    :pswitch_2e
    const-string p0, "Specify a proper usage in the audio attributes for audio focus handling. Using AUDIOFOCUS_GAIN by default."

    .line 365
    invoke-static {v4, p0}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :pswitch_data_34
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2c
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_2a
        :pswitch_25
        :pswitch_2a
        :pswitch_2a
        :pswitch_2d
        :pswitch_e
        :pswitch_23
    .end packed-switch
.end method

.method private executePlayerCommand(I)V
    .registers 3

    .line 453
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->playerControl:Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;

    if-eqz v0, :cond_7

    .line 454
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;->executePlayerCommand(I)V

    :cond_7
    return-void
.end method

.method private handlePlatformAudioFocusChange(I)V
    .registers 4

    const/4 v0, -0x3

    const/4 v1, -0x2

    if-eq p1, v0, :cond_33

    if-eq p1, v1, :cond_33

    const/4 v0, -0x1

    const/4 v1, 0x1

    if-eq p1, v0, :cond_29

    if-eq p1, v1, :cond_21

    .line 448
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown focus change type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioFocusManager"

    invoke-static {v0, p1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_21
    const/4 p1, 0x2

    .line 430
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    .line 431
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/AudioFocusManager;->executePlayerCommand(I)V

    return-void

    .line 434
    :cond_29
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/AudioFocusManager;->executePlayerCommand(I)V

    .line 435
    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->abandonAudioFocusIfHeld()V

    .line 436
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    return-void

    :cond_33
    if-eq p1, v1, :cond_41

    .line 440
    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->willPauseWhenDucked()Z

    move-result p1

    if-eqz p1, :cond_3c

    goto :goto_41

    :cond_3c
    const/4 p1, 0x4

    .line 444
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    goto :goto_49

    :cond_41
    :goto_41
    const/4 p1, 0x0

    .line 441
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/AudioFocusManager;->executePlayerCommand(I)V

    const/4 p1, 0x3

    .line 442
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    :goto_49
    return-void
.end method

.method private requestAudioFocus()I
    .registers 5

    .line 264
    iget v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_7

    return v1

    .line 267
    :cond_7
    sget v0, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v0, v3, :cond_12

    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->requestAudioFocusV26()I

    move-result v0

    goto :goto_16

    :cond_12
    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->requestAudioFocusDefault()I

    move-result v0

    :goto_16
    if-ne v0, v1, :cond_1c

    .line 269
    invoke-direct {p0, v2}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    return v1

    .line 272
    :cond_1c
    invoke-direct {p0, v1}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    const/4 v0, -0x1

    return v0
.end method

.method private requestAudioFocusDefault()I
    .registers 5

    .line 290
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusListener:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    iget-object v2, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 292
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/AudioAttributes;

    iget v2, v2, Landroidx/media3/common/AudioAttributes;->usage:I

    invoke-static {v2}, Landroidx/media3/common/util/Util;->getStreamTypeForAudioUsage(I)I

    move-result v2

    iget v3, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusGainToRequest:I

    .line 290
    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    return v0
.end method

.method private requestAudioFocusV26()I
    .registers 4

    .line 298
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    if-eqz v0, :cond_8

    iget-boolean v1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->rebuildAudioFocusRequest:Z

    if-eqz v1, :cond_42

    :cond_8
    if-nez v0, :cond_12

    .line 301
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget v1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusGainToRequest:I

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(I)V

    goto :goto_19

    .line 302
    :cond_12
    new-instance v0, Landroid/media/AudioFocusRequest$Builder;

    iget-object v1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-direct {v0, v1}, Landroid/media/AudioFocusRequest$Builder;-><init>(Landroid/media/AudioFocusRequest;)V

    .line 304
    :goto_19
    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->willPauseWhenDucked()Z

    move-result v1

    .line 305
    iget-object v2, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 308
    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/AudioAttributes;

    invoke-virtual {v2}, Landroidx/media3/common/AudioAttributes;->getAudioAttributesV21()Landroidx/media3/common/AudioAttributes$AudioAttributesV21;

    move-result-object v2

    iget-object v2, v2, Landroidx/media3/common/AudioAttributes$AudioAttributesV21;->audioAttributes:Landroid/media/AudioAttributes;

    .line 307
    invoke-virtual {v0, v2}, Landroid/media/AudioFocusRequest$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 309
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setWillPauseWhenDucked(Z)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusListener:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    .line 310
    invoke-virtual {v0, v1}, Landroid/media/AudioFocusRequest$Builder;->setOnAudioFocusChangeListener(Landroid/media/AudioManager$OnAudioFocusChangeListener;)Landroid/media/AudioFocusRequest$Builder;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Landroid/media/AudioFocusRequest$Builder;->build()Landroid/media/AudioFocusRequest;

    move-result-object v0

    iput-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    const/4 v0, 0x0

    .line 313
    iput-boolean v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->rebuildAudioFocusRequest:Z

    .line 315
    :cond_42
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusRequest:Landroid/media/AudioFocusRequest;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioFocusRequest;)I

    move-result v0

    return v0
.end method

.method private setAudioFocusState(I)V
    .registers 3

    .line 409
    iget v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    if-ne v0, p1, :cond_5

    return-void

    .line 412
    :cond_5
    iput p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_e

    const p1, 0x3e4ccccd    # 0.2f

    goto :goto_10

    :cond_e
    const/high16 p1, 0x3f800000    # 1.0f

    .line 418
    :goto_10
    iget v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_17

    return-void

    .line 421
    :cond_17
    iput p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    .line 422
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->playerControl:Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;

    if-eqz v0, :cond_20

    .line 423
    invoke-interface {v0, p1}, Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;->setVolumeMultiplier(F)V

    :cond_20
    return-void
.end method

.method private shouldHandleAudioFocus(I)Z
    .registers 3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_8

    .line 260
    iget p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusGainToRequest:I

    if-ne p1, v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private willPauseWhenDucked()Z
    .registers 3

    .line 330
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    if-eqz v0, :cond_a

    iget v0, v0, Landroidx/media3/common/AudioAttributes;->contentType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method


# virtual methods
.method getFocusListener()Landroid/media/AudioManager$OnAudioFocusChangeListener;
    .registers 2

    .line 256
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusListener:Landroidx/media3/exoplayer/AudioFocusManager$AudioFocusListener;

    return-object v0
.end method

.method public getVolumeMultiplier()F
    .registers 2

    .line 193
    iget v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->volumeMultiplier:F

    return v0
.end method

.method public release()V
    .registers 2

    const/4 v0, 0x0

    .line 247
    iput-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->playerControl:Landroidx/media3/exoplayer/AudioFocusManager$PlayerControl;

    .line 248
    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->abandonAudioFocusIfHeld()V

    const/4 v0, 0x0

    .line 249
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    return-void
.end method

.method public setAudioAttributes(Landroidx/media3/common/AudioAttributes;)V
    .registers 3

    .line 206
    iget-object v0, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    invoke-static {v0, p1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    .line 207
    iput-object p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioAttributes:Landroidx/media3/common/AudioAttributes;

    .line 208
    invoke-static {p1}, Landroidx/media3/exoplayer/AudioFocusManager;->convertAudioAttributesToFocusGain(Landroidx/media3/common/AudioAttributes;)I

    move-result p1

    iput p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->focusGainToRequest:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_17

    if-nez p1, :cond_16

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :cond_17
    :goto_17
    const-string p1, "Automatic handling of audio focus is only available for USAGE_MEDIA and USAGE_GAME."

    .line 209
    invoke-static {v0, p1}, Landroidx/media3/common/util/Assertions;->checkArgument(ZLjava/lang/Object;)V

    :cond_1c
    return-void
.end method

.method public updateAudioFocus(ZI)I
    .registers 5

    .line 224
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/AudioFocusManager;->shouldHandleAudioFocus(I)Z

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_f

    .line 225
    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->abandonAudioFocusIfHeld()V

    .line 226
    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/AudioFocusManager;->setAudioFocusState(I)V

    return v1

    :cond_f
    if-eqz p1, :cond_16

    .line 230
    invoke-direct {p0}, Landroidx/media3/exoplayer/AudioFocusManager;->requestAudioFocus()I

    move-result p1

    return p1

    .line 232
    :cond_16
    iget p1, p0, Landroidx/media3/exoplayer/AudioFocusManager;->audioFocusState:I

    if-eq p1, v1, :cond_1f

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1e

    return v1

    :cond_1e
    return v0

    :cond_1f
    const/4 p1, -0x1

    return p1
.end method
