.class public Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;
.super Lcom/otaliastudios/transcoder/source/DefaultDataSource;
.source "FileDescriptorDataSource.java"


# instance fields
.field private final descriptor:Ljava/io/FileDescriptor;

.field private final length:J

.field private final offset:J


# direct methods
.method public constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 8

    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    .line 25
    invoke-direct/range {v0 .. v5}, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;-><init>(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/FileDescriptor;JJ)V
    .registers 6

    .line 28
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/source/DefaultDataSource;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;->descriptor:Ljava/io/FileDescriptor;

    .line 30
    iput-wide p2, p0, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;->offset:J

    const-wide/16 p1, 0x0

    cmp-long p1, p4, p1

    if-lez p1, :cond_e

    goto :goto_13

    :cond_e
    const-wide p4, 0x7ffffffffffffffL

    .line 31
    :goto_13
    iput-wide p4, p0, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;->length:J

    return-void
.end method


# virtual methods
.method protected initializeExtractor(Landroid/media/MediaExtractor;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 36
    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;->descriptor:Ljava/io/FileDescriptor;

    iget-wide v2, p0, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;->offset:J

    iget-wide v4, p0, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;->length:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method

.method protected initializeRetriever(Landroid/media/MediaMetadataRetriever;)V
    .registers 8

    .line 41
    iget-object v1, p0, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;->descriptor:Ljava/io/FileDescriptor;

    iget-wide v2, p0, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;->offset:J

    iget-wide v4, p0, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;->length:J

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    return-void
.end method
