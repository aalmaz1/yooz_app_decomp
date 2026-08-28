.class public Lcom/sun/mail/util/logging/CollectorFormatter;
.super Ljava/util/logging/Formatter;
.source "CollectorFormatter.java"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final INIT_TIME:J


# instance fields
.field private final comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private count:J

.field private final fmt:Ljava/lang/String;

.field private final formatter:Ljava/util/logging/Formatter;

.field private generation:J

.field private last:Ljava/util/logging/LogRecord;

.field private maxMillis:J

.field private minMillis:J

.field private thrown:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 96
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 144
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    const-wide/16 v0, 0x1

    .line 122
    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    .line 130
    sget-wide v0, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    const-wide/high16 v0, -0x8000000000000000L

    .line 134
    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    .line 145
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 146
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->fmt:Ljava/lang/String;

    .line 147
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->formatter:Ljava/util/logging/Formatter;

    .line 148
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initComparator(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    .line 160
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    const-wide/16 v0, 0x1

    .line 122
    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    .line 130
    sget-wide v0, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    const-wide/high16 v0, -0x8000000000000000L

    .line 134
    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    .line 161
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1d

    .line 162
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1d
    iput-object p1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->fmt:Ljava/lang/String;

    .line 163
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->formatter:Ljava/util/logging/Formatter;

    .line 164
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initComparator(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/logging/Formatter;Ljava/util/Comparator;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/logging/Formatter;",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;)V"
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    const-wide/16 v0, 0x1

    .line 122
    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    .line 130
    sget-wide v0, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    const-wide/high16 v0, -0x8000000000000000L

    .line 134
    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    .line 182
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez p1, :cond_1d

    .line 183
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->initFormat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_1d
    iput-object p1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->fmt:Ljava/lang/String;

    .line 184
    iput-object p2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->formatter:Ljava/util/logging/Formatter;

    .line 185
    iput-object p3, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->comparator:Ljava/util/Comparator;

    return-void
.end method

.method private declared-synchronized accept(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Z
    .registers 9

    monitor-enter p0

    .line 384
    :try_start_1
    invoke-virtual {p2}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v0

    .line 385
    invoke-virtual {p2}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object p2

    .line 386
    iget-object v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;

    if-ne v2, p1, :cond_35

    .line 387
    iget-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->count:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->count:J

    cmp-long p1, v2, v4

    if-eqz p1, :cond_21

    .line 388
    iget-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    goto :goto_23

    .line 390
    :cond_21
    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 392
    :goto_23
    iget-wide v2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    if-eqz p2, :cond_32

    .line 395
    iget-wide p1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->thrown:J

    add-long/2addr p1, v4

    iput-wide p1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->thrown:J
    :try_end_32
    .catchall {:try_start_1 .. :try_end_32} :catchall_38

    .line 397
    :cond_32
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 399
    :cond_35
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_38
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized acceptAndUpdate(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Z
    .registers 3

    monitor-enter p0

    .line 521
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/util/logging/CollectorFormatter;->accept(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 522
    iput-object p2, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_f

    .line 523
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 525
    :cond_c
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private formatRecord(Ljava/util/logging/Handler;Z)Ljava/lang/String;
    .registers 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 436
    monitor-enter p0

    .line 437
    :try_start_5
    iget-object v2, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;

    .line 438
    iget-wide v3, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->count:J

    .line 439
    iget-wide v5, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    .line 440
    iget-wide v7, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->thrown:J

    .line 441
    iget-wide v9, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    .line 442
    iget-wide v11, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J

    .line 443
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v13

    const-wide/16 v15, 0x0

    cmp-long v15, v3, v15

    if-nez v15, :cond_1c

    move-wide v11, v13

    :cond_1c
    if-eqz p2, :cond_21

    .line 449
    invoke-direct {v1, v11, v12}, Lcom/sun/mail/util/logging/CollectorFormatter;->reset(J)V

    .line 451
    :cond_21
    monitor-exit p0
    :try_end_22
    .catchall {:try_start_5 .. :try_end_22} :catchall_f3

    .line 456
    iget-object v15, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->formatter:Ljava/util/logging/Formatter;

    if-eqz v15, :cond_3d

    .line 458
    monitor-enter v15

    .line 459
    :try_start_27
    invoke-virtual {v15, v0}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v16

    if-eqz v2, :cond_32

    .line 460
    invoke-virtual {v15, v2}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v17

    goto :goto_34

    :cond_32
    const-string v17, ""

    .line 461
    :goto_34
    invoke-virtual {v15, v0}, Ljava/util/logging/Formatter;->getTail(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object v0

    .line 462
    monitor-exit v15

    goto :goto_4c

    :catchall_3a
    move-exception v0

    monitor-exit v15
    :try_end_3c
    .catchall {:try_start_27 .. :try_end_3c} :catchall_3a

    throw v0

    :cond_3d
    const-string v16, ""

    if-eqz v2, :cond_46

    .line 465
    invoke-virtual {v1, v2}, Lcom/sun/mail/util/logging/CollectorFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    :cond_46
    const-string v0, ""

    :goto_48
    move-object/from16 v17, v0

    const-string v0, ""

    :goto_4c
    move-object/from16 v15, v16

    move-wide/from16 v20, v5

    move-object/from16 v5, v17

    move-wide/from16 v16, v20

    const/4 v6, 0x0

    if-eqz v2, :cond_63

    .line 471
    invoke-virtual {v2}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v2

    if-nez v2, :cond_5e

    goto :goto_63

    .line 472
    :cond_5e
    invoke-virtual {v2}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object v2

    move-object v6, v2

    :cond_63
    :goto_63
    if-nez v6, :cond_6f

    .line 477
    new-instance v2, Ljava/text/MessageFormat;

    iget-object v6, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->fmt:Ljava/lang/String;

    invoke-direct {v2, v6}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;)V

    move-wide/from16 v18, v13

    goto :goto_78

    .line 479
    :cond_6f
    new-instance v2, Ljava/text/MessageFormat;

    move-wide/from16 v18, v13

    iget-object v13, v1, Lcom/sun/mail/util/logging/CollectorFormatter;->fmt:Ljava/lang/String;

    invoke-direct {v2, v13, v6}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    :goto_78
    const/16 v6, 0xe

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v13, 0x0

    .line 485
    invoke-virtual {v1, v15}, Lcom/sun/mail/util/logging/CollectorFormatter;->finish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v6, v13

    const/4 v13, 0x1

    invoke-virtual {v1, v5}, Lcom/sun/mail/util/logging/CollectorFormatter;->finish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v6, v13

    const/4 v5, 0x2

    invoke-virtual {v1, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->finish(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v6, v5

    const/4 v0, 0x3

    .line 486
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v6, v0

    const-wide/16 v13, 0x1

    sub-long v13, v3, v13

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v5, 0x4

    aput-object v0, v6, v5

    const/4 v0, 0x5

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v6, v0

    sub-long/2addr v3, v7

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v3, 0x6

    aput-object v0, v6, v3

    const/4 v0, 0x7

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v0

    const/16 v0, 0x8

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v0

    sub-long/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v3, 0x9

    aput-object v0, v6, v3

    sget-wide v3, Lcom/sun/mail/util/logging/CollectorFormatter;->INIT_TIME:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v5, 0xa

    aput-object v0, v6, v5

    const/16 v0, 0xb

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v6, v0

    sub-long v13, v18, v3

    .line 487
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/16 v3, 0xc

    aput-object v0, v6, v3

    const/16 v0, 0xd

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v6, v0

    .line 485
    invoke-virtual {v2, v6}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_f3
    move-exception v0

    .line 451
    :try_start_f4
    monitor-exit p0
    :try_end_f5
    .catchall {:try_start_f4 .. :try_end_f5} :catchall_f3

    throw v0
.end method

.method private initComparator(Ljava/lang/String;)Ljava/util/Comparator;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation

    const-string v0, ".comparator"

    .line 591
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".comparator.reverse"

    .line 592
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "No comparator to reverse."

    if-eqz v0, :cond_43

    .line 594
    :try_start_18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_43

    const-string v2, "null"

    .line 595
    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_35

    .line 596
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newComparator(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v0

    .line 597
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_52

    .line 599
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    goto :goto_52

    :cond_35
    if-nez p1, :cond_39

    const/4 v0, 0x0

    goto :goto_52

    .line 603
    :cond_39
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_3f
    move-exception p1

    goto :goto_59

    :catch_41
    move-exception p1

    goto :goto_5f

    :cond_43
    if-nez p1, :cond_53

    .line 615
    const-class p1, Ljava/util/Comparator;

    invoke-static {}, Lcom/sun/mail/util/logging/SeverityComparator;->getInstance()Lcom/sun/mail/util/logging/SeverityComparator;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljava/util/Comparator;

    :cond_52
    :goto_52
    return-object v0

    .line 611
    :cond_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_59
    .catch Ljava/lang/RuntimeException; {:try_start_18 .. :try_end_59} :catch_41
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_59} :catch_3f

    .line 621
    :goto_59
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v0, p1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 619
    :goto_5f
    throw p1
.end method

.method private initFormat(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, ".format"

    .line 538
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_12

    .line 539
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_14

    :cond_12
    const-string p1, "{0}{1}{2}{4,choice,-1#|0#|0<... {4,number,integer} more}\n"

    :cond_14
    return-object p1
.end method

.method private initFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;
    .registers 3

    const-string v0, ".formatter"

    .line 556
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2a

    .line 557
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2a

    const-string v0, "null"

    .line 558
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 560
    :try_start_1a
    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object p1
    :try_end_1e
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1e} :catch_26
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_1f

    goto :goto_37

    :catch_1f
    move-exception p1

    .line 564
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v0, p1}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :catch_26
    move-exception p1

    .line 562
    throw p1

    :cond_28
    const/4 p1, 0x0

    goto :goto_37

    .line 571
    :cond_2a
    const-class p1, Ljava/util/logging/Formatter;

    new-instance v0, Lcom/sun/mail/util/logging/CompactFormatter;

    invoke-direct {v0}, Lcom/sun/mail/util/logging/CompactFormatter;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/logging/Formatter;

    :goto_37
    return-object p1
.end method

.method private declared-synchronized peek()Ljava/util/logging/LogRecord;
    .registers 2

    monitor-enter p0

    .line 508
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized reset(J)V
    .registers 7

    monitor-enter p0

    .line 408
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 409
    iput-object v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->last:Ljava/util/logging/LogRecord;

    .line 410
    iget-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->generation:J

    :cond_f
    const-wide/16 v0, 0x0

    .line 413
    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->count:J

    .line 414
    iput-wide v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->thrown:J

    .line 415
    iput-wide p1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->minMillis:J

    const-wide/high16 p1, -0x8000000000000000L

    .line 416
    iput-wide p1, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->maxMillis:J
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    .line 417
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method protected apply(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Ljava/util/logging/LogRecord;
    .registers 4

    if-eqz p1, :cond_12

    if-eqz p2, :cond_12

    .line 362
    iget-object v0, p0, Lcom/sun/mail/util/logging/CollectorFormatter;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_11

    .line 363
    invoke-interface {v0, p1, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_f

    goto :goto_10

    :cond_f
    move-object p1, p2

    :goto_10
    return-object p1

    :cond_11
    return-object p2

    :cond_12
    const/4 p1, 0x0

    .line 359
    throw p1
.end method

.method protected finish(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 499
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .registers 4

    .line 200
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    :cond_3
    invoke-direct {p0}, Lcom/sun/mail/util/logging/CollectorFormatter;->peek()Ljava/util/logging/LogRecord;

    move-result-object v0

    if-eqz v0, :cond_b

    move-object v1, v0

    goto :goto_c

    :cond_b
    move-object v1, p1

    .line 207
    :goto_c
    invoke-virtual {p0, v1, p1}, Lcom/sun/mail/util/logging/CollectorFormatter;->apply(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Ljava/util/logging/LogRecord;

    move-result-object v1

    if-eq v0, v1, :cond_1a

    .line 209
    invoke-virtual {v1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    .line 210
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/CollectorFormatter;->acceptAndUpdate(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Z

    move-result v0

    goto :goto_1e

    .line 212
    :cond_1a
    invoke-direct {p0, v0, p1}, Lcom/sun/mail/util/logging/CollectorFormatter;->accept(Ljava/util/logging/LogRecord;Ljava/util/logging/LogRecord;)Z

    move-result v0

    :goto_1e
    if-eqz v0, :cond_3

    const-string p1, ""

    return-object p1
.end method

.method public getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    .registers 3

    .line 326
    invoke-super {p0, p1}, Ljava/util/logging/Formatter;->getTail(Ljava/util/logging/Handler;)Ljava/lang/String;

    const/4 v0, 0x1

    .line 327
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/logging/CollectorFormatter;->formatRecord(Ljava/util/logging/Handler;Z)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    .line 341
    :try_start_1
    move-object v1, v0

    check-cast v1, Ljava/util/logging/Handler;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/CollectorFormatter;->formatRecord(Ljava/util/logging/Handler;Z)Ljava/lang/String;

    move-result-object v0
    :try_end_9
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_9} :catch_a

    goto :goto_e

    .line 343
    :catch_a
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_e
    return-object v0
.end method
