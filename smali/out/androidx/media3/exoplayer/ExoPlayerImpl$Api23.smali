.class final Landroidx/media3/exoplayer/ExoPlayerImpl$Api23;
.super Ljava/lang/Object;
.source "ExoPlayerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/exoplayer/ExoPlayerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Api23"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 3443
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSuitableAudioOutputPresentInAudioDeviceInfoList(Landroid/content/Context;[Landroid/media/AudioDeviceInfo;)Z
    .registers 9

    .line 3448
    invoke-static {p0}, Landroidx/media3/common/util/Util;->isWear(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x1

    if-nez p0, :cond_8

    return v0

    .line 3451
    :cond_8
    array-length p0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_b
    if-ge v2, p0, :cond_82

    aget-object v3, p1, v2

    .line 3452
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_81

    .line 3453
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_81

    .line 3454
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_81

    .line 3455
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v5, 0xb

    if-eq v4, v5, :cond_81

    .line 3456
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_81

    .line 3457
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_3c

    goto :goto_81

    .line 3460
    :cond_3c
    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_4b

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v6, 0x16

    if-ne v4, v6, :cond_4b

    return v0

    .line 3463
    :cond_4b
    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v6, 0x1c

    if-lt v4, v6, :cond_5a

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v6, 0x17

    if-ne v4, v6, :cond_5a

    return v0

    .line 3466
    :cond_5a
    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v6, 0x1f

    if-lt v4, v6, :cond_6f

    .line 3467
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    if-eq v4, v5, :cond_6e

    .line 3468
    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v4

    const/16 v5, 0x1b

    if-ne v4, v5, :cond_6f

    :cond_6e
    return v0

    .line 3471
    :cond_6f
    sget v4, Landroidx/media3/common/util/Util;->SDK_INT:I

    const/16 v5, 0x21

    if-lt v4, v5, :cond_7e

    invoke-virtual {v3}, Landroid/media/AudioDeviceInfo;->getType()I

    move-result v3

    const/16 v4, 0x1e

    if-ne v3, v4, :cond_7e

    return v0

    :cond_7e
    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    :cond_81
    :goto_81
    return v0

    :cond_82
    return v1
.end method

.method public static registerAudioDeviceCallback(Landroid/media/AudioManager;Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V
    .registers 3

    .line 3481
    invoke-virtual {p0, p1, p2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    return-void
.end method
