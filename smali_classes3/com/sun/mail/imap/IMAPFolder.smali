.class public Lcom/sun/mail/imap/IMAPFolder;
.super Ljavax/mail/Folder;
.source "IMAPFolder.java"

# interfaces
.implements Ljavax/mail/UIDFolder;
.implements Lcom/sun/mail/iap/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;,
        Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final ABORTING:I = 0x2

.field private static final IDLE:I = 0x1

.field private static final RUNNING:I = 0x0

.field protected static final UNKNOWN_SEPARATOR:C = '\uffff'


# instance fields
.field protected volatile attributes:[Ljava/lang/String;

.field protected availableFlags:Ljavax/mail/Flags;

.field private cachedStatus:Lcom/sun/mail/imap/protocol/Status;

.field private cachedStatusTime:J

.field private connectionPoolLogger:Lcom/sun/mail/util/MailLogger;

.field private doExpungeNotification:Z

.field protected volatile exists:Z

.field protected volatile fullName:Ljava/lang/String;

.field private hasMessageCountListener:Z

.field private volatile highestmodseq:J

.field private idleManager:Lcom/sun/mail/imap/IdleManager;

.field private idleState:I

.field protected isNamespace:Z

.field protected logger:Lcom/sun/mail/util/MailLogger;

.field protected messageCache:Lcom/sun/mail/imap/MessageCache;

.field protected final messageCacheLock:Ljava/lang/Object;

.field protected name:Ljava/lang/String;

.field private volatile opened:Z

.field protected permanentFlags:Ljavax/mail/Flags;

.field protected volatile protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

.field private realTotal:I

.field private reallyClosed:Z

.field private volatile recent:I

.field protected separator:C

.field private volatile total:I

.field protected type:I

.field private uidNotSticky:Z

.field protected uidTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/Long;",
            "Lcom/sun/mail/imap/IMAPMessage;",
            ">;"
        }
    .end annotation
.end field

.field private uidnext:J

.field private uidvalidity:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V
    .locals 3

    .line 435
    iget-object v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    iget-char v1, p1, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Ljava/lang/Boolean;)V

    .line 437
    iget-boolean p2, p1, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    if-eqz p2, :cond_0

    .line 438
    iget p2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 439
    :cond_0
    iget-boolean p2, p1, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 440
    iget p2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/2addr p2, v0

    iput p2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 441
    :cond_1
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 442
    iget-object p1, p1, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Ljava/lang/Boolean;)V
    .locals 6

    .line 394
    invoke-direct {p0, p3}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    const/4 v0, 0x0

    .line 189
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    .line 195
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    .line 207
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    const/4 v1, 0x1

    .line 219
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 271
    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    const/4 v2, -0x1

    .line 274
    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 276
    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    .line 277
    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    const-wide/16 v2, -0x1

    .line 279
    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J

    .line 280
    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    .line 281
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidNotSticky:Z

    .line 282
    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->highestmodseq:J

    .line 283
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    const/4 v2, 0x0

    .line 285
    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    const-wide/16 v2, 0x0

    .line 286
    iput-wide v2, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J

    .line 288
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z

    if-eqz p1, :cond_2

    .line 397
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 398
    iput-char p2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 399
    new-instance p1, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 400
    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getSession()Ljavax/mail/Session;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/mail/Session;->getDebug()Z

    move-result v3

    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getSession()Ljavax/mail/Session;

    move-result-object v4

    invoke-virtual {v4}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v4

    const-string v5, "DEBUG IMAP"

    invoke-direct {p1, v2, v5, v3, v4}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    .line 401
    invoke-virtual {p3}, Lcom/sun/mail/imap/IMAPStore;->getConnectionPoolLogger()Lcom/sun/mail/util/MailLogger;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->connectionPoolLogger:Lcom/sun/mail/util/MailLogger;

    .line 414
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    const p1, 0xffff

    if-eq p2, p1, :cond_0

    if-eqz p2, :cond_0

    .line 416
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_0

    .line 417
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v1

    if-ne p1, p2, :cond_0

    .line 418
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 419
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    :cond_0
    if-eqz p4, :cond_1

    .line 425
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    :cond_1
    return-void

    .line 396
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Folder name is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/sun/mail/imap/IMAPFolder;)I
    .locals 0

    .line 180
    iget p0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    return p0
.end method

.method static synthetic access$002(Lcom/sun/mail/imap/IMAPFolder;I)I
    .locals 0

    .line 180
    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    return p1
.end method

.method static synthetic access$100(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/IdleManager;
    .locals 0

    .line 180
    iget-object p0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/IdleManager;)Lcom/sun/mail/imap/IdleManager;
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    return-object p1
.end method

