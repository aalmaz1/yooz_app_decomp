.class Lcom/sun/mail/pop3/AppendStream;
.super Ljava/io/OutputStream;
.source "AppendStream.java"


# instance fields
.field private end:J

.field private raf:Ljava/io/RandomAccessFile;

.field private final start:J

.field private final tf:Lcom/sun/mail/pop3/WritableSharedFile;


# direct methods
.method public constructor <init>(Lcom/sun/mail/pop3/WritableSharedFile;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/sun/mail/pop3/AppendStream;->tf:Lcom/sun/mail/pop3/WritableSharedFile;

    .line 62
    invoke-virtual {p1}, Lcom/sun/mail/pop3/WritableSharedFile;->getWritableFile()Ljava/io/RandomAccessFile;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/pop3/AppendStream;->raf:Ljava/io/RandomAccessFile;

    .line 63
    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/pop3/AppendStream;->start:J

    .line 64
    iget-object p1, p0, Lcom/sun/mail/pop3/AppendStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1, v0, v1}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 84
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/AppendStream;->tf:Lcom/sun/mail/pop3/WritableSharedFile;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/WritableSharedFile;->updateLength()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/pop3/AppendStream;->end:J

    const/4 v0, 0x0

    .line 85
    iput-object v0, p0, Lcom/sun/mail/pop3/AppendStream;->raf:Ljava/io/RandomAccessFile;
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 86
    monitor-exit p0

    return-void

    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getInputStream()Ljava/io/InputStream;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 89
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/AppendStream;->tf:Lcom/sun/mail/pop3/WritableSharedFile;

    iget-wide v1, p0, Lcom/sun/mail/pop3/AppendStream;->start:J

    iget-wide v3, p0, Lcom/sun/mail/pop3/AppendStream;->end:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/sun/mail/pop3/WritableSharedFile;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public write(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 69
    iget-object v0, p0, Lcom/sun/mail/pop3/AppendStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write(I)V

    return-void
.end method

.method public write([B)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 74
    iget-object v0, p0, Lcom/sun/mail/pop3/AppendStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method public write([BII)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/sun/mail/pop3/AppendStream;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method
