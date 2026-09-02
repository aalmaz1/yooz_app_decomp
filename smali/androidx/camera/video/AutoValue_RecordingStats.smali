.class final Landroidx/camera/video/AutoValue_RecordingStats;
.super Landroidx/camera/video/RecordingStats;
.source "AutoValue_RecordingStats.java"


# instance fields
.field private final audioStats:Landroidx/camera/video/AudioStats;

.field private final numBytesRecorded:J

.field private final recordedDurationNanos:J


# direct methods
.method constructor <init>(JJLandroidx/camera/video/AudioStats;)V
    .registers 6

    .line 19
    invoke-direct {p0}, Landroidx/camera/video/RecordingStats;-><init>()V

    .line 20
    iput-wide p1, p0, Landroidx/camera/video/AutoValue_RecordingStats;->recordedDurationNanos:J

    .line 21
    iput-wide p3, p0, Landroidx/camera/video/AutoValue_RecordingStats;->numBytesRecorded:J

    if-eqz p5, :cond_c

    .line 25
    iput-object p5, p0, Landroidx/camera/video/AutoValue_RecordingStats;->audioStats:Landroidx/camera/video/AudioStats;

    return-void

    .line 23
    :cond_c
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null audioStats"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 9

    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    return v0

    .line 58
    :cond_4
    instance-of v1, p1, Landroidx/camera/video/RecordingStats;

    const/4 v2, 0x0

    if-eqz v1, :cond_2e

    .line 59
    check-cast p1, Landroidx/camera/video/RecordingStats;

    .line 60
    iget-wide v3, p0, Landroidx/camera/video/AutoValue_RecordingStats;->recordedDurationNanos:J

    invoke-virtual {p1}, Landroidx/camera/video/RecordingStats;->getRecordedDurationNanos()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2c

    iget-wide v3, p0, Landroidx/camera/video/AutoValue_RecordingStats;->numBytesRecorded:J

    .line 61
    invoke-virtual {p1}, Landroidx/camera/video/RecordingStats;->getNumBytesRecorded()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_2c

    iget-object v1, p0, Landroidx/camera/video/AutoValue_RecordingStats;->audioStats:Landroidx/camera/video/AudioStats;

    .line 62
    invoke-virtual {p1}, Landroidx/camera/video/RecordingStats;->getAudioStats()Landroidx/camera/video/AudioStats;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2c

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    return v0

    :cond_2e
    return v2
.end method

.method public getAudioStats()Landroidx/camera/video/AudioStats;
    .registers 2

    .line 41
    iget-object v0, p0, Landroidx/camera/video/AutoValue_RecordingStats;->audioStats:Landroidx/camera/video/AudioStats;

    return-object v0
.end method

.method public getNumBytesRecorded()J
    .registers 3

    .line 35
    iget-wide v0, p0, Landroidx/camera/video/AutoValue_RecordingStats;->numBytesRecorded:J

    return-wide v0
.end method

.method public getRecordedDurationNanos()J
    .registers 3

    .line 30
    iget-wide v0, p0, Landroidx/camera/video/AutoValue_RecordingStats;->recordedDurationNanos:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 8

    .line 71
    iget-wide v0, p0, Landroidx/camera/video/AutoValue_RecordingStats;->recordedDurationNanos:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int/2addr v0, v1

    .line 73
    iget-wide v3, p0, Landroidx/camera/video/AutoValue_RecordingStats;->numBytesRecorded:J

    ushr-long v5, v3, v2

    xor-long v2, v5, v3

    long-to-int v2, v2

    xor-int/2addr v0, v2

    mul-int/2addr v0, v1

    .line 75
    iget-object v1, p0, Landroidx/camera/video/AutoValue_RecordingStats;->audioStats:Landroidx/camera/video/AudioStats;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RecordingStats{recordedDurationNanos="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Landroidx/camera/video/AutoValue_RecordingStats;->recordedDurationNanos:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", numBytesRecorded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroidx/camera/video/AutoValue_RecordingStats;->numBytesRecorded:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", audioStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroidx/camera/video/AutoValue_RecordingStats;->audioStats:Landroidx/camera/video/AudioStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
