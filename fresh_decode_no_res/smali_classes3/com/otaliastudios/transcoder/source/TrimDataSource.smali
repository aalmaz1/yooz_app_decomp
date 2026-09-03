.class public Lcom/otaliastudios/transcoder/source/TrimDataSource;
.super Lcom/otaliastudios/transcoder/source/DataSourceWrapper;
.source "TrimDataSource.java"


# static fields
.field private static final LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;


# instance fields
.field private extraDurationUs:J

.field private trimDone:Z

.field private trimDurationUs:J

.field private final trimEndUs:J

.field private final trimStartUs:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Lcom/otaliastudios/transcoder/internal/utils/Logger;

    const-string v1, "TrimDataSource"

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/transcoder/source/DataSource;J)V
    .locals 6

    const-wide/16 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 24
    invoke-direct/range {v0 .. v5}, Lcom/otaliastudios/transcoder/source/TrimDataSource;-><init>(Lcom/otaliastudios/transcoder/source/DataSource;JJ)V

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/transcoder/source/DataSource;JJ)V
    .locals 4

    .line 29
    invoke-direct {p0, p1}, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;-><init>(Lcom/otaliastudios/transcoder/source/DataSource;)V

    const-wide/16 v0, 0x0

    .line 18
    iput-wide v0, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->extraDurationUs:J

    const-wide/high16 v2, -0x8000000000000000L

    .line 19
    iput-wide v2, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimDurationUs:J

    const/4 p1, 0x0

    .line 20
    iput-boolean p1, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimDone:Z

    cmp-long p1, p2, v0

    if-ltz p1, :cond_0

    cmp-long p1, p4, v0

    if-ltz p1, :cond_0

    .line 33
    iput-wide p2, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimStartUs:J

    .line 34
    iput-wide p4, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimEndUs:J

    return-void

    .line 31
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Trim values cannot be negative."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public canReadTrack(Lcom/otaliastudios/transcoder/common/TrackType;)Z
    .locals 6

    .line 90
    iget-boolean v0, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimDone:Z

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimStartUs:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/source/TrimDataSource;->getSource()Lcom/otaliastudios/transcoder/source/DataSource;

    move-result-object v2

    iget-wide v3, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimStartUs:J

    invoke-interface {v2, v3, v4}, Lcom/otaliastudios/transcoder/source/DataSource;->seekTo(J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->extraDurationUs:J

    .line 92
    sget-object v0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "canReadTrack(): extraDurationUs="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->extraDurationUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " trimStartUs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimStartUs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " source.seekTo(trimStartUs)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->extraDurationUs:J

    iget-wide v4, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimStartUs:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 95
    iput-boolean v0, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimDone:Z

    .line 97
    :cond_0
    invoke-super {p0, p1}, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->canReadTrack(Lcom/otaliastudios/transcoder/common/TrackType;)Z

    move-result p1

    return p1
.end method

.method public deinitialize()V
    .locals 2

    .line 44
    invoke-super {p0}, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->deinitialize()V

    const-wide/high16 v0, -0x8000000000000000L

    .line 45
    iput-wide v0, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimDurationUs:J

    const/4 v0, 0x0

    .line 46
    iput-boolean v0, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimDone:Z

    return-void
.end method

.method public getDurationUs()J
    .locals 4

    .line 78
    iget-wide v0, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimDurationUs:J

    iget-wide v2, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->extraDurationUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getPositionUs()J
    .locals 4

    .line 83
    invoke-super {p0}, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->getPositionUs()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimStartUs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->extraDurationUs:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public initialize()V
    .locals 8

    .line 51
    invoke-super {p0}, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->initialize()V

    .line 52
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/source/TrimDataSource;->getSource()Lcom/otaliastudios/transcoder/source/DataSource;

    move-result-object v0

    invoke-interface {v0}, Lcom/otaliastudios/transcoder/source/DataSource;->getDurationUs()J

    move-result-wide v0

    .line 53
    iget-wide v2, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimStartUs:J

    iget-wide v4, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimEndUs:J

    add-long/2addr v2, v4

    cmp-long v2, v2, v0

    if-gez v2, :cond_0

    .line 61
    sget-object v2, Lcom/otaliastudios/transcoder/source/TrimDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "initialize(): duration="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " trimStart="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimStartUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " trimEnd="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimEndUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " trimDuration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimStartUs:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimEndUs:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->i(Ljava/lang/String;)V

    .line 65
    iget-wide v2, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimStartUs:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimEndUs:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimDurationUs:J

    return-void

    .line 54
    :cond_0
    sget-object v2, Lcom/otaliastudios/transcoder/source/TrimDataSource;->LOG:Lcom/otaliastudios/transcoder/internal/utils/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Trim values are too large! start="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimStartUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", end="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimEndUs:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", duration="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/otaliastudios/transcoder/internal/utils/Logger;->w(Ljava/lang/String;)V

    .line 58
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Trim values cannot be greater than media duration."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDrained()Z
    .locals 4

    .line 104
    invoke-super {p0}, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->isDrained()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/source/TrimDataSource;->getPositionUs()J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/source/TrimDataSource;->getDurationUs()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInitialized()Z
    .locals 4

    .line 39
    invoke-super {p0}, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimDurationUs:J

    const-wide/high16 v2, -0x8000000000000000L

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public seekTo(J)J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimStartUs:J

    add-long/2addr v0, p1

    .line 112
    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/source/TrimDataSource;->getSource()Lcom/otaliastudios/transcoder/source/DataSource;

    move-result-object p1

    invoke-interface {p1, v0, v1}, Lcom/otaliastudios/transcoder/source/DataSource;->seekTo(J)J

    move-result-wide p1

    .line 113
    iget-wide v0, p0, Lcom/otaliastudios/transcoder/source/TrimDataSource;->trimStartUs:J

    sub-long/2addr p1, v0

    return-wide p1
.end method
