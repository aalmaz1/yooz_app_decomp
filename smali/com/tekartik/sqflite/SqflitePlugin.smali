.class public Lcom/tekartik/sqflite/SqflitePlugin;
.super Ljava/lang/Object;
.source "SqflitePlugin.java"

# interfaces
.implements Lio/flutter/embedding/engine/plugins/FlutterPlugin;
.implements Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;


# static fields
.field private static THREAD_COUNT:I

.field private static THREAD_PRIORITY:I

.field static final _singleInstancesByPath:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static databaseId:I

.field static final databaseMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/tekartik/sqflite/Database;",
            ">;"
        }
    .end annotation
.end field

.field private static final databaseMapLocker:Ljava/lang/Object;

.field private static databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

.field static databasesPath:Ljava/lang/String;

.field static logLevel:I

.field private static final openCloseLocker:Ljava/lang/Object;


# instance fields
.field private context:Landroid/content/Context;

.field private methodChannel:Lio/flutter/plugin/common/MethodChannel;


# direct methods
.method static bridge synthetic -$$Nest$mcloseDatabase(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tekartik/sqflite/SqflitePlugin;->closeDatabase(Lcom/tekartik/sqflite/Database;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetdatabaseId()I
    .registers 1

    sget v0, Lcom/tekartik/sqflite/SqflitePlugin;->databaseId:I

    return v0
.end method

.method static bridge synthetic -$$Nest$sfgetopenCloseLocker()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->openCloseLocker:Ljava/lang/Object;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->_singleInstancesByPath:Ljava/util/Map;

    .line 61
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMap:Ljava/util/Map;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMapLocker:Ljava/lang/Object;

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->openCloseLocker:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 64
    sput v0, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    .line 67
    sput v0, Lcom/tekartik/sqflite/SqflitePlugin;->THREAD_PRIORITY:I

    const/4 v1, 0x1

    .line 68
    sput v1, Lcom/tekartik/sqflite/SqflitePlugin;->THREAD_COUNT:I

    .line 69
    sput v0, Lcom/tekartik/sqflite/SqflitePlugin;->databaseId:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin;->context:Landroid/content/Context;

    return-void
.end method

.method private closeDatabase(Lcom/tekartik/sqflite/Database;)V
    .registers 6

    .line 557
    :try_start_0
    iget v0, p1, Lcom/tekartik/sqflite/Database;->logLevel:I

    invoke-static {v0}, Lcom/tekartik/sqflite/LogLevel;->hasSqlLevel(I)Z

    move-result v0

    if-eqz v0, :cond_24

    const-string v0, "Sqflite"

    .line 558
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "closing database "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    :cond_24
    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->close()V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_49

    :catch_28
    move-exception v0

    const-string v1, "Sqflite"

    .line 562
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "error "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " while closing database "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/tekartik/sqflite/SqflitePlugin;->databaseId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :goto_49
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMapLocker:Ljava/lang/Object;

    monitor-enter v0

    .line 566
    :try_start_4c
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_84

    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    if-eqz v1, :cond_84

    .line 567
    iget v1, p1, Lcom/tekartik/sqflite/Database;->logLevel:I

    invoke-static {v1}, Lcom/tekartik/sqflite/LogLevel;->hasSqlLevel(I)Z

    move-result v1

    if-eqz v1, :cond_7c

    const-string v1, "Sqflite"

    .line 568
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "stopping thread"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_7c
    sget-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    invoke-interface {p1}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->quit()V

    const/4 p1, 0x0

    .line 571
    sput-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 573
    :cond_84
    monitor-exit v0

    return-void

    :catchall_86
    move-exception p1

    monitor-exit v0
    :try_end_88
    .catchall {:try_start_4c .. :try_end_88} :catchall_86

    throw p1
.end method

.method private static fixMap(Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 87
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 88
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 89
    instance-of v3, v2, Ljava/util/Map;

    if-eqz v3, :cond_28

    .line 91
    check-cast v2, Ljava/util/Map;

    .line 92
    invoke-static {v2}, Lcom/tekartik/sqflite/SqflitePlugin;->fixMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    goto :goto_2c

    .line 94
    :cond_28
    invoke-static {v2}, Lcom/tekartik/sqflite/SqflitePlugin;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 96
    :goto_2c
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/tekartik/sqflite/SqflitePlugin;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    :cond_38
    return-object v0
.end method

.method private getContext()Landroid/content/Context;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/tekartik/sqflite/SqflitePlugin;->context:Landroid/content/Context;

    return-object v0
.end method

.method private getDatabase(I)Lcom/tekartik/sqflite/Database;
    .registers 3

    .line 166
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/tekartik/sqflite/Database;

    return-object p1
.end method

.method private getDatabaseOrError(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;
    .registers 5

    const-string v0, "id"

    .line 170
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 171
    invoke-direct {p0, p1}, Lcom/tekartik/sqflite/SqflitePlugin;->getDatabase(I)Lcom/tekartik/sqflite/Database;

    move-result-object v0

    if-eqz v0, :cond_13

    return-object v0

    .line 176
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "database_closed "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "sqlite_error"

    const/4 v1, 0x0

    invoke-interface {p2, v0, p1, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-object v1
.end method

.method static isInMemoryPath(Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_d

    const-string v0, ":memory:"

    .line 122
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_b

    goto :goto_d

    :cond_b
    const/4 p0, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 p0, 0x1

    :goto_e
    return p0
.end method

.method static synthetic lambda$onBatchCall$2(Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 3

    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/Database;->batch(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    return-void
.end method

.method static synthetic lambda$onExecuteCall$4(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V
    .registers 4

    .line 246
    new-instance v0, Lcom/tekartik/sqflite/operation/MethodCallOperation;

    invoke-direct {v0, p0, p1}, Lcom/tekartik/sqflite/operation/MethodCallOperation;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 247
    invoke-virtual {p2, v0}, Lcom/tekartik/sqflite/Database;->execute(Lcom/tekartik/sqflite/operation/Operation;)V

    return-void
.end method

.method static synthetic lambda$onInsertCall$3(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V
    .registers 4

    .line 231
    new-instance v0, Lcom/tekartik/sqflite/operation/MethodCallOperation;

    invoke-direct {v0, p0, p1}, Lcom/tekartik/sqflite/operation/MethodCallOperation;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 232
    invoke-virtual {p2, v0}, Lcom/tekartik/sqflite/Database;->insert(Lcom/tekartik/sqflite/operation/Operation;)V

    return-void
.end method

.method static synthetic lambda$onOpenDatabaseCall$7(ZLjava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Boolean;Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodCall;ZI)V
    .registers 11

    const-string v0, "open_failed "

    .line 405
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->openCloseLocker:Ljava/lang/Object;

    monitor-enter v1

    if-nez p0, :cond_3c

    .line 408
    :try_start_7
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 409
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 410
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3c

    .line 411
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_3c

    .line 412
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_3c

    const-string p0, "sqlite_error"

    .line 413
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x0

    invoke-interface {p2, p0, p1, p3}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    monitor-exit v1
    :try_end_3b
    .catchall {:try_start_7 .. :try_end_3b} :catchall_a2

    return-void

    .line 422
    :cond_3c
    :try_start_3c
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_48

    .line 423
    invoke-virtual {p4}, Lcom/tekartik/sqflite/Database;->openReadOnly()V

    goto :goto_4b

    .line 425
    :cond_48
    invoke-virtual {p4}, Lcom/tekartik/sqflite/Database;->open()V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_3c .. :try_end_4b} :catch_a4
    .catchall {:try_start_3c .. :try_end_4b} :catchall_a2

    .line 433
    :goto_4b
    :try_start_4b
    sget-object p0, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMapLocker:Ljava/lang/Object;

    monitor-enter p0
    :try_end_4e
    .catchall {:try_start_4b .. :try_end_4e} :catchall_a2

    if-eqz p6, :cond_59

    .line 435
    :try_start_50
    sget-object p3, Lcom/tekartik/sqflite/SqflitePlugin;->_singleInstancesByPath:Ljava/util/Map;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p3, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :cond_59
    sget-object p3, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMap:Ljava/util/Map;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    invoke-interface {p3, p5, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    monitor-exit p0
    :try_end_63
    .catchall {:try_start_50 .. :try_end_63} :catchall_9f

    .line 439
    :try_start_63
    iget p0, p4, Lcom/tekartik/sqflite/Database;->logLevel:I

    invoke-static {p0}, Lcom/tekartik/sqflite/LogLevel;->hasSqlLevel(I)Z

    move-result p0

    if-eqz p0, :cond_95

    const-string p0, "Sqflite"

    .line 440
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p4}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, "opened "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, " "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_95
    monitor-exit v1
    :try_end_96
    .catchall {:try_start_63 .. :try_end_96} :catchall_a2

    const/4 p0, 0x0

    .line 444
    invoke-static {p7, p0, p0}, Lcom/tekartik/sqflite/SqflitePlugin;->makeOpenResult(IZZ)Ljava/util/Map;

    move-result-object p0

    invoke-interface {p2, p0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    :catchall_9f
    move-exception p1

    .line 438
    :try_start_a0
    monitor-exit p0
    :try_end_a1
    .catchall {:try_start_a0 .. :try_end_a1} :catchall_9f

    :try_start_a1
    throw p1

    :catchall_a2
    move-exception p0

    goto :goto_af

    :catch_a4
    move-exception p0

    .line 428
    new-instance p1, Lcom/tekartik/sqflite/operation/MethodCallOperation;

    invoke-direct {p1, p5, p2}, Lcom/tekartik/sqflite/operation/MethodCallOperation;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 429
    invoke-virtual {p4, p0, p1}, Lcom/tekartik/sqflite/Database;->handleException(Ljava/lang/Exception;Lcom/tekartik/sqflite/operation/Operation;)V

    .line 430
    monitor-exit v1

    return-void

    .line 442
    :goto_af
    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_a1 .. :try_end_b0} :catchall_a2

    throw p0
.end method

.method static synthetic lambda$onQueryCall$0(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V
    .registers 4

    .line 190
    new-instance v0, Lcom/tekartik/sqflite/operation/MethodCallOperation;

    invoke-direct {v0, p0, p1}, Lcom/tekartik/sqflite/operation/MethodCallOperation;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 191
    invoke-virtual {p2, v0}, Lcom/tekartik/sqflite/Database;->query(Lcom/tekartik/sqflite/operation/Operation;)V

    return-void
.end method

.method static synthetic lambda$onQueryCursorNextCall$1(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V
    .registers 4

    .line 204
    new-instance v0, Lcom/tekartik/sqflite/operation/MethodCallOperation;

    invoke-direct {v0, p0, p1}, Lcom/tekartik/sqflite/operation/MethodCallOperation;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 205
    invoke-virtual {p2, v0}, Lcom/tekartik/sqflite/Database;->queryCursorNext(Lcom/tekartik/sqflite/operation/Operation;)V

    return-void
.end method

.method static synthetic lambda$onSetLocaleCall$5(Lio/flutter/plugin/common/MethodCall;Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 5

    const-string v0, "locale"

    .line 258
    invoke-virtual {p0, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const/4 v0, 0x0

    .line 260
    :try_start_9
    iget-object p1, p1, Lcom/tekartik/sqflite/Database;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {p0}, Lcom/tekartik/sqflite/Utils;->localeForLanguateTag(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/database/sqlite/SQLiteDatabase;->setLocale(Ljava/util/Locale;)V

    .line 261
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_15} :catch_16

    goto :goto_2f

    :catch_16
    move-exception p0

    .line 263
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "Error calling setLocale: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "sqlite_error"

    invoke-interface {p2, p1, p0, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->error(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_2f
    return-void
.end method

.method static synthetic lambda$onUpdateCall$6(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V
    .registers 4

    .line 279
    new-instance v0, Lcom/tekartik/sqflite/operation/MethodCallOperation;

    invoke-direct {v0, p0, p1}, Lcom/tekartik/sqflite/operation/MethodCallOperation;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 280
    invoke-virtual {p2, v0}, Lcom/tekartik/sqflite/Database;->update(Lcom/tekartik/sqflite/operation/Operation;)V

    return-void
.end method

.method static makeOpenResult(IZZ)Ljava/util/Map;
    .registers 5

    .line 130
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "id"

    .line 131
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 133
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    if-eqz p1, :cond_1a

    const-string p1, "recovered"

    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1a
    if-eqz p2, :cond_21

    const-string p1, "recoveredInTransaction"

    .line 136
    invoke-interface {v0, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    return-object v0
.end method

.method private onAttachedToEngine(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V
    .registers 6

    .line 147
    iput-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin;->context:Landroid/content/Context;

    .line 148
    new-instance p1, Lio/flutter/plugin/common/MethodChannel;

    sget-object v0, Lio/flutter/plugin/common/StandardMethodCodec;->INSTANCE:Lio/flutter/plugin/common/StandardMethodCodec;

    .line 150
    invoke-interface {p2}, Lio/flutter/plugin/common/BinaryMessenger;->makeBackgroundTaskQueue()Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;

    move-result-object v1

    const-string v2, "com.tekartik.sqflite"

    invoke-direct {p1, p2, v2, v0, v1}, Lio/flutter/plugin/common/MethodChannel;-><init>(Lio/flutter/plugin/common/BinaryMessenger;Ljava/lang/String;Lio/flutter/plugin/common/MethodCodec;Lio/flutter/plugin/common/BinaryMessenger$TaskQueue;)V

    iput-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    .line 151
    invoke-virtual {p1, p0}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    return-void
.end method

.method private onBatchCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 6

    .line 214
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->getDatabaseOrError(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 218
    :cond_7
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    new-instance v2, Lcom/tekartik/sqflite/SqflitePlugin$$ExternalSyntheticLambda7;

    invoke-direct {v2, v0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin$$ExternalSyntheticLambda7;-><init>(Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-interface {v1, v0, v2}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->post(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    return-void
.end method

.method private onCloseDatabaseCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 7

    const-string v0, "id"

    .line 454
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 455
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->getDatabaseOrError(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    move-result-object p1

    if-nez p1, :cond_13

    return-void

    .line 460
    :cond_13
    iget v1, p1, Lcom/tekartik/sqflite/Database;->logLevel:I

    invoke-static {v1}, Lcom/tekartik/sqflite/LogLevel;->hasSqlLevel(I)Z

    move-result v1

    if-eqz v1, :cond_47

    const-string v1, "Sqflite"

    .line 461
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "closing "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/tekartik/sqflite/Database;->path:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_47
    iget-object v1, p1, Lcom/tekartik/sqflite/Database;->path:Ljava/lang/String;

    .line 467
    sget-object v2, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMapLocker:Ljava/lang/Object;

    monitor-enter v2

    .line 468
    :try_start_4c
    sget-object v3, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    iget-boolean v0, p1, Lcom/tekartik/sqflite/Database;->singleInstance:Z

    if-eqz v0, :cond_5e

    .line 471
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->_singleInstancesByPath:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    :cond_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_4c .. :try_end_5f} :catchall_6a

    .line 475
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    new-instance v1, Lcom/tekartik/sqflite/SqflitePlugin$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin$1;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-interface {v0, p1, v1}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->post(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    return-void

    :catchall_6a
    move-exception p1

    .line 473
    :try_start_6b
    monitor-exit v2
    :try_end_6c
    .catchall {:try_start_6b .. :try_end_6c} :catchall_6a

    throw p1
.end method

.method private onDatabaseExistsCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 4

    const-string v0, "path"

    .line 550
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 551
    invoke-static {p1}, Lcom/tekartik/sqflite/Database;->existsDatabase(Ljava/lang/String;)Z

    move-result p1

    .line 552
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private onDebugCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 11

    const-string v0, "cmd"

    .line 285
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 286
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "get"

    .line 290
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 291
    sget p1, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    const-string v1, "logLevel"

    if-lez p1, :cond_22

    .line 292
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    :cond_22
    sget-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMap:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_80

    .line 295
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 296
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_37
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 297
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tekartik/sqflite/Database;

    .line 298
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "path"

    .line 299
    iget-object v7, v4, Lcom/tekartik/sqflite/Database;->path:Ljava/lang/String;

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    iget-boolean v6, v4, Lcom/tekartik/sqflite/Database;->singleInstance:Z

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-string v7, "singleInstance"

    invoke-interface {v5, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    iget v6, v4, Lcom/tekartik/sqflite/Database;->logLevel:I

    if-lez v6, :cond_6d

    .line 302
    iget v4, v4, Lcom/tekartik/sqflite/Database;->logLevel:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    :cond_6d
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_37

    :cond_7b
    const-string p1, "databases"

    .line 307
    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 310
    :cond_80
    invoke-interface {p2, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private onDebugModeCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 5

    .line 317
    invoke-virtual {p1}, Lio/flutter/plugin/common/MethodCall;->arguments()Ljava/lang/Object;

    move-result-object p1

    .line 318
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, p1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result p1

    sput-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->LOGV:Z

    .line 319
    sget-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->_EXTRA_LOGV:Z

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_18

    sget-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->LOGV:Z

    if-eqz p1, :cond_18

    move p1, v0

    goto :goto_19

    :cond_18
    move p1, v1

    :goto_19
    sput-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->EXTRA_LOGV:Z

    .line 322
    sget-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->LOGV:Z

    if-eqz p1, :cond_2e

    .line 323
    sget-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->EXTRA_LOGV:Z

    if-eqz p1, :cond_27

    const/4 p1, 0x2

    .line 324
    sput p1, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    goto :goto_30

    .line 325
    :cond_27
    sget-boolean p1, Lcom/tekartik/sqflite/dev/Debug;->LOGV:Z

    if-eqz p1, :cond_30

    .line 326
    sput v0, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    goto :goto_30

    .line 330
    :cond_2e
    sput v1, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    :cond_30
    :goto_30
    const/4 p1, 0x0

    .line 332
    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method private onDeleteDatabaseCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 11

    const-string v0, "Look for "

    const-string v1, "path"

    .line 492
    invoke-virtual {p1, v1}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 495
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMapLocker:Ljava/lang/Object;

    monitor-enter v1

    .line 496
    :try_start_d
    sget v2, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    invoke-static {v2}, Lcom/tekartik/sqflite/LogLevel;->hasVerboseLevel(I)Z

    move-result v2

    if-eqz v2, :cond_37

    const-string v2, "Sqflite"

    .line 497
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " in "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v3, Lcom/tekartik/sqflite/SqflitePlugin;->_singleInstancesByPath:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    :cond_37
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->_singleInstancesByPath:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_9b

    .line 501
    sget-object v3, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/tekartik/sqflite/Database;

    if-eqz v4, :cond_9b

    .line 503
    iget-object v5, v4, Lcom/tekartik/sqflite/Database;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v5}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v5

    if-eqz v5, :cond_9b

    .line 504
    sget v5, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    invoke-static {v5}, Lcom/tekartik/sqflite/LogLevel;->hasVerboseLevel(I)Z

    move-result v5

    if-eqz v5, :cond_94

    const-string v5, "Sqflite"

    .line 505
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "found single instance "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Lcom/tekartik/sqflite/Database;->isInTransaction()Z

    move-result v7

    if-eqz v7, :cond_79

    const-string v7, "(in transaction) "

    goto :goto_7b

    :cond_79
    const-string v7, ""

    :goto_7b
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    :cond_94
    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 511
    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9c

    :cond_9b
    const/4 v4, 0x0

    .line 515
    :goto_9c
    monitor-exit v1
    :try_end_9d
    .catchall {:try_start_d .. :try_end_9d} :catchall_ae

    .line 518
    new-instance v0, Lcom/tekartik/sqflite/SqflitePlugin$2;

    invoke-direct {v0, p0, v4, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin$2;-><init>(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V

    .line 540
    sget-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    if-eqz p1, :cond_aa

    .line 541
    invoke-interface {p1, v4, v0}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->post(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    goto :goto_ad

    .line 544
    :cond_aa
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_ad
    return-void

    :catchall_ae
    move-exception p1

    .line 515
    :try_start_af
    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_ae

    throw p1
.end method

.method private onExecuteCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 6

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->getDatabaseOrError(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 245
    :cond_7
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    new-instance v2, Lcom/tekartik/sqflite/SqflitePlugin$$ExternalSyntheticLambda3;

    invoke-direct {v2, p1, p2, v0}, Lcom/tekartik/sqflite/SqflitePlugin$$ExternalSyntheticLambda3;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V

    invoke-interface {v1, v0, v2}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->post(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    return-void
.end method

.method private onInsertCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 6

    .line 226
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->getDatabaseOrError(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 230
    :cond_7
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    new-instance v2, Lcom/tekartik/sqflite/SqflitePlugin$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p2, v0}, Lcom/tekartik/sqflite/SqflitePlugin$$ExternalSyntheticLambda0;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V

    invoke-interface {v1, v0, v2}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->post(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    return-void
.end method

.method private onOpenDatabaseCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 19

    move-object/from16 v0, p1

    const-string v1, "Look for "

    const-string v2, "path"

    .line 339
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Ljava/lang/String;

    const-string v2, "readOnly"

    .line 340
    invoke-virtual {v0, v2}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Ljava/lang/Boolean;

    .line 341
    invoke-static {v9}, Lcom/tekartik/sqflite/SqflitePlugin;->isInMemoryPath(Ljava/lang/String;)Z

    move-result v2

    .line 343
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "singleInstance"

    invoke-virtual {v0, v4}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2d

    if-nez v2, :cond_2d

    move v11, v4

    goto :goto_2f

    :cond_2d
    const/4 v3, 0x0

    move v11, v3

    :goto_2f
    if-eqz v11, :cond_104

    .line 351
    sget-object v3, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMapLocker:Ljava/lang/Object;

    monitor-enter v3

    .line 352
    :try_start_34
    sget v5, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    invoke-static {v5}, Lcom/tekartik/sqflite/LogLevel;->hasVerboseLevel(I)Z

    move-result v5

    if-eqz v5, :cond_5e

    const-string v5, "Sqflite"

    .line 353
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " in "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v6, Lcom/tekartik/sqflite/SqflitePlugin;->_singleInstancesByPath:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_5e
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->_singleInstancesByPath:Ljava/util/Map;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_fd

    .line 357
    sget-object v5, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMap:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/tekartik/sqflite/Database;

    if-eqz v5, :cond_fd

    .line 359
    iget-object v6, v5, Lcom/tekartik/sqflite/Database;->sqliteDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v6}, Landroid/database/sqlite/SQLiteDatabase;->isOpen()Z

    move-result v6

    if-nez v6, :cond_a9

    .line 360
    sget v1, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    invoke-static {v1}, Lcom/tekartik/sqflite/LogLevel;->hasVerboseLevel(I)Z

    move-result v1

    if-eqz v1, :cond_fd

    const-string v1, "Sqflite"

    .line 361
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "single instance database of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not opened"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_fd

    .line 364
    :cond_a9
    sget v0, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    invoke-static {v0}, Lcom/tekartik/sqflite/LogLevel;->hasVerboseLevel(I)Z

    move-result v0

    if-eqz v0, :cond_ea

    const-string v0, "Sqflite"

    .line 365
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "re-opened single instance "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v5}, Lcom/tekartik/sqflite/Database;->isInTransaction()Z

    move-result v6

    if-eqz v6, :cond_cf

    const-string v6, "(in transaction) "

    goto :goto_d1

    :cond_cf
    const-string v6, ""

    :goto_d1
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_ea
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v5}, Lcom/tekartik/sqflite/Database;->isInTransaction()Z

    move-result v1

    invoke-static {v0, v4, v1}, Lcom/tekartik/sqflite/SqflitePlugin;->makeOpenResult(IZZ)Ljava/util/Map;

    move-result-object v0

    move-object/from16 v12, p2

    invoke-interface {v12, v0}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    .line 368
    monitor-exit v3

    return-void

    :cond_fd
    :goto_fd
    move-object/from16 v12, p2

    .line 372
    monitor-exit v3

    goto :goto_106

    :catchall_101
    move-exception v0

    monitor-exit v3
    :try_end_103
    .catchall {:try_start_34 .. :try_end_103} :catchall_101

    throw v0

    :cond_104
    move-object/from16 v12, p2

    .line 377
    :goto_106
    sget-object v13, Lcom/tekartik/sqflite/SqflitePlugin;->databaseMapLocker:Ljava/lang/Object;

    monitor-enter v13

    .line 378
    :try_start_109
    sget v1, Lcom/tekartik/sqflite/SqflitePlugin;->databaseId:I

    add-int/lit8 v14, v1, 0x1

    sput v14, Lcom/tekartik/sqflite/SqflitePlugin;->databaseId:I

    .line 379
    monitor-exit v13
    :try_end_110
    .catchall {:try_start_109 .. :try_end_110} :catchall_1ae

    .line 382
    new-instance v15, Lcom/tekartik/sqflite/Database;

    move-object/from16 v1, p0

    iget-object v4, v1, Lcom/tekartik/sqflite/SqflitePlugin;->context:Landroid/content/Context;

    sget v8, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    move-object v3, v15

    move-object v5, v9

    move v6, v14

    move v7, v11

    invoke-direct/range {v3 .. v8}, Lcom/tekartik/sqflite/Database;-><init>(Landroid/content/Context;Ljava/lang/String;IZI)V

    .line 384
    monitor-enter v13

    .line 386
    :try_start_120
    sget-object v3, Lcom/tekartik/sqflite/SqflitePlugin;->databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    if-nez v3, :cond_15d

    const-string v3, "Sqflite"

    .line 387
    sget v4, Lcom/tekartik/sqflite/SqflitePlugin;->THREAD_COUNT:I

    sget v5, Lcom/tekartik/sqflite/SqflitePlugin;->THREAD_PRIORITY:I

    invoke-static {v3, v4, v5}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->create(Ljava/lang/String;II)Lcom/tekartik/sqflite/DatabaseWorkerPool;

    move-result-object v3

    sput-object v3, Lcom/tekartik/sqflite/SqflitePlugin;->databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 389
    invoke-interface {v3}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->start()V

    .line 390
    iget v3, v15, Lcom/tekartik/sqflite/Database;->logLevel:I

    invoke-static {v3}, Lcom/tekartik/sqflite/LogLevel;->hasSqlLevel(I)Z

    move-result v3

    if-eqz v3, :cond_15d

    const-string v3, "Sqflite"

    .line 391
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "starting worker pool with priority "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v5, Lcom/tekartik/sqflite/SqflitePlugin;->THREAD_PRIORITY:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_15d
    sget-object v3, Lcom/tekartik/sqflite/SqflitePlugin;->databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    iput-object v3, v15, Lcom/tekartik/sqflite/Database;->databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 395
    iget v3, v15, Lcom/tekartik/sqflite/Database;->logLevel:I

    invoke-static {v3}, Lcom/tekartik/sqflite/LogLevel;->hasSqlLevel(I)Z

    move-result v3

    if-eqz v3, :cond_193

    const-string v3, "Sqflite"

    .line 396
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15}, Lcom/tekartik/sqflite/Database;->getThreadLogPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "opened "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    :cond_193
    sget-object v8, Lcom/tekartik/sqflite/SqflitePlugin;->databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    new-instance v7, Lcom/tekartik/sqflite/SqflitePlugin$$ExternalSyntheticLambda5;

    move-object v1, v7

    move-object v3, v9

    move-object/from16 v4, p2

    move-object v5, v10

    move-object v6, v15

    move-object v10, v7

    move-object/from16 v7, p1

    move-object v0, v8

    move v8, v11

    move v9, v14

    invoke-direct/range {v1 .. v9}, Lcom/tekartik/sqflite/SqflitePlugin$$ExternalSyntheticLambda5;-><init>(ZLjava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;Ljava/lang/Boolean;Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodCall;ZI)V

    invoke-interface {v0, v15, v10}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->post(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    .line 446
    monitor-exit v13

    return-void

    :catchall_1ab
    move-exception v0

    monitor-exit v13
    :try_end_1ad
    .catchall {:try_start_120 .. :try_end_1ad} :catchall_1ab

    throw v0

    :catchall_1ae
    move-exception v0

    .line 379
    :try_start_1af
    monitor-exit v13
    :try_end_1b0
    .catchall {:try_start_1af .. :try_end_1b0} :catchall_1ae

    throw v0
.end method

.method private onQueryCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 6

    .line 185
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->getDatabaseOrError(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 189
    :cond_7
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    new-instance v2, Lcom/tekartik/sqflite/SqflitePlugin$$ExternalSyntheticLambda4;

    invoke-direct {v2, p1, p2, v0}, Lcom/tekartik/sqflite/SqflitePlugin$$ExternalSyntheticLambda4;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V

    invoke-interface {v1, v0, v2}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->post(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    return-void
.end method

.method private onQueryCursorNextCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 6

    .line 199
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->getDatabaseOrError(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 203
    :cond_7
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    new-instance v2, Lcom/tekartik/sqflite/SqflitePlugin$$ExternalSyntheticLambda1;

    invoke-direct {v2, p1, p2, v0}, Lcom/tekartik/sqflite/SqflitePlugin$$ExternalSyntheticLambda1;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V

    invoke-interface {v1, v0, v2}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->post(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    return-void
.end method

.method private onSetLocaleCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 6

    .line 253
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->getDatabaseOrError(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 257
    :cond_7
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    new-instance v2, Lcom/tekartik/sqflite/SqflitePlugin$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1, v0, p2}, Lcom/tekartik/sqflite/SqflitePlugin$$ExternalSyntheticLambda6;-><init>(Lio/flutter/plugin/common/MethodCall;Lcom/tekartik/sqflite/Database;Lio/flutter/plugin/common/MethodChannel$Result;)V

    invoke-interface {v1, v0, v2}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->post(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    return-void
.end method

.method private onUpdateCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 6

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->getDatabaseOrError(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)Lcom/tekartik/sqflite/Database;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    .line 278
    :cond_7
    sget-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    new-instance v2, Lcom/tekartik/sqflite/SqflitePlugin$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1, p2, v0}, Lcom/tekartik/sqflite/SqflitePlugin$$ExternalSyntheticLambda2;-><init>(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;Lcom/tekartik/sqflite/Database;)V

    invoke-interface {v1, v0, v2}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->post(Lcom/tekartik/sqflite/Database;Ljava/lang/Runnable;)V

    return-void
.end method

.method private static toString(Ljava/lang/Object;)Ljava/lang/String;
    .registers 5

    if-nez p0, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 106
    :cond_4
    instance-of v0, p0, [B

    if-eqz v0, :cond_24

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    check-cast p0, [B

    array-length v1, p0

    const/4 v2, 0x0

    :goto_11
    if-ge v2, v1, :cond_1f

    aget-byte v3, p0, v2

    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    .line 111
    :cond_1f
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 112
    :cond_24
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_33

    .line 114
    check-cast p0, Ljava/util/Map;

    .line 115
    invoke-static {p0}, Lcom/tekartik/sqflite/SqflitePlugin;->fixMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 117
    :cond_33
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onAttachedToEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .registers 3

    .line 143
    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;->getBinaryMessenger()Lio/flutter/plugin/common/BinaryMessenger;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/tekartik/sqflite/SqflitePlugin;->onAttachedToEngine(Landroid/content/Context;Lio/flutter/plugin/common/BinaryMessenger;)V

    return-void
.end method

.method public onDetachedFromEngine(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V
    .registers 3

    const/4 p1, 0x0

    .line 156
    iput-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin;->context:Landroid/content/Context;

    .line 157
    iget-object v0, p0, Lcom/tekartik/sqflite/SqflitePlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    invoke-virtual {v0, p1}, Lio/flutter/plugin/common/MethodChannel;->setMethodCallHandler(Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;)V

    .line 158
    iput-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin;->methodChannel:Lio/flutter/plugin/common/MethodChannel;

    return-void
.end method

.method onGetDatabasesPathCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 4

    .line 675
    sget-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->databasesPath:Ljava/lang/String;

    if-nez p1, :cond_12

    const-string p1, "tekartik_sqflite.db"

    .line 677
    iget-object v0, p0, Lcom/tekartik/sqflite/SqflitePlugin;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDatabasePath(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 678
    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->databasesPath:Ljava/lang/String;

    .line 680
    :cond_12
    sget-object p1, Lcom/tekartik/sqflite/SqflitePlugin;->databasesPath:Ljava/lang/String;

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method

.method public onMethodCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 6

    .line 578
    iget-object v0, p1, Lio/flutter/plugin/common/MethodCall;->method:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_12e

    goto/16 :goto_d6

    :sswitch_f
    const-string v1, "getDatabasesPath"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_d6

    :cond_19
    const/16 v2, 0xf

    goto/16 :goto_d6

    :sswitch_1d
    const-string v1, "getPlatformVersion"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto/16 :goto_d6

    :cond_27
    const/16 v2, 0xe

    goto/16 :goto_d6

    :sswitch_2b
    const-string v1, "queryCursorNext"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    goto/16 :goto_d6

    :cond_35
    const/16 v2, 0xd

    goto/16 :goto_d6

    :sswitch_39
    const-string v1, "databaseExists"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_43

    goto/16 :goto_d6

    :cond_43
    const/16 v2, 0xc

    goto/16 :goto_d6

    :sswitch_47
    const-string v1, "query"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51

    goto/16 :goto_d6

    :cond_51
    const/16 v2, 0xb

    goto/16 :goto_d6

    :sswitch_55
    const-string v1, "debug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5f

    goto/16 :goto_d6

    :cond_5f
    const/16 v2, 0xa

    goto/16 :goto_d6

    :sswitch_63
    const-string v1, "batch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6d

    goto/16 :goto_d6

    :cond_6d
    const/16 v2, 0x9

    goto/16 :goto_d6

    :sswitch_71
    const-string v1, "openDatabase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7b

    goto/16 :goto_d6

    :cond_7b
    const/16 v2, 0x8

    goto/16 :goto_d6

    :sswitch_7f
    const-string v1, "debugMode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_88

    goto :goto_d6

    :cond_88
    const/4 v2, 0x7

    goto :goto_d6

    :sswitch_8a
    const-string v1, "deleteDatabase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_93

    goto :goto_d6

    :cond_93
    const/4 v2, 0x6

    goto :goto_d6

    :sswitch_95
    const-string v1, "androidSetLocale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9e

    goto :goto_d6

    :cond_9e
    const/4 v2, 0x5

    goto :goto_d6

    :sswitch_a0
    const-string v1, "update"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a9

    goto :goto_d6

    :cond_a9
    const/4 v2, 0x4

    goto :goto_d6

    :sswitch_ab
    const-string v1, "insert"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b4

    goto :goto_d6

    :cond_b4
    const/4 v2, 0x3

    goto :goto_d6

    :sswitch_b6
    const-string v1, "options"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bf

    goto :goto_d6

    :cond_bf
    const/4 v2, 0x2

    goto :goto_d6

    :sswitch_c1
    const-string v1, "closeDatabase"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ca

    goto :goto_d6

    :cond_ca
    const/4 v2, 0x1

    goto :goto_d6

    :sswitch_cc
    const-string v1, "execute"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d5

    goto :goto_d6

    :cond_d5
    const/4 v2, 0x0

    :goto_d6
    packed-switch v2, :pswitch_data_170

    .line 646
    invoke-interface {p2}, Lio/flutter/plugin/common/MethodChannel$Result;->notImplemented()V

    goto :goto_12d

    .line 617
    :pswitch_dd
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onGetDatabasesPathCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_12d

    .line 581
    :pswitch_e1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Android "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    goto :goto_12d

    .line 629
    :pswitch_f6
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onQueryCursorNextCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_12d

    .line 633
    :pswitch_fa
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onDatabaseExistsCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_12d

    .line 589
    :pswitch_fe
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onQueryCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_12d

    .line 625
    :pswitch_102
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onDebugCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_12d

    .line 609
    :pswitch_106
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onBatchCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_12d

    .line 605
    :pswitch_10a
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onOpenDatabaseCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_12d

    .line 638
    :pswitch_10e
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onDebugModeCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_12d

    .line 621
    :pswitch_112
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onDeleteDatabaseCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_12d

    .line 642
    :pswitch_116
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onSetLocaleCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_12d

    .line 597
    :pswitch_11a
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onUpdateCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_12d

    .line 593
    :pswitch_11e
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onInsertCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_12d

    .line 613
    :pswitch_122
    invoke-virtual {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onOptionsCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_12d

    .line 585
    :pswitch_126
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onCloseDatabaseCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    goto :goto_12d

    .line 601
    :pswitch_12a
    invoke-direct {p0, p1, p2}, Lcom/tekartik/sqflite/SqflitePlugin;->onExecuteCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V

    :goto_12d
    return-void

    :sswitch_data_12e
    .sparse-switch
        -0x4ea7088b -> :sswitch_cc
        -0x4ab8246d -> :sswitch_c1
        -0x4a797962 -> :sswitch_b6
        -0x468f3d47 -> :sswitch_ab
        -0x31ffc737 -> :sswitch_a0
        -0x179ee453 -> :sswitch_95
        -0xfb4dfba -> :sswitch_8a
        -0xbd41d6a -> :sswitch_7f
        -0x1064e1b -> :sswitch_71
        0x592d73a -> :sswitch_63
        0x5b09653 -> :sswitch_55
        0x66f18c8 -> :sswitch_47
        0x3901a9b7 -> :sswitch_39
        0x47241251 -> :sswitch_2b
        0x529446af -> :sswitch_1d
        0x6f17c6e7 -> :sswitch_f
    .end sparse-switch

    :pswitch_data_170
    .packed-switch 0x0
        :pswitch_12a
        :pswitch_126
        :pswitch_122
        :pswitch_11e
        :pswitch_11a
        :pswitch_116
        :pswitch_112
        :pswitch_10e
        :pswitch_10a
        :pswitch_106
        :pswitch_102
        :pswitch_fe
        :pswitch_fa
        :pswitch_f6
        :pswitch_e1
        :pswitch_dd
    .end packed-switch
.end method

.method onOptionsCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 6

    const-string v0, "androidThreadPriority"

    .line 652
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 654
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/tekartik/sqflite/SqflitePlugin;->THREAD_PRIORITY:I

    :cond_10
    const-string v0, "androidThreadCount"

    .line 656
    invoke-virtual {p1, v0}, Lio/flutter/plugin/common/MethodCall;->argument(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_36

    .line 657
    sget v2, Lcom/tekartik/sqflite/SqflitePlugin;->THREAD_COUNT:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 658
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/tekartik/sqflite/SqflitePlugin;->THREAD_COUNT:I

    .line 660
    sget-object v0, Lcom/tekartik/sqflite/SqflitePlugin;->databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    if-eqz v0, :cond_36

    .line 661
    invoke-interface {v0}, Lcom/tekartik/sqflite/DatabaseWorkerPool;->quit()V

    .line 662
    sput-object v1, Lcom/tekartik/sqflite/SqflitePlugin;->databaseWorkerPool:Lcom/tekartik/sqflite/DatabaseWorkerPool;

    .line 665
    :cond_36
    invoke-static {p1}, Lcom/tekartik/sqflite/LogLevel;->getLogLevel(Lio/flutter/plugin/common/MethodCall;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_42

    .line 667
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sput p1, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    .line 669
    :cond_42
    invoke-interface {p2, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void
.end method
