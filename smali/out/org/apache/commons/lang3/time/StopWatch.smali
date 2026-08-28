.class public Lorg/apache/commons/lang3/time/StopWatch;
.super Ljava/lang/Object;
.source "StopWatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang3/time/StopWatch$SplitState;,
        Lorg/apache/commons/lang3/time/StopWatch$State;
    }
.end annotation


# static fields
.field private static final NANO_2_MILLIS:J = 0xf4240L


# instance fields
.field private runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

.field private splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

.field private startTime:J

.field private startTimeMillis:J

.field private stopTime:J


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 213
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 183
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 188
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->UNSPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    return-void
.end method

.method public static createStarted()Lorg/apache/commons/lang3/time/StopWatch;
    .registers 1

    .line 72
    new-instance v0, Lorg/apache/commons/lang3/time/StopWatch;

    invoke-direct {v0}, Lorg/apache/commons/lang3/time/StopWatch;-><init>()V

    .line 73
    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/StopWatch;->start()V

    return-object v0
.end method


# virtual methods
.method public getNanoTime()J
    .registers 5

    .line 410
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->STOPPED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-eq v0, v1, :cond_2c

    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->SUSPENDED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_d

    goto :goto_2c

    .line 412
    :cond_d
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_16

    const-wide/16 v0, 0x0

    return-wide v0

    .line 414
    :cond_16
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_24

    .line 415
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    :goto_22
    sub-long/2addr v0, v2

    return-wide v0

    .line 417
    :cond_24
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Illegal running state has occurred."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 411
    :cond_2c
    :goto_2c
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    iget-wide v2, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    goto :goto_22
.end method

.method public getSplitNanoTime()J
    .registers 5

    .line 454
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->SPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    if-ne v0, v1, :cond_c

    .line 457
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    iget-wide v2, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    sub-long/2addr v0, v2

    return-wide v0

    .line 455
    :cond_c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be split to get the split time. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSplitTime()J
    .registers 5

    .line 436
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getSplitNanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getStartTime()J
    .registers 3

    .line 469
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-eq v0, v1, :cond_9

    .line 473
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTimeMillis:J

    return-wide v0

    .line 470
    :cond_9
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch has not been started"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTime()J
    .registers 5

    .line 373
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getNanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getTime(Ljava/util/concurrent/TimeUnit;)J
    .registers 5

    .line 393
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getNanoTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    return-wide v0
.end method

.method public isStarted()Z
    .registers 2

    .line 519
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/StopWatch$State;->isStarted()Z

    move-result v0

    return v0
.end method

.method public isStopped()Z
    .registers 2

    .line 547
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/StopWatch$State;->isStopped()Z

    move-result v0

    return v0
.end method

.method public isSuspended()Z
    .registers 2

    .line 532
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    invoke-virtual {v0}, Lorg/apache/commons/lang3/time/StopWatch$State;->isSuspended()Z

    move-result v0

    return v0
.end method

.method public reset()V
    .registers 2

    .line 273
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    .line 274
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->UNSPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    return-void
.end method

.method public resume()V
    .registers 7

    .line 353
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->SUSPENDED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_17

    .line 356
    iget-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    .line 357
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    return-void

    .line 354
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be suspended to resume. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public split()V
    .registers 3

    .line 291
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_11

    .line 294
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    .line 295
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->SPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    return-void

    .line 292
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch is not running. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .registers 3

    .line 229
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->STOPPED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-eq v0, v1, :cond_25

    .line 232
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->UNSTARTED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_1d

    .line 235
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTime:J

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->startTimeMillis:J

    .line 237
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    return-void

    .line 233
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch already started. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 230
    :cond_25
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be reset before being restarted. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stop()V
    .registers 3

    .line 254
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-eq v0, v1, :cond_15

    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->SUSPENDED:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_d

    goto :goto_15

    .line 255
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch is not running. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 257
    :cond_15
    :goto_15
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_21

    .line 258
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    .line 260
    :cond_21
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->STOPPED:Lorg/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    return-void
.end method

.method public suspend()V
    .registers 3

    .line 332
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$State;->RUNNING:Lorg/apache/commons/lang3/time/StopWatch$State;

    if-ne v0, v1, :cond_11

    .line 335
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->stopTime:J

    .line 336
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$State;->SUSPENDED:Lorg/apache/commons/lang3/time/StopWatch$State;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->runningState:Lorg/apache/commons/lang3/time/StopWatch$State;

    return-void

    .line 333
    :cond_11
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch must be running to suspend. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toSplitString()Ljava/lang/String;
    .registers 3

    .line 505
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getSplitTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDurationHMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 489
    invoke-virtual {p0}, Lorg/apache/commons/lang3/time/StopWatch;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/time/DurationFormatUtils;->formatDurationHMS(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unsplit()V
    .registers 3

    .line 312
    iget-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    sget-object v1, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->SPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    if-ne v0, v1, :cond_b

    .line 315
    sget-object v0, Lorg/apache/commons/lang3/time/StopWatch$SplitState;->UNSPLIT:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    iput-object v0, p0, Lorg/apache/commons/lang3/time/StopWatch;->splitState:Lorg/apache/commons/lang3/time/StopWatch$SplitState;

    return-void

    .line 313
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Stopwatch has not been split. "

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
