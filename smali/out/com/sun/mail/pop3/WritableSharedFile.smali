.class Lcom/sun/mail/pop3/WritableSharedFile;
.super Ljavax/mail/util/SharedFileInputStream;
.source "WritableSharedFile.java"


# instance fields
.field private af:Lcom/sun/mail/pop3/AppendStream;

.field private raf:Ljava/io/RandomAccessFile;


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 57
    invoke-direct {p0, p1}, Ljavax/mail/util/SharedFileInputStream;-><init>(Ljava/io/File;)V

    .line 59
    :try_start_3
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p1, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/mail/pop3/WritableSharedFile;->raf:Ljava/io/RandomAccessFile;
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_c} :catch_d

    goto :goto_10

    .line 63
    :catch_d
    invoke-super {p0}, Ljavax/mail/util/SharedFileInputStream;->close()V

    :goto_10
    return-void
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    :try_start_0
    invoke-super {p0}, Ljavax/mail/util/SharedFileInputStream;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_9

    .line 82
    iget-object v0, p0, Lcom/sun/mail/pop3/WritableSharedFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void

    :catchall_9
    move-exception v0

    iget-object v1, p0, Lcom/sun/mail/pop3/WritableSharedFile;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    .line 83
    throw v0
.end method

.method public declared-synchronized getAppendStream()Lcom/sun/mail/pop3/AppendStream;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 100
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/WritableSharedFile;->af:Lcom/sun/mail/pop3/AppendStream;

    if-nez v0, :cond_e

    .line 104
    new-instance v0, Lcom/sun/mail/pop3/AppendStream;

    invoke-direct {v0, p0}, Lcom/sun/mail/pop3/AppendStream;-><init>(Lcom/sun/mail/pop3/WritableSharedFile;)V

    iput-object v0, p0, Lcom/sun/mail/pop3/WritableSharedFile;->af:Lcom/sun/mail/pop3/AppendStream;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_16

    .line 105
    monitor-exit p0

    return-object v0

    .line 101
    :cond_e
    :try_start_e
    new-instance v0, Ljava/io/IOException;

    const-string v1, "POP3 file cache only supports single threaded access"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_16
    .catchall {:try_start_e .. :try_end_16} :catchall_16

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWritableFile()Ljava/io/RandomAccessFile;
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/sun/mail/pop3/WritableSharedFile;->raf:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method declared-synchronized updateLength()J
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 91
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/WritableSharedFile;->in:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/pop3/WritableSharedFile;->datalen:J

    const/4 v0, 0x0

    .line 92
    iput-object v0, p0, Lcom/sun/mail/pop3/WritableSharedFile;->af:Lcom/sun/mail/pop3/AppendStream;

    .line 93
    iget-wide v0, p0, Lcom/sun/mail/pop3/WritableSharedFile;->datalen:J
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_10

    monitor-exit p0

    return-wide v0

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method
