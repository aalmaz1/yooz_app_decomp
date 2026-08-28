.class public final Landroidx/camera/video/internal/audio/AudioUtils;
.super Ljava/lang/Object;
.source "AudioUtils.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static channelCountToChannelConfig(I)I
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const/16 p0, 0x10

    goto :goto_8

    :cond_6
    const/16 p0, 0xc

    :goto_8
    return p0
.end method

.method public static channelCountToChannelMask(I)I
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_6

    const/16 p0, 0x10

    goto :goto_8

    :cond_6
    const/16 p0, 0xc

    :goto_8
    return p0
.end method

.method public static frameCountToDurationNs(JI)J
    .registers 7

    int-to-long v0, p2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_9

    const/4 p2, 0x1

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    :goto_a
    const-string v2, "sampleRate must be greater than 0."

    .line 142
    invoke-static {p2, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 143
    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {p2, v2, v3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v2

    mul-long/2addr v2, p0

    div-long/2addr v2, v0

    return-wide v2
.end method

.method public static frameCountToSize(JI)J
    .registers 7

    int-to-long v0, p2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_9

    const/4 p2, 0x1

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    :goto_a
    const-string v2, "bytesPerFrame must be greater than 0."

    .line 127
    invoke-static {p2, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    mul-long/2addr p0, v0

    return-wide p0
.end method

.method public static getBytesPerFrame(II)I
    .registers 5

    if-lez p1, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    .line 83
    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid channel count: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    const/4 v0, 0x2

    if-eq p0, v0, :cond_42

    const/4 v0, 0x3

    if-eq p0, v0, :cond_41

    const/4 v1, 0x4

    if-eq p0, v1, :cond_40

    const/16 v2, 0x15

    if-eq p0, v2, :cond_3e

    const/16 v0, 0x16

    if-ne p0, v0, :cond_29

    goto :goto_40

    .line 95
    :cond_29
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Invalid audio encoding: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3e
    mul-int/2addr p1, v0

    return p1

    :cond_40
    :goto_40
    mul-int/2addr p1, v1

    :cond_41
    return p1

    :cond_42
    mul-int/2addr p1, v0

    return p1
.end method

.method public static sizeToFrameCount(JI)J
    .registers 7

    int-to-long v0, p2

    const-wide/16 v2, 0x0

    cmp-long p2, v0, v2

    if-lez p2, :cond_9

    const/4 p2, 0x1

    goto :goto_a

    :cond_9
    const/4 p2, 0x0

    :goto_a
    const-string v2, "bytesPerFrame must be greater than 0."

    .line 112
    invoke-static {p2, v2}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 113
    div-long/2addr p0, v0

    return-wide p0
.end method
