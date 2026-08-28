.class final Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;
.super Landroidx/camera/video/internal/audio/AudioSettings;
.source "AutoValue_AudioSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;
    }
.end annotation


# instance fields
.field private final audioFormat:I

.field private final audioSource:I

.field private final channelCount:I

.field private final sampleRate:I


# direct methods
.method private constructor <init>(IIII)V
    .registers 5

    .line 22
    invoke-direct {p0}, Landroidx/camera/video/internal/audio/AudioSettings;-><init>()V

    .line 23
    iput p1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->audioSource:I

    .line 24
    iput p2, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->sampleRate:I

    .line 25
    iput p3, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->channelCount:I

    .line 26
    iput p4, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->audioFormat:I

    return-void
.end method

.method synthetic constructor <init>(IIIILandroidx/camera/video/internal/audio/AutoValue_AudioSettings$1;)V
    .registers 6

    .line 8
    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;-><init>(IIII)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 66
    :cond_4
    instance-of v1, p1, Landroidx/camera/video/internal/audio/AudioSettings;

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 67
    check-cast p1, Landroidx/camera/video/internal/audio/AudioSettings;

    .line 68
    iget v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->audioSource:I

    invoke-virtual {p1}, Landroidx/camera/video/internal/audio/AudioSettings;->getAudioSource()I

    move-result v3

    if-ne v1, v3, :cond_2c

    iget v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->sampleRate:I

    .line 69
    invoke-virtual {p1}, Landroidx/camera/video/internal/audio/AudioSettings;->getSampleRate()I

    move-result v3

    if-ne v1, v3, :cond_2c

    iget v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->channelCount:I

    .line 70
    invoke-virtual {p1}, Landroidx/camera/video/internal/audio/AudioSettings;->getChannelCount()I

    move-result v3

    if-ne v1, v3, :cond_2c

    iget v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->audioFormat:I

    .line 71
    invoke-virtual {p1}, Landroidx/camera/video/internal/audio/AudioSettings;->getAudioFormat()I

    move-result p1

    if-ne v1, p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    return v0

    :cond_2e
    return v2
.end method

.method public getAudioFormat()I
    .registers 2

    .line 48
    iget v0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->audioFormat:I

    return v0
.end method

.method public getAudioSource()I
    .registers 2

    .line 31
    iget v0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->audioSource:I

    return v0
.end method

.method public getChannelCount()I
    .registers 2

    .line 43
    iget v0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->channelCount:I

    return v0
.end method

.method public getSampleRate()I
    .registers 2

    .line 37
    iget v0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->sampleRate:I

    return v0
.end method

.method public hashCode()I
    .registers 4

    .line 80
    iget v0, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->audioSource:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 82
    iget v2, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->sampleRate:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 84
    iget v2, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->channelCount:I

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 86
    iget v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->audioFormat:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public toBuilder()Landroidx/camera/video/internal/audio/AudioSettings$Builder;
    .registers 3

    .line 92
    new-instance v0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$Builder;-><init>(Landroidx/camera/video/internal/audio/AudioSettings;Landroidx/camera/video/internal/audio/AutoValue_AudioSettings$1;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AudioSettings{audioSource="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->audioSource:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sampleRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->sampleRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", channelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->channelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioFormat="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroidx/camera/video/internal/audio/AutoValue_AudioSettings;->audioFormat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
