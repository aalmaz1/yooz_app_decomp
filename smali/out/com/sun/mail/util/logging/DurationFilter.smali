.class public Lcom/sun/mail/util/logging/DurationFilter;
.super Ljava/lang/Object;
.source "DurationFilter.java"

# interfaces
.implements Ljava/util/logging/Filter;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private count:J

.field private final duration:J

.field private peak:J

.field private final records:J

.field private start:J


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ".records"

    .line 122
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/DurationFilter;->initLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sun/mail/util/logging/DurationFilter;->checkRecords(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/util/logging/DurationFilter;->records:J

    const-string v0, ".duration"

    .line 123
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/DurationFilter;->initLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/sun/mail/util/logging/DurationFilter;->checkDuration(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/util/logging/DurationFilter;->duration:J

    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 5

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-static {p1, p2}, Lcom/sun/mail/util/logging/DurationFilter;->checkRecords(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sun/mail/util/logging/DurationFilter;->records:J

    .line 136
    invoke-static {p3, p4}, Lcom/sun/mail/util/logging/DurationFilter;->checkDuration(J)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/sun/mail/util/logging/DurationFilter;->duration:J

    return-void
.end method

.method private declared-synchronized accept(J)Z
    .registers 14

    monitor-enter p0

    .line 309
    :try_start_1
    iget-wide v0, p0, Lcom/sun/mail/util/logging/DurationFilter;->count:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-wide/16 v7, 0x1

    if-lez v4, :cond_3a

    .line 310
    iget-wide v9, p0, Lcom/sun/mail/util/logging/DurationFilter;->peak:J

    sub-long v9, p1, v9

    cmp-long v2, v9, v2

    if-lez v2, :cond_17

    .line 311
    iput-wide p1, p0, Lcom/sun/mail/util/logging/DurationFilter;->peak:J

    .line 315
    :cond_17
    iget-wide p1, p0, Lcom/sun/mail/util/logging/DurationFilter;->records:J

    cmp-long p1, v0, p1

    if-eqz p1, :cond_21

    add-long/2addr v0, v7

    .line 316
    iput-wide v0, p0, Lcom/sun/mail/util/logging/DurationFilter;->count:J

    goto :goto_4c

    .line 319
    :cond_21
    iget-wide p1, p0, Lcom/sun/mail/util/logging/DurationFilter;->peak:J

    iget-wide v0, p0, Lcom/sun/mail/util/logging/DurationFilter;->start:J

    sub-long v0, p1, v0

    iget-wide v2, p0, Lcom/sun/mail/util/logging/DurationFilter;->duration:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_32

    .line 320
    iput-wide v7, p0, Lcom/sun/mail/util/logging/DurationFilter;->count:J

    .line 321
    iput-wide p1, p0, Lcom/sun/mail/util/logging/DurationFilter;->start:J

    goto :goto_4c

    :cond_32
    const-wide/16 v0, -0x1

    .line 324
    iput-wide v0, p0, Lcom/sun/mail/util/logging/DurationFilter;->count:J

    add-long/2addr p1, v2

    .line 325
    iput-wide p1, p0, Lcom/sun/mail/util/logging/DurationFilter;->start:J

    goto :goto_4d

    .line 332
    :cond_3a
    iget-wide v9, p0, Lcom/sun/mail/util/logging/DurationFilter;->start:J

    sub-long v9, p1, v9

    cmp-long v4, v9, v2

    if-gez v4, :cond_46

    cmp-long v0, v0, v2

    if-nez v0, :cond_4d

    .line 333
    :cond_46
    iput-wide v7, p0, Lcom/sun/mail/util/logging/DurationFilter;->count:J

    .line 334
    iput-wide p1, p0, Lcom/sun/mail/util/logging/DurationFilter;->start:J

    .line 335
    iput-wide p1, p0, Lcom/sun/mail/util/logging/DurationFilter;->peak:J
    :try_end_4c
    .catchall {:try_start_1 .. :try_end_4c} :catchall_4f

    :goto_4c
    move v5, v6

    .line 341
    :cond_4d
    :goto_4d
    monitor-exit p0

    return v5

    :catchall_4f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static checkDuration(J)J
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_7

    goto :goto_a

    :cond_7
    const-wide/32 p0, 0xdbba0

    :goto_a
    return-wide p0
.end method

.method private static checkRecords(J)J
    .registers 4

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_7

    goto :goto_9

    :cond_7
    const-wide/16 p0, 0x3e8

    :goto_9
    return-wide p0
.end method

.method private initLong(Ljava/lang/String;)J
    .registers 11

    .line 355
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/high16 v1, -0x8000000000000000L

    if-eqz v0, :cond_65

    .line 357
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_65

    .line 358
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/logging/DurationFilter;->isTimeEntry(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v3, 0x0

    if-eqz p1, :cond_2b

    .line 361
    :try_start_26
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->parseDurationToMillis(Ljava/lang/CharSequence;)J

    move-result-wide v5
    :try_end_2a
    .catch Ljava/lang/RuntimeException; {:try_start_26 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2a} :catch_2b
    .catch Ljava/lang/LinkageError; {:try_start_26 .. :try_end_2a} :catch_2b

    goto :goto_2c

    :catch_2b
    :cond_2b
    move-wide v5, v3

    :goto_2c
    cmp-long p1, v5, v3

    if-nez p1, :cond_64

    .line 371
    :try_start_30
    invoke-static {v0}, Lcom/sun/mail/util/logging/DurationFilter;->tokenizeLongs(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v3, 0x0

    const-wide/16 v4, 0x1

    move v6, v3

    :goto_39
    if-ge v6, v0, :cond_62

    aget-object v7, p1, v6

    const-string v8, "L"

    .line 372
    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_4d

    const-string v8, "l"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_57

    .line 373
    :cond_4d
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v3, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 375
    :cond_57
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    invoke-static {v4, v5, v7, v8}, Lcom/sun/mail/util/logging/DurationFilter;->multiplyExact(JJ)J

    move-result-wide v4
    :try_end_5f
    .catch Ljava/lang/RuntimeException; {:try_start_30 .. :try_end_5f} :catch_65

    add-int/lit8 v6, v6, 0x1

    goto :goto_39

    :cond_62
    move-wide v1, v4

    goto :goto_65

    :cond_64
    move-wide v1, v5

    :catch_65
    :cond_65
    :goto_65
    return-wide v1
.end method

.method private isTimeEntry(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6

    const/4 v0, 0x0

    .line 398
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x50

    if-eq v1, v2, :cond_11

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result p2

    const/16 v1, 0x70

    if-ne p2, v1, :cond_1a

    :cond_11
    const-string p2, ".duration"

    .line 399
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    const/4 v0, 0x1

    :cond_1a
    return v0
.end method

.method private static multiplyExact(JJ)J
    .registers 10

    mul-long v0, p0, p2

    .line 438
    invoke-static {p0, p1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    or-long/2addr v2, v4

    const/16 v4, 0x1f

    ushr-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_31

    cmp-long v2, p2, v4

    if-eqz v2, :cond_1e

    .line 439
    div-long v2, v0, p2

    cmp-long v2, v2, p0

    if-nez v2, :cond_2b

    :cond_1e
    const-wide/high16 v2, -0x8000000000000000L

    cmp-long p0, p0, v2

    if-nez p0, :cond_31

    const-wide/16 p0, -0x1

    cmp-long p0, p2, p0

    if-eqz p0, :cond_2b

    goto :goto_31

    .line 441
    :cond_2b
    new-instance p0, Ljava/lang/ArithmeticException;

    invoke-direct {p0}, Ljava/lang/ArithmeticException;-><init>()V

    throw p0

    :cond_31
    :goto_31
    return-wide v0
.end method

.method private test(JJ)Z
    .registers 13

    .line 283
    monitor-enter p0

    .line 284
    :try_start_1
    iget-wide v0, p0, Lcom/sun/mail/util/logging/DurationFilter;->count:J

    .line 285
    iget-wide v2, p0, Lcom/sun/mail/util/logging/DurationFilter;->start:J

    .line 286
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_24

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    const/4 v7, 0x1

    if-lez v6, :cond_19

    sub-long/2addr p3, v2

    .line 289
    iget-wide v2, p0, Lcom/sun/mail/util/logging/DurationFilter;->duration:J

    cmp-long p3, p3, v2

    if-gez p3, :cond_18

    cmp-long p1, v0, p1

    if-gez p1, :cond_21

    :cond_18
    return v7

    :cond_19
    sub-long/2addr p3, v2

    cmp-long p1, p3, v4

    if-gez p1, :cond_23

    if-nez v6, :cond_21

    goto :goto_23

    :cond_21
    const/4 p1, 0x0

    return p1

    :cond_23
    :goto_23
    return v7

    :catchall_24
    move-exception p1

    .line 286
    :try_start_25
    monitor-exit p0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    throw p1
.end method

.method private static tokenizeLongs(Ljava/lang/String;)[Ljava/lang/String;
    .registers 7

    const/16 v0, 0x2a

    .line 412
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v1, v2, :cond_33

    const-string v2, "\\s*\\*\\s*"

    .line 413
    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v5, v2

    if-eqz v5, :cond_33

    if-eqz v1, :cond_2d

    .line 414
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v0, :cond_2d

    .line 418
    array-length p0, v2

    if-eq p0, v4, :cond_25

    goto :goto_37

    .line 419
    :cond_25
    new-instance p0, Ljava/lang/NumberFormatException;

    aget-object v0, v2, v3

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 415
    :cond_2d
    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0, p0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_33
    new-array v2, v4, [Ljava/lang/String;

    aput-object p0, v2, v3

    :goto_37
    return-object v2
.end method


# virtual methods
.method protected clone()Lcom/sun/mail/util/logging/DurationFilter;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 265
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/util/logging/DurationFilter;

    const-wide/16 v1, 0x0

    .line 266
    iput-wide v1, v0, Lcom/sun/mail/util/logging/DurationFilter;->count:J

    .line 267
    iput-wide v1, v0, Lcom/sun/mail/util/logging/DurationFilter;->peak:J

    .line 268
    iput-wide v1, v0, Lcom/sun/mail/util/logging/DurationFilter;->start:J

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 91
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/DurationFilter;->clone()Lcom/sun/mail/util/logging/DurationFilter;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 12

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_4c

    .line 151
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_4c

    .line 155
    :cond_12
    check-cast p1, Lcom/sun/mail/util/logging/DurationFilter;

    .line 156
    iget-wide v2, p0, Lcom/sun/mail/util/logging/DurationFilter;->records:J

    iget-wide v4, p1, Lcom/sun/mail/util/logging/DurationFilter;->records:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1d

    return v1

    .line 160
    :cond_1d
    iget-wide v2, p0, Lcom/sun/mail/util/logging/DurationFilter;->duration:J

    iget-wide v4, p1, Lcom/sun/mail/util/logging/DurationFilter;->duration:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_26

    return v1

    .line 167
    :cond_26
    monitor-enter p0

    .line 168
    :try_start_27
    iget-wide v2, p0, Lcom/sun/mail/util/logging/DurationFilter;->count:J

    .line 169
    iget-wide v4, p0, Lcom/sun/mail/util/logging/DurationFilter;->peak:J

    .line 170
    iget-wide v6, p0, Lcom/sun/mail/util/logging/DurationFilter;->start:J

    .line 171
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_49

    .line 173
    monitor-enter p1

    .line 174
    :try_start_2f
    iget-wide v8, p1, Lcom/sun/mail/util/logging/DurationFilter;->count:J

    cmp-long v2, v2, v8

    if-nez v2, :cond_44

    iget-wide v2, p1, Lcom/sun/mail/util/logging/DurationFilter;->peak:J

    cmp-long v2, v4, v2

    if-nez v2, :cond_44

    iget-wide v2, p1, Lcom/sun/mail/util/logging/DurationFilter;->start:J

    cmp-long v2, v6, v2

    if-eqz v2, :cond_42

    goto :goto_44

    .line 177
    :cond_42
    monitor-exit p1

    return v0

    .line 175
    :cond_44
    :goto_44
    monitor-exit p1

    return v1

    :catchall_46
    move-exception v0

    .line 177
    monitor-exit p1
    :try_end_48
    .catchall {:try_start_2f .. :try_end_48} :catchall_46

    throw v0

    :catchall_49
    move-exception p1

    .line 171
    :try_start_4a
    monitor-exit p0
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    throw p1

    :cond_4c
    :goto_4c
    return v1
.end method

.method public hashCode()I
    .registers 8

    .line 201
    iget-wide v0, p0, Lcom/sun/mail/util/logging/DurationFilter;->records:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    long-to-int v0, v0

    const/16 v1, 0x10b

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x59

    .line 202
    iget-wide v3, p0, Lcom/sun/mail/util/logging/DurationFilter;->duration:J

    ushr-long v5, v3, v2

    xor-long v2, v3, v5

    long-to-int v0, v2

    add-int/2addr v1, v0

    return v1
.end method

.method public isIdle()Z
    .registers 5

    const-wide/16 v0, 0x0

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sun/mail/util/logging/DurationFilter;->test(JJ)Z

    move-result v0

    return v0
.end method

.method public isLoggable()Z
    .registers 5

    .line 228
    iget-wide v0, p0, Lcom/sun/mail/util/logging/DurationFilter;->records:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sun/mail/util/logging/DurationFilter;->test(JJ)Z

    move-result v0

    return v0
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .registers 4

    .line 216
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/DurationFilter;->accept(J)Z

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 242
    monitor-enter p0

    .line 243
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    .line 244
    invoke-direct {p0, v2, v3, v0, v1}, Lcom/sun/mail/util/logging/DurationFilter;->test(JJ)Z

    move-result v2

    .line 245
    iget-wide v3, p0, Lcom/sun/mail/util/logging/DurationFilter;->records:J

    invoke-direct {p0, v3, v4, v0, v1}, Lcom/sun/mail/util/logging/DurationFilter;->test(JJ)Z

    move-result v0

    .line 246
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_5a

    .line 248
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "{records="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/sun/mail/util/logging/DurationFilter;->records:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", duration="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, p0, Lcom/sun/mail/util/logging/DurationFilter;->duration:J

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", idle="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", loggable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_5a
    move-exception v0

    .line 246
    :try_start_5b
    monitor-exit p0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    throw v0
.end method
