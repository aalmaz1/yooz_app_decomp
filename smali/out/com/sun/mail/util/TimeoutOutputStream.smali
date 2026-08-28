.class Lcom/sun/mail/util/TimeoutOutputStream;
.super Ljava/io/OutputStream;
.source "WriteTimeoutSocket.java"


# instance fields
.field private b1:[B

.field private final os:Ljava/io/OutputStream;

.field private final ses:Ljava/util/concurrent/ScheduledExecutorService;

.field private final timeout:I

.field private final timeoutTask:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/util/concurrent/ScheduledExecutorService;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 372
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 373
    iput-object p1, p0, Lcom/sun/mail/util/TimeoutOutputStream;->os:Ljava/io/OutputStream;

    .line 374
    iput-object p2, p0, Lcom/sun/mail/util/TimeoutOutputStream;->ses:Ljava/util/concurrent/ScheduledExecutorService;

    .line 375
    iput p3, p0, Lcom/sun/mail/util/TimeoutOutputStream;->timeout:I

    .line 376
    new-instance p1, Lcom/sun/mail/util/TimeoutOutputStream$1;

    invoke-direct {p1, p0}, Lcom/sun/mail/util/TimeoutOutputStream$1;-><init>(Lcom/sun/mail/util/TimeoutOutputStream;)V

    iput-object p1, p0, Lcom/sun/mail/util/TimeoutOutputStream;->timeoutTask:Ljava/util/concurrent/Callable;

    return-void
.end method

.method static synthetic access$000(Lcom/sun/mail/util/TimeoutOutputStream;)Ljava/io/OutputStream;
    .registers 1

    .line 364
    iget-object p0, p0, Lcom/sun/mail/util/TimeoutOutputStream;->os:Ljava/io/OutputStream;

    return-object p0
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/sun/mail/util/TimeoutOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public declared-synchronized write(I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 387
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/util/TimeoutOutputStream;->b1:[B

    if-nez v0, :cond_a

    const/4 v0, 0x1

    new-array v0, v0, [B

    .line 388
    iput-object v0, p0, Lcom/sun/mail/util/TimeoutOutputStream;->b1:[B

    .line 389
    :cond_a
    iget-object v0, p0, Lcom/sun/mail/util/TimeoutOutputStream;->b1:[B

    const/4 v1, 0x0

    int-to-byte p1, p1

    aput-byte p1, v0, v1

    .line 390
    invoke-virtual {p0, v0}, Lcom/sun/mail/util/TimeoutOutputStream;->write([B)V
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_15

    .line 391
    monitor-exit p0

    return-void

    :catchall_15
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized write([BII)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    if-ltz p2, :cond_39

    .line 396
    :try_start_3
    array-length v0, p1

    if-gt p2, v0, :cond_39

    if-ltz p3, :cond_39

    add-int v0, p2, p3

    array-length v1, p1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3f

    if-gt v0, v1, :cond_39

    if-ltz v0, :cond_39

    if-nez p3, :cond_13

    .line 400
    monitor-exit p0

    return-void

    :cond_13
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 407
    :try_start_15
    iget v2, p0, Lcom/sun/mail/util/TimeoutOutputStream;->timeout:I

    if-lez v2, :cond_27

    .line 408
    iget-object v3, p0, Lcom/sun/mail/util/TimeoutOutputStream;->ses:Ljava/util/concurrent/ScheduledExecutorService;

    iget-object v4, p0, Lcom/sun/mail/util/TimeoutOutputStream;->timeoutTask:Ljava/util/concurrent/Callable;

    int-to-long v5, v2

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v5, v6, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v1
    :try_end_24
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_15 .. :try_end_24} :catch_27
    .catchall {:try_start_15 .. :try_end_24} :catchall_25

    goto :goto_27

    :catchall_25
    move-exception p1

    goto :goto_33

    .line 414
    :catch_27
    :cond_27
    :goto_27
    :try_start_27
    iget-object v2, p0, Lcom/sun/mail/util/TimeoutOutputStream;->os:Ljava/io/OutputStream;

    invoke-virtual {v2, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_25

    if-eqz v1, :cond_31

    .line 417
    :try_start_2e
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3f

    .line 419
    :cond_31
    monitor-exit p0

    return-void

    :goto_33
    if-eqz v1, :cond_38

    .line 417
    :try_start_35
    invoke-interface {v1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    .line 418
    :cond_38
    throw p1

    .line 398
    :cond_39
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
    :try_end_3f
    .catchall {:try_start_35 .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception p1

    monitor-exit p0

    throw p1
.end method
