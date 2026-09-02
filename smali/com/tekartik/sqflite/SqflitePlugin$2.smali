.class Lcom/tekartik/sqflite/SqflitePlugin$2;
.super Ljava/lang/Object;
.source "SqflitePlugin.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tekartik/sqflite/SqflitePlugin;->onDeleteDatabaseCall(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/tekartik/sqflite/SqflitePlugin;

.field final synthetic val$openedDatabase:Lcom/tekartik/sqflite/Database;

.field final synthetic val$path:Ljava/lang/String;

.field final synthetic val$result:Lio/flutter/plugin/common/MethodChannel$Result;


# direct methods
.method constructor <init>(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;Ljava/lang/String;Lio/flutter/plugin/common/MethodChannel$Result;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 518
    iput-object p1, p0, Lcom/tekartik/sqflite/SqflitePlugin$2;->this$0:Lcom/tekartik/sqflite/SqflitePlugin;

    iput-object p2, p0, Lcom/tekartik/sqflite/SqflitePlugin$2;->val$openedDatabase:Lcom/tekartik/sqflite/Database;

    iput-object p3, p0, Lcom/tekartik/sqflite/SqflitePlugin$2;->val$path:Ljava/lang/String;

    iput-object p4, p0, Lcom/tekartik/sqflite/SqflitePlugin$2;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    const-string v0, "delete database "

    const-string v1, "error "

    .line 521
    invoke-static {}, Lcom/tekartik/sqflite/SqflitePlugin;->-$$Nest$sfgetopenCloseLocker()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 523
    :try_start_9
    iget-object v3, p0, Lcom/tekartik/sqflite/SqflitePlugin$2;->val$openedDatabase:Lcom/tekartik/sqflite/Database;

    if-eqz v3, :cond_12

    .line 524
    iget-object v4, p0, Lcom/tekartik/sqflite/SqflitePlugin$2;->this$0:Lcom/tekartik/sqflite/SqflitePlugin;

    invoke-static {v4, v3}, Lcom/tekartik/sqflite/SqflitePlugin;->-$$Nest$mcloseDatabase(Lcom/tekartik/sqflite/SqflitePlugin;Lcom/tekartik/sqflite/Database;)V
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_5d

    .line 527
    :cond_12
    :try_start_12
    sget v3, Lcom/tekartik/sqflite/SqflitePlugin;->logLevel:I

    invoke-static {v3}, Lcom/tekartik/sqflite/LogLevel;->hasVerboseLevel(I)Z

    move-result v3

    if-eqz v3, :cond_2e

    const-string v3, "Sqflite"

    .line 528
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tekartik/sqflite/SqflitePlugin$2;->val$path:Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    :cond_2e
    iget-object v0, p0, Lcom/tekartik/sqflite/SqflitePlugin$2;->val$path:Ljava/lang/String;

    invoke-static {v0}, Lcom/tekartik/sqflite/Database;->deleteDatabase(Ljava/lang/String;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_33} :catch_34
    .catchall {:try_start_12 .. :try_end_33} :catchall_5d

    goto :goto_55

    :catch_34
    move-exception v0

    :try_start_35
    const-string v3, "Sqflite"

    .line 532
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " while closing database "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/tekartik/sqflite/SqflitePlugin;->-$$Nest$sfgetdatabaseId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    :goto_55
    monitor-exit v2
    :try_end_56
    .catchall {:try_start_35 .. :try_end_56} :catchall_5d

    .line 535
    iget-object v0, p0, Lcom/tekartik/sqflite/SqflitePlugin$2;->val$result:Lio/flutter/plugin/common/MethodChannel$Result;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lio/flutter/plugin/common/MethodChannel$Result;->success(Ljava/lang/Object;)V

    return-void

    :catchall_5d
    move-exception v0

    .line 534
    :try_start_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    throw v0
.end method
