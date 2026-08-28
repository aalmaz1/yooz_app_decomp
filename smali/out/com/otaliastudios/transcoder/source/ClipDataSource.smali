.class public Lcom/otaliastudios/transcoder/source/ClipDataSource;
.super Lcom/otaliastudios/transcoder/source/DataSourceWrapper;
.source "ClipDataSource.java"


# direct methods
.method public constructor <init>(Lcom/otaliastudios/transcoder/source/DataSource;J)V
    .registers 5

    .line 12
    new-instance v0, Lcom/otaliastudios/transcoder/source/TrimDataSource;

    invoke-direct {v0, p1, p2, p3}, Lcom/otaliastudios/transcoder/source/TrimDataSource;-><init>(Lcom/otaliastudios/transcoder/source/DataSource;J)V

    invoke-direct {p0, v0}, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;-><init>(Lcom/otaliastudios/transcoder/source/DataSource;)V

    return-void
.end method

.method public constructor <init>(Lcom/otaliastudios/transcoder/source/DataSource;JJ)V
    .registers 13

    .line 16
    new-instance v6, Lcom/otaliastudios/transcoder/source/TrimDataSource;

    .line 18
    invoke-static {p1}, Lcom/otaliastudios/transcoder/source/ClipDataSource;->getSourceDurationUs(Lcom/otaliastudios/transcoder/source/DataSource;)J

    move-result-wide v0

    sub-long v4, v0, p4

    move-object v0, v6

    move-object v1, p1

    move-wide v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/otaliastudios/transcoder/source/TrimDataSource;-><init>(Lcom/otaliastudios/transcoder/source/DataSource;JJ)V

    .line 16
    invoke-direct {p0, v6}, Lcom/otaliastudios/transcoder/source/DataSourceWrapper;-><init>(Lcom/otaliastudios/transcoder/source/DataSource;)V

    return-void
.end method

.method private static getSourceDurationUs(Lcom/otaliastudios/transcoder/source/DataSource;)J
    .registers 3

    .line 22
    invoke-interface {p0}, Lcom/otaliastudios/transcoder/source/DataSource;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-interface {p0}, Lcom/otaliastudios/transcoder/source/DataSource;->initialize()V

    .line 23
    :cond_9
    invoke-interface {p0}, Lcom/otaliastudios/transcoder/source/DataSource;->getDurationUs()J

    move-result-wide v0

    return-wide v0
.end method
