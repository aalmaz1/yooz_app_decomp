.class public final Lcom/google/android/gms/internal/location/zzfd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-location@@21.2.0"


# direct methods
.method public static zza(Ljava/util/concurrent/CountDownLatch;JLjava/util/concurrent/TimeUnit;)Z
    .registers 7

    const-wide/16 p1, 0x1e

    const/4 v0, 0x0

    .line 1
    :try_start_3
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_1c

    add-long/2addr v1, p1

    :goto_c
    :try_start_c
    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_12} :catch_1e
    .catchall {:try_start_c .. :try_end_12} :catchall_1c

    if-eqz v0, :cond_1b

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_1b
    return p0

    :catchall_1c
    move-exception p0

    goto :goto_26

    :catch_1e
    const/4 v0, 0x1

    .line 4
    :try_start_1f
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_1c

    sub-long p1, v1, p1

    goto :goto_c

    :goto_26
    if-eqz v0, :cond_2f

    .line 5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    .line 6
    :cond_2f
    throw p0
.end method
