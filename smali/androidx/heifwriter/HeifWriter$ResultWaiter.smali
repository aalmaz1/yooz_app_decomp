.class Landroidx/heifwriter/HeifWriter$ResultWaiter;
.super Ljava/lang/Object;
.source "HeifWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/heifwriter/HeifWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ResultWaiter"
.end annotation


# instance fields
.field private mDone:Z

.field private mException:Ljava/lang/Exception;


# direct methods
.method constructor <init>()V
    .registers 1

    .line 651
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method declared-synchronized signalResult(Ljava/lang/Exception;)V
    .registers 3

    monitor-enter p0

    .line 686
    :try_start_1
    iget-boolean v0, p0, Landroidx/heifwriter/HeifWriter$ResultWaiter;->mDone:Z

    if-nez v0, :cond_d

    const/4 v0, 0x1

    .line 687
    iput-boolean v0, p0, Landroidx/heifwriter/HeifWriter$ResultWaiter;->mDone:Z

    .line 688
    iput-object p1, p0, Landroidx/heifwriter/HeifWriter$ResultWaiter;->mException:Ljava/lang/Exception;

    .line 689
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    .line 691
    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized waitForResult(J)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_3e

    if-nez v2, :cond_11

    .line 660
    :catch_9
    :goto_9
    :try_start_9
    iget-boolean p1, p0, Landroidx/heifwriter/HeifWriter$ResultWaiter;->mDone:Z
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_46

    if-nez p1, :cond_27

    .line 662
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_10} :catch_9
    .catchall {:try_start_d .. :try_end_10} :catchall_46

    goto :goto_9

    .line 666
    :cond_11
    :try_start_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 669
    :goto_15
    iget-boolean v4, p0, Landroidx/heifwriter/HeifWriter$ResultWaiter;->mDone:Z
    :try_end_17
    .catchall {:try_start_11 .. :try_end_17} :catchall_46

    if-nez v4, :cond_27

    cmp-long v4, p1, v0

    if-lez v4, :cond_27

    .line 671
    :try_start_1d
    invoke-virtual {p0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_20
    .catchall {:try_start_1d .. :try_end_20} :catchall_46

    .line 673
    :catch_20
    :try_start_20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v2

    sub-long/2addr p1, v4

    goto :goto_15

    .line 676
    :cond_27
    iget-boolean p1, p0, Landroidx/heifwriter/HeifWriter$ResultWaiter;->mDone:Z

    if-nez p1, :cond_37

    const/4 p1, 0x1

    .line 677
    iput-boolean p1, p0, Landroidx/heifwriter/HeifWriter$ResultWaiter;->mDone:Z

    .line 678
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "timed out waiting for result"

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Landroidx/heifwriter/HeifWriter$ResultWaiter;->mException:Ljava/lang/Exception;

    .line 680
    :cond_37
    iget-object p1, p0, Landroidx/heifwriter/HeifWriter$ResultWaiter;->mException:Ljava/lang/Exception;
    :try_end_39
    .catchall {:try_start_20 .. :try_end_39} :catchall_46

    if-nez p1, :cond_3d

    .line 683
    monitor-exit p0

    return-void

    .line 681
    :cond_3d
    :try_start_3d
    throw p1

    .line 657
    :cond_3e
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "timeoutMs is negative"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_46
    .catchall {:try_start_3d .. :try_end_46} :catchall_46

    :catchall_46
    move-exception p1

    monitor-exit p0

    throw p1
.end method