.method private addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 1

    .line 1190
    invoke-direct {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->isRecoverable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1191
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    return-void

    .line 1193
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1194
    instance-of p1, p2, Ljava/lang/Error;

    if-nez p1, :cond_2

    .line 1197
    instance-of p1, p2, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_1

    .line 1198
    check-cast p2, Ljava/lang/RuntimeException;

    throw p2

    .line 1200
    :cond_1
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unexpected exception"

    invoke-direct {p1, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1195
    :cond_2
    check-cast p2, Ljava/lang/Error;

    throw p2
.end method

.method private checkFlags(Ljavax/mail/Flags;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 525
    iget p1, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return-void

    .line 526
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Cannot change flags on READ_ONLY folder: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private cleanup(Z)V
    .locals 1

    .line 1599
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    const/4 p1, 0x0

    .line 1600
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    .line 1601
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 1602
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 1603
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 1604
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    .line 1605
    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 1606
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    const/4 p1, 0x3

    .line 1607
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyConnectionListeners(I)V

    return-void
.end method

.method private cleanupAndThrow(Ljavax/mail/MessagingException;)Ljavax/mail/MessagingException;
    .locals 3

    .line 1163
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    const/4 v0, 0x1

    .line 1164
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V
    :try_end_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    .line 1168
    :try_start_1
    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/sun/mail/imap/IMAPFolder;->logoutAndThrow(Ljava/lang/String;Lcom/sun/mail/iap/ProtocolException;)Ljavax/mail/MessagingException;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1170
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    goto :goto_1

    :catchall_1
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1171
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1174
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    return-object p1
.end method

.method private close(ZZ)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1502
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1509
    :try_start_0
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 1510
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This operation is not allowed on a closed folder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1514
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 1520
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v2, :cond_2

    .line 1521
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 1525
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    if-eqz p2, :cond_3

    .line 1527
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "forcing folder {0} to close"

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p1, p2, v2, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1529
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz p1, :cond_8

    .line 1530
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    goto/16 :goto_2

    .line 1531
    :cond_3
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast p2, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {p2}, Lcom/sun/mail/imap/IMAPStore;->isConnectionPoolFull()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 1533
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "pool is full, not adding an Authenticated connection"

    invoke-virtual {p2, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 1537
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz p1, :cond_4

    .line 1538
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1540
    :cond_4
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz p1, :cond_8

    .line 1541
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V

    goto :goto_2

    :cond_5
    if-nez p1, :cond_7

    .line 1546
    iget p1, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I
    :try_end_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p2, 0x2

    if-ne p1, p2, :cond_7

    const/4 p1, 0x0

    .line 1548
    :try_start_2
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v2, "UNSELECT"

    .line 1549
    invoke-virtual {p2, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 1550
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->unselect()V

    goto :goto_2

    .line 1560
    :cond_6
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_end_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p2, :cond_8

    .line 1563
    :try_start_3
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    :try_end_3
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move p2, v1

    goto :goto_1

    :catch_0
    move p2, p1

    :goto_1
    if-eqz p2, :cond_8

    .line 1570
    :try_start_4
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz p2, :cond_8

    .line 1571
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V
    :try_end_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move v1, p1

    goto :goto_2

    .line 1578
    :cond_7
    :try_start_5
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz p1, :cond_8

    .line 1579
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V
    :try_end_5
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1586
    :cond_8
    :goto_2
    :try_start_6
    iget-boolean p1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz p1, :cond_9

    .line 1587
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 1589
    :cond_9
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_2
    move-exception p1

    .line 1583
    :try_start_7
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1586
    :goto_3
    :try_start_8
    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz p2, :cond_a

    .line 1587
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 1588
    :cond_a
    throw p1

    :catchall_1
    move-exception p1

    .line 1589
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    throw p1
.end method

.method private declared-synchronized copymoveMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2099
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2101
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 2102
    monitor-exit p0

    return-void

    .line 2105
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-ne v0, v1, :cond_4

    .line 2106
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2108
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    const/4 v2, 0x0

    .line 2109
    invoke-static {p1, v2}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    .line 2114
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->move([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V

    goto :goto_0

    .line 2116
    :cond_1
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copy([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2130
    :goto_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 2111
    :cond_2
    :try_start_4
    new-instance p1, Ljavax/mail/MessageRemovedException;

    const-string p3, "Messages have been removed"

    invoke-direct {p1, p3}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2128
    :try_start_5
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2126
    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2

    :catch_2
    move-exception p1

    .line 2118
    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v1, "TRYCREATE"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_3

    .line 2119
    new-instance p1, Ljavax/mail/FolderNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2121
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " does not exist"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p1

    .line 2124
    :cond_3
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 2130
    :goto_1
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1

    :cond_4
    if-nez p3, :cond_5

    .line 2136
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2137
    :goto_2
    monitor-exit p0

    return-void

    .line 2133
    :cond_5
    :try_start_7
    new-instance p1, Ljavax/mail/MessagingException;

    const-string p2, "Move between stores not supported"

    invoke-direct {p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized copymoveUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)[Lcom/sun/mail/imap/AppendUID;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2164
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2166
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2167
    monitor-exit p0

    return-object v1

    .line 2170
    :cond_0
    :try_start_1
    invoke-virtual {p2}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-eq v0, v2, :cond_2

    .line 2171
    new-instance p1, Ljavax/mail/MessagingException;

    if-eqz p3, :cond_1

    const-string p2, "can\'t moveUIDMessages to a different store"

    goto :goto_0

    :cond_1
    const-string p2, "can\'t copyUIDMessages to a different store"

    :goto_0
    invoke-direct {p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2178
    :cond_2
    new-instance v0, Ljavax/mail/FetchProfile;

    invoke-direct {v0}, Ljavax/mail/FetchProfile;-><init>()V

    .line 2179
    sget-object v2, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {v0, v2}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    .line 2180
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    .line 2183
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2185
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 2187
    invoke-static {p1, v1}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v1

    if-eqz v1, :cond_8

    if-eqz p3, :cond_3

    .line 2193
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, v1, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->moveuid([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)Lcom/sun/mail/imap/CopyUID;

    move-result-object p3

    goto :goto_1

    .line 2195
    :cond_3
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, v1, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copyuid([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)Lcom/sun/mail/imap/CopyUID;

    move-result-object p3

    .line 2237
    :goto_1
    iget-object v1, p3, Lcom/sun/mail/imap/CopyUID;->src:[Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-static {v1}, Lcom/sun/mail/imap/protocol/UIDSet;->toArray([Lcom/sun/mail/imap/protocol/UIDSet;)[J

    move-result-object v1

    .line 2238
    iget-object v2, p3, Lcom/sun/mail/imap/CopyUID;->dst:[Lcom/sun/mail/imap/protocol/UIDSet;

    invoke-static {v2}, Lcom/sun/mail/imap/protocol/UIDSet;->toArray([Lcom/sun/mail/imap/protocol/UIDSet;)[J

    move-result-object v2

    .line 2241
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesByUID([J)[Ljavax/mail/Message;

    move-result-object v1

    .line 2242
    array-length v3, p1

    new-array v3, v3, [Lcom/sun/mail/imap/AppendUID;

    const/4 v4, 0x0

    move v5, v4

    .line 2243
    :goto_2
    array-length v6, p1

    if-ge v5, v6, :cond_7

    move v6, v5

    .line 2246
    :cond_4
    aget-object v7, p1, v5

    aget-object v8, v1, v6

    if-ne v7, v8, :cond_5

    .line 2247
    new-instance v7, Lcom/sun/mail/imap/AppendUID;

    iget-wide v8, p3, Lcom/sun/mail/imap/CopyUID;->uidvalidity:J

    aget-wide v10, v2, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sun/mail/imap/AppendUID;-><init>(JJ)V

    aput-object v7, v3, v5

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 2252
    array-length v7, v1
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-lt v6, v7, :cond_6

    move v6, v4

    :cond_6
    if-ne v6, v5, :cond_4

    :goto_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 2256
    :cond_7
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v3

    .line 2189
    :cond_8
    :try_start_4
    new-instance p1, Ljavax/mail/MessageRemovedException;

    const-string p3, "Messages have been removed"

    invoke-direct {p1, p3}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    .line 2268
    :try_start_5
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2266
    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2

    :catch_2
    move-exception p1

    .line 2258
    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v1, "TRYCREATE"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_9

    .line 2259
    new-instance p1, Ljavax/mail/FolderNotFoundException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 2261
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v1, " does not exist"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p2, p3}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p1

    .line 2264
    :cond_9
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 2270
    :goto_4
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private createHeaderCommand([Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3

    if-eqz p2, :cond_0

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BODY.PEEK[HEADER.FIELDS ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 1408
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RFC822.HEADER.LINES ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    .line 1410
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const-string v2, " "

    .line 1412
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    :cond_1
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    const-string p1, ")]"

    .line 1417
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_3
    const-string p1, ")"

    .line 1419
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createMessagesForUIDs([J)[Ljavax/mail/Message;
    .locals 6

    .line 2796
    array-length v0, p1

    new-array v0, v0, [Lcom/sun/mail/imap/IMAPMessage;

    const/4 v1, 0x0

    .line 2797
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 2799
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v2, :cond_0

    .line 2800
    aget-wide v3, p1, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/IMAPMessage;

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x1

    if-nez v2, :cond_1

    const/4 v2, -0x1

    .line 2803
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->newIMAPMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v2

    .line 2804
    aget-wide v4, p1, v1

    invoke-virtual {v2, v4, v5}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 2805
    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/IMAPMessage;->setExpunged(Z)V

    :cond_1
    add-int/lit8 v4, v1, 0x1

    .line 2807
    aput-object v2, v0, v1

    add-int/lit8 v1, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private declared-synchronized doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 660
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 663
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    new-array p1, v1, [Ljavax/mail/Folder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 664
    monitor-exit p0

    return-object p1

    .line 666
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 668
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$2;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/sun/mail/imap/IMAPFolder$2;-><init>(Lcom/sun/mail/imap/IMAPFolder;ZCLjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sun/mail/imap/protocol/ListInfo;

    check-cast p1, [Lcom/sun/mail/imap/protocol/ListInfo;

    if-nez p1, :cond_1

    new-array p1, v1, [Ljavax/mail/Folder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 681
    monitor-exit p0

    return-object p1

    .line 696
    :cond_1
    :try_start_2
    array-length p2, p1

    if-lez p2, :cond_2

    aget-object p2, p1, v1

    iget-object p2, p2, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    .line 699
    :cond_2
    array-length p2, p1

    sub-int/2addr p2, v1

    new-array p2, p2, [Lcom/sun/mail/imap/IMAPFolder;

    .line 700
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    move v2, v1

    .line 701
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_3

    sub-int v3, v2, v1

    .line 702
    aget-object v4, p1, v2

    invoke-virtual {v0, v4}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Lcom/sun/mail/imap/protocol/ListInfo;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v4

    aput-object v4, p2, v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 703
    :cond_3
    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 629
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 630
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 633
    :cond_1
    :goto_1
    array-length p1, p1

    if-lt v1, p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0
.end method

.method private getStatus()Lcom/sun/mail/imap/protocol/Status;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1812
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getStatusCacheTimeout()I

    move-result v0

    if-lez v0, :cond_0

    .line 1815
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    if-eqz v1, :cond_0

    .line 1816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J

    sub-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 1817
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    return-object v0

    :cond_0
    const/4 v1, 0x0

    .line 1822
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1823
    :try_start_1
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v1

    if-lez v0, :cond_1

    .line 1826
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    .line 1827
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1831
    :cond_1
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    return-object v1

    :catchall_0
    move-exception v0

    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1832
    throw v0
.end method

.method private isDirectory()Z
    .locals 1

    .line 4057
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isRecoverable(Ljava/lang/Throwable;)Z
    .locals 1

    .line 1205
    instance-of v0, p1, Ljava/lang/Exception;

    if-nez v0, :cond_1

    instance-of p1, p1, Ljava/lang/LinkageError;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private logoutAndThrow(Ljava/lang/String;Lcom/sun/mail/iap/ProtocolException;)Ljavax/mail/MessagingException;
    .locals 1

    .line 1180
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-direct {v0, p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1182
    :try_start_0
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1184
    invoke-direct {p0, v0, p1}, Lcom/sun/mail/imap/IMAPFolder;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method

.method private processFetchResponse(Lcom/sun/mail/imap/protocol/FetchResponse;)Ljavax/mail/Message;
    .locals 8

    .line 3628
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3632
    const-class v1, Lcom/sun/mail/imap/protocol/UID;

    invoke-virtual {p1, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/protocol/UID;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 3633
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/sun/mail/imap/protocol/UID;->uid:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_1

    .line 3634
    iget-wide v3, v1, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-virtual {v0, v3, v4}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 3635
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v3, :cond_0

    .line 3636
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 3637
    :cond_0
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    iget-wide v4, v1, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 3641
    :goto_0
    const-class v3, Lcom/sun/mail/imap/protocol/MODSEQ;

    invoke-virtual {p1, v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/imap/protocol/MODSEQ;

    if-eqz v3, :cond_2

    .line 3642
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->_getModSeq()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/sun/mail/imap/protocol/MODSEQ;->modseq:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_2

    .line 3643
    iget-wide v3, v3, Lcom/sun/mail/imap/protocol/MODSEQ;->modseq:J

    invoke-virtual {v0, v3, v4}, Lcom/sun/mail/imap/IMAPMessage;->setModSeq(J)V

    move v1, v2

    .line 3654
    :cond_2
    const-class v3, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-virtual {p1, v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/imap/protocol/FLAGS;

    if-eqz v3, :cond_3

    .line 3656
    invoke-virtual {v0, v3}, Lcom/sun/mail/imap/IMAPMessage;->_setFlags(Ljavax/mail/Flags;)V

    goto :goto_1

    :cond_3
    move v2, v1

    .line 3662
    :goto_1
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getExtensionItems()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPMessage;->handleExtensionFetchItems(Ljava/util/Map;)V

    if-nez v2, :cond_4

    const/4 v0, 0x0

    :cond_4
    return-object v0
.end method

.method private setACL(Lcom/sun/mail/imap/ACL;C)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3061
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$18;

    invoke-direct {v0, p0, p2, p1}, Lcom/sun/mail/imap/IMAPFolder$18;-><init>(Lcom/sun/mail/imap/IMAPFolder;CLcom/sun/mail/imap/ACL;)V

    const-string p1, "ACL not supported"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addACL(Lcom/sun/mail/imap/ACL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2963
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    return-void
.end method

.method public declared-synchronized addMessageCountListener(Ljavax/mail/event/MessageCountListener;)V
    .locals 0

    monitor-enter p0

    .line 2510
    :try_start_0
    invoke-super {p0, p1}, Ljavax/mail/Folder;->addMessageCountListener(Ljavax/mail/event/MessageCountListener;)V

    const/4 p1, 0x1

    .line 2511
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2512
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMessages([Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1993
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1994
    array-length v0, p1

    new-array v0, v0, [Ljavax/mail/internet/MimeMessage;

    .line 1995
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;

    move-result-object p1

    const/4 v1, 0x0

    .line 1996
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 1997
    aget-object v2, p1, v1

    if-eqz v2, :cond_0

    .line 1999
    iget-wide v3, v2, Lcom/sun/mail/imap/AppendUID;->uidvalidity:J

    iget-wide v5, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 2001
    :try_start_1
    iget-wide v2, v2, Lcom/sun/mail/imap/AppendUID;->uid:J

    invoke-virtual {p0, v2, v3}, Lcom/sun/mail/imap/IMAPFolder;->getMessageByUID(J)Ljavax/mail/Message;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2008
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addRights(Lcom/sun/mail/imap/ACL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/16 v0, 0x2b

    .line 2996
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    return-void
.end method

.method public declared-synchronized appendMessages([Ljavax/mail/Message;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1870
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1877
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getAppendBufferSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 1879
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 1880
    aget-object v3, p1, v2

    .line 1881
    invoke-virtual {v3}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1883
    invoke-virtual {v3}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v4

    .line 1885
    :cond_0
    invoke-virtual {v3}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1890
    :try_start_1
    new-instance v6, Lcom/sun/mail/imap/MessageLiteral;

    .line 1891
    invoke-virtual {v3}, Ljavax/mail/Message;->getSize()I

    move-result v7

    if-le v7, v0, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v0

    :goto_1
    invoke-direct {v6, v3, v7}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/mail/MessageRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1899
    :try_start_2
    new-instance v3, Lcom/sun/mail/imap/IMAPFolder$10;

    invoke-direct {v3, p0, v5, v4, v6}, Lcom/sun/mail/imap/IMAPFolder$10;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    :catch_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1893
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "IOException while appending messages"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1908
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1930
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1937
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getAppendBufferSize()I

    move-result v0

    .line 1939
    array-length v1, p1

    new-array v1, v1, [Lcom/sun/mail/imap/AppendUID;

    const/4 v2, 0x0

    move v3, v2

    .line 1940
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_2

    .line 1941
    aget-object v4, p1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1946
    :try_start_1
    new-instance v5, Lcom/sun/mail/imap/MessageLiteral;

    .line 1947
    invoke-virtual {v4}, Ljavax/mail/Message;->getSize()I

    move-result v6

    if-le v6, v0, :cond_0

    move v6, v2

    goto :goto_1

    :cond_0
    move v6, v0

    :goto_1
    invoke-direct {v5, v4, v6}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljavax/mail/MessageRemovedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1955
    :try_start_2
    invoke-virtual {v4}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v6

    if-nez v6, :cond_1

    .line 1957
    invoke-virtual {v4}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v6

    .line 1959
    :cond_1
    invoke-virtual {v4}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v4

    .line 1960
    new-instance v7, Lcom/sun/mail/imap/IMAPFolder$11;

    invoke-direct {v7, p0, v4, v6, v5}, Lcom/sun/mail/imap/IMAPFolder$11;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V

    invoke-virtual {p0, v7}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/AppendUID;

    .line 1967
    aput-object v4, v1, v3

    :catch_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1949
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "IOException while appending messages"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1969
    :cond_2
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected checkClosed()V
    .locals 2

    .line 464
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_0

    return-void

    .line 465
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This operation is not allowed on an open folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkExists()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 454
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 455
    :cond_0
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-void
.end method

.method protected checkOpened()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .line 476
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_1

    .line 477
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-eqz v0, :cond_0

    .line 478
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This operation is not allowed on a closed folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_0
    new-instance v0, Ljavax/mail/FolderClosedException;

    const-string v1, "Lost folder connection to server"

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    :cond_1
    return-void
.end method

.method protected checkRange(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_2

    .line 498
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-gt p1, v0, :cond_0

    return-void

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 506
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 513
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 515
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-gt p1, v0, :cond_1

    return-void

    .line 516
    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " > "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 511
    :try_start_2
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception p1

    .line 509
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    .line 513
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    .line 496
    :cond_2
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "message number < 1"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized close(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1484
    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1485
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 2018
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2019
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized copyUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)[Lcom/sun/mail/imap/AppendUID;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 2043
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)[Lcom/sun/mail/imap/AppendUID;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized create(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 808
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 810
    :goto_0
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder$6;-><init>(Lcom/sun/mail/imap/IMAPFolder;IC)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 840
    monitor-exit p0

    return v1

    .line 845
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    .line 847
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 848
    :cond_2
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized delete(Z)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 935
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 939
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->list()[Ljavax/mail/Folder;

    move-result-object v1

    move v2, v0

    .line 940
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 941
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Ljavax/mail/Folder;->delete(Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 946
    :cond_0
    new-instance p1, Lcom/sun/mail/imap/IMAPFolder$8;

    invoke-direct {p1, p0}, Lcom/sun/mail/imap/IMAPFolder$8;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_1

    .line 956
    monitor-exit p0

    return v0

    .line 959
    :cond_1
    :try_start_1
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    const/4 p1, 0x0

    .line 960
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    const/4 p1, 0x2

    .line 963
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 964
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3863
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3868
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 3866
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3891
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3898
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 3896
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    :catch_2
    return-object v0
.end method

.method public doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3876
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3883
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 3881
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    const/4 p1, 0x0

    return-object p1

    :catch_2
    move-exception p2

    .line 3878
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-direct {v0, p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method protected declared-synchronized doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    .line 3910
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    .line 3911
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 3912
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3913
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 3920
    :cond_0
    :try_start_4
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 3921
    :try_start_5
    invoke-interface {p1, v0}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 3923
    :try_start_6
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 3921
    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    goto :goto_0

    :catchall_2
    move-exception p1

    const/4 v0, 0x0

    .line 3923
    :goto_0
    :try_start_7
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3924
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized exists()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 585
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v0, :cond_0

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 588
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 590
    :goto_0
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$1;

    invoke-direct {v1, p0, v0}, Lcom/sun/mail/imap/IMAPFolder$1;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;

    check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;

    if-eqz v1, :cond_4

    .line 598
    invoke-direct {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v0

    .line 599
    aget-object v2, v1, v0

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 600
    aget-object v2, v1, v0

    iget-char v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    iput-char v2, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 601
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    .line 602
    iget-char v3, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    if-lez v2, :cond_1

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    sub-int/2addr v2, v5

    .line 603
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-char v6, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-ne v3, v6, :cond_1

    .line 604
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 606
    :cond_1
    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 607
    aget-object v2, v1, v0

    iget-boolean v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    if-eqz v2, :cond_2

    .line 608
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 609
    :cond_2
    aget-object v2, v1, v0

    iget-boolean v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    if-eqz v2, :cond_3

    .line 610
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 611
    :cond_3
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 612
    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    goto :goto_1

    .line 614
    :cond_4
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    const/4 v0, 0x0

    .line 615
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 618
    :goto_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized expunge()[Ljavax/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 2278
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Cannot expunge READ_ONLY folder: "

    monitor-enter p0

    .line 2293
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    if-eqz p1, :cond_0

    .line 2297
    new-instance v1, Ljavax/mail/FetchProfile;

    invoke-direct {v1}, Ljavax/mail/FetchProfile;-><init>()V

    .line 2298
    sget-object v2, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {v1, v2}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    .line 2299
    invoke-virtual {p0, p1, v1}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    .line 2303
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v2, 0x0

    .line 2304
    :try_start_1
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x1

    .line 2306
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v4

    if-eqz p1, :cond_1

    .line 2308
    invoke-static {p1}, Lcom/sun/mail/imap/Utility;->toUIDSet([Ljavax/mail/Message;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->uidexpunge([Lcom/sun/mail/imap/protocol/UIDSet;)V

    goto :goto_0

    .line 2310
    :cond_1
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->expunge()V
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2324
    :goto_0
    :try_start_3
    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    if-eqz p1, :cond_2

    .line 2329
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/MessageCache;->removeExpungedMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object p1

    goto :goto_1

    .line 2331
    :cond_2
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {p1}, Lcom/sun/mail/imap/MessageCache;->removeExpungedMessages()[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object p1

    .line 2332
    :goto_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_4

    .line 2333
    :goto_2
    array-length v0, p1

    if-ge v2, v0, :cond_4

    .line 2334
    aget-object v0, p1, v2

    .line 2336
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_3

    .line 2338
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2343
    :cond_4
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0}, Lcom/sun/mail/imap/MessageCache;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 2344
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2347
    :try_start_4
    array-length v0, p1

    if-lez v0, :cond_5

    .line 2348
    invoke-virtual {p0, v3, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 2349
    :cond_5
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 2322
    :try_start_5
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 2319
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception p1

    .line 2313
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_6

    .line 2314
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2317
    :cond_6
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2324
    :goto_3
    :try_start_6
    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 2325
    throw p1

    :catchall_1
    move-exception p1

    .line 2344
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    .line 1218
    :try_start_0
    iget-object v2, v1, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1219
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1220
    iget-object v3, v1, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isREV1()Z

    move-result v3

    .line 1221
    iget-object v4, v1, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getFetchItems()[Lcom/sun/mail/imap/protocol/FetchItem;

    move-result-object v4

    .line 1222
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1224
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1228
    sget-object v5, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v0, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_0

    .line 1229
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->getEnvelopeCommand()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    .line 1232
    :goto_0
    sget-object v8, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v0, v8}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v8

    if-eqz v8, :cond_2

    if-eqz v5, :cond_1

    const-string v5, "FLAGS"

    goto :goto_1

    :cond_1
    const-string v5, " FLAGS"

    .line 1233
    :goto_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    .line 1236
    :cond_2
    sget-object v8, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v0, v8}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v8

    if-eqz v8, :cond_4

    if-eqz v5, :cond_3

    const-string v5, "BODYSTRUCTURE"

    goto :goto_2

    :cond_3
    const-string v5, " BODYSTRUCTURE"

    .line 1237
    :goto_2
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    .line 1240
    :cond_4
    sget-object v8, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {v0, v8}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v8

    if-eqz v8, :cond_6

    if-eqz v5, :cond_5

    const-string v5, "UID"

    goto :goto_3

    :cond_5
    const-string v5, " UID"

    .line 1241
    :goto_3
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    .line 1244
    :cond_6
    sget-object v8, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->HEADERS:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {v0, v8}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v8

    if-eqz v8, :cond_a

    if-eqz v3, :cond_8

    if-eqz v5, :cond_7

    const-string v5, "BODY.PEEK[HEADER]"

    goto :goto_4

    :cond_7
    const-string v5, " BODY.PEEK[HEADER]"

    .line 1247
    :goto_4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_8
    if-eqz v5, :cond_9

    const-string v5, "RFC822.HEADER"

    goto :goto_5

    :cond_9
    const-string v5, " RFC822.HEADER"

    .line 1250
    :goto_5
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    move v5, v7

    const/4 v8, 0x1

    goto :goto_7

    :cond_a
    move v8, v7

    .line 1253
    :goto_7
    sget-object v9, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->MESSAGE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {v0, v9}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v9

    if-eqz v9, :cond_e

    if-eqz v3, :cond_c

    if-eqz v5, :cond_b

    const-string v5, "BODY.PEEK[]"

    goto :goto_8

    :cond_b
    const-string v5, " BODY.PEEK[]"

    .line 1256
    :goto_8
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a

    :cond_c
    if-eqz v5, :cond_d

    const-string v5, "RFC822"

    goto :goto_9

    :cond_d
    const-string v5, " RFC822"

    .line 1258
    :goto_9
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    move v5, v7

    const/4 v8, 0x1

    .line 1261
    :cond_e
    sget-object v9, Ljavax/mail/FetchProfile$Item;->SIZE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v0, v9}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v9

    if-nez v9, :cond_f

    sget-object v9, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->SIZE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    .line 1262
    invoke-virtual {v0, v9}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v9

    if-eqz v9, :cond_11

    :cond_f
    if-eqz v5, :cond_10

    const-string v5, "RFC822.SIZE"

    goto :goto_b

    :cond_10
    const-string v5, " RFC822.SIZE"

    .line 1263
    :goto_b
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    .line 1266
    :cond_11
    sget-object v9, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->INTERNALDATE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {v0, v9}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v9

    if-eqz v9, :cond_13

    if-eqz v5, :cond_12

    const-string v5, "INTERNALDATE"

    goto :goto_c

    :cond_12
    const-string v5, " INTERNALDATE"

    .line 1267
    :goto_c
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    :cond_13
    const/4 v9, 0x0

    if-nez v8, :cond_15

    .line 1274
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/FetchProfile;->getHeaderNames()[Ljava/lang/String;

    move-result-object v10

    .line 1275
    array-length v11, v10

    if-lez v11, :cond_16

    if-nez v5, :cond_14

    const-string v5, " "

    .line 1277
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    :cond_14
    invoke-direct {v1, v10, v3}, Lcom/sun/mail/imap/IMAPFolder;->createHeaderCommand([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    :cond_15
    move-object v10, v9

    :cond_16
    :goto_d
    move v3, v7

    .line 1285
    :goto_e
    array-length v5, v4

    if-ge v3, v5, :cond_19

    .line 1286
    aget-object v5, v4, v3

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/FetchItem;->getFetchProfileItem()Ljavax/mail/FetchProfile$Item;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    if-eqz v5, :cond_18

    .line 1287
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_17

    const-string v5, " "

    .line 1288
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    :cond_17
    aget-object v5, v4, v3

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/FetchItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    .line 1293
    :cond_19
    new-instance v3, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;

    invoke-direct {v3, v0, v4}, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;-><init>(Ljavax/mail/FetchProfile;[Lcom/sun/mail/imap/protocol/FetchItem;)V

    .line 1297
    iget-object v4, v1, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1300
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    move-object/from16 v5, p1

    .line 1304
    invoke-static {v5, v3}, Lcom/sun/mail/imap/Utility;->toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v3

    if-nez v3, :cond_1a

    .line 1308
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    .line 1312
    :cond_1a
    :try_start_4
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1314
    :try_start_5
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v9
    :try_end_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_f

    :catch_0
    move-exception v0

    .line 1320
    :try_start_6
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    :goto_f
    if-nez v9, :cond_1b

    .line 1324
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :cond_1b
    move v2, v7

    .line 1326
    :goto_10
    :try_start_7
    array-length v3, v9

    if-ge v2, v3, :cond_24

    .line 1327
    aget-object v3, v9, v2

    if-nez v3, :cond_1c

    goto :goto_13

    .line 1329
    :cond_1c
    instance-of v11, v3, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-nez v11, :cond_1d

    .line 1330
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 1335
    :cond_1d
    check-cast v3, Lcom/sun/mail/imap/protocol/FetchResponse;

    .line 1337
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v11

    invoke-virtual {v1, v11}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v11

    .line 1339
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItemCount()I

    move-result v12

    move v13, v7

    move v14, v13

    :goto_11
    if-ge v13, v12, :cond_21

    .line 1343
    invoke-virtual {v3, v13}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(I)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v15

    .line 1345
    instance-of v6, v15, Ljavax/mail/Flags;

    if-eqz v6, :cond_1f

    sget-object v6, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    .line 1346
    invoke-virtual {v0, v6}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v6

    if-eqz v6, :cond_1e

    if-nez v11, :cond_1f

    :cond_1e
    const/4 v14, 0x1

    goto :goto_12

    :cond_1f
    if-eqz v11, :cond_20

    .line 1351
    invoke-virtual {v11, v15, v10, v8}, Lcom/sun/mail/imap/IMAPMessage;->handleFetchItem(Lcom/sun/mail/imap/protocol/Item;[Ljava/lang/String;Z)Z

    :cond_20
    :goto_12
    add-int/lit8 v13, v13, 0x1

    goto :goto_11

    :cond_21
    if-eqz v11, :cond_22

    .line 1354
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getExtensionItems()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/sun/mail/imap/IMAPMessage;->handleExtensionFetchItems(Ljava/util/Map;)V

    :cond_22
    if-eqz v14, :cond_23

    .line 1359
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_23
    :goto_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 1363
    :cond_24
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_25

    .line 1364
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/mail/iap/Response;

    .line 1365
    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1366
    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->handleResponses([Lcom/sun/mail/iap/Response;)V

    .line 1369
    :cond_25
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1370
    monitor-exit p0

    return-void

    :catch_2
    move-exception v0

    .line 1316
    :try_start_8
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v0

    .line 1369
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_1
    move-exception v0

    .line 1222
    :try_start_a
    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized forceClose()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1493
    :try_start_0
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1494
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getACL()[Lcom/sun/mail/imap/ACL;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2944
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$14;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/IMAPFolder$14;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    const-string v1, "ACL not supported"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/ACL;

    check-cast v0, [Lcom/sun/mail/imap/ACL;

    return-object v0
.end method

.method public declared-synchronized getAttributes()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 3081
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 3082
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 3083
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    .line 3084
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getChannel()Ljava/nio/channels/SocketChannel;
    .locals 1

    .line 3409
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public declared-synchronized getDeletedMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1783
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_0

    .line 1784
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1786
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 1791
    :cond_0
    :try_start_1
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    .line 1792
    sget-object v1, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1794
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1795
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    new-instance v3, Ljavax/mail/search/FlagTerm;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v0

    .line 1796
    array-length v0, v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 1797
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0
    :try_end_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catch_0
    move-exception v0

    .line 1802
    :try_start_6
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    .line 1799
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getEnvelopeCommand()Ljava/lang/String;
    .locals 1

    const-string v0, "ENVELOPE INTERNALDATE RFC822.SIZE"

    return-object v0
.end method

.method public declared-synchronized getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 922
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 923
    :cond_0
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Cannot contain subfolders"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 925
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 926
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getHighestModSeq()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2821
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_0

    .line 2822
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->highestmodseq:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    .line 2828
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v2, "CONDSTORE"

    .line 2829
    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "HIGHESTMODSEQ"

    .line 2831
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2832
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0
    :try_end_2
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2842
    :goto_0
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    .line 2830
    :cond_1
    :try_start_4
    new-instance v2, Lcom/sun/mail/iap/BadCommandException;

    const-string v3, "CONDSTORE not supported"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_4
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_4

    :catchall_1
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_5

    :catch_3
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 2840
    :goto_1
    :try_start_5
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_4
    move-exception v2

    move-object v1, v0

    .line 2838
    :goto_2
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :goto_3
    if-eqz v0, :cond_2

    .line 2847
    :try_start_6
    iget-wide v0, v0, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return-wide v0

    .line 2846
    :cond_2
    :try_start_7
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Cannot obtain HIGHESTMODSEQ"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_5
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 2835
    :goto_4
    :try_start_8
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Cannot obtain HIGHESTMODSEQ"

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2842
    :goto_5
    :try_start_9
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2843
    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessage(I)Ljavax/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1841
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1842
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->checkRange(I)V

    .line 1844
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;
    .locals 3

    .line 4013
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0}, Lcom/sun/mail/imap/MessageCache;->size()I

    move-result v0

    if-le p1, v0, :cond_1

    .line 4018
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4019
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ignoring message number "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " outside range "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    .line 4020
    invoke-virtual {v1}, Lcom/sun/mail/imap/MessageCache;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4019
    invoke-virtual {v0, p1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 4023
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/MessageCache;->getMessageBySeqnum(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getMessageByUID(J)Ljavax/mail/Message;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2604
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2609
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2610
    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2612
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v2, :cond_0

    .line 2614
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/IMAPMessage;

    if-eqz v2, :cond_1

    .line 2616
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 2618
    :cond_0
    :try_start_3
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    const/4 v2, 0x0

    .line 2622
    :cond_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumber(J)V

    .line 2624
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz p1, :cond_2

    .line 2626
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/sun/mail/imap/IMAPMessage;

    if-eqz v2, :cond_2

    .line 2628
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v2

    .line 2630
    :cond_2
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2637
    monitor-exit p0

    return-object v2

    :catchall_0
    move-exception p1

    .line 2630
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catch_0
    move-exception p1

    .line 2634
    :try_start_7
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2632
    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessageCount()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1642
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1643
    :try_start_1
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1647
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    .line 1648
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v1

    :catch_0
    move-exception v1

    .line 1652
    :try_start_4
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v1

    .line 1650
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 1655
    :cond_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1659
    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1661
    :try_start_6
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    .line 1662
    iget v0, v0, Lcom/sun/mail/imap/protocol/Status;->total:I
    :try_end_6
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return v0

    :catch_2
    move-exception v0

    .line 1682
    :try_start_7
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception v0

    .line 1680
    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_4
    const/4 v0, 0x0

    .line 1669
    :try_start_8
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 1670
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v1

    .line 1671
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1672
    iget v1, v1, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I
    :try_end_8
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1677
    :try_start_9
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1672
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    .line 1675
    :try_start_a
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1677
    :goto_0
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1678
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_1
    move-exception v1

    .line 1655
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessages()[Ljavax/mail/Message;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1856
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1857
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getMessageCount()I

    move-result v0

    .line 1858
    new-array v1, v0, [Ljavax/mail/Message;

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v0, :cond_0

    add-int/lit8 v3, v2, -0x1

    .line 1860
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v4, v2}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v4

    aput-object v4, v1, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1861
    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;
    .locals 6

    .line 4037
    array-length v0, p1

    new-array v1, v0, [Lcom/sun/mail/imap/IMAPMessage;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 4040
    :goto_0
    array-length v5, p1

    if-ge v3, v5, :cond_1

    .line 4041
    aget v5, p1, v3

    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v5

    aput-object v5, v1, v3

    if-nez v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-lez v4, :cond_4

    .line 4046
    array-length p1, p1

    sub-int/2addr p1, v4

    new-array p1, p1, [Lcom/sun/mail/imap/IMAPMessage;

    move v3, v2

    :goto_1
    if-ge v2, v0, :cond_3

    .line 4048
    aget-object v4, v1, v2

    if-eqz v4, :cond_2

    add-int/lit8 v5, v3, 0x1

    .line 4049
    aput-object v4, p1, v3

    move v3, v5

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    move-object v1, p1

    :cond_4
    return-object v1
.end method

.method public declared-synchronized getMessagesByUID(JJ)[Ljavax/mail/Message;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2648
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2653
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2654
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v1, :cond_0

    .line 2655
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 2658
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers(JJ)[J

    move-result-object p1

    .line 2660
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    .line 2662
    :goto_0
    array-length p4, p1

    if-ge p3, p4, :cond_2

    .line 2663
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    aget-wide v1, p1, p3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljavax/mail/Message;

    if-eqz p4, :cond_1

    .line 2665
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 2667
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljavax/mail/Message;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/mail/Message;

    .line 2668
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2675
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2668
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception p1

    .line 2672
    :try_start_5
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2670
    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessagesByUID([J)[Ljavax/mail/Message;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2688
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2691
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2693
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2695
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2696
    array-length v3, p1

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-wide v5, p1, v4

    .line 2697
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2699
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2703
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 2704
    new-array v4, v3, [J

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_3

    .line 2706
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2709
    :cond_2
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    move-object v4, p1

    .line 2711
    :cond_3
    array-length v1, v4

    if-lez v1, :cond_4

    .line 2713
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers([J)V

    .line 2717
    :cond_4
    array-length v1, p1

    new-array v1, v1, [Ljavax/mail/Message;

    .line 2718
    :goto_2
    array-length v3, p1

    if-ge v2, v3, :cond_5

    .line 2719
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    aget-wide v4, p1, v2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/Message;

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2720
    :cond_5
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    .line 2721
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception p1

    .line 2725
    :try_start_5
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 2723
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessagesByUIDChangedSince(JJJ)[Ljavax/mail/Message;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2867
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2870
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2871
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    const-string v2, "CONDSTORE"

    .line 2872
    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    .line 2876
    invoke-virtual/range {v1 .. v7}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->uidfetchChangedSince(JJJ)[I

    move-result-object p1

    .line 2877
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object p1

    .line 2873
    :cond_0
    :try_start_3
    new-instance p1, Lcom/sun/mail/iap/BadCommandException;

    const-string p2, "CONDSTORE not supported"

    invoke-direct {p1, p2}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    .line 2878
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception p1

    .line 2882
    :try_start_5
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2880
    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 545
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 547
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 548
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 547
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
    :try_end_1
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 552
    :catch_0
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNewMessageCount()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1691
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1692
    :try_start_1
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 1696
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    .line 1697
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit p0

    return v1

    :catch_0
    move-exception v1

    .line 1701
    :try_start_4
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v1

    .line 1699
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 1704
    :cond_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1708
    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1710
    :try_start_6
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    .line 1711
    iget v0, v0, Lcom/sun/mail/imap/protocol/Status;->recent:I
    :try_end_6
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    monitor-exit p0

    return v0

    :catch_2
    move-exception v0

    .line 1731
    :try_start_7
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception v0

    .line 1729
    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_4
    const/4 v0, 0x0

    .line 1718
    :try_start_8
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 1719
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object v1

    .line 1720
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1721
    iget v1, v1, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I
    :try_end_8
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 1726
    :try_start_9
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 1721
    monitor-exit p0

    return v1

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_5
    move-exception v1

    .line 1724
    :try_start_a
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 1726
    :goto_0
    :try_start_b
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1727
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :catchall_1
    move-exception v1

    .line 1704
    :try_start_c
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParent()Ljavax/mail/Folder;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 568
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 570
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 571
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v2, Lcom/sun/mail/imap/IMAPStore;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    const/4 v4, 0x0

    .line 572
    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 571
    invoke-virtual {v2, v1, v0}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 574
    :cond_0
    :try_start_1
    new-instance v0, Lcom/sun/mail/imap/DefaultFolder;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/DefaultFolder;-><init>(Lcom/sun/mail/imap/IMAPStore;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPermanentFlags()Ljavax/mail/Flags;
    .locals 2

    monitor-enter p0

    .line 1632
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 1633
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 1634
    :cond_0
    :try_start_1
    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;

    move-object v1, v0

    check-cast v1, Ljavax/mail/Flags;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 3746
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 3750
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    .line 3752
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    return-object v0

    .line 3751
    :cond_0
    new-instance v0, Lcom/sun/mail/iap/ConnectionException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getQuota()[Ljavax/mail/Quota;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2904
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$12;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/IMAPFolder$12;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    const-string v1, "QUOTA not supported"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/Quota;

    check-cast v0, [Ljavax/mail/Quota;

    return-object v0
.end method

.method public declared-synchronized getSeparator()C
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 711
    :try_start_0
    iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    const v1, 0xffff

    if-ne v0, v1, :cond_1

    .line 714
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$3;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/IMAPFolder$3;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;

    check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 729
    aget-object v0, v0, v1

    iget-char v0, v0, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    iput-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    goto :goto_0

    :cond_0
    const/16 v0, 0x2f

    .line 731
    iput-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 733
    :cond_1
    :goto_0
    iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSortedMessages([Lcom/sun/mail/imap/SortTerm;)[Ljavax/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 2455
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->getSortedMessages([Lcom/sun/mail/imap/SortTerm;Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSortedMessages([Lcom/sun/mail/imap/SortTerm;Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2475
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2480
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2481
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->sort([Lcom/sun/mail/imap/SortTerm;Ljavax/mail/search/SearchTerm;)[I

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2483
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2484
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2485
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    .line 2484
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception p1

    .line 2497
    :try_start_5
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2494
    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2

    :catch_2
    move-exception p1

    .line 2492
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Ljavax/mail/search/SearchException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3
    move-exception p1

    .line 2489
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getStatusItem(Ljava/lang/String;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 3453
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    const-wide/16 v1, -0x1

    if-nez v0, :cond_1

    .line 3454
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v0, 0x0

    .line 3459
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 3461
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 3462
    invoke-virtual {v3, p1}, Lcom/sun/mail/imap/protocol/Status;->getItem(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3473
    :cond_0
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 3462
    monitor-exit p0

    return-wide v1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3471
    :try_start_3
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception p1

    .line 3469
    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3473
    :goto_0
    :try_start_4
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3474
    throw p1

    .line 3473
    :catch_2
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3467
    monitor-exit p0

    return-wide v1

    .line 3476
    :cond_1
    monitor-exit p0

    return-wide v1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    .line 3708
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->connectionPoolLogger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "getStoreProtocol() borrowing a connection"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 3709
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getFolderStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getType()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 741
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_0

    .line 743
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_1

    .line 744
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    goto :goto_0

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 748
    :cond_1
    :goto_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUID(Ljavax/mail/Message;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2735
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getFolder()Ljavax/mail/Folder;

    move-result-object v0

    if-ne v0, p0, :cond_4

    .line 2739
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2741
    instance-of v0, p1, Lcom/sun/mail/imap/IMAPMessage;

    if-eqz v0, :cond_3

    .line 2743
    check-cast p1, Lcom/sun/mail/imap/IMAPMessage;

    .line 2746
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 2747
    monitor-exit p0

    return-wide v0

    .line 2749
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2751
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 2752
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 2753
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchUID(I)Lcom/sun/mail/imap/protocol/UID;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2756
    iget-wide v0, v3, Lcom/sun/mail/imap/protocol/UID;->uid:J

    .line 2757
    invoke-virtual {p1, v0, v1}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 2760
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v3, :cond_1

    .line 2761
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 2762
    :cond_1
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2769
    :cond_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2771
    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2767
    :try_start_4
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 2765
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 2769
    :goto_0
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1

    .line 2742
    :cond_3
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "message is not an IMAPMessage"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2736
    :cond_4
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Message does not belong to this folder"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUIDNext()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2570
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_0

    .line 2571
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    .line 2577
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "UIDNEXT"

    .line 2578
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2579
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0
    :try_end_2
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2589
    :goto_0
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_5

    :catch_3
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 2587
    :goto_1
    :try_start_4
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_4
    move-exception v2

    move-object v1, v0

    .line 2585
    :goto_2
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :goto_3
    if-eqz v0, :cond_1

    .line 2594
    :try_start_5
    iget-wide v0, v0, Lcom/sun/mail/imap/protocol/Status;->uidnext:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-wide v0

    .line 2593
    :cond_1
    :try_start_6
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Cannot obtain UIDNext"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_5
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 2582
    :goto_4
    :try_start_7
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Cannot obtain UIDNext"

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    .line 2589
    :goto_5
    :try_start_8
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2590
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUIDNotSticky()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2788
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2789
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidNotSticky:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUIDValidity()J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2523
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_0

    .line 2524
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-wide v0

    :cond_0
    const/4 v0, 0x0

    .line 2530
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v2, "UIDVALIDITY"

    .line 2531
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2532
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0
    :try_end_2
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2542
    :goto_0
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v2

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_4

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_5

    :catch_3
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 2540
    :goto_1
    :try_start_4
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_4
    move-exception v2

    move-object v1, v0

    .line 2538
    :goto_2
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :goto_3
    if-eqz v0, :cond_1

    .line 2547
    :try_start_5
    iget-wide v0, v0, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-wide v0

    .line 2546
    :cond_1
    :try_start_6
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Cannot obtain UIDValidity"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catch_5
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 2535
    :goto_4
    :try_start_7
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Cannot obtain UIDValidity"

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    .line 2542
    :goto_5
    :try_start_8
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2543
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUnreadMessageCount()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1741
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_0

    .line 1742
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1746
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    .line 1747
    iget v0, v0, Lcom/sun/mail/imap/protocol/Status;->unseen:I
    :try_end_1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return v0

    :catch_0
    move-exception v0

    .line 1756
    :try_start_2
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1
    move-exception v0

    .line 1754
    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1752
    :catch_2
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 1762
    :cond_0
    :try_start_3
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    .line 1763
    sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1765
    :try_start_4
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1766
    :try_start_5
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    new-instance v3, Ljavax/mail/search/FlagTerm;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v4}, Ljavax/mail/search/FlagTerm;-><init>(Ljavax/mail/Flags;Z)V

    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v0

    .line 1767
    array-length v0, v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    .line 1768
    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_3
    move-exception v0

    .line 1773
    :try_start_8
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_4
    move-exception v0

    .line 1770
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method handleIdle(Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3251
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readIdleResponse()Lcom/sun/mail/iap/Response;

    move-result-object v0

    .line 3253
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3254
    :try_start_1
    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->isSynthetic()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    if-ne v2, v5, :cond_3

    .line 3262
    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 3263
    instance-of v6, v2, Ljava/io/InterruptedIOException;

    if-eqz v6, :cond_3

    move-object v6, v2

    check-cast v6, Ljava/io/InterruptedIOException;

    iget v6, v6, Ljava/io/InterruptedIOException;->bytesTransferred:I

    if-nez v6, :cond_3

    .line 3266
    instance-of v2, v2, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_1

    .line 3267
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "handleIdle: ignoring socket timeout"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_0

    .line 3271
    :cond_1
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "handleIdle: interrupting IDLE"

    invoke-virtual {v2, v4}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3272
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    if-eqz v2, :cond_2

    .line 3274
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "handleIdle: request IdleManager to abort"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3276
    invoke-virtual {v2, p0}, Lcom/sun/mail/imap/IdleManager;->requestAbort(Lcom/sun/mail/imap/IMAPFolder;)V

    goto :goto_0

    .line 3278
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "handleIdle: abort IDLE"

    invoke-virtual {v2, v4}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3279
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    .line 3280
    iput v3, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3284
    :goto_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    .line 3289
    :try_start_2
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 3290
    invoke-virtual {v6, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->processIdleResponse(Lcom/sun/mail/iap/Response;)Z

    move-result v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    if-eqz p1, :cond_5

    .line 3302
    :try_start_3
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v2, v5, :cond_5

    .line 3304
    :try_start_4
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 3310
    :catch_0
    :try_start_5
    iput v3, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3313
    :cond_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_1
    if-eqz v0, :cond_0

    .line 3321
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasResponse()Z

    move-result v0

    if-nez v0, :cond_0

    return v5

    .line 3295
    :cond_6
    :goto_2
    :try_start_6
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v0, "handleIdle: set to RUNNING"

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3296
    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3297
    iput-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    .line 3298
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return v2

    :catchall_0
    move-exception p1

    .line 3295
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v3, "handleIdle: set to RUNNING"

    invoke-virtual {v0, v3}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3296
    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3297
    iput-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    .line 3298
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 3300
    throw p1

    :catchall_1
    move-exception p1

    .line 3313
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw p1
    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_1

    :catch_1
    move-exception p1

    .line 3318
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_2
    move-exception p1

    .line 3316
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0
.end method

.method public handleResponse(Lcom/sun/mail/iap/Response;)V
    .locals 7

    .line 3498
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBAD()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3499
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPStore;->handleResponseCode(Lcom/sun/mail/iap/Response;)V

    .line 3505
    :cond_1
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 3506
    iget-boolean p1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz p1, :cond_2

    .line 3507
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    :cond_2
    return-void

    .line 3509
    :cond_3
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3511
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 3512
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_4

    .line 3513
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HIGHESTMODSEQ"

    .line 3514
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3515
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->highestmodseq:J

    .line 3517
    :cond_4
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->reset()V

    return-void

    .line 3519
    :cond_5
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result v0

    if-nez v0, :cond_6

    return-void

    .line 3524
    :cond_6
    instance-of v0, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v0, :cond_7

    .line 3527
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "UNEXPECTED RESPONSE : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    return-void

    .line 3531
    :cond_7
    check-cast p1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    const-string v0, "EXISTS"

    .line 3533
    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_a

    .line 3534
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result p1

    .line 3535
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    if-gt p1, v0, :cond_8

    return-void

    :cond_8
    sub-int/2addr p1, v0

    .line 3540
    new-array v3, p1, [Ljavax/mail/Message;

    .line 3543
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    add-int/2addr v0, v2

    invoke-virtual {v4, p1, v0}, Lcom/sun/mail/imap/MessageCache;->addMessages(II)V

    .line 3544
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 3545
    iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    add-int/2addr v4, p1

    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 3546
    iget v4, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    add-int/2addr v4, p1

    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 3549
    iget-boolean v4, p0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z

    if-eqz v4, :cond_13

    :goto_0
    if-ge v1, p1, :cond_9

    .line 3551
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    add-int/2addr v0, v2

    invoke-virtual {v4, v0}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3554
    :cond_9
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageAddedListeners([Ljavax/mail/Message;)V

    goto/16 :goto_3

    :cond_a
    const-string v0, "EXPUNGE"

    .line 3557
    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3560
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result p1

    .line 3561
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    if-le p1, v0, :cond_b

    return-void

    .line 3569
    :cond_b
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z

    if-eqz v0, :cond_d

    new-array v0, v2, [Ljavax/mail/Message;

    .line 3572
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v4

    aput-object v4, v0, v1

    aget-object v4, v0, v1

    if-nez v4, :cond_c

    goto :goto_1

    :cond_c
    move-object v3, v0

    .line 3577
    :cond_d
    :goto_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/MessageCache;->expungeMessage(I)V

    .line 3580
    iget p1, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    if-eqz v3, :cond_13

    .line 3583
    invoke-virtual {p0, v1, v3}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V

    goto/16 :goto_3

    :cond_e
    const-string v0, "VANISHED"

    .line 3585
    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 3591
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomStringList()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_13

    .line 3593
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object p1

    .line 3594
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/UIDSet;->parseUIDSets(Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object p1

    .line 3596
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    int-to-long v3, v0

    invoke-static {p1}, Lcom/sun/mail/imap/protocol/UIDSet;->size([Lcom/sun/mail/imap/protocol/UIDSet;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    long-to-int v0, v3

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    .line 3597
    invoke-static {p1}, Lcom/sun/mail/imap/protocol/UIDSet;->toArray([Lcom/sun/mail/imap/protocol/UIDSet;)[J

    move-result-object p1

    .line 3598
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->createMessagesForUIDs([J)[Ljavax/mail/Message;

    move-result-object p1

    .line 3599
    array-length v0, p1

    :goto_2
    if-ge v1, v0, :cond_10

    aget-object v3, p1, v1

    .line 3600
    invoke-virtual {v3}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v4

    if-lez v4, :cond_f

    .line 3601
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v3}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/sun/mail/imap/MessageCache;->expungeMessage(I)V

    :cond_f
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3603
    :cond_10
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z

    if-eqz v0, :cond_13

    .line 3604
    invoke-virtual {p0, v2, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V

    goto :goto_3

    :cond_11
    const-string v0, "FETCH"

    .line 3608
    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3610
    check-cast p1, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->processFetchResponse(Lcom/sun/mail/imap/protocol/FetchResponse;)Ljavax/mail/Message;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 3612
    invoke-virtual {p0, v2, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V

    goto :goto_3

    :cond_12
    const-string v0, "RECENT"

    .line 3615
    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 3617
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    :cond_13
    :goto_3
    return-void
.end method

.method handleResponses([Lcom/sun/mail/iap/Response;)V
    .locals 2

    const/4 v0, 0x0

    .line 3677
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 3678
    aget-object v1, p1, v0

    if-eqz v1, :cond_0

    .line 3679
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->handleResponse(Lcom/sun/mail/iap/Response;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public declared-synchronized hasNewMessages()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 856
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 857
    :try_start_1
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 861
    :try_start_2
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 867
    :try_start_3
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    if-lez v1, :cond_0

    move v2, v3

    :cond_0
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v2

    :catch_0
    move-exception v1

    .line 865
    :try_start_4
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1
    move-exception v1

    .line 863
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 869
    :cond_1
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 876
    :try_start_5
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v0, :cond_2

    iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v0, :cond_2

    .line 877
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 879
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 880
    :goto_0
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$7;

    invoke-direct {v1, p0, v0}, Lcom/sun/mail/imap/IMAPFolder$7;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;

    check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;

    if-eqz v1, :cond_6

    .line 891
    invoke-direct {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v0

    .line 892
    aget-object v4, v1, v0

    iget v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ne v4, v3, :cond_3

    .line 893
    monitor-exit p0

    return v3

    .line 894
    :cond_3
    :try_start_6
    aget-object v0, v1, v0

    iget v0, v0, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    .line 895
    monitor-exit p0

    return v2

    .line 899
    :cond_4
    :try_start_7
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    .line 900
    iget v0, v0, Lcom/sun/mail/imap/protocol/Status;->recent:I
    :try_end_7
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_7 .. :try_end_7} :catch_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-lez v0, :cond_5

    .line 901
    monitor-exit p0

    return v3

    .line 903
    :cond_5
    monitor-exit p0

    return v2

    :catch_2
    move-exception v0

    .line 910
    :try_start_8
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3
    move-exception v0

    .line 908
    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 906
    :catch_4
    monitor-exit p0

    return v2

    .line 889
    :cond_6
    :try_start_9
    new-instance v0, Ljavax/mail/FolderNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_0
    move-exception v1

    .line 869
    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :try_start_b
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public id(Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3428
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 3429
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$20;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$20;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/util/Map;)V

    const-string p1, "ID not supported"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    return-object p1
.end method

.method public idle()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3111
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->idle(Z)V

    return-void
.end method

.method public idle(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3127
    monitor-enter p0

    .line 3136
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3137
    :cond_0
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "idle method not supported with SocketChannels"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3139
    :cond_1
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 3140
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->startIdle(Lcom/sun/mail/imap/IdleManager;)Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 3159
    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->handleIdle(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3168
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast p1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPStore;->getMinIdleTime()I

    move-result p1

    if-lez p1, :cond_3

    int-to-long v0, p1

    .line 3171
    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 3174
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    .line 3139
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method idleAbort()V
    .locals 3

    .line 3371
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3372
    :try_start_0
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v1, :cond_0

    .line 3373
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    const/4 v1, 0x2

    .line 3374
    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3376
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method idleAbortWait()V
    .locals 5

    .line 3384
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3385
    :try_start_0
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v1, :cond_1

    .line 3386
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    const/4 v1, 0x2

    .line 3387
    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v1, 0x0

    .line 3392
    :try_start_1
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->handleIdle(Z)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3397
    :try_start_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "Exception in idleAbortWait"

    invoke-virtual {v2, v3, v4, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3399
    :goto_0
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "IDLE aborted"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3401
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public declared-synchronized isOpen()Z
    .locals 2

    monitor-enter p0

    .line 1615
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1617
    :try_start_1
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 1619
    :try_start_2
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_2
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1622
    :catch_0
    :cond_0
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1624
    :try_start_4
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v1

    .line 1622
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSubscribed()Z
    .locals 2

    monitor-enter p0

    .line 758
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v0, :cond_0

    iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v0, :cond_0

    .line 759
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-char v1, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 761
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 764
    :goto_0
    :try_start_1
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$4;

    invoke-direct {v1, p0, v0}, Lcom/sun/mail/imap/IMAPFolder$4;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;

    check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;
    :try_end_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    .line 775
    :try_start_2
    invoke-direct {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v0

    .line 776
    aget-object v0, v1, v0

    iget-boolean v0, v0, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v0

    .line 778
    :cond_1
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected keepConnectionAlive(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 3982
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-nez v0, :cond_0

    return-void

    .line 3984
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 3985
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 3986
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_1

    .line 3987
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V

    :cond_1
    if-eqz p1, :cond_3

    .line 3990
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast p1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPStore;->hasSeparateStoreConnection()Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    .line 3993
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getFolderStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object p1

    .line 3994
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v4

    sub-long/2addr v0, v4

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 3995
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3997
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPStore;->releaseFolderStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1, p1}, Lcom/sun/mail/imap/IMAPStore;->releaseFolderStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3998
    throw v0

    :cond_3
    :goto_0
    return-void
.end method

.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 647
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;

    move-result-object p1

    return-object p1
.end method

.method public listRights(Ljava/lang/String;)[Lcom/sun/mail/imap/Rights;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3031
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$16;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$16;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    const-string p1, "ACL not supported"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sun/mail/imap/Rights;

    check-cast p1, [Lcom/sun/mail/imap/Rights;

    return-object p1
.end method

.method public listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 655
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized moveMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 2061
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2062
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized moveUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)[Lcom/sun/mail/imap/AppendUID;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 2088
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)[Lcom/sun/mail/imap/AppendUID;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public myRights()Lcom/sun/mail/imap/Rights;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3049
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$17;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/IMAPFolder$17;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    const-string v1, "ACL not supported"

    invoke-virtual {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/Rights;

    return-object v0
.end method

.method protected newIMAPMessage(I)Lcom/sun/mail/imap/IMAPMessage;
    .locals 1

    .line 1395
    new-instance v0, Lcom/sun/mail/imap/IMAPMessage;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPMessage;-><init>(Lcom/sun/mail/imap/IMAPFolder;I)V

    return-object v0
.end method

.method public declared-synchronized open(ILcom/sun/mail/imap/ResyncData;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/sun/mail/imap/ResyncData;",
            ")",
            "Ljava/util/List<",
            "Ljavax/mail/event/MailEvent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1016
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 1020
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/IMAPStore;->getProtocol(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 1023
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 1031
    :try_start_1
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_2

    .line 1041
    :try_start_2
    sget-object v4, Lcom/sun/mail/imap/ResyncData;->CONDSTORE:Lcom/sun/mail/imap/ResyncData;

    if-ne p2, v4, :cond_1

    .line 1042
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v5, "CONDSTORE"

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v5, "QRESYNC"

    .line 1043
    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1044
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v5, "CONDSTORE"

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1045
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v5, "CONDSTORE"

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enable(Ljava/lang/String;)V

    goto :goto_0

    .line 1047
    :cond_0
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v5, "QRESYNC"

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enable(Ljava/lang/String;)V

    goto :goto_0

    .line 1050
    :cond_1
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v5, "QRESYNC"

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1051
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v5, "QRESYNC"

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enable(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception p1

    goto/16 :goto_4

    :catch_1
    move-exception p1

    goto/16 :goto_5

    :cond_2
    :goto_0
    if-ne p1, v3, :cond_3

    .line 1056
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v4, v5, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object p2

    goto :goto_1

    .line 1058
    :cond_3
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v4, v5, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->select(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object p2
    :try_end_2
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 1093
    :goto_1
    :try_start_3
    iget v4, p2, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    if-eq v4, p1, :cond_5

    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    .line 1094
    iget p1, p2, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    if-ne p1, v3, :cond_4

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast p1, Lcom/sun/mail/imap/IMAPStore;

    .line 1095
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPStore;->allowReadOnlySelect()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_2

    .line 1098
    :cond_4
    new-instance p1, Ljavax/mail/ReadOnlyFolderException;

    const-string p2, "Cannot open in desired mode"

    invoke-direct {p1, p0, p2}, Ljavax/mail/ReadOnlyFolderException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .line 1100
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->cleanupAndThrow(Ljavax/mail/MessagingException;)Ljavax/mail/MessagingException;

    move-result-object p1

    throw p1

    .line 1105
    :cond_5
    :goto_2
    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    .line 1106
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 1107
    iget p1, p2, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    .line 1108
    iget-object p1, p2, Lcom/sun/mail/imap/protocol/MailboxInfo;->availableFlags:Ljavax/mail/Flags;

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->availableFlags:Ljavax/mail/Flags;

    .line 1109
    iget-object p1, p2, Lcom/sun/mail/imap/protocol/MailboxInfo;->permanentFlags:Ljavax/mail/Flags;

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;

    .line 1110
    iget p1, p2, Lcom/sun/mail/imap/protocol/MailboxInfo;->total:I

    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 1111
    iget p1, p2, Lcom/sun/mail/imap/protocol/MailboxInfo;->recent:I

    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    .line 1112
    iget-wide v4, p2, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidvalidity:J

    iput-wide v4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J

    .line 1113
    iget-wide v4, p2, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidnext:J

    iput-wide v4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    .line 1114
    iget-boolean p1, p2, Lcom/sun/mail/imap/protocol/MailboxInfo;->uidNotSticky:Z

    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidNotSticky:Z

    .line 1115
    iget-wide v4, p2, Lcom/sun/mail/imap/protocol/MailboxInfo;->highestmodseq:J

    iput-wide v4, p0, Lcom/sun/mail/imap/IMAPFolder;->highestmodseq:J

    .line 1118
    new-instance p1, Lcom/sun/mail/imap/MessageCache;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v4, Lcom/sun/mail/imap/IMAPStore;

    iget v5, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    invoke-direct {p1, p0, v4, v5}, Lcom/sun/mail/imap/MessageCache;-><init>(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/IMAPStore;I)V

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    .line 1121
    iget-object p1, p2, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    if-eqz p1, :cond_9

    .line 1122
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1123
    iget-object p2, p2, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_6
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    const-string v5, "VANISHED"

    .line 1124
    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 1126
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomStringList()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 1128
    array-length v6, v5

    if-ne v6, v3, :cond_6

    aget-object v5, v5, v2

    const-string v6, "EARLIER"

    .line 1129
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_3

    .line 1131
    :cond_7
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v4

    .line 1132
    invoke-static {v4}, Lcom/sun/mail/imap/protocol/UIDSet;->parseUIDSets(Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v4

    .line 1133
    iget-wide v5, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    invoke-static {v4, v5, v6}, Lcom/sun/mail/imap/protocol/UIDSet;->toArray([Lcom/sun/mail/imap/protocol/UIDSet;J)[J

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1134
    array-length v5, v4

    if-lez v5, :cond_6

    .line 1135
    new-instance v5, Lcom/sun/mail/imap/MessageVanishedEvent;

    invoke-direct {v5, p0, v4}, Lcom/sun/mail/imap/MessageVanishedEvent;-><init>(Ljavax/mail/Folder;[J)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    const-string v5, "FETCH"

    .line 1137
    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1140
    check-cast v4, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-direct {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->processFetchResponse(Lcom/sun/mail/imap/protocol/FetchResponse;)Ljavax/mail/Message;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 1142
    new-instance v5, Ljavax/mail/event/MessageChangedEvent;

    invoke-direct {v5, p0, v3, v4}, Ljavax/mail/event/MessageChangedEvent;-><init>(Ljava/lang/Object;ILjavax/mail/Message;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    move-object p1, v1

    .line 1147
    :cond_a
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 1149
    :try_start_4
    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 1150
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 1151
    iput v3, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 1154
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->notifyConnectionListeners(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 1156
    monitor-exit p0

    return-object p1

    .line 1087
    :goto_4
    :try_start_5
    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/sun/mail/imap/IMAPFolder;->logoutAndThrow(Ljava/lang/String;Lcom/sun/mail/iap/ProtocolException;)Ljavax/mail/MessagingException;

    move-result-object p1

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    .line 1089
    :try_start_6
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1090
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1068
    :goto_5
    :try_start_7
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1070
    iget p2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    and-int/2addr p2, v3

    if-nez p2, :cond_b

    .line 1071
    new-instance p1, Ljavax/mail/MessagingException;

    const-string p2, "folder cannot contain messages"

    invoke-direct {p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1073
    :cond_b
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v4, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception p1

    .line 1077
    :try_start_8
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 1078
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 1079
    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 1081
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1082
    throw p1

    :catchall_2
    move-exception p1

    .line 1147
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    throw p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :catchall_3
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized open(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1001
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->open(ILcom/sun/mail/imap/ResyncData;)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1002
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected releaseProtocol(Z)V
    .locals 2

    .line 3954
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_1

    .line 3955
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 3958
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast p1, Lcom/sun/mail/imap/IMAPStore;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1, p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_0

    .line 3960
    :cond_0
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 3961
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast p1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {p1, p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3963
    :goto_0
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    :cond_1
    return-void
.end method

.method protected declared-synchronized releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .locals 1

    monitor-enter p0

    .line 3937
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eq p1, v0, :cond_0

    .line 3938
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPStore;->releaseFolderStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_0

    .line 3941
    :cond_0
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v0, "releasing our protocol as store protocol?"

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3943
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeACL(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2975
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$15;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$15;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    const-string p1, "ACL not supported"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    return-void
.end method

.method public removeRights(Lcom/sun/mail/imap/ACL;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/16 v0, 0x2d

    .line 3008
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->setACL(Lcom/sun/mail/imap/ACL;C)V

    return-void
.end method

.method public declared-synchronized renameTo(Ljavax/mail/Folder;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 973
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 974
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 975
    invoke-virtual {p1}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-ne v0, v1, :cond_1

    .line 979
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$9;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$9;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Folder;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 988
    monitor-exit p0

    return v1

    .line 990
    :cond_0
    :try_start_1
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    const/4 v0, 0x0

    .line 991
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 992
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderRenamedListeners(Ljavax/mail/Folder;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 993
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 976
    :cond_1
    :try_start_2
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Can\'t rename across Stores"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2369
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2374
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2375
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2377
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2378
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2379
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2378
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception p1

    .line 2393
    :try_start_5
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1
    move-exception p1

    .line 2390
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    .line 2386
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->throwSearchException()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2388
    invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-object p1

    .line 2387
    :cond_1
    :try_start_6
    throw v0

    .line 2383
    :catch_3
    invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2405
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2407
    array-length v0, p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 2409
    monitor-exit p0

    return-object p2

    .line 2414
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2415
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    const/4 v2, 0x0

    .line 2416
    invoke-static {p2, v2}, Lcom/sun/mail/imap/Utility;->toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2420
    invoke-virtual {v1, v3, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v1

    if-eqz v1, :cond_1

    .line 2422
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v2

    .line 2423
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2424
    monitor-exit p0

    return-object v2

    .line 2418
    :cond_2
    :try_start_3
    new-instance v1, Ljavax/mail/MessageRemovedException;

    const-string v2, "Messages have been removed"

    invoke-direct {v1, v2}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 2423
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/mail/search/SearchException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception p1

    .line 2436
    :try_start_5
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 2433
    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2

    .line 2431
    :catch_2
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    monitor-exit p0

    return-object p1

    .line 2428
    :catch_3
    :try_start_6
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-object p1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFlags(IILjavax/mail/Flags;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1458
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    .line 1459
    new-array v0, v0, [Ljavax/mail/Message;

    const/4 v1, 0x0

    :goto_0
    if-gt p1, p2, :cond_0

    add-int/lit8 v2, v1, 0x1

    .line 1462
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 p1, p1, 0x1

    move v1, v2

    goto :goto_0

    .line 1463
    :cond_0
    invoke-virtual {p0, v0, p3, p4}, Lcom/sun/mail/imap/IMAPFolder;->setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1464
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFlags([ILjavax/mail/Flags;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1472
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1473
    array-length v0, p1

    new-array v0, v0, [Ljavax/mail/Message;

    const/4 v1, 0x0

    .line 1474
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 1475
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1476
    :cond_0
    invoke-virtual {p0, v0, p2, p3}, Lcom/sun/mail/imap/IMAPFolder;->setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1477
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1430
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1431
    invoke-direct {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->checkFlags(Ljavax/mail/Flags;)V

    .line 1433
    array-length v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v0, :cond_0

    .line 1434
    monitor-exit p0

    return-void

    .line 1436
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1438
    :try_start_2
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    const/4 v2, 0x0

    .line 1439
    invoke-static {p1, v2}, Lcom/sun/mail/imap/Utility;->toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1443
    invoke-virtual {v1, p1, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/Flags;Z)V
    :try_end_2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1449
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1450
    monitor-exit p0

    return-void

    .line 1441
    :cond_1
    :try_start_4
    new-instance p1, Ljavax/mail/MessageRemovedException;

    const-string p2, "Messages have been removed"

    invoke-direct {p1, p2}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1447
    :try_start_5
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_1
    move-exception p1

    .line 1445
    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2

    .line 1449
    :goto_0
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setQuota(Ljavax/mail/Quota;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2925
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$13;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$13;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Quota;)V

    const-string p1, "QUOTA not supported"

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    return-void
.end method

.method public declared-synchronized setSubscribed(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 787
    :try_start_0
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$5;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$5;-><init>(Lcom/sun/mail/imap/IMAPFolder;Z)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 797
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method startIdle(Lcom/sun/mail/imap/IdleManager;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3194
    monitor-enter p0

    .line 3195
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    if-eqz p1, :cond_1

    .line 3196
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    if-eqz v0, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 3197
    :cond_0
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Folder already being watched by another IdleManager"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const-string v0, "IDLE not supported"

    .line 3199
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$19;

    invoke-direct {v1, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$19;-><init>(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/IdleManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    .line 3231
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v2, "startIdle: return {0}"

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3232
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    .line 3233
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected declared-synchronized throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;,
            Ljavax/mail/StoreClosedException;
        }
    .end annotation

    monitor-enter p0

    .line 3728
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getProtocol()Lcom/sun/mail/iap/Protocol;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eq v0, v1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-nez v0, :cond_2

    .line 3730
    :cond_1
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 3732
    :cond_2
    new-instance v0, Ljavax/mail/StoreClosedException;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method waitIfIdle()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 3332
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3334
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    if-eqz v0, :cond_1

    .line 3336
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "waitIfIdle: request IdleManager to abort"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3337
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/IdleManager;->requestAbort(Lcom/sun/mail/imap/IMAPFolder;)V

    goto :goto_1

    .line 3339
    :cond_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "waitIfIdle: abort IDLE"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3340
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    const/4 v0, 0x2

    .line 3341
    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    goto :goto_1

    .line 3344
    :cond_2
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "waitIfIdle: idleState {0}"

    invoke-virtual {v0, v1, v3, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3347
    :goto_1
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3348
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitIfIdle: wait to be not idle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3349
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3348
    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3350
    :cond_3
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 3351
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3352
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "waitIfIdle: wait done, idleState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3353
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3352
    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 3356
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 3362
    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    const-string v2, "Interrupted waitIfIdle"

    invoke-direct {v1, v2, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    return-void
.end method
