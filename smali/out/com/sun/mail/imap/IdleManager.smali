.class public Lcom/sun/mail/imap/IdleManager;
.super Ljava/lang/Object;
.source "IdleManager.java"


# instance fields
.field private volatile die:Z

.field private es:Ljava/util/concurrent/Executor;

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private volatile running:Z

.field private selector:Ljava/nio/channels/Selector;

.field private toAbort:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sun/mail/imap/IMAPFolder;",
            ">;"
        }
    .end annotation
.end field

.field private toWatch:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sun/mail/imap/IMAPFolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljava/util/concurrent/Executor;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 141
    iput-boolean v0, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    .line 143
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    .line 144
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/sun/mail/imap/IdleManager;->toAbort:Ljava/util/Queue;

    .line 156
    iput-object p2, p0, Lcom/sun/mail/imap/IdleManager;->es:Ljava/util/concurrent/Executor;

    .line 157
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 158
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v2

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object p1

    const-string v3, "DEBUG IMAP"

    invoke-direct {v0, v1, v3, v2, p1}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    iput-object v0, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    .line 159
    invoke-static {}, Ljava/nio/channels/Selector;->open()Ljava/nio/channels/Selector;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    .line 160
    new-instance p1, Lcom/sun/mail/imap/IdleManager$1;

    invoke-direct {p1, p0}, Lcom/sun/mail/imap/IdleManager$1;-><init>(Lcom/sun/mail/imap/IdleManager;)V

    invoke-interface {p2, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$000(Lcom/sun/mail/imap/IdleManager;)Lcom/sun/mail/util/MailLogger;
    .registers 1

    .line 137
    iget-object p0, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sun/mail/imap/IdleManager;Z)Z
    .registers 2

    .line 137
    iput-boolean p1, p0, Lcom/sun/mail/imap/IdleManager;->running:Z

    return p1
.end method

.method static synthetic access$200(Lcom/sun/mail/imap/IdleManager;)V
    .registers 1

    .line 137
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->select()V

    return-void
.end method

.method private static folderName(Ljavax/mail/Folder;)Ljava/lang/String;
    .registers 3

    .line 509
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/Folder;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/URLName;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_8
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_8} :catch_9

    return-object p0

    .line 512
    :catch_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/mail/Store;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljavax/mail/Folder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private processKeys()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->selectedKeys()Ljava/util/Set;

    move-result-object v0

    .line 363
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 364
    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_9a

    .line 365
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 366
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 368
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 369
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/imap/IMAPFolder;

    .line 370
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_3a

    .line 371
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v6, "IdleManager selected folder: {0}"

    .line 372
    invoke-static {v3}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v7

    .line 371
    invoke-virtual {v4, v5, v6, v7}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 373
    :cond_3a
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    .line 375
    invoke-virtual {v1, v2}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    const/4 v1, 0x0

    .line 377
    :try_start_42
    invoke-virtual {v3, v1}, Lcom/sun/mail/imap/IMAPFolder;->handleIdle(Z)Z

    move-result v1

    if-eqz v1, :cond_65

    .line 378
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_5f

    .line 379
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "IdleManager continue watching folder {0}"

    .line 381
    invoke-static {v3}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v5

    .line 379
    invoke-virtual {v1, v2, v4, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 383
    :cond_5f
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v1, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 386
    :cond_65
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 387
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "IdleManager done watching folder {0}"

    .line 389
    invoke-static {v3}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v5

    .line 387
    invoke-virtual {v1, v2, v4, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_7c
    .catch Ljavax/mail/MessagingException; {:try_start_42 .. :try_end_7c} :catch_7d

    goto :goto_a

    :catch_7d
    move-exception v1

    .line 393
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "IdleManager got exception for folder: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 395
    invoke-static {v3}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 393
    invoke-virtual {v2, v4, v3, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a

    .line 402
    :cond_9a
    :goto_9a
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->toAbort:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    if-eqz v0, :cond_fc

    .line 403
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_bb

    .line 404
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "IdleManager aborting IDLE for folder: {0}"

    .line 406
    invoke-static {v0}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v5

    .line 404
    invoke-virtual {v1, v3, v4, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 407
    :cond_bb
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPFolder;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    if-nez v1, :cond_c2

    goto :goto_9a

    .line 410
    :cond_c2
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v1, v3}, Ljava/nio/channels/SocketChannel;->keyFor(Ljava/nio/channels/Selector;)Ljava/nio/channels/SelectionKey;

    move-result-object v3

    if-eqz v3, :cond_cd

    .line 413
    invoke-virtual {v3}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 415
    :cond_cd
    invoke-virtual {v1, v2}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 418
    invoke-virtual {v1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v1

    if-eqz v1, :cond_f3

    .line 419
    invoke-virtual {v1}, Ljava/net/Socket;->getSoTimeout()I

    move-result v1

    if-lez v1, :cond_f3

    .line 420
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "IdleManager requesting DONE with timeout"

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 421
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    .line 423
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->es:Ljava/util/concurrent/Executor;

    new-instance v3, Lcom/sun/mail/imap/IdleManager$2;

    invoke-direct {v3, p0, v0}, Lcom/sun/mail/imap/IdleManager$2;-><init>(Lcom/sun/mail/imap/IdleManager;Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_9a

    .line 431
    :cond_f3
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPFolder;->idleAbort()V

    .line 434
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto :goto_9a

    :cond_fc
    return-void
.end method

.method private select()V
    .registers 9

    const-string v0, "IdleManager exiting"

    const-string v1, "IdleManager unwatch exception"

    const-string v2, "IdleManager unwatchAll"

    const/4 v3, 0x0

    .line 259
    iput-boolean v3, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    :goto_9
    const/4 v3, 0x1

    .line 261
    :try_start_a
    iget-boolean v4, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    if-nez v4, :cond_58

    .line 262
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->watchAll()V

    .line 263
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "IdleManager waiting..."

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 264
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->select()I

    move-result v4

    .line 265
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_35

    .line 266
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v7, "IdleManager selected {0} channels"

    .line 267
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 266
    invoke-virtual {v5, v6, v7, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 268
    :cond_35
    iget-boolean v4, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    if-nez v4, :cond_58

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v4

    if-eqz v4, :cond_44

    goto :goto_58

    .line 288
    :cond_44
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->processKeys()V

    .line 289
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v4}, Ljava/nio/channels/Selector;->selectNow()I

    move-result v4

    if-gtz v4, :cond_44

    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->toAbort:Ljava/util/Queue;

    invoke-interface {v4}, Ljava/util/Queue;->isEmpty()Z

    move-result v4
    :try_end_55
    .catch Ljava/io/InterruptedIOException; {:try_start_a .. :try_end_55} :catch_b0
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_55} :catch_94
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_55} :catch_78
    .catchall {:try_start_a .. :try_end_55} :catchall_76

    if-eqz v4, :cond_44

    goto :goto_9

    .line 298
    :cond_58
    :goto_58
    iput-boolean v3, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    .line 299
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v3, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 301
    :try_start_5f
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->unwatchAll()V

    .line 302
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_67} :catch_68

    goto :goto_70

    :catch_68
    move-exception v2

    .line 305
    :goto_69
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v4, v1, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    :goto_70
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_cc

    :catchall_76
    move-exception v4

    goto :goto_cd

    :catch_78
    move-exception v4

    .line 296
    :try_start_79
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v7, "IdleManager got exception"

    invoke-virtual {v5, v6, v7, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_82
    .catchall {:try_start_79 .. :try_end_82} :catchall_76

    .line 298
    iput-boolean v3, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    .line 299
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v3, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 301
    :try_start_89
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->unwatchAll()V

    .line 302
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_91} :catch_92

    goto :goto_70

    :catch_92
    move-exception v2

    goto :goto_69

    :catch_94
    move-exception v4

    .line 294
    :try_start_95
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v7, "IdleManager got I/O exception"

    invoke-virtual {v5, v6, v7, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9e
    .catchall {:try_start_95 .. :try_end_9e} :catchall_76

    .line 298
    iput-boolean v3, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    .line 299
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v3, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 301
    :try_start_a5
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->unwatchAll()V

    .line 302
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_ad
    .catch Ljava/io/IOException; {:try_start_a5 .. :try_end_ad} :catch_ae

    goto :goto_70

    :catch_ae
    move-exception v2

    goto :goto_69

    :catch_b0
    move-exception v4

    .line 292
    :try_start_b1
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v7, "IdleManager interrupted"

    invoke-virtual {v5, v6, v7, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_ba
    .catchall {:try_start_b1 .. :try_end_ba} :catchall_76

    .line 298
    iput-boolean v3, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    .line 299
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v3, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 301
    :try_start_c1
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->unwatchAll()V

    .line 302
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_c9
    .catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c9} :catch_ca

    goto :goto_70

    :catch_ca
    move-exception v2

    goto :goto_69

    :goto_cc
    return-void

    .line 298
    :goto_cd
    iput-boolean v3, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    .line 299
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v3, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 301
    :try_start_d4
    invoke-direct {p0}, Lcom/sun/mail/imap/IdleManager;->unwatchAll()V

    .line 302
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v2}, Ljava/nio/channels/Selector;->close()V
    :try_end_dc
    .catch Ljava/io/IOException; {:try_start_d4 .. :try_end_dc} :catch_dd

    goto :goto_e5

    :catch_dd
    move-exception v2

    .line 305
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v3, v5, v1, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 307
    :goto_e5
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 308
    throw v4
.end method

.method private unwatchAll()V
    .registers 10

    .line 447
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->keys()Ljava/util/Set;

    move-result-object v0

    .line 448
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "IdleManager exception while aborting idle for folder: "

    const/4 v3, 0x1

    if-eqz v1, :cond_5e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/channels/SelectionKey;

    .line 450
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->cancel()V

    .line 451
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->attachment()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/IMAPFolder;

    .line 452
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_39

    .line 453
    iget-object v5, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v7, "IdleManager no longer watching folder: {0}"

    .line 455
    invoke-static {v4}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v8

    .line 453
    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 456
    :cond_39
    invoke-virtual {v1}, Ljava/nio/channels/SelectionKey;->channel()Ljava/nio/channels/SelectableChannel;

    move-result-object v1

    .line 459
    :try_start_3d
    invoke-virtual {v1, v3}, Ljava/nio/channels/SelectableChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 460
    invoke-virtual {v4}, Lcom/sun/mail/imap/IMAPFolder;->idleAbortWait()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_43} :catch_44

    goto :goto_a

    :catch_44
    move-exception v1

    .line 463
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 465
    invoke-static {v4}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 463
    invoke-virtual {v3, v5, v2, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a

    .line 472
    :cond_5e
    :goto_5e
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    if-eqz v0, :cond_a7

    .line 473
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_7f

    .line 474
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v5, "IdleManager aborting IDLE for unwatched folder: {0}"

    .line 476
    invoke-static {v0}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v6

    .line 474
    invoke-virtual {v1, v4, v5, v6}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 477
    :cond_7f
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPFolder;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    if-nez v1, :cond_86

    goto :goto_5e

    .line 482
    :cond_86
    :try_start_86
    invoke-virtual {v1, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 483
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPFolder;->idleAbortWait()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_86 .. :try_end_8c} :catch_8d

    goto :goto_5e

    :catch_8d
    move-exception v1

    .line 486
    iget-object v4, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 488
    invoke-static {v0}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 486
    invoke-virtual {v4, v5, v0, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5e

    :cond_a7
    return-void
.end method

.method private watchAll()V
    .registers 7

    const-string v0, "IdleManager can\'t register folder"

    .line 321
    :goto_2
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/IMAPFolder;

    if-eqz v1, :cond_47

    .line 322
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 323
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "IdleManager adding {0} to selector"

    .line 324
    invoke-static {v1}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v5

    .line 323
    invoke-virtual {v2, v3, v4, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 326
    :cond_23
    :try_start_23
    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPFolder;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v2

    if-nez v2, :cond_2a

    goto :goto_2

    :cond_2a
    const/4 v3, 0x0

    .line 330
    invoke-virtual {v2, v3}, Ljava/nio/channels/SocketChannel;->configureBlocking(Z)Ljava/nio/channels/SelectableChannel;

    .line 331
    iget-object v3, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4, v1}, Ljava/nio/channels/SocketChannel;->register(Ljava/nio/channels/Selector;ILjava/lang/Object;)Ljava/nio/channels/SelectionKey;
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_34} :catch_3e
    .catch Ljava/nio/channels/CancelledKeyException; {:try_start_23 .. :try_end_34} :catch_35

    goto :goto_2

    :catch_35
    move-exception v1

    .line 338
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_3e
    move-exception v1

    .line 334
    iget-object v2, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v2, v3, v0, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_47
    return-void
.end method


# virtual methods
.method public isRunning()Z
    .registers 2

    .line 186
    iget-boolean v0, p0, Lcom/sun/mail/imap/IdleManager;->running:Z

    return v0
.end method

.method requestAbort(Lcom/sun/mail/imap/IMAPFolder;)V
    .registers 3

    .line 250
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->toAbort:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 251
    iget-object p1, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    return-void
.end method

.method public declared-synchronized stop()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x1

    .line 497
    :try_start_2
    iput-boolean v0, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    .line 498
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "IdleManager stopping"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 499
    iget-object v0, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {v0}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;
    :try_end_10
    .catchall {:try_start_2 .. :try_end_10} :catchall_12

    .line 500
    monitor-exit p0

    return-void

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public watch(Ljavax/mail/Folder;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 198
    iget-boolean v0, p0, Lcom/sun/mail/imap/IdleManager;->die:Z

    if-nez v0, :cond_b1

    .line 200
    instance-of v0, p1, Lcom/sun/mail/imap/IMAPFolder;

    if-eqz v0, :cond_a9

    .line 202
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;

    .line 203
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPFolder;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v1

    if-nez v1, :cond_27

    .line 205
    invoke-virtual {p1}, Ljavax/mail/Folder;->isOpen()Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 206
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Folder is not using SocketChannels"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 209
    :cond_1f
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Folder is not open"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 211
    :cond_27
    iget-object p1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p1, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_3e

    .line 212
    iget-object p1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "IdleManager watching {0}"

    .line 213
    invoke-static {v0}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v3

    .line 212
    invoke-virtual {p1, v1, v2, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3e
    const/4 p1, 0x0

    .line 217
    :goto_3f
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/IMAPFolder;->startIdle(Lcom/sun/mail/imap/IdleManager;)Z

    move-result v1

    if-nez v1, :cond_5f

    .line 218
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_5c

    .line 219
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v3, "IdleManager.watch startIdle failed for {0}"

    .line 221
    invoke-static {v0}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v4

    .line 219
    invoke-virtual {v1, v2, v3, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5c
    add-int/lit8 p1, p1, 0x1

    goto :goto_3f

    .line 224
    :cond_5f
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_99

    if-lez p1, :cond_8c

    .line 226
    iget-object v1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IdleManager.watch startIdle succeeded for {0} after "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " tries"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 229
    invoke-static {v0}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v3

    .line 226
    invoke-virtual {v1, v2, p1, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_99

    .line 231
    :cond_8c
    iget-object p1, p0, Lcom/sun/mail/imap/IdleManager;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "IdleManager.watch startIdle succeeded for {0}"

    .line 233
    invoke-static {v0}, Lcom/sun/mail/imap/IdleManager;->folderName(Ljavax/mail/Folder;)Ljava/lang/String;

    move-result-object v3

    .line 231
    invoke-virtual {p1, v1, v2, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 235
    :cond_99
    :goto_99
    monitor-enter p0

    .line 236
    :try_start_9a
    iget-object p1, p0, Lcom/sun/mail/imap/IdleManager;->toWatch:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 237
    iget-object p1, p0, Lcom/sun/mail/imap/IdleManager;->selector:Ljava/nio/channels/Selector;

    invoke-virtual {p1}, Ljava/nio/channels/Selector;->wakeup()Ljava/nio/channels/Selector;

    .line 238
    monitor-exit p0

    return-void

    :catchall_a6
    move-exception p1

    monitor-exit p0
    :try_end_a8
    .catchall {:try_start_9a .. :try_end_a8} :catchall_a6

    throw p1

    .line 201
    :cond_a9
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Can only watch IMAP folders"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 199
    :cond_b1
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "IdleManager is not running"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
