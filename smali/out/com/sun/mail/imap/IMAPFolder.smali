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
    .registers 0

    return-void
.end method

.method protected constructor <init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V
    .registers 6

    .line 435
    iget-object v0, p1, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    iget-char v1, p1, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, p2, v2}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Ljava/lang/Boolean;)V

    .line 437
    iget-boolean p2, p1, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    if-eqz p2, :cond_12

    .line 438
    iget p2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 439
    :cond_12
    iget-boolean p2, p1, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_1c

    .line 440
    iget p2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/2addr p2, v0

    iput p2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 441
    :cond_1c
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 442
    iget-object p1, p1, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Ljava/lang/Boolean;)V
    .registers 11

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

    if-eqz p1, :cond_86

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

    if-eq p2, p1, :cond_7d

    if-eqz p2, :cond_7d

    .line 416
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(I)I

    move-result p1

    if-lez p1, :cond_7d

    .line 417
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    sub-int/2addr p2, v1

    if-ne p1, p2, :cond_7d

    .line 418
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 419
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    :cond_7d
    if-eqz p4, :cond_85

    .line 425
    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    :cond_85
    return-void

    .line 396
    :cond_86
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Folder name is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$000(Lcom/sun/mail/imap/IMAPFolder;)I
    .registers 1

    .line 180
    iget p0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    return p0
.end method

.method static synthetic access$002(Lcom/sun/mail/imap/IMAPFolder;I)I
    .registers 2

    .line 180
    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    return p1
.end method

.method static synthetic access$100(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/IdleManager;
    .registers 1

    .line 180
    iget-object p0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    return-object p0
.end method

.method static synthetic access$102(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/IdleManager;)Lcom/sun/mail/imap/IdleManager;
    .registers 2

    .line 180
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    return-object p1
.end method

.method private addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .registers 4

    .line 1190
    invoke-direct {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->isRecoverable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1191
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    return-void

    .line 1193
    :cond_a
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 1194
    instance-of p1, p2, Ljava/lang/Error;

    if-nez p1, :cond_20

    .line 1197
    instance-of p1, p2, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_18

    .line 1198
    check-cast p2, Ljava/lang/RuntimeException;

    throw p2

    .line 1200
    :cond_18
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unexpected exception"

    invoke-direct {p1, v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 1195
    :cond_20
    check-cast p2, Ljava/lang/Error;

    throw p2
.end method

.method private checkFlags(Ljavax/mail/Flags;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 525
    iget p1, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    return-void

    .line 526
    :cond_6
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
    .registers 3

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
    .registers 5

    .line 1163
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    const/4 v0, 0x1

    .line 1164
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V
    :try_end_9
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_9} :catch_c
    .catchall {:try_start_0 .. :try_end_9} :catchall_a

    goto :goto_25

    :catchall_a
    move-exception v0

    goto :goto_22

    :catch_c
    move-exception v0

    const/4 v1, 0x0

    .line 1168
    :try_start_e
    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v0}, Lcom/sun/mail/imap/IMAPFolder;->logoutAndThrow(Ljava/lang/String;Lcom/sun/mail/iap/ProtocolException;)Ljavax/mail/MessagingException;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    :try_end_19
    .catchall {:try_start_e .. :try_end_19} :catchall_1d

    .line 1170
    :try_start_19
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    goto :goto_25

    :catchall_1d
    move-exception v0

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1171
    throw v0
    :try_end_22
    .catchall {:try_start_19 .. :try_end_22} :catchall_a

    .line 1174
    :goto_22
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_25
    return-object p1
.end method

.method private close(ZZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1502
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1509
    :try_start_3
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v1, :cond_14

    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-nez v1, :cond_c

    goto :goto_14

    .line 1510
    :cond_c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "This operation is not allowed on a closed folder"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_14
    :goto_14
    const/4 v1, 0x1

    .line 1514
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    .line 1520
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v2, :cond_1d

    .line 1521
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_3 .. :try_end_1c} :catchall_bd

    return-void

    .line 1525
    :cond_1d
    :try_start_1d
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    if-eqz p2, :cond_38

    .line 1527
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object p2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "forcing folder {0} to close"

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p1, p2, v2, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 1529
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz p1, :cond_9f

    .line 1530
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    goto/16 :goto_9f

    .line 1531
    :cond_38
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast p2, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {p2}, Lcom/sun/mail/imap/IMAPStore;->isConnectionPoolFull()Z

    move-result p2

    if-eqz p2, :cond_5e

    .line 1533
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "pool is full, not adding an Authenticated connection"

    invoke-virtual {p2, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    if-eqz p1, :cond_54

    .line 1537
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz p1, :cond_54

    .line 1538
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V

    .line 1540
    :cond_54
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz p1, :cond_9f

    .line 1541
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V

    goto :goto_9f

    :cond_5e
    if-nez p1, :cond_96

    .line 1546
    iget p1, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I
    :try_end_62
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1d .. :try_end_62} :catch_aa
    .catchall {:try_start_1d .. :try_end_62} :catchall_a8

    const/4 p2, 0x2

    if-ne p1, p2, :cond_96

    const/4 p1, 0x0

    .line 1548
    :try_start_66
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz p2, :cond_7a

    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v2, "UNSELECT"

    .line 1549
    invoke-virtual {p2, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_7a

    .line 1550
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->unselect()V

    goto :goto_9f

    .line 1560
    :cond_7a
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;
    :try_end_7c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_66 .. :try_end_7c} :catch_94
    .catchall {:try_start_66 .. :try_end_7c} :catchall_a8

    if-eqz p2, :cond_9f

    .line 1563
    :try_start_7e
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;)Lcom/sun/mail/imap/protocol/MailboxInfo;
    :try_end_85
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_7e .. :try_end_85} :catch_87
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7e .. :try_end_85} :catch_94
    .catchall {:try_start_7e .. :try_end_85} :catchall_a8

    move p2, v1

    goto :goto_88

    :catch_87
    move p2, p1

    :goto_88
    if-eqz p2, :cond_9f

    .line 1570
    :try_start_8a
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz p2, :cond_9f

    .line 1571
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V
    :try_end_93
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8a .. :try_end_93} :catch_94
    .catchall {:try_start_8a .. :try_end_93} :catchall_a8

    goto :goto_9f

    :catch_94
    move v1, p1

    goto :goto_9f

    .line 1578
    :cond_96
    :try_start_96
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz p1, :cond_9f

    .line 1579
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->close()V
    :try_end_9f
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_96 .. :try_end_9f} :catch_aa
    .catchall {:try_start_96 .. :try_end_9f} :catchall_a8

    .line 1586
    :cond_9f
    :goto_9f
    :try_start_9f
    iget-boolean p1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz p1, :cond_a6

    .line 1587
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 1589
    :cond_a6
    monitor-exit v0
    :try_end_a7
    .catchall {:try_start_9f .. :try_end_a7} :catchall_bd

    return-void

    :catchall_a8
    move-exception p1

    goto :goto_b5

    :catch_aa
    move-exception p1

    .line 1583
    :try_start_ab
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
    :try_end_b5
    .catchall {:try_start_ab .. :try_end_b5} :catchall_a8

    .line 1586
    :goto_b5
    :try_start_b5
    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz p2, :cond_bc

    .line 1587
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    .line 1588
    :cond_bc
    throw p1

    :catchall_bd
    move-exception p1

    .line 1589
    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_b5 .. :try_end_bf} :catchall_bd

    throw p1
.end method

.method private declared-synchronized copymoveMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2099
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2101
    array-length v0, p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_98

    if-nez v0, :cond_9

    .line 2102
    monitor-exit p0

    return-void

    .line 2105
    :cond_9
    :try_start_9
    invoke-virtual {p2}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-ne v0, v1, :cond_89

    .line 2106
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_14
    .catchall {:try_start_9 .. :try_end_14} :catchall_98

    .line 2108
    :try_start_14
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    const/4 v2, 0x0

    .line 2109
    invoke-static {p1, v2}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object p1

    if-eqz p1, :cond_32

    if-eqz p3, :cond_29

    .line 2114
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->move([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V

    goto :goto_30

    .line 2116
    :cond_29
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v1, p1, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copy([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)V
    :try_end_30
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_14 .. :try_end_30} :catch_52
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_14 .. :try_end_30} :catch_47
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_14 .. :try_end_30} :catch_3c
    .catchall {:try_start_14 .. :try_end_30} :catchall_3a

    .line 2130
    :goto_30
    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_3a

    goto :goto_8e

    .line 2111
    :cond_32
    :try_start_32
    new-instance p1, Ljavax/mail/MessageRemovedException;

    const-string p3, "Messages have been removed"

    invoke-direct {p1, p3}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3a
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_32 .. :try_end_3a} :catch_52
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_32 .. :try_end_3a} :catch_47
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_32 .. :try_end_3a} :catch_3c
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3a

    :catchall_3a
    move-exception p1

    goto :goto_87

    :catch_3c
    move-exception p1

    .line 2128
    :try_start_3d
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_47
    move-exception p1

    .line 2126
    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2

    :catch_52
    move-exception p1

    .line 2118
    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v1, "TRYCREATE"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_7d

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
    :cond_7d
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 2130
    :goto_87
    monitor-exit v0
    :try_end_88
    .catchall {:try_start_3d .. :try_end_88} :catchall_3a

    :try_start_88
    throw p1

    :cond_89
    if-nez p3, :cond_90

    .line 2136
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    :try_end_8e
    .catchall {:try_start_88 .. :try_end_8e} :catchall_98

    .line 2137
    :goto_8e
    monitor-exit p0

    return-void

    .line 2133
    :cond_90
    :try_start_90
    new-instance p1, Ljavax/mail/MessagingException;

    const-string p2, "Move between stores not supported"

    invoke-direct {p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_98
    .catchall {:try_start_90 .. :try_end_98} :catchall_98

    :catchall_98
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized copymoveUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)[Lcom/sun/mail/imap/AppendUID;
    .registers 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2164
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2166
    array-length v0, p1
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_dc

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 2167
    monitor-exit p0

    return-object v1

    .line 2170
    :cond_a
    :try_start_a
    invoke-virtual {p2}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-eq v0, v2, :cond_1f

    .line 2171
    new-instance p1, Ljavax/mail/MessagingException;

    if-eqz p3, :cond_19

    const-string p2, "can\'t moveUIDMessages to a different store"

    goto :goto_1b

    :cond_19
    const-string p2, "can\'t copyUIDMessages to a different store"

    :goto_1b
    invoke-direct {p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2178
    :cond_1f
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
    :try_end_2f
    .catchall {:try_start_a .. :try_end_2f} :catchall_dc

    .line 2185
    :try_start_2f
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2

    .line 2187
    invoke-static {p1, v1}, Lcom/sun/mail/imap/Utility;->toMessageSet([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v1

    if-eqz v1, :cond_85

    if-eqz p3, :cond_44

    .line 2193
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, v1, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->moveuid([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)Lcom/sun/mail/imap/CopyUID;

    move-result-object p3

    goto :goto_4c

    .line 2195
    :cond_44
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, v1, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->copyuid([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)Lcom/sun/mail/imap/CopyUID;

    move-result-object p3

    .line 2237
    :goto_4c
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
    :goto_61
    array-length v6, p1

    if-ge v5, v6, :cond_82

    move v6, v5

    .line 2246
    :cond_65
    aget-object v7, p1, v5

    aget-object v8, v1, v6

    if-ne v7, v8, :cond_77

    .line 2247
    new-instance v7, Lcom/sun/mail/imap/AppendUID;

    iget-wide v8, p3, Lcom/sun/mail/imap/CopyUID;->uidvalidity:J

    aget-wide v10, v2, v6

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/sun/mail/imap/AppendUID;-><init>(JJ)V

    aput-object v7, v3, v5

    goto :goto_7f

    :cond_77
    add-int/lit8 v6, v6, 0x1

    .line 2252
    array-length v7, v1
    :try_end_7a
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2f .. :try_end_7a} :catch_a5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2f .. :try_end_7a} :catch_9a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2f .. :try_end_7a} :catch_8f
    .catchall {:try_start_2f .. :try_end_7a} :catchall_8d

    if-lt v6, v7, :cond_7d

    move v6, v4

    :cond_7d
    if-ne v6, v5, :cond_65

    :goto_7f
    add-int/lit8 v5, v5, 0x1

    goto :goto_61

    .line 2256
    :cond_82
    :try_start_82
    monitor-exit v0
    :try_end_83
    .catchall {:try_start_82 .. :try_end_83} :catchall_8d

    monitor-exit p0

    return-object v3

    .line 2189
    :cond_85
    :try_start_85
    new-instance p1, Ljavax/mail/MessageRemovedException;

    const-string p3, "Messages have been removed"

    invoke-direct {p1, p3}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_8d
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_85 .. :try_end_8d} :catch_a5
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_85 .. :try_end_8d} :catch_9a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_85 .. :try_end_8d} :catch_8f
    .catchall {:try_start_85 .. :try_end_8d} :catchall_8d

    :catchall_8d
    move-exception p1

    goto :goto_da

    :catch_8f
    move-exception p1

    .line 2268
    :try_start_90
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_9a
    move-exception p1

    .line 2266
    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2

    :catch_a5
    move-exception p1

    .line 2258
    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object p3

    const-string v1, "TRYCREATE"

    invoke-virtual {p3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    const/4 v1, -0x1

    if-eq p3, v1, :cond_d0

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
    :cond_d0
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    .line 2270
    :goto_da
    monitor-exit v0
    :try_end_db
    .catchall {:try_start_90 .. :try_end_db} :catchall_8d

    :try_start_db
    throw p1
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_dc

    :catchall_dc
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private createHeaderCommand([Ljava/lang/String;Z)Ljava/lang/String;
    .registers 6

    if-eqz p2, :cond_a

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "BODY.PEEK[HEADER.FIELDS ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto :goto_11

    .line 1408
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "RFC822.HEADER.LINES ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    :goto_11
    const/4 v1, 0x0

    .line 1410
    :goto_12
    array-length v2, p1

    if-ge v1, v2, :cond_24

    if-lez v1, :cond_1c

    const-string v2, " "

    .line 1412
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1413
    :cond_1c
    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    :cond_24
    if-eqz p2, :cond_2c

    const-string p1, ")]"

    .line 1417
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_31

    :cond_2c
    const-string p1, ")"

    .line 1419
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1421
    :goto_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private createMessagesForUIDs([J)[Ljavax/mail/Message;
    .registers 8

    .line 2796
    array-length v0, p1

    new-array v0, v0, [Lcom/sun/mail/imap/IMAPMessage;

    const/4 v1, 0x0

    .line 2797
    :goto_4
    array-length v2, p1

    if-ge v1, v2, :cond_30

    .line 2799
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v2, :cond_18

    .line 2800
    aget-wide v3, p1, v1

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/IMAPMessage;

    goto :goto_19

    :cond_18
    const/4 v2, 0x0

    :goto_19
    const/4 v3, 0x1

    if-nez v2, :cond_29

    const/4 v2, -0x1

    .line 2803
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->newIMAPMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v2

    .line 2804
    aget-wide v4, p1, v1

    invoke-virtual {v2, v4, v5}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 2805
    invoke-virtual {v2, v3}, Lcom/sun/mail/imap/IMAPMessage;->setExpunged(Z)V

    :cond_29
    add-int/lit8 v4, v1, 0x1

    .line 2807
    aput-object v2, v0, v1

    add-int/lit8 v1, v4, 0x1

    goto :goto_4

    :cond_30
    return-object v0
.end method

.method private declared-synchronized doList(Ljava/lang/String;Z)[Ljavax/mail/Folder;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 660
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 663
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_13

    new-array p1, v1, [Ljavax/mail/Folder;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_66

    .line 664
    monitor-exit p0

    return-object p1

    .line 666
    :cond_13
    :try_start_13
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 668
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$2;

    invoke-direct {v2, p0, p2, v0, p1}, Lcom/sun/mail/imap/IMAPFolder$2;-><init>(Lcom/sun/mail/imap/IMAPFolder;ZCLjava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sun/mail/imap/protocol/ListInfo;

    check-cast p1, [Lcom/sun/mail/imap/protocol/ListInfo;

    if-nez p1, :cond_2a

    new-array p1, v1, [Ljavax/mail/Folder;
    :try_end_28
    .catchall {:try_start_13 .. :try_end_28} :catchall_66

    .line 681
    monitor-exit p0

    return-object p1

    .line 696
    :cond_2a
    :try_start_2a
    array-length p2, p1

    if-lez p2, :cond_4b

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

    if-eqz p2, :cond_4b

    const/4 v1, 0x1

    .line 699
    :cond_4b
    array-length p2, p1

    sub-int/2addr p2, v1

    new-array p2, p2, [Lcom/sun/mail/imap/IMAPFolder;

    .line 700
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    move v2, v1

    .line 701
    :goto_54
    array-length v3, p1

    if-ge v2, v3, :cond_64

    sub-int v3, v2, v1

    .line 702
    aget-object v4, p1, v2

    invoke-virtual {v0, v4}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Lcom/sun/mail/imap/protocol/ListInfo;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v4

    aput-object v4, p2, v3
    :try_end_61
    .catchall {:try_start_2a .. :try_end_61} :catchall_66

    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 703
    :cond_64
    monitor-exit p0

    return-object p2

    :catchall_66
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I
    .registers 6

    const/4 v0, 0x0

    move v1, v0

    .line 629
    :goto_2
    array-length v2, p1

    if-ge v1, v2, :cond_13

    .line 630
    aget-object v2, p1, v1

    iget-object v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    goto :goto_13

    :cond_10
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 633
    :cond_13
    :goto_13
    array-length p1, p1

    if-lt v1, p1, :cond_17

    goto :goto_18

    :cond_17
    move v0, v1

    :goto_18
    return v0
.end method

.method private getStatus()Lcom/sun/mail/imap/protocol/Status;
    .registers 6
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

    if-lez v0, :cond_1d

    .line 1815
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    if-eqz v1, :cond_1d

    .line 1816
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J

    sub-long/2addr v1, v3

    int-to-long v3, v0

    cmp-long v1, v1, v3

    if-gez v1, :cond_1d

    .line 1817
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    return-object v0

    :cond_1d
    const/4 v1, 0x0

    .line 1822
    :try_start_1e
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v2
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_39

    .line 1823
    :try_start_22
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v1

    if-lez v0, :cond_32

    .line 1826
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatus:Lcom/sun/mail/imap/protocol/Status;

    .line 1827
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sun/mail/imap/IMAPFolder;->cachedStatusTime:J
    :try_end_32
    .catchall {:try_start_22 .. :try_end_32} :catchall_36

    .line 1831
    :cond_32
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    return-object v1

    :catchall_36
    move-exception v0

    move-object v1, v2

    goto :goto_3a

    :catchall_39
    move-exception v0

    :goto_3a
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1832
    throw v0
.end method

.method private isDirectory()Z
    .registers 2

    .line 4057
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private isRecoverable(Ljava/lang/Throwable;)Z
    .registers 3

    .line 1205
    instance-of v0, p1, Ljava/lang/Exception;

    if-nez v0, :cond_b

    instance-of p1, p1, Ljava/lang/LinkageError;

    if-eqz p1, :cond_9

    goto :goto_b

    :cond_9
    const/4 p1, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p1, 0x1

    :goto_c
    return p1
.end method

.method private logoutAndThrow(Ljava/lang/String;Lcom/sun/mail/iap/ProtocolException;)Ljavax/mail/MessagingException;
    .registers 4

    .line 1180
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-direct {v0, p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 1182
    :try_start_5
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_b

    goto :goto_f

    :catchall_b
    move-exception p1

    .line 1184
    invoke-direct {p0, v0, p1}, Lcom/sun/mail/imap/IMAPFolder;->addSuppressed(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_f
    return-object v0
.end method

.method private processFetchResponse(Lcom/sun/mail/imap/protocol/FetchResponse;)Ljavax/mail/Message;
    .registers 10

    .line 3628
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v0

    if-eqz v0, :cond_70

    .line 3632
    const-class v1, Lcom/sun/mail/imap/protocol/UID;

    invoke-virtual {p1, v1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/protocol/UID;

    const/4 v2, 0x1

    if-eqz v1, :cond_3c

    .line 3633
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v3

    iget-wide v5, v1, Lcom/sun/mail/imap/protocol/UID;->uid:J

    cmp-long v3, v3, v5

    if-eqz v3, :cond_3c

    .line 3634
    iget-wide v3, v1, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-virtual {v0, v3, v4}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 3635
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v3, :cond_2f

    .line 3636
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 3637
    :cond_2f
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    iget-wide v4, v1, Lcom/sun/mail/imap/protocol/UID;->uid:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v2

    goto :goto_3d

    :cond_3c
    const/4 v1, 0x0

    .line 3641
    :goto_3d
    const-class v3, Lcom/sun/mail/imap/protocol/MODSEQ;

    invoke-virtual {p1, v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/imap/protocol/MODSEQ;

    if-eqz v3, :cond_57

    .line 3642
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->_getModSeq()J

    move-result-wide v4

    iget-wide v6, v3, Lcom/sun/mail/imap/protocol/MODSEQ;->modseq:J

    cmp-long v4, v4, v6

    if-eqz v4, :cond_57

    .line 3643
    iget-wide v3, v3, Lcom/sun/mail/imap/protocol/MODSEQ;->modseq:J

    invoke-virtual {v0, v3, v4}, Lcom/sun/mail/imap/IMAPMessage;->setModSeq(J)V

    move v1, v2

    .line 3654
    :cond_57
    const-class v3, Lcom/sun/mail/imap/protocol/FLAGS;

    invoke-virtual {p1, v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(Ljava/lang/Class;)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/imap/protocol/FLAGS;

    if-eqz v3, :cond_65

    .line 3656
    invoke-virtual {v0, v3}, Lcom/sun/mail/imap/IMAPMessage;->_setFlags(Ljavax/mail/Flags;)V

    goto :goto_66

    :cond_65
    move v2, v1

    .line 3662
    :goto_66
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getExtensionItems()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPMessage;->handleExtensionFetchItems(Ljava/util/Map;)V

    if-nez v2, :cond_70

    const/4 v0, 0x0

    :cond_70
    return-object v0
.end method

.method private setACL(Lcom/sun/mail/imap/ACL;C)V
    .registers 4
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
    .registers 3
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
    .registers 2

    monitor-enter p0

    .line 2510
    :try_start_1
    invoke-super {p0, p1}, Ljavax/mail/Folder;->addMessageCountListener(Ljavax/mail/event/MessageCountListener;)V

    const/4 p1, 0x1

    .line 2511
    iput-boolean p1, p0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 2512
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMessages([Ljavax/mail/Message;)[Ljavax/mail/Message;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1993
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1994
    array-length v0, p1

    new-array v0, v0, [Ljavax/mail/internet/MimeMessage;

    .line 1995
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;

    move-result-object p1

    const/4 v1, 0x0

    .line 1996
    :goto_c
    array-length v2, p1

    if-ge v1, v2, :cond_26

    .line 1997
    aget-object v2, p1, v1

    if-eqz v2, :cond_23

    .line 1999
    iget-wide v3, v2, Lcom/sun/mail/imap/AppendUID;->uidvalidity:J

    iget-wide v5, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_28

    cmp-long v3, v3, v5

    if-nez v3, :cond_23

    .line 2001
    :try_start_1b
    iget-wide v2, v2, Lcom/sun/mail/imap/AppendUID;->uid:J

    invoke-virtual {p0, v2, v3}, Lcom/sun/mail/imap/IMAPFolder;->getMessageByUID(J)Ljavax/mail/Message;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_23
    .catch Ljavax/mail/MessagingException; {:try_start_1b .. :try_end_23} :catch_23
    .catchall {:try_start_1b .. :try_end_23} :catchall_28

    :catch_23
    :cond_23
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 2008
    :cond_26
    monitor-exit p0

    return-object v0

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addRights(Lcom/sun/mail/imap/ACL;)V
    .registers 3
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
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1870
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1877
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getAppendBufferSize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    .line 1879
    :goto_e
    array-length v3, p1

    if-ge v2, v3, :cond_43

    .line 1880
    aget-object v3, p1, v2

    .line 1881
    invoke-virtual {v3}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v4

    if-nez v4, :cond_1d

    .line 1883
    invoke-virtual {v3}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v4

    .line 1885
    :cond_1d
    invoke-virtual {v3}, Ljavax/mail/Message;->getFlags()Ljavax/mail/Flags;

    move-result-object v5
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_45

    .line 1890
    :try_start_21
    new-instance v6, Lcom/sun/mail/imap/MessageLiteral;

    .line 1891
    invoke-virtual {v3}, Ljavax/mail/Message;->getSize()I

    move-result v7

    if-le v7, v0, :cond_2b

    move v7, v1

    goto :goto_2c

    :cond_2b
    move v7, v0

    :goto_2c
    invoke-direct {v6, v3, v7}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V
    :try_end_2f
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2f} :catch_3a
    .catch Ljavax/mail/MessageRemovedException; {:try_start_21 .. :try_end_2f} :catch_37
    .catchall {:try_start_21 .. :try_end_2f} :catchall_45

    .line 1899
    :try_start_2f
    new-instance v3, Lcom/sun/mail/imap/IMAPFolder$10;

    invoke-direct {v3, p0, v5, v4, v6}, Lcom/sun/mail/imap/IMAPFolder$10;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Flags;Ljava/util/Date;Lcom/sun/mail/imap/MessageLiteral;)V

    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    :catch_37
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :catch_3a
    move-exception p1

    .line 1893
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "IOException while appending messages"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_43
    .catchall {:try_start_2f .. :try_end_43} :catchall_45

    .line 1908
    :cond_43
    monitor-exit p0

    return-void

    :catchall_45
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized appendUIDMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/AppendUID;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1930
    :try_start_1
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
    :goto_11
    array-length v4, p1

    if-ge v3, v4, :cond_4b

    .line 1941
    aget-object v4, p1, v3
    :try_end_16
    .catchall {:try_start_1 .. :try_end_16} :catchall_4d

    .line 1946
    :try_start_16
    new-instance v5, Lcom/sun/mail/imap/MessageLiteral;

    .line 1947
    invoke-virtual {v4}, Ljavax/mail/Message;->getSize()I

    move-result v6

    if-le v6, v0, :cond_20

    move v6, v2

    goto :goto_21

    :cond_20
    move v6, v0

    :goto_21
    invoke-direct {v5, v4, v6}, Lcom/sun/mail/imap/MessageLiteral;-><init>(Ljavax/mail/Message;I)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_24} :catch_42
    .catch Ljavax/mail/MessageRemovedException; {:try_start_16 .. :try_end_24} :catch_3f
    .catchall {:try_start_16 .. :try_end_24} :catchall_4d

    .line 1955
    :try_start_24
    invoke-virtual {v4}, Ljavax/mail/Message;->getReceivedDate()Ljava/util/Date;

    move-result-object v6

    if-nez v6, :cond_2e

    .line 1957
    invoke-virtual {v4}, Ljavax/mail/Message;->getSentDate()Ljava/util/Date;

    move-result-object v6

    .line 1959
    :cond_2e
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

    :catch_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    :catch_42
    move-exception p1

    .line 1949
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "IOException while appending messages"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_4b
    .catchall {:try_start_24 .. :try_end_4b} :catchall_4d

    .line 1969
    :cond_4b
    monitor-exit p0

    return-object v1

    :catchall_4d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected checkClosed()V
    .registers 3

    .line 464
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_5

    return-void

    .line 465
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This operation is not allowed on an open folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected checkExists()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 454
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    if-nez v0, :cond_26

    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    move-result v0

    if-eqz v0, :cond_b

    goto :goto_26

    .line 455
    :cond_b
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

    :cond_26
    :goto_26
    return-void
.end method

.method protected checkOpened()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;
        }
    .end annotation

    .line 476
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_18

    .line 477
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-eqz v0, :cond_10

    .line 478
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This operation is not allowed on a closed folder"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 482
    :cond_10
    new-instance v0, Ljavax/mail/FolderClosedException;

    const-string v1, "Lost folder connection to server"

    invoke-direct {v0, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    :cond_18
    return-void
.end method

.method protected checkRange(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_4e

    .line 498
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-gt p1, v0, :cond_8

    return-void

    .line 504
    :cond_8
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 506
    :try_start_c
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_f
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_c .. :try_end_f} :catch_41
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_c .. :try_end_f} :catch_36
    .catchall {:try_start_c .. :try_end_f} :catchall_34

    .line 513
    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_34

    .line 515
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    if-gt p1, v0, :cond_15

    return-void

    .line 516
    :cond_15
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

    :catchall_34
    move-exception p1

    goto :goto_4c

    :catch_36
    move-exception p1

    .line 511
    :try_start_37
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_41
    move-exception p1

    .line 509
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1

    .line 513
    :goto_4c
    monitor-exit v0
    :try_end_4d
    .catchall {:try_start_37 .. :try_end_4d} :catchall_34

    throw p1

    .line 496
    :cond_4e
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "message number < 1"

    invoke-direct {p1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized close(Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1484
    :try_start_2
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 1485
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 2018
    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 2019
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized copyUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)[Lcom/sun/mail/imap/AppendUID;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 2043
    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)[Lcom/sun/mail/imap/AppendUID;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized create(I)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x0

    if-nez v0, :cond_b

    .line 808
    :try_start_6
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    goto :goto_c

    :cond_b
    move v0, v1

    .line 810
    :goto_c
    new-instance v2, Lcom/sun/mail/imap/IMAPFolder$6;

    invoke-direct {v2, p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder$6;-><init>(Lcom/sun/mail/imap/IMAPFolder;IC)V

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1
    :try_end_15
    .catchall {:try_start_6 .. :try_end_15} :catchall_25

    if-nez p1, :cond_19

    .line 840
    monitor-exit p0

    return v1

    .line 845
    :cond_19
    :try_start_19
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    move-result p1

    if-eqz p1, :cond_23

    const/4 v0, 0x1

    .line 847
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V
    :try_end_23
    .catchall {:try_start_19 .. :try_end_23} :catchall_25

    .line 848
    :cond_23
    monitor-exit p0

    return p1

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized delete(Z)Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 935
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 939
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->list()[Ljavax/mail/Folder;

    move-result-object v1

    move v2, v0

    .line 940
    :goto_c
    array-length v3, v1

    if-ge v2, v3, :cond_17

    .line 941
    aget-object v3, v1, v2

    invoke-virtual {v3, p1}, Ljavax/mail/Folder;->delete(Z)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 946
    :cond_17
    new-instance p1, Lcom/sun/mail/imap/IMAPFolder$8;

    invoke-direct {p1, p0}, Lcom/sun/mail/imap/IMAPFolder$8;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_30

    if-nez p1, :cond_24

    .line 956
    monitor-exit p0

    return v0

    .line 959
    :cond_24
    :try_start_24
    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    const/4 p1, 0x0

    .line 960
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    const/4 p1, 0x2

    .line 963
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderListeners(I)V
    :try_end_2d
    .catchall {:try_start_24 .. :try_end_2d} :catchall_30

    .line 964
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3863
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_4} :catch_10
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    .line 3868
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_10
    move-exception p1

    .line 3866
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3891
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1 .. :try_end_5} :catch_15
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1 .. :try_end_5} :catch_11
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1 .. :try_end_5} :catch_6

    return-object p1

    :catch_6
    move-exception p1

    .line 3898
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_11
    move-exception p1

    .line 3896
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    :catch_15
    return-object v0
.end method

.method public doOptionalCommand(Ljava/lang/String;Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3876
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_0 .. :try_end_4} :catch_16
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_0 .. :try_end_4} :catch_10
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_0 .. :try_end_4} :catch_5

    return-object p1

    :catch_5
    move-exception p1

    .line 3883
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_10
    move-exception p1

    .line 3881
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V

    const/4 p1, 0x0

    return-object p1

    :catch_16
    move-exception p2

    .line 3878
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-direct {v0, p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method protected declared-synchronized doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    .line 3910
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_16

    .line 3911
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2b

    .line 3912
    :try_start_8
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object p1

    :catchall_13
    move-exception p1

    .line 3913
    :try_start_14
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_14 .. :try_end_15} :catchall_13

    :try_start_15
    throw p1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_2b

    .line 3920
    :cond_16
    :try_start_16
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_16 .. :try_end_1a} :catchall_25

    .line 3921
    :try_start_1a
    invoke-interface {p1, v0}, Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;->doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_23

    .line 3923
    :try_start_1e
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_2b

    .line 3921
    monitor-exit p0

    return-object p1

    :catchall_23
    move-exception p1

    goto :goto_27

    :catchall_25
    move-exception p1

    const/4 v0, 0x0

    .line 3923
    :goto_27
    :try_start_27
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3924
    throw p1
    :try_end_2b
    .catchall {:try_start_27 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized exists()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 585
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v0, :cond_1f

    iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v0, :cond_1f

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

    goto :goto_21

    .line 588
    :cond_1f
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 590
    :goto_21
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$1;

    invoke-direct {v1, p0, v0}, Lcom/sun/mail/imap/IMAPFolder$1;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;

    check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;

    if-eqz v1, :cond_83

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

    if-eqz v3, :cond_61

    if-lez v2, :cond_61

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    sub-int/2addr v2, v5

    .line 603
    invoke-virtual {v3, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    iget-char v6, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-ne v3, v6, :cond_61

    .line 604
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 606
    :cond_61
    iput v4, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 607
    aget-object v2, v1, v0

    iget-boolean v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    if-eqz v2, :cond_6f

    .line 608
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 609
    :cond_6f
    aget-object v2, v1, v0

    iget-boolean v2, v2, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z

    if-eqz v2, :cond_7a

    .line 610
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    or-int/2addr v2, v5

    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 611
    :cond_7a
    iput-boolean v5, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 612
    aget-object v0, v1, v0

    iget-object v0, v0, Lcom/sun/mail/imap/protocol/ListInfo;->attrs:[Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    goto :goto_8a

    .line 614
    :cond_83
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    const/4 v0, 0x0

    .line 615
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 618
    :goto_8a
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z
    :try_end_8c
    .catchall {:try_start_1 .. :try_end_8c} :catchall_8e

    monitor-exit p0

    return v0

    :catchall_8e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized expunge()[Ljavax/mail/Message;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 2278
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object v0
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized expunge([Ljavax/mail/Message;)[Ljavax/mail/Message;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Cannot expunge READ_ONLY folder: "

    monitor-enter p0

    .line 2293
    :try_start_3
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    if-eqz p1, :cond_15

    .line 2297
    new-instance v1, Ljavax/mail/FetchProfile;

    invoke-direct {v1}, Ljavax/mail/FetchProfile;-><init>()V

    .line 2298
    sget-object v2, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {v1, v2}, Ljavax/mail/FetchProfile;->add(Ljavax/mail/FetchProfile$Item;)V

    .line 2299
    invoke-virtual {p0, p1, v1}, Lcom/sun/mail/imap/IMAPFolder;->fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V

    .line 2303
    :cond_15
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_b1

    const/4 v2, 0x0

    .line 2304
    :try_start_19
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_ae

    const/4 v3, 0x1

    .line 2306
    :try_start_1c
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v4

    if-eqz p1, :cond_2a

    .line 2308
    invoke-static {p1}, Lcom/sun/mail/imap/Utility;->toUIDSet([Ljavax/mail/Message;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->uidexpunge([Lcom/sun/mail/imap/protocol/UIDSet;)V

    goto :goto_2d

    .line 2310
    :cond_2a
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->expunge()V
    :try_end_2d
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1c .. :try_end_2d} :catch_86
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1c .. :try_end_2d} :catch_7b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1c .. :try_end_2d} :catch_70
    .catchall {:try_start_1c .. :try_end_2d} :catchall_6e

    .line 2324
    :goto_2d
    :try_start_2d
    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    if-eqz p1, :cond_38

    .line 2329
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/MessageCache;->removeExpungedMessages([Ljavax/mail/Message;)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object p1

    goto :goto_3e

    .line 2331
    :cond_38
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {p1}, Lcom/sun/mail/imap/MessageCache;->removeExpungedMessages()[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object p1

    .line 2332
    :goto_3e
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v0, :cond_5d

    .line 2333
    :goto_42
    array-length v0, p1

    if-ge v2, v0, :cond_5d

    .line 2334
    aget-object v0, p1, v2

    .line 2336
    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v4

    const-wide/16 v6, -0x1

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5a

    .line 2338
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_42

    .line 2343
    :cond_5d
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0}, Lcom/sun/mail/imap/MessageCache;->size()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I

    .line 2344
    monitor-exit v1
    :try_end_66
    .catchall {:try_start_2d .. :try_end_66} :catchall_ae

    .line 2347
    :try_start_66
    array-length v0, p1

    if-lez v0, :cond_6c

    .line 2348
    invoke-virtual {p0, v3, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V
    :try_end_6c
    .catchall {:try_start_66 .. :try_end_6c} :catchall_b1

    .line 2349
    :cond_6c
    monitor-exit p0

    return-object p1

    :catchall_6e
    move-exception p1

    goto :goto_ab

    :catch_70
    move-exception p1

    .line 2322
    :try_start_71
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_7b
    move-exception p1

    .line 2319
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    :catch_86
    move-exception p1

    .line 2313
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->mode:I

    const/4 v4, 0x2

    if-eq v2, v4, :cond_a1

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
    :cond_a1
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
    :try_end_ab
    .catchall {:try_start_71 .. :try_end_ab} :catchall_6e

    .line 2324
    :goto_ab
    :try_start_ab
    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    .line 2325
    throw p1

    :catchall_ae
    move-exception p1

    .line 2344
    monitor-exit v1
    :try_end_b0
    .catchall {:try_start_ab .. :try_end_b0} :catchall_ae

    :try_start_b0
    throw p1
    :try_end_b1
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_b1

    :catchall_b1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .registers 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    .line 1218
    :try_start_5
    iget-object v2, v1, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catchall {:try_start_5 .. :try_end_8} :catchall_1ca

    .line 1219
    :try_start_8
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
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_1c7

    .line 1224
    :try_start_18
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1228
    sget-object v5, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v0, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    const/4 v7, 0x0

    if-eqz v5, :cond_2f

    .line 1229
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->getEnvelopeCommand()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    goto :goto_30

    :cond_2f
    const/4 v5, 0x1

    .line 1232
    :goto_30
    sget-object v8, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v0, v8}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v8

    if-eqz v8, :cond_43

    if-eqz v5, :cond_3d

    const-string v5, "FLAGS"

    goto :goto_3f

    :cond_3d
    const-string v5, " FLAGS"

    .line 1233
    :goto_3f
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    .line 1236
    :cond_43
    sget-object v8, Ljavax/mail/FetchProfile$Item;->CONTENT_INFO:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v0, v8}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v8

    if-eqz v8, :cond_56

    if-eqz v5, :cond_50

    const-string v5, "BODYSTRUCTURE"

    goto :goto_52

    :cond_50
    const-string v5, " BODYSTRUCTURE"

    .line 1237
    :goto_52
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    .line 1240
    :cond_56
    sget-object v8, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    invoke-virtual {v0, v8}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v8

    if-eqz v8, :cond_69

    if-eqz v5, :cond_63

    const-string v5, "UID"

    goto :goto_65

    :cond_63
    const-string v5, " UID"

    .line 1241
    :goto_65
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    .line 1244
    :cond_69
    sget-object v8, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->HEADERS:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {v0, v8}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v8

    if-eqz v8, :cond_8b

    if-eqz v3, :cond_7e

    if-eqz v5, :cond_78

    const-string v5, "BODY.PEEK[HEADER]"

    goto :goto_7a

    :cond_78
    const-string v5, " BODY.PEEK[HEADER]"

    .line 1247
    :goto_7a
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_88

    :cond_7e
    if-eqz v5, :cond_83

    const-string v5, "RFC822.HEADER"

    goto :goto_85

    :cond_83
    const-string v5, " RFC822.HEADER"

    .line 1250
    :goto_85
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_88
    move v5, v7

    const/4 v8, 0x1

    goto :goto_8c

    :cond_8b
    move v8, v7

    .line 1253
    :goto_8c
    sget-object v9, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->MESSAGE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {v0, v9}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v9

    if-eqz v9, :cond_ad

    if-eqz v3, :cond_a1

    if-eqz v5, :cond_9b

    const-string v5, "BODY.PEEK[]"

    goto :goto_9d

    :cond_9b
    const-string v5, " BODY.PEEK[]"

    .line 1256
    :goto_9d
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_ab

    :cond_a1
    if-eqz v5, :cond_a6

    const-string v5, "RFC822"

    goto :goto_a8

    :cond_a6
    const-string v5, " RFC822"

    .line 1258
    :goto_a8
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_ab
    move v5, v7

    const/4 v8, 0x1

    .line 1261
    :cond_ad
    sget-object v9, Ljavax/mail/FetchProfile$Item;->SIZE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {v0, v9}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v9

    if-nez v9, :cond_bd

    sget-object v9, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->SIZE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    .line 1262
    invoke-virtual {v0, v9}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v9

    if-eqz v9, :cond_c8

    :cond_bd
    if-eqz v5, :cond_c2

    const-string v5, "RFC822.SIZE"

    goto :goto_c4

    :cond_c2
    const-string v5, " RFC822.SIZE"

    .line 1263
    :goto_c4
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    .line 1266
    :cond_c8
    sget-object v9, Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;->INTERNALDATE:Lcom/sun/mail/imap/IMAPFolder$FetchProfileItem;

    invoke-virtual {v0, v9}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v9

    if-eqz v9, :cond_db

    if-eqz v5, :cond_d5

    const-string v5, "INTERNALDATE"

    goto :goto_d7

    :cond_d5
    const-string v5, " INTERNALDATE"

    .line 1267
    :goto_d7
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v5, v7

    :cond_db
    const/4 v9, 0x0

    if-nez v8, :cond_f4

    .line 1274
    invoke-virtual/range {p2 .. p2}, Ljavax/mail/FetchProfile;->getHeaderNames()[Ljava/lang/String;

    move-result-object v10

    .line 1275
    array-length v11, v10

    if-lez v11, :cond_f5

    if-nez v5, :cond_ec

    const-string v5, " "

    .line 1277
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1278
    :cond_ec
    invoke-direct {v1, v10, v3}, Lcom/sun/mail/imap/IMAPFolder;->createHeaderCommand([Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f5

    :cond_f4
    move-object v10, v9

    :cond_f5
    :goto_f5
    move v3, v7

    .line 1285
    :goto_f6
    array-length v5, v4

    if-ge v3, v5, :cond_11c

    .line 1286
    aget-object v5, v4, v3

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/FetchItem;->getFetchProfileItem()Ljavax/mail/FetchProfile$Item;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v5

    if-eqz v5, :cond_119

    .line 1287
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_110

    const-string v5, " "

    .line 1288
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1289
    :cond_110
    aget-object v5, v4, v3

    invoke-virtual {v5}, Lcom/sun/mail/imap/protocol/FetchItem;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_119
    add-int/lit8 v3, v3, 0x1

    goto :goto_f6

    .line 1293
    :cond_11c
    new-instance v3, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;

    invoke-direct {v3, v0, v4}, Lcom/sun/mail/imap/IMAPMessage$FetchProfileCondition;-><init>(Ljavax/mail/FetchProfile;[Lcom/sun/mail/imap/protocol/FetchItem;)V

    .line 1297
    iget-object v4, v1, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_124
    .catchall {:try_start_18 .. :try_end_124} :catchall_1ca

    .line 1300
    :try_start_124
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    move-object/from16 v5, p1

    .line 1304
    invoke-static {v5, v3}, Lcom/sun/mail/imap/Utility;->toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v3

    if-nez v3, :cond_132

    .line 1308
    monitor-exit v4
    :try_end_130
    .catchall {:try_start_124 .. :try_end_130} :catchall_1c4

    monitor-exit p0

    return-void

    .line 1312
    :cond_132
    :try_start_132
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_137
    .catchall {:try_start_132 .. :try_end_137} :catchall_1c4

    .line 1314
    :try_start_137
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v11

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetch([Lcom/sun/mail/imap/protocol/MessageSet;Ljava/lang/String;)[Lcom/sun/mail/iap/Response;

    move-result-object v9
    :try_end_143
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_137 .. :try_end_143} :catch_1b9
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_137 .. :try_end_143} :catch_14f
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_137 .. :try_end_143} :catch_144
    .catchall {:try_start_137 .. :try_end_143} :catchall_1c4

    goto :goto_14f

    :catch_144
    move-exception v0

    .line 1320
    :try_start_145
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_14f
    :goto_14f
    if-nez v9, :cond_154

    .line 1324
    monitor-exit v4
    :try_end_152
    .catchall {:try_start_145 .. :try_end_152} :catchall_1c4

    monitor-exit p0

    return-void

    :cond_154
    move v2, v7

    .line 1326
    :goto_155
    :try_start_155
    array-length v3, v9

    if-ge v2, v3, :cond_1a4

    .line 1327
    aget-object v3, v9, v2

    if-nez v3, :cond_15d

    goto :goto_1a1

    .line 1329
    :cond_15d
    instance-of v11, v3, Lcom/sun/mail/imap/protocol/FetchResponse;

    if-nez v11, :cond_165

    .line 1330
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1a1

    .line 1335
    :cond_165
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

    :goto_175
    if-ge v13, v12, :cond_193

    .line 1343
    invoke-virtual {v3, v13}, Lcom/sun/mail/imap/protocol/FetchResponse;->getItem(I)Lcom/sun/mail/imap/protocol/Item;

    move-result-object v15

    .line 1345
    instance-of v6, v15, Ljavax/mail/Flags;

    if-eqz v6, :cond_18b

    sget-object v6, Ljavax/mail/FetchProfile$Item;->FLAGS:Ljavax/mail/FetchProfile$Item;

    .line 1346
    invoke-virtual {v0, v6}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v6

    if-eqz v6, :cond_189

    if-nez v11, :cond_18b

    :cond_189
    const/4 v14, 0x1

    goto :goto_190

    :cond_18b
    if-eqz v11, :cond_190

    .line 1351
    invoke-virtual {v11, v15, v10, v8}, Lcom/sun/mail/imap/IMAPMessage;->handleFetchItem(Lcom/sun/mail/imap/protocol/Item;[Ljava/lang/String;Z)Z

    :cond_190
    :goto_190
    add-int/lit8 v13, v13, 0x1

    goto :goto_175

    :cond_193
    if-eqz v11, :cond_19c

    .line 1354
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/FetchResponse;->getExtensionItems()Ljava/util/Map;

    move-result-object v6

    invoke-virtual {v11, v6}, Lcom/sun/mail/imap/IMAPMessage;->handleExtensionFetchItems(Ljava/util/Map;)V

    :cond_19c
    if-eqz v14, :cond_1a1

    .line 1359
    invoke-interface {v5, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1a1
    :goto_1a1
    add-int/lit8 v2, v2, 0x1

    goto :goto_155

    .line 1363
    :cond_1a4
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b6

    .line 1364
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/mail/iap/Response;

    .line 1365
    invoke-interface {v5, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1366
    invoke-virtual {v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->handleResponses([Lcom/sun/mail/iap/Response;)V

    .line 1369
    :cond_1b6
    monitor-exit v4
    :try_end_1b7
    .catchall {:try_start_155 .. :try_end_1b7} :catchall_1c4

    .line 1370
    monitor-exit p0

    return-void

    :catch_1b9
    move-exception v0

    .line 1316
    :try_start_1ba
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :catchall_1c4
    move-exception v0

    .line 1369
    monitor-exit v4
    :try_end_1c6
    .catchall {:try_start_1ba .. :try_end_1c6} :catchall_1c4

    :try_start_1c6
    throw v0
    :try_end_1c7
    .catchall {:try_start_1c6 .. :try_end_1c7} :catchall_1ca

    :catchall_1c7
    move-exception v0

    .line 1222
    :try_start_1c8
    monitor-exit v2
    :try_end_1c9
    .catchall {:try_start_1c8 .. :try_end_1c9} :catchall_1c7

    :try_start_1c9
    throw v0
    :try_end_1ca
    .catchall {:try_start_1c9 .. :try_end_1ca} :catchall_1ca

    :catchall_1ca
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized forceClose()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1493
    :try_start_3
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPFolder;->close(ZZ)V
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_8

    .line 1494
    monitor-exit p0

    return-void

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getACL()[Lcom/sun/mail/imap/ACL;
    .registers 3
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
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 3081
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 3082
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_b

    .line 3083
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    .line 3084
    :cond_b
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_13

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    goto :goto_1b

    :cond_13
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_1d

    :goto_1b
    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getChannel()Ljava/nio/channels/SocketChannel;
    .registers 2

    .line 3409
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public declared-synchronized getDeletedMessageCount()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1783
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_b

    .line 1784
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_43

    .line 1786
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 1791
    :cond_b
    :try_start_b
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    .line 1792
    sget-object v1, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V
    :try_end_15
    .catchall {:try_start_b .. :try_end_15} :catchall_43

    .line 1794
    :try_start_15
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_18
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_15 .. :try_end_18} :catch_38
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_15 .. :try_end_18} :catch_2d
    .catchall {:try_start_15 .. :try_end_18} :catchall_43

    .line 1795
    :try_start_18
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
    :try_end_28
    .catchall {:try_start_18 .. :try_end_28} :catchall_2a

    monitor-exit p0

    return v0

    :catchall_2a
    move-exception v0

    .line 1797
    :try_start_2b
    monitor-exit v1
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_2a

    :try_start_2c
    throw v0
    :try_end_2d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2c .. :try_end_2d} :catch_38
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2c .. :try_end_2d} :catch_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_43

    :catch_2d
    move-exception v0

    .line 1802
    :try_start_2e
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_38
    move-exception v0

    .line 1799
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
    :try_end_43
    .catchall {:try_start_2e .. :try_end_43} :catchall_43

    :catchall_43
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getEnvelopeCommand()Ljava/lang/String;
    .registers 2

    const-string v0, "ENVELOPE INTERNALDATE RFC822.SIZE"

    return-object v0
.end method

.method public declared-synchronized getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 922
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-eqz v0, :cond_14

    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_c

    goto :goto_14

    .line 923
    :cond_c
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Cannot contain subfolders"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 925
    :cond_14
    :goto_14
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
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_39

    monitor-exit p0

    return-object p1

    :catchall_39
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .line 560
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getHighestModSeq()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2821
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_9

    .line 2822
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->highestmodseq:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_6d

    monitor-exit p0

    return-wide v0

    :cond_9
    const/4 v0, 0x0

    .line 2828
    :try_start_a
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1
    :try_end_e
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_a .. :try_end_e} :catch_5d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_a .. :try_end_e} :catch_49
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_e} :catch_3b
    .catchall {:try_start_a .. :try_end_e} :catchall_36

    :try_start_e
    const-string v2, "CONDSTORE"

    .line 2829
    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_26

    const-string v2, "HIGHESTMODSEQ"

    .line 2831
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2832
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0
    :try_end_22
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_e .. :try_end_22} :catch_34
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_e .. :try_end_22} :catch_32
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_e .. :try_end_22} :catch_30
    .catchall {:try_start_e .. :try_end_22} :catchall_2e

    .line 2842
    :goto_22
    :try_start_22
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_6d

    goto :goto_4f

    .line 2830
    :cond_26
    :try_start_26
    new-instance v2, Lcom/sun/mail/iap/BadCommandException;

    const-string v3, "CONDSTORE not supported"

    invoke-direct {v2, v3}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2e
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_26 .. :try_end_2e} :catch_34
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_26 .. :try_end_2e} :catch_32
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_26 .. :try_end_2e} :catch_30
    .catchall {:try_start_26 .. :try_end_2e} :catchall_2e

    :catchall_2e
    move-exception v0

    goto :goto_69

    :catch_30
    move-exception v0

    goto :goto_3f

    :catch_32
    move-exception v2

    goto :goto_4b

    :catch_34
    move-exception v0

    goto :goto_61

    :catchall_36
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_69

    :catch_3b
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 2840
    :goto_3f
    :try_start_3f
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_49
    move-exception v2

    move-object v1, v0

    .line 2838
    :goto_4b
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_4e
    .catchall {:try_start_3f .. :try_end_4e} :catchall_2e

    goto :goto_22

    :goto_4f
    if-eqz v0, :cond_55

    .line 2847
    :try_start_51
    iget-wide v0, v0, Lcom/sun/mail/imap/protocol/Status;->highestmodseq:J
    :try_end_53
    .catchall {:try_start_51 .. :try_end_53} :catchall_6d

    monitor-exit p0

    return-wide v0

    .line 2846
    :cond_55
    :try_start_55
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Cannot obtain HIGHESTMODSEQ"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_5d
    .catchall {:try_start_55 .. :try_end_5d} :catchall_6d

    :catch_5d
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 2835
    :goto_61
    :try_start_61
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Cannot obtain HIGHESTMODSEQ"

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_69
    .catchall {:try_start_61 .. :try_end_69} :catchall_2e

    .line 2842
    :goto_69
    :try_start_69
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2843
    throw v0
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_6d

    :catchall_6d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessage(I)Ljavax/mail/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1841
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1842
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->checkRange(I)V

    .line 1844
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object p1
    :try_end_d
    .catchall {:try_start_1 .. :try_end_d} :catchall_f

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;
    .registers 5

    .line 4013
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0}, Lcom/sun/mail/imap/MessageCache;->size()I

    move-result v0

    if-le p1, v0, :cond_38

    .line 4018
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_36

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

    :cond_36
    const/4 p1, 0x0

    return-object p1

    .line 4023
    :cond_38
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/MessageCache;->getMessageBySeqnum(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getMessageByUID(J)Ljavax/mail/Message;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2604
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_55

    .line 2609
    :try_start_4
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_7} :catch_4a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_7} :catch_3f
    .catchall {:try_start_4 .. :try_end_7} :catchall_55

    .line 2610
    :try_start_7
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 2612
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz v2, :cond_1a

    .line 2614
    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/IMAPMessage;

    if-eqz v2, :cond_22

    .line 2616
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_3c

    monitor-exit p0

    return-object v2

    .line 2618
    :cond_1a
    :try_start_1a
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    const/4 v2, 0x0

    .line 2622
    :cond_22
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumber(J)V

    .line 2624
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-eqz p1, :cond_39

    .line 2626
    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v2, p1

    check-cast v2, Lcom/sun/mail/imap/IMAPMessage;

    if-eqz v2, :cond_39

    .line 2628
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_1a .. :try_end_37} :catchall_3c

    monitor-exit p0

    return-object v2

    .line 2630
    :cond_39
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_3c

    .line 2637
    monitor-exit p0

    return-object v2

    :catchall_3c
    move-exception p1

    .line 2630
    :try_start_3d
    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    :try_start_3e
    throw p1
    :try_end_3f
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_3e .. :try_end_3f} :catch_4a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3e .. :try_end_3f} :catch_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_55

    :catch_3f
    move-exception p1

    .line 2634
    :try_start_40
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_4a
    move-exception p1

    .line 2632
    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2
    :try_end_55
    .catchall {:try_start_40 .. :try_end_55} :catchall_55

    :catchall_55
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessageCount()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1642
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_74

    .line 1643
    :try_start_4
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_71

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    .line 1647
    :try_start_9
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    .line 1648
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->total:I
    :try_end_e
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_9 .. :try_end_e} :catch_1c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_e} :catch_11
    .catchall {:try_start_9 .. :try_end_e} :catchall_71

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_71

    monitor-exit p0

    return v1

    :catch_11
    move-exception v1

    .line 1652
    :try_start_12
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1c
    move-exception v1

    .line 1650
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 1655
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_71

    .line 1659
    :try_start_28
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_74

    .line 1661
    :try_start_2b
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    .line 1662
    iget v0, v0, Lcom/sun/mail/imap/protocol/Status;->total:I
    :try_end_31
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_2b .. :try_end_31} :catch_4b
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2b .. :try_end_31} :catch_3e
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2b .. :try_end_31} :catch_33
    .catchall {:try_start_2b .. :try_end_31} :catchall_74

    monitor-exit p0

    return v0

    :catch_33
    move-exception v0

    .line 1682
    :try_start_34
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3e
    move-exception v0

    .line 1680
    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1
    :try_end_4b
    .catchall {:try_start_34 .. :try_end_4b} :catchall_74

    :catch_4b
    const/4 v0, 0x0

    .line 1669
    :try_start_4c
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
    :try_end_5b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4c .. :try_end_5b} :catch_62
    .catchall {:try_start_4c .. :try_end_5b} :catchall_60

    .line 1677
    :try_start_5b
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_74

    .line 1672
    monitor-exit p0

    return v1

    :catchall_60
    move-exception v1

    goto :goto_6d

    :catch_62
    move-exception v1

    .line 1675
    :try_start_63
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_60

    .line 1677
    :goto_6d
    :try_start_6d
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1678
    throw v1
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_74

    :catchall_71
    move-exception v1

    .line 1655
    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    :try_start_73
    throw v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_74

    :catchall_74
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessages()[Ljavax/mail/Message;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1856
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1857
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getMessageCount()I

    move-result v0

    .line 1858
    new-array v1, v0, [Ljavax/mail/Message;

    const/4 v2, 0x1

    :goto_b
    if-gt v2, v0, :cond_1a

    add-int/lit8 v3, v2, -0x1

    .line 1860
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v4, v2}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v4

    aput-object v4, v1, v3
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_1c

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 1861
    :cond_1a
    monitor-exit p0

    return-object v1

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;
    .registers 8

    .line 4037
    array-length v0, p1

    new-array v1, v0, [Lcom/sun/mail/imap/IMAPMessage;

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 4040
    :goto_6
    array-length v5, p1

    if-ge v3, v5, :cond_18

    .line 4041
    aget v5, p1, v3

    invoke-virtual {p0, v5}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v5

    aput-object v5, v1, v3

    if-nez v5, :cond_15

    add-int/lit8 v4, v4, 0x1

    :cond_15
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_18
    if-lez v4, :cond_2e

    .line 4046
    array-length p1, p1

    sub-int/2addr p1, v4

    new-array p1, p1, [Lcom/sun/mail/imap/IMAPMessage;

    move v3, v2

    :goto_1f
    if-ge v2, v0, :cond_2d

    .line 4048
    aget-object v4, v1, v2

    if-eqz v4, :cond_2a

    add-int/lit8 v5, v3, 0x1

    .line 4049
    aput-object v4, p1, v3

    move v3, v5

    :cond_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_2d
    move-object v1, p1

    :cond_2e
    return-object v1
.end method

.method public declared-synchronized getMessagesByUID(JJ)[Ljavax/mail/Message;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2648
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_61

    .line 2653
    :try_start_4
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_7} :catch_56
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_7} :catch_4b
    .catchall {:try_start_4 .. :try_end_7} :catchall_61

    .line 2654
    :try_start_7
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v1, :cond_12

    .line 2655
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 2658
    :cond_12
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers(JJ)[J

    move-result-object p1

    .line 2660
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    const/4 p3, 0x0

    .line 2662
    :goto_20
    array-length p4, p1

    if-ge p3, p4, :cond_39

    .line 2663
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    aget-wide v1, p1, p3

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljavax/mail/Message;

    if-eqz p4, :cond_36

    .line 2665
    invoke-interface {p2, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_36
    add-int/lit8 p3, p3, 0x1

    goto :goto_20

    .line 2667
    :cond_39
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljavax/mail/Message;

    invoke-interface {p2, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/mail/Message;

    .line 2668
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_7 .. :try_end_46} :catchall_48

    .line 2675
    monitor-exit p0

    return-object p1

    :catchall_48
    move-exception p1

    .line 2668
    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    :try_start_4a
    throw p1
    :try_end_4b
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4a .. :try_end_4b} :catch_56
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4a .. :try_end_4b} :catch_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_61

    :catch_4b
    move-exception p1

    .line 2672
    :try_start_4c
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_56
    move-exception p1

    .line 2670
    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2
    :try_end_61
    .catchall {:try_start_4c .. :try_end_61} :catchall_61

    :catchall_61
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessagesByUID([J)[Ljavax/mail/Message;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2688
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_8c

    .line 2691
    :try_start_4
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_7} :catch_81
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_7} :catch_76
    .catchall {:try_start_4 .. :try_end_7} :catchall_8c

    .line 2693
    :try_start_7
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    const/4 v2, 0x0

    if-eqz v1, :cond_45

    .line 2695
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2696
    array-length v3, p1

    move v4, v2

    :goto_13
    if-ge v4, v3, :cond_2d

    aget-wide v5, p1, v4

    .line 2697
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2a

    .line 2699
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2a
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 2703
    :cond_2d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 2704
    new-array v4, v3, [J

    move v5, v2

    :goto_34
    if-ge v5, v3, :cond_4d

    .line 2706
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_34

    .line 2709
    :cond_45
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    move-object v4, p1

    .line 2711
    :cond_4d
    array-length v1, v4

    if-lez v1, :cond_57

    .line 2713
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchSequenceNumbers([J)V

    .line 2717
    :cond_57
    array-length v1, p1

    new-array v1, v1, [Ljavax/mail/Message;

    .line 2718
    :goto_5a
    array-length v3, p1

    if-ge v2, v3, :cond_70

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

    goto :goto_5a

    .line 2720
    :cond_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_7 .. :try_end_71} :catchall_73

    monitor-exit p0

    return-object v1

    :catchall_73
    move-exception p1

    .line 2721
    :try_start_74
    monitor-exit v0
    :try_end_75
    .catchall {:try_start_74 .. :try_end_75} :catchall_73

    :try_start_75
    throw p1
    :try_end_76
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_75 .. :try_end_76} :catch_81
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_75 .. :try_end_76} :catch_76
    .catchall {:try_start_75 .. :try_end_76} :catchall_8c

    :catch_76
    move-exception p1

    .line 2725
    :try_start_77
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_81
    move-exception p1

    .line 2723
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0
    :try_end_8c
    .catchall {:try_start_77 .. :try_end_8c} :catchall_8c

    :catchall_8c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessagesByUIDChangedSince(JJJ)[Ljavax/mail/Message;
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2867
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_42

    .line 2870
    :try_start_4
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_7} :catch_37
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_7} :catch_2c
    .catchall {:try_start_4 .. :try_end_7} :catchall_42

    .line 2871
    :try_start_7
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    const-string v2, "CONDSTORE"

    .line 2872
    invoke-virtual {v1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_21

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
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_29

    monitor-exit p0

    return-object p1

    .line 2873
    :cond_21
    :try_start_21
    new-instance p1, Lcom/sun/mail/iap/BadCommandException;

    const-string p2, "CONDSTORE not supported"

    invoke-direct {p1, p2}, Lcom/sun/mail/iap/BadCommandException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_29
    move-exception p1

    .line 2878
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_21 .. :try_end_2b} :catchall_29

    :try_start_2b
    throw p1
    :try_end_2c
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2b .. :try_end_2c} :catch_37
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2b .. :try_end_2c} :catch_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_42

    :catch_2c
    move-exception p1

    .line 2882
    :try_start_2d
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_37
    move-exception p1

    .line 2880
    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2
    :try_end_42
    .catchall {:try_start_2d .. :try_end_42} :catchall_42

    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    .line 545
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1d

    if-nez v0, :cond_19

    .line 547
    :try_start_5
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
    :try_end_19
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_19} :catch_19
    .catchall {:try_start_5 .. :try_end_19} :catchall_1d

    .line 552
    :catch_19
    :cond_19
    :try_start_19
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->name:Ljava/lang/String;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_1d

    monitor-exit p0

    return-object v0

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNewMessageCount()I
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1691
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_74

    .line 1692
    :try_start_4
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_71

    if-eqz v1, :cond_27

    const/4 v1, 0x1

    .line 1696
    :try_start_9
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V

    .line 1697
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I
    :try_end_e
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_9 .. :try_end_e} :catch_1c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_e} :catch_11
    .catchall {:try_start_9 .. :try_end_e} :catchall_71

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_71

    monitor-exit p0

    return v1

    :catch_11
    move-exception v1

    .line 1701
    :try_start_12
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_1c
    move-exception v1

    .line 1699
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 1704
    :cond_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_71

    .line 1708
    :try_start_28
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_74

    .line 1710
    :try_start_2b
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    .line 1711
    iget v0, v0, Lcom/sun/mail/imap/protocol/Status;->recent:I
    :try_end_31
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_2b .. :try_end_31} :catch_4b
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2b .. :try_end_31} :catch_3e
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2b .. :try_end_31} :catch_33
    .catchall {:try_start_2b .. :try_end_31} :catchall_74

    monitor-exit p0

    return v0

    :catch_33
    move-exception v0

    .line 1731
    :try_start_34
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_3e
    move-exception v0

    .line 1729
    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1
    :try_end_4b
    .catchall {:try_start_34 .. :try_end_4b} :catchall_74

    :catch_4b
    const/4 v0, 0x0

    .line 1718
    :try_start_4c
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
    :try_end_5b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4c .. :try_end_5b} :catch_62
    .catchall {:try_start_4c .. :try_end_5b} :catchall_60

    .line 1726
    :try_start_5b
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_74

    .line 1721
    monitor-exit p0

    return v1

    :catchall_60
    move-exception v1

    goto :goto_6d

    :catch_62
    move-exception v1

    .line 1724
    :try_start_63
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_6d
    .catchall {:try_start_63 .. :try_end_6d} :catchall_60

    .line 1726
    :goto_6d
    :try_start_6d
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1727
    throw v1
    :try_end_71
    .catchall {:try_start_6d .. :try_end_71} :catchall_74

    :catchall_71
    move-exception v1

    .line 1704
    :try_start_72
    monitor-exit v0
    :try_end_73
    .catchall {:try_start_72 .. :try_end_73} :catchall_71

    :try_start_73
    throw v1
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_74

    :catchall_74
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getParent()Ljavax/mail/Folder;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 568
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getSeparator()C

    move-result v0

    .line 570
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1f

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
    :try_end_1d
    .catchall {:try_start_1 .. :try_end_1d} :catchall_2a

    monitor-exit p0

    return-object v0

    .line 574
    :cond_1f
    :try_start_1f
    new-instance v0, Lcom/sun/mail/imap/DefaultFolder;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {v0, v1}, Lcom/sun/mail/imap/DefaultFolder;-><init>(Lcom/sun/mail/imap/IMAPStore;)V
    :try_end_28
    .catchall {:try_start_1f .. :try_end_28} :catchall_2a

    monitor-exit p0

    return-object v0

    :catchall_2a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPermanentFlags()Ljavax/mail/Flags;
    .registers 3

    monitor-enter p0

    .line 1632
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->permanentFlags:Ljavax/mail/Flags;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_13

    if-nez v0, :cond_8

    .line 1633
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    .line 1634
    :cond_8
    :try_start_8
    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;

    move-object v1, v0

    check-cast v1, Ljavax/mail/Flags;
    :try_end_11
    .catchall {:try_start_8 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 3746
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 3750
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_a

    .line 3752
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    return-object v0

    .line 3751
    :cond_a
    new-instance v0, Lcom/sun/mail/iap/ConnectionException;

    const-string v1, "Connection closed"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getQuota()[Ljavax/mail/Quota;
    .registers 3
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
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 711
    :try_start_1
    iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    const v1, 0xffff

    if-ne v0, v1, :cond_23

    .line 714
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$3;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/IMAPFolder$3;-><init>(Lcom/sun/mail/imap/IMAPFolder;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;

    check-cast v0, [Lcom/sun/mail/imap/protocol/ListInfo;

    if-eqz v0, :cond_1f

    const/4 v1, 0x0

    .line 729
    aget-object v0, v0, v1

    iget-char v0, v0, Lcom/sun/mail/imap/protocol/ListInfo;->separator:C

    iput-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    goto :goto_23

    :cond_1f
    const/16 v0, 0x2f

    .line 731
    iput-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    .line 733
    :cond_23
    :goto_23
    iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C
    :try_end_25
    .catchall {:try_start_1 .. :try_end_25} :catchall_27

    monitor-exit p0

    return v0

    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSortedMessages([Lcom/sun/mail/imap/SortTerm;)[Ljavax/mail/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 2455
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->getSortedMessages([Lcom/sun/mail/imap/SortTerm;Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getSortedMessages([Lcom/sun/mail/imap/SortTerm;Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2475
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_49

    .line 2480
    :try_start_4
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_7} :catch_3e
    .catch Ljavax/mail/search/SearchException; {:try_start_4 .. :try_end_7} :catch_33
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_7} :catch_28
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_7} :catch_1d
    .catchall {:try_start_4 .. :try_end_7} :catchall_49

    .line 2481
    :try_start_7
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->sort([Lcom/sun/mail/imap/SortTerm;Ljavax/mail/search/SearchTerm;)[I

    move-result-object p1

    if-eqz p1, :cond_16

    .line 2483
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object p1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    .line 2484
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1a

    .line 2485
    monitor-exit p0

    return-object p1

    :catchall_1a
    move-exception p1

    .line 2484
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw p1
    :try_end_1d
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1c .. :try_end_1d} :catch_3e
    .catch Ljavax/mail/search/SearchException; {:try_start_1c .. :try_end_1d} :catch_33
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1c .. :try_end_1d} :catch_28
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1c .. :try_end_1d} :catch_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_49

    :catch_1d
    move-exception p1

    .line 2497
    :try_start_1e
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_28
    move-exception p1

    .line 2494
    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2

    :catch_33
    move-exception p1

    .line 2492
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Ljavax/mail/search/SearchException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3e
    move-exception p1

    .line 2489
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
    :try_end_49
    .catchall {:try_start_1e .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getStatusItem(Ljava/lang/String;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 3453
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    const-wide/16 v1, -0x1

    if-nez v0, :cond_49

    .line 3454
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_4b

    const/4 v0, 0x0

    .line 3459
    :try_start_b
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

    if-eqz v3, :cond_21

    .line 3462
    invoke-virtual {v3, p1}, Lcom/sun/mail/imap/protocol/Status;->getItem(Ljava/lang/String;)J

    move-result-wide v1
    :try_end_21
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_b .. :try_end_21} :catch_44
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_b .. :try_end_21} :catch_33
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b .. :try_end_21} :catch_28
    .catchall {:try_start_b .. :try_end_21} :catchall_26

    .line 3473
    :cond_21
    :try_start_21
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_4b

    .line 3462
    monitor-exit p0

    return-wide v1

    :catchall_26
    move-exception p1

    goto :goto_40

    :catch_28
    move-exception p1

    .line 3471
    :try_start_29
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_33
    move-exception p1

    .line 3469
    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1
    :try_end_40
    .catchall {:try_start_29 .. :try_end_40} :catchall_26

    .line 3473
    :goto_40
    :try_start_40
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3474
    throw p1

    .line 3473
    :catch_44
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_4b

    .line 3467
    monitor-exit p0

    return-wide v1

    .line 3476
    :cond_49
    monitor-exit p0

    return-wide v1

    :catchall_4b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    monitor-enter p0

    .line 3708
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->connectionPoolLogger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "getStoreProtocol() borrowing a connection"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 3709
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPStore;->getFolderStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0
    :try_end_10
    .catchall {:try_start_1 .. :try_end_10} :catchall_12

    monitor-exit p0

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 741
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_d

    .line 743
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    if-nez v0, :cond_10

    .line 744
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->exists()Z

    goto :goto_10

    .line 746
    :cond_d
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 748
    :cond_10
    :goto_10
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I
    :try_end_12
    .catchall {:try_start_1 .. :try_end_12} :catchall_14

    monitor-exit p0

    return v0

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUID(Ljavax/mail/Message;)J
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2735
    :try_start_1
    invoke-virtual {p1}, Ljavax/mail/Message;->getFolder()Ljavax/mail/Folder;

    move-result-object v0

    if-ne v0, p0, :cond_6e

    .line 2739
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2741
    instance-of v0, p1, Lcom/sun/mail/imap/IMAPMessage;

    if-eqz v0, :cond_66

    .line 2743
    check-cast p1, Lcom/sun/mail/imap/IMAPMessage;

    .line 2746
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getUID()J

    move-result-wide v0
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_76

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_1c

    .line 2747
    monitor-exit p0

    return-wide v0

    .line 2749
    :cond_1c
    :try_start_1c
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_76

    .line 2751
    :try_start_1f
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 2752
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->checkExpunged()V

    .line 2753
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchUID(I)Lcom/sun/mail/imap/protocol/UID;

    move-result-object v3

    if-eqz v3, :cond_49

    .line 2756
    iget-wide v0, v3, Lcom/sun/mail/imap/protocol/UID;->uid:J

    .line 2757
    invoke-virtual {p1, v0, v1}, Lcom/sun/mail/imap/IMAPMessage;->setUID(J)V

    .line 2760
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    if-nez v3, :cond_40

    .line 2761
    new-instance v3, Ljava/util/Hashtable;

    invoke-direct {v3}, Ljava/util/Hashtable;-><init>()V

    iput-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    .line 2762
    :cond_40
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->uidTable:Ljava/util/Hashtable;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_49
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1f .. :try_end_49} :catch_59
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1f .. :try_end_49} :catch_4e
    .catchall {:try_start_1f .. :try_end_49} :catchall_4c

    .line 2769
    :cond_49
    :try_start_49
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_4c

    .line 2771
    monitor-exit p0

    return-wide v0

    :catchall_4c
    move-exception p1

    goto :goto_64

    :catch_4e
    move-exception p1

    .line 2767
    :try_start_4f
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_59
    move-exception p1

    .line 2765
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 2769
    :goto_64
    monitor-exit v2
    :try_end_65
    .catchall {:try_start_4f .. :try_end_65} :catchall_4c

    :try_start_65
    throw p1

    .line 2742
    :cond_66
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "message is not an IMAPMessage"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2736
    :cond_6e
    new-instance p1, Ljava/util/NoSuchElementException;

    const-string v0, "Message does not belong to this folder"

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_76
    .catchall {:try_start_65 .. :try_end_76} :catchall_76

    :catchall_76
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getUIDNext()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2570
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_9

    .line 2571
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5c

    monitor-exit p0

    return-wide v0

    :cond_9
    const/4 v0, 0x0

    .line 2577
    :try_start_a
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1
    :try_end_e
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_a .. :try_end_e} :catch_4b
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_a .. :try_end_e} :catch_37
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_e} :catch_29
    .catchall {:try_start_a .. :try_end_e} :catchall_24

    :try_start_e
    const-string v2, "UIDNEXT"

    .line 2578
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2579
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0
    :try_end_1a
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_e .. :try_end_1a} :catch_22
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_e .. :try_end_1a} :catch_20
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_e .. :try_end_1a} :catch_1e
    .catchall {:try_start_e .. :try_end_1a} :catchall_57

    .line 2589
    :goto_1a
    :try_start_1a
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_5c

    goto :goto_3d

    :catch_1e
    move-exception v0

    goto :goto_2d

    :catch_20
    move-exception v2

    goto :goto_39

    :catch_22
    move-exception v0

    goto :goto_4f

    :catchall_24
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_58

    :catch_29
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 2587
    :goto_2d
    :try_start_2d
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_37
    move-exception v2

    move-object v1, v0

    .line 2585
    :goto_39
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_57

    goto :goto_1a

    :goto_3d
    if-eqz v0, :cond_43

    .line 2594
    :try_start_3f
    iget-wide v0, v0, Lcom/sun/mail/imap/protocol/Status;->uidnext:J
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_5c

    monitor-exit p0

    return-wide v0

    .line 2593
    :cond_43
    :try_start_43
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Cannot obtain UIDNext"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_5c

    :catch_4b
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 2582
    :goto_4f
    :try_start_4f
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Cannot obtain UIDNext"

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_57

    :catchall_57
    move-exception v0

    .line 2589
    :goto_58
    :try_start_58
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2590
    throw v0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUIDNotSticky()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2788
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2789
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidNotSticky:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUIDValidity()J
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2523
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz v0, :cond_9

    .line 2524
    iget-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->uidvalidity:J
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_5c

    monitor-exit p0

    return-wide v0

    :cond_9
    const/4 v0, 0x0

    .line 2530
    :try_start_a
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1
    :try_end_e
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_a .. :try_end_e} :catch_4b
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_a .. :try_end_e} :catch_37
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_e} :catch_29
    .catchall {:try_start_a .. :try_end_e} :catchall_24

    :try_start_e
    const-string v2, "UIDVALIDITY"

    .line 2531
    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    .line 2532
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->status(Ljava/lang/String;[Ljava/lang/String;)Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0
    :try_end_1a
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_e .. :try_end_1a} :catch_22
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_e .. :try_end_1a} :catch_20
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_e .. :try_end_1a} :catch_1e
    .catchall {:try_start_e .. :try_end_1a} :catchall_57

    .line 2542
    :goto_1a
    :try_start_1a
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_5c

    goto :goto_3d

    :catch_1e
    move-exception v0

    goto :goto_2d

    :catch_20
    move-exception v2

    goto :goto_39

    :catch_22
    move-exception v0

    goto :goto_4f

    :catchall_24
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_58

    :catch_29
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 2540
    :goto_2d
    :try_start_2d
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_37
    move-exception v2

    move-object v1, v0

    .line 2538
    :goto_39
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    :try_end_3c
    .catchall {:try_start_2d .. :try_end_3c} :catchall_57

    goto :goto_1a

    :goto_3d
    if-eqz v0, :cond_43

    .line 2547
    :try_start_3f
    iget-wide v0, v0, Lcom/sun/mail/imap/protocol/Status;->uidvalidity:J
    :try_end_41
    .catchall {:try_start_3f .. :try_end_41} :catchall_5c

    monitor-exit p0

    return-wide v0

    .line 2546
    :cond_43
    :try_start_43
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Cannot obtain UIDValidity"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4b
    .catchall {:try_start_43 .. :try_end_4b} :catchall_5c

    :catch_4b
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    .line 2535
    :goto_4f
    :try_start_4f
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "Cannot obtain UIDValidity"

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_57
    .catchall {:try_start_4f .. :try_end_57} :catchall_57

    :catchall_57
    move-exception v0

    .line 2542
    :goto_58
    :try_start_58
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2543
    throw v0
    :try_end_5c
    .catchall {:try_start_58 .. :try_end_5c} :catchall_5c

    :catchall_5c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getUnreadMessageCount()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1741
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-nez v0, :cond_2b

    .line 1742
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_63

    .line 1746
    :try_start_8
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    .line 1747
    iget v0, v0, Lcom/sun/mail/imap/protocol/Status;->unseen:I
    :try_end_e
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_8 .. :try_end_e} :catch_28
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_8 .. :try_end_e} :catch_1b
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_8 .. :try_end_e} :catch_10
    .catchall {:try_start_8 .. :try_end_e} :catchall_63

    monitor-exit p0

    return v0

    :catch_10
    move-exception v0

    .line 1756
    :try_start_11
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1b
    move-exception v0

    .line 1754
    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_63

    .line 1752
    :catch_28
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 1762
    :cond_2b
    :try_start_2b
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    .line 1763
    sget-object v1, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags$Flag;)V
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_63

    .line 1765
    :try_start_35
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_38
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_35 .. :try_end_38} :catch_58
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_35 .. :try_end_38} :catch_4d
    .catchall {:try_start_35 .. :try_end_38} :catchall_63

    .line 1766
    :try_start_38
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
    :try_end_48
    .catchall {:try_start_38 .. :try_end_48} :catchall_4a

    monitor-exit p0

    return v0

    :catchall_4a
    move-exception v0

    .line 1768
    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    throw v0
    :try_end_4d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4c .. :try_end_4d} :catch_58
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4c .. :try_end_4d} :catch_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_63

    :catch_4d
    move-exception v0

    .line 1773
    :try_start_4e
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_58
    move-exception v0

    .line 1770
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
    :try_end_63
    .catchall {:try_start_4e .. :try_end_63} :catchall_63

    :catchall_63
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method handleIdle(Z)Z
    .registers 9
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
    :try_start_6
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_9
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_6 .. :try_end_9} :catch_b7
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_6 .. :try_end_9} :catch_ac

    .line 3254
    :try_start_9
    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_5e

    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->isSynthetic()Z

    move-result v2

    if-eqz v2, :cond_5e

    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    if-ne v2, v5, :cond_5e

    .line 3262
    invoke-virtual {v0}, Lcom/sun/mail/iap/Response;->getException()Ljava/lang/Exception;

    move-result-object v2

    .line 3263
    instance-of v6, v2, Ljava/io/InterruptedIOException;

    if-eqz v6, :cond_5e

    move-object v6, v2

    check-cast v6, Ljava/io/InterruptedIOException;

    iget v6, v6, Ljava/io/InterruptedIOException;->bytesTransferred:I

    if-nez v6, :cond_5e

    .line 3266
    instance-of v2, v2, Ljava/net/SocketTimeoutException;

    if-eqz v2, :cond_38

    .line 3267
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "handleIdle: ignoring socket timeout"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    move-object v0, v4

    goto :goto_5c

    .line 3271
    :cond_38
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "handleIdle: interrupting IDLE"

    invoke-virtual {v2, v4}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3272
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    if-eqz v2, :cond_4e

    .line 3274
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "handleIdle: request IdleManager to abort"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3276
    invoke-virtual {v2, p0}, Lcom/sun/mail/imap/IdleManager;->requestAbort(Lcom/sun/mail/imap/IMAPFolder;)V

    goto :goto_5c

    .line 3278
    :cond_4e
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "handleIdle: abort IDLE"

    invoke-virtual {v2, v4}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3279
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    .line 3280
    iput v3, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3284
    :goto_5c
    monitor-exit v1
    :try_end_5d
    .catchall {:try_start_9 .. :try_end_5d} :catchall_a9

    goto :goto_7a

    :cond_5e
    const/4 v2, 0x0

    .line 3289
    :try_start_5f
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v6, :cond_85

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 3290
    invoke-virtual {v6, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->processIdleResponse(Lcom/sun/mail/iap/Response;)Z

    move-result v6
    :try_end_69
    .catchall {:try_start_5f .. :try_end_69} :catchall_97

    if-nez v6, :cond_6c

    goto :goto_85

    :cond_6c
    if-eqz p1, :cond_79

    .line 3302
    :try_start_6e
    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I
    :try_end_70
    .catchall {:try_start_6e .. :try_end_70} :catchall_a9

    if-ne v2, v5, :cond_79

    .line 3304
    :try_start_72
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_77} :catch_77
    .catchall {:try_start_72 .. :try_end_77} :catchall_a9

    .line 3310
    :catch_77
    :try_start_77
    iput v3, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3313
    :cond_79
    monitor-exit v1
    :try_end_7a
    .catchall {:try_start_77 .. :try_end_7a} :catchall_a9

    :goto_7a
    if-eqz v0, :cond_0

    .line 3321
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasResponse()Z

    move-result v0

    if-nez v0, :cond_0

    return v5

    .line 3295
    :cond_85
    :goto_85
    :try_start_85
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

    :catchall_97
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

    :catchall_a9
    move-exception p1

    .line 3313
    monitor-exit v1
    :try_end_ab
    .catchall {:try_start_85 .. :try_end_ab} :catchall_a9

    :try_start_ab
    throw p1
    :try_end_ac
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_ab .. :try_end_ac} :catch_b7
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_ab .. :try_end_ac} :catch_ac

    :catch_ac
    move-exception p1

    .line 3318
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_b7
    move-exception p1

    .line 3316
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0
.end method

.method public handleResponse(Lcom/sun/mail/iap/Response;)V
    .registers 9

    .line 3498
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBAD()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 3499
    :cond_18
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPStore;->handleResponseCode(Lcom/sun/mail/iap/Response;)V

    .line 3505
    :cond_1f
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    .line 3506
    iget-boolean p1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z

    if-eqz p1, :cond_2d

    .line 3507
    invoke-direct {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->cleanup(Z)V

    :cond_2d
    return-void

    .line 3509
    :cond_2e
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-eqz v0, :cond_55

    .line 3511
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    .line 3512
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v1, 0x5b

    if-ne v0, v1, :cond_51

    .line 3513
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HIGHESTMODSEQ"

    .line 3514
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    .line 3515
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/mail/imap/IMAPFolder;->highestmodseq:J

    .line 3517
    :cond_51
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->reset()V

    return-void

    .line 3519
    :cond_55
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result v0

    if-nez v0, :cond_5c

    return-void

    .line 3524
    :cond_5c
    instance-of v0, p1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    if-nez v0, :cond_79

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
    :cond_79
    check-cast p1, Lcom/sun/mail/imap/protocol/IMAPResponse;

    const-string v0, "EXISTS"

    .line 3533
    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_b9

    .line 3534
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result p1

    .line 3535
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    if-gt p1, v0, :cond_8d

    return-void

    :cond_8d
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

    if-eqz v4, :cond_160

    :goto_a6
    if-ge v1, p1, :cond_b4

    .line 3551
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    add-int/2addr v0, v2

    invoke-virtual {v4, v0}, Lcom/sun/mail/imap/MessageCache;->getMessage(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_a6

    .line 3554
    :cond_b4
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageAddedListeners([Ljavax/mail/Message;)V

    goto/16 :goto_160

    :cond_b9
    const-string v0, "EXPUNGE"

    .line 3557
    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 3560
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result p1

    .line 3561
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    if-le p1, v0, :cond_ca

    return-void

    .line 3569
    :cond_ca
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    const/4 v3, 0x0

    if-eqz v0, :cond_e1

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z

    if-eqz v0, :cond_e1

    new-array v0, v2, [Ljavax/mail/Message;

    .line 3572
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->getMessageBySeqNumber(I)Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v4

    aput-object v4, v0, v1

    aget-object v4, v0, v1

    if-nez v4, :cond_e0

    goto :goto_e1

    :cond_e0
    move-object v3, v0

    .line 3577
    :cond_e1
    :goto_e1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/MessageCache;->expungeMessage(I)V

    .line 3580
    iget p1, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->realTotal:I

    if-eqz v3, :cond_160

    .line 3583
    invoke-virtual {p0, v1, v3}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V

    goto/16 :goto_160

    :cond_f2
    const-string v0, "VANISHED"

    .line 3585
    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13e

    .line 3591
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomStringList()[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_160

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

    :goto_11c
    if-ge v1, v0, :cond_132

    aget-object v3, p1, v1

    .line 3600
    invoke-virtual {v3}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v4

    if-lez v4, :cond_12f

    .line 3601
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCache:Lcom/sun/mail/imap/MessageCache;

    invoke-virtual {v3}, Ljavax/mail/Message;->getMessageNumber()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/sun/mail/imap/MessageCache;->expungeMessage(I)V

    :cond_12f
    add-int/lit8 v1, v1, 0x1

    goto :goto_11c

    .line 3603
    :cond_132
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->doExpungeNotification:Z

    if-eqz v0, :cond_160

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->hasMessageCountListener:Z

    if-eqz v0, :cond_160

    .line 3604
    invoke-virtual {p0, v2, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V

    goto :goto_160

    :cond_13e
    const-string v0, "FETCH"

    .line 3608
    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_152

    .line 3610
    check-cast p1, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->processFetchResponse(Lcom/sun/mail/imap/protocol/FetchResponse;)Ljavax/mail/Message;

    move-result-object p1

    if-eqz p1, :cond_160

    .line 3612
    invoke-virtual {p0, v2, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V

    goto :goto_160

    :cond_152
    const-string v0, "RECENT"

    .line 3615
    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_160

    .line 3617
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPResponse;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    :cond_160
    :goto_160
    return-void
.end method

.method handleResponses([Lcom/sun/mail/iap/Response;)V
    .registers 4

    const/4 v0, 0x0

    .line 3677
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_e

    .line 3678
    aget-object v1, p1, v0

    if-eqz v1, :cond_b

    .line 3679
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->handleResponse(Lcom/sun/mail/iap/Response;)V

    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_e
    return-void
.end method

.method public declared-synchronized hasNewMessages()Z
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 856
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_b4

    .line 857
    :try_start_4
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_b1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2b

    .line 861
    :try_start_a
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_a .. :try_end_d} :catch_20
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_a .. :try_end_d} :catch_15
    .catchall {:try_start_a .. :try_end_d} :catchall_b1

    .line 867
    :try_start_d
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->recent:I

    if-lez v1, :cond_12

    move v2, v3

    :cond_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_b1

    monitor-exit p0

    return v2

    :catch_15
    move-exception v1

    .line 865
    :try_start_16
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_20
    move-exception v1

    .line 863
    new-instance v2, Ljavax/mail/FolderClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 869
    :cond_2b
    monitor-exit v0
    :try_end_2c
    .catchall {:try_start_16 .. :try_end_2c} :catchall_b1

    .line 876
    :try_start_2c
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v0, :cond_4a

    iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v0, :cond_4a

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

    goto :goto_4c

    .line 879
    :cond_4a
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    .line 880
    :goto_4c
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$7;

    invoke-direct {v1, p0, v0}, Lcom/sun/mail/imap/IMAPFolder$7;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;

    check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;

    if-eqz v1, :cond_96

    .line 891
    invoke-direct {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v0

    .line 892
    aget-object v4, v1, v0

    iget v4, v4, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I
    :try_end_63
    .catchall {:try_start_2c .. :try_end_63} :catchall_b4

    if-ne v4, v3, :cond_67

    .line 893
    monitor-exit p0

    return v3

    .line 894
    :cond_67
    :try_start_67
    aget-object v0, v1, v0

    iget v0, v0, Lcom/sun/mail/imap/protocol/ListInfo;->changeState:I
    :try_end_6b
    .catchall {:try_start_67 .. :try_end_6b} :catchall_b4

    const/4 v1, 0x2

    if-ne v0, v1, :cond_70

    .line 895
    monitor-exit p0

    return v2

    .line 899
    :cond_70
    :try_start_70
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPFolder;->getStatus()Lcom/sun/mail/imap/protocol/Status;

    move-result-object v0

    .line 900
    iget v0, v0, Lcom/sun/mail/imap/protocol/Status;->recent:I
    :try_end_76
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_70 .. :try_end_76} :catch_94
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_70 .. :try_end_76} :catch_87
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_70 .. :try_end_76} :catch_7c
    .catchall {:try_start_70 .. :try_end_76} :catchall_b4

    if-lez v0, :cond_7a

    .line 901
    monitor-exit p0

    return v3

    .line 903
    :cond_7a
    monitor-exit p0

    return v2

    :catch_7c
    move-exception v0

    .line 910
    :try_start_7d
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_87
    move-exception v0

    .line 908
    new-instance v1, Ljavax/mail/StoreClosedException;

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {v0}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1
    :try_end_94
    .catchall {:try_start_7d .. :try_end_94} :catchall_b4

    .line 906
    :catch_94
    monitor-exit p0

    return v2

    .line 889
    :cond_96
    :try_start_96
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
    :try_end_b1
    .catchall {:try_start_96 .. :try_end_b1} :catchall_b4

    :catchall_b1
    move-exception v1

    .line 869
    :try_start_b2
    monitor-exit v0
    :try_end_b3
    .catchall {:try_start_b2 .. :try_end_b3} :catchall_b1

    :try_start_b3
    throw v1
    :try_end_b4
    .catchall {:try_start_b3 .. :try_end_b4} :catchall_b4

    :catchall_b4
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public id(Ljava/util/Map;)Ljava/util/Map;
    .registers 3
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
    .registers 2
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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3127
    monitor-enter p0

    .line 3136
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getChannel()Ljava/nio/channels/SocketChannel;

    move-result-object v0

    if-nez v0, :cond_e

    goto :goto_16

    .line 3137
    :cond_e
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "idle method not supported with SocketChannels"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3139
    :cond_16
    :goto_16
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_1 .. :try_end_17} :catchall_3c

    const/4 v0, 0x0

    .line 3140
    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->startIdle(Lcom/sun/mail/imap/IdleManager;)Z

    move-result v0

    if-nez v0, :cond_1f

    return-void

    .line 3159
    :cond_1f
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->handleIdle(Z)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 3168
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast p1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPStore;->getMinIdleTime()I

    move-result p1

    if-lez p1, :cond_3b

    int-to-long v0, p1

    .line 3171
    :try_start_30
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_33
    .catch Ljava/lang/InterruptedException; {:try_start_30 .. :try_end_33} :catch_34

    goto :goto_3b

    .line 3174
    :catch_34
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :cond_3b
    :goto_3b
    return-void

    :catchall_3c
    move-exception p1

    .line 3139
    :try_start_3d
    monitor-exit p0
    :try_end_3e
    .catchall {:try_start_3d .. :try_end_3e} :catchall_3c

    throw p1
.end method

.method idleAbort()V
    .registers 4

    .line 3371
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3372
    :try_start_3
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_14

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v1, :cond_14

    .line 3373
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    const/4 v1, 0x2

    .line 3374
    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    .line 3376
    :cond_14
    monitor-exit v0

    return-void

    :catchall_16
    move-exception v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_3 .. :try_end_18} :catchall_16

    throw v1
.end method

.method idleAbortWait()V
    .registers 6

    .line 3384
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0

    .line 3385
    :try_start_3
    iget v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2d

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v1, :cond_2d

    .line 3386
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    const/4 v1, 0x2

    .line 3387
    iput v1, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_2f

    :cond_14
    const/4 v1, 0x0

    .line 3392
    :try_start_15
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->handleIdle(Z)Z

    move-result v1
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_19} :catch_1c
    .catchall {:try_start_15 .. :try_end_19} :catchall_2f

    if-nez v1, :cond_14

    goto :goto_26

    :catch_1c
    move-exception v1

    .line 3397
    :try_start_1d
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    const-string v4, "Exception in idleAbortWait"

    invoke-virtual {v2, v3, v4, v1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3399
    :goto_26
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "IDLE aborted"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3401
    :cond_2d
    monitor-exit v0

    return-void

    :catchall_2f
    move-exception v1

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_1d .. :try_end_31} :catchall_2f

    throw v1
.end method

.method public declared-synchronized isOpen()Z
    .registers 3

    monitor-enter p0

    .line 1615
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_14

    .line 1617
    :try_start_4
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_6
    .catchall {:try_start_4 .. :try_end_6} :catchall_11

    if-eqz v1, :cond_c

    const/4 v1, 0x0

    .line 1619
    :try_start_9
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->keepConnectionAlive(Z)V
    :try_end_c
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_c} :catch_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_11

    .line 1622
    :catch_c
    :cond_c
    :try_start_c
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_c .. :try_end_d} :catchall_11

    .line 1624
    :try_start_d
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->opened:Z
    :try_end_f
    .catchall {:try_start_d .. :try_end_f} :catchall_14

    monitor-exit p0

    return v0

    :catchall_11
    move-exception v1

    .line 1622
    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    :try_start_13
    throw v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_14

    :catchall_14
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSubscribed()Z
    .registers 3

    monitor-enter p0

    .line 758
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->isNamespace:Z

    if-eqz v0, :cond_1f

    iget-char v0, p0, Lcom/sun/mail/imap/IMAPFolder;->separator:C

    if-eqz v0, :cond_1f

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

    goto :goto_21

    .line 761
    :cond_1f
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;
    :try_end_21
    .catchall {:try_start_1 .. :try_end_21} :catchall_3f

    .line 764
    :goto_21
    :try_start_21
    new-instance v1, Lcom/sun/mail/imap/IMAPFolder$4;

    invoke-direct {v1, p0, v0}, Lcom/sun/mail/imap/IMAPFolder$4;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->doProtocolCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;

    check-cast v1, [Lcom/sun/mail/imap/protocol/ListInfo;
    :try_end_2e
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_21 .. :try_end_2e} :catch_2f
    .catchall {:try_start_21 .. :try_end_2e} :catchall_3f

    goto :goto_30

    :catch_2f
    const/4 v1, 0x0

    :goto_30
    if-eqz v1, :cond_3c

    .line 775
    :try_start_32
    invoke-direct {p0, v1, v0}, Lcom/sun/mail/imap/IMAPFolder;->findName([Lcom/sun/mail/imap/protocol/ListInfo;Ljava/lang/String;)I

    move-result v0

    .line 776
    aget-object v0, v1, v0

    iget-boolean v0, v0, Lcom/sun/mail/imap/protocol/ListInfo;->canOpen:Z
    :try_end_3a
    .catchall {:try_start_32 .. :try_end_3a} :catchall_3f

    monitor-exit p0

    return v0

    .line 778
    :cond_3c
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected keepConnectionAlive(Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 3982
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-nez v0, :cond_5

    return-void

    .line 3984
    :cond_5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_22

    .line 3985
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->waitIfIdle()V

    .line 3986
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_22

    .line 3987
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V

    :cond_22
    if-eqz p1, :cond_58

    .line 3990
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast p1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPStore;->hasSeparateStoreConnection()Z

    move-result p1

    if-eqz p1, :cond_58

    const/4 p1, 0x0

    .line 3993
    :try_start_2f
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

    if-lez v0, :cond_47

    .line 3995
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_47
    .catchall {:try_start_2f .. :try_end_47} :catchall_4f

    .line 3997
    :cond_47
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPStore;->releaseFolderStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_58

    :catchall_4f
    move-exception v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1, p1}, Lcom/sun/mail/imap/IMAPStore;->releaseFolderStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3998
    throw v0

    :cond_58
    :goto_58
    return-void
.end method

.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 3
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
    .registers 3
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
    .registers 3
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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 2061
    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 2062
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized moveUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)[Lcom/sun/mail/imap/AppendUID;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x1

    .line 2088
    :try_start_2
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPFolder;->copymoveUIDMessages([Ljavax/mail/Message;Ljavax/mail/Folder;Z)[Lcom/sun/mail/imap/AppendUID;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_2 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object p1

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public myRights()Lcom/sun/mail/imap/Rights;
    .registers 3
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
    .registers 3

    .line 1395
    new-instance v0, Lcom/sun/mail/imap/IMAPMessage;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPMessage;-><init>(Lcom/sun/mail/imap/IMAPFolder;I)V

    return-object v0
.end method

.method public declared-synchronized open(ILcom/sun/mail/imap/ResyncData;)Ljava/util/List;
    .registers 10
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
    :try_start_1
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
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_180

    .line 1031
    :try_start_11
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    :try_end_16
    .catchall {:try_start_11 .. :try_end_16} :catchall_17d

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p2, :cond_65

    .line 1041
    :try_start_1b
    sget-object v4, Lcom/sun/mail/imap/ResyncData;->CONDSTORE:Lcom/sun/mail/imap/ResyncData;

    if-ne p2, v4, :cond_4d

    .line 1042
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v5, "CONDSTORE"

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_65

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v5, "QRESYNC"

    .line 1043
    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 1044
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v5, "CONDSTORE"

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_45

    .line 1045
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v5, "CONDSTORE"

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enable(Ljava/lang/String;)V

    goto :goto_65

    .line 1047
    :cond_45
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v5, "QRESYNC"

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enable(Ljava/lang/String;)V

    goto :goto_65

    .line 1050
    :cond_4d
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v5, "QRESYNC"

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isEnabled(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_65

    .line 1051
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    const-string v5, "QRESYNC"

    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enable(Ljava/lang/String;)V

    goto :goto_65

    :catch_5f
    move-exception p1

    goto/16 :goto_14a

    :catch_62
    move-exception p1

    goto/16 :goto_158

    :cond_65
    :goto_65
    if-ne p1, v3, :cond_70

    .line 1056
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v4, v5, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->examine(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object p2

    goto :goto_78

    .line 1058
    :cond_70
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {v4, v5, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->select(Ljava/lang/String;Lcom/sun/mail/imap/ResyncData;)Lcom/sun/mail/imap/protocol/MailboxInfo;

    move-result-object p2
    :try_end_78
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1b .. :try_end_78} :catch_62
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1b .. :try_end_78} :catch_5f
    .catchall {:try_start_1b .. :try_end_78} :catchall_17d

    .line 1093
    :goto_78
    :try_start_78
    iget v4, p2, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    if-eq v4, p1, :cond_9a

    const/4 v4, 0x2

    if-ne p1, v4, :cond_8e

    .line 1094
    iget p1, p2, Lcom/sun/mail/imap/protocol/MailboxInfo;->mode:I

    if-ne p1, v3, :cond_8e

    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast p1, Lcom/sun/mail/imap/IMAPStore;

    .line 1095
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPStore;->allowReadOnlySelect()Z

    move-result p1

    if-eqz p1, :cond_8e

    goto :goto_9a

    .line 1098
    :cond_8e
    new-instance p1, Ljavax/mail/ReadOnlyFolderException;

    const-string p2, "Cannot open in desired mode"

    invoke-direct {p1, p0, p2}, Ljavax/mail/ReadOnlyFolderException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    .line 1100
    invoke-direct {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->cleanupAndThrow(Ljavax/mail/MessagingException;)Ljavax/mail/MessagingException;

    move-result-object p1

    throw p1

    .line 1105
    :cond_9a
    :goto_9a
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

    if-eqz p1, :cond_13d

    .line 1122
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1123
    iget-object p2, p2, Lcom/sun/mail/imap/protocol/MailboxInfo;->responses:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_e0
    :goto_e0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_13e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/imap/protocol/IMAPResponse;

    const-string v5, "VANISHED"

    .line 1124
    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_124

    .line 1126
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtomStringList()[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_e0

    .line 1128
    array-length v6, v5

    if-ne v6, v3, :cond_e0

    aget-object v5, v5, v2

    const-string v6, "EARLIER"

    .line 1129
    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_108

    goto :goto_e0

    .line 1131
    :cond_108
    invoke-virtual {v4}, Lcom/sun/mail/imap/protocol/IMAPResponse;->readAtom()Ljava/lang/String;

    move-result-object v4

    .line 1132
    invoke-static {v4}, Lcom/sun/mail/imap/protocol/UIDSet;->parseUIDSets(Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/UIDSet;

    move-result-object v4

    .line 1133
    iget-wide v5, p0, Lcom/sun/mail/imap/IMAPFolder;->uidnext:J

    invoke-static {v4, v5, v6}, Lcom/sun/mail/imap/protocol/UIDSet;->toArray([Lcom/sun/mail/imap/protocol/UIDSet;J)[J

    move-result-object v4

    if-eqz v4, :cond_e0

    .line 1134
    array-length v5, v4

    if-lez v5, :cond_e0

    .line 1135
    new-instance v5, Lcom/sun/mail/imap/MessageVanishedEvent;

    invoke-direct {v5, p0, v4}, Lcom/sun/mail/imap/MessageVanishedEvent;-><init>(Ljavax/mail/Folder;[J)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e0

    :cond_124
    const-string v5, "FETCH"

    .line 1137
    invoke-virtual {v4, v5}, Lcom/sun/mail/imap/protocol/IMAPResponse;->keyEquals(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_e0

    .line 1140
    check-cast v4, Lcom/sun/mail/imap/protocol/FetchResponse;

    invoke-direct {p0, v4}, Lcom/sun/mail/imap/IMAPFolder;->processFetchResponse(Lcom/sun/mail/imap/protocol/FetchResponse;)Ljavax/mail/Message;

    move-result-object v4

    if-eqz v4, :cond_e0

    .line 1142
    new-instance v5, Ljavax/mail/event/MessageChangedEvent;

    invoke-direct {v5, p0, v3, v4}, Ljavax/mail/event/MessageChangedEvent;-><init>(Ljava/lang/Object;ILjavax/mail/Message;)V

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e0

    :cond_13d
    move-object p1, v1

    .line 1147
    :cond_13e
    monitor-exit v0
    :try_end_13f
    .catchall {:try_start_78 .. :try_end_13f} :catchall_17d

    .line 1149
    :try_start_13f
    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 1150
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 1151
    iput v3, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 1154
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->notifyConnectionListeners(I)V
    :try_end_148
    .catchall {:try_start_13f .. :try_end_148} :catchall_180

    .line 1156
    monitor-exit p0

    return-object p1

    .line 1087
    :goto_14a
    :try_start_14a
    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/sun/mail/imap/IMAPFolder;->logoutAndThrow(Ljava/lang/String;Lcom/sun/mail/iap/ProtocolException;)Ljavax/mail/MessagingException;

    move-result-object p1

    throw p1
    :try_end_153
    .catchall {:try_start_14a .. :try_end_153} :catchall_153

    :catchall_153
    move-exception p1

    .line 1089
    :try_start_154
    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1090
    throw p1
    :try_end_158
    .catchall {:try_start_154 .. :try_end_158} :catchall_17d

    .line 1068
    :goto_158
    :try_start_158
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 1070
    iget p2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    and-int/2addr p2, v3

    if-nez p2, :cond_168

    .line 1071
    new-instance p1, Ljavax/mail/MessagingException;

    const-string p2, "folder cannot contain messages"

    invoke-direct {p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1073
    :cond_168
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v4, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
    :try_end_172
    .catchall {:try_start_158 .. :try_end_172} :catchall_172

    :catchall_172
    move-exception p1

    .line 1077
    :try_start_173
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    .line 1078
    iput-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 1079
    iput v2, p0, Lcom/sun/mail/imap/IMAPFolder;->type:I

    .line 1081
    invoke-virtual {p0, v3}, Lcom/sun/mail/imap/IMAPFolder;->releaseProtocol(Z)V

    .line 1082
    throw p1

    :catchall_17d
    move-exception p1

    .line 1147
    monitor-exit v0
    :try_end_17f
    .catchall {:try_start_173 .. :try_end_17f} :catchall_17d

    :try_start_17f
    throw p1
    :try_end_180
    .catchall {:try_start_17f .. :try_end_180} :catchall_180

    :catchall_180
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized open(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1001
    :try_start_2
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPFolder;->open(ILcom/sun/mail/imap/ResyncData;)Ljava/util/List;
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 1002
    monitor-exit p0

    return-void

    :catchall_7
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected releaseProtocol(Z)V
    .registers 4

    .line 3954
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_24

    .line 3955
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    .line 3958
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast p1, Lcom/sun/mail/imap/IMAPStore;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1, p0, v1}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_22

    .line 3960
    :cond_16
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 3961
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast p1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {p1, p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 3963
    :goto_22
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    :cond_24
    return-void
.end method

.method protected declared-synchronized releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .registers 3

    monitor-enter p0

    .line 3937
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eq p1, v0, :cond_d

    .line 3938
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/IMAPStore;->releaseFolderStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_14

    .line 3941
    :cond_d
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v0, "releasing our protocol as store protocol?"

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 3943
    :goto_14
    monitor-exit p0

    return-void

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeACL(Ljava/lang/String;)V
    .registers 3
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
    .registers 3
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
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 973
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkClosed()V

    .line 974
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkExists()V

    .line 975
    invoke-virtual {p1}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    if-ne v0, v1, :cond_28

    .line 979
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$9;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$9;-><init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Folder;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object v0
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_30

    const/4 v1, 0x0

    if-nez v0, :cond_1d

    .line 988
    monitor-exit p0

    return v1

    .line 990
    :cond_1d
    :try_start_1d
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPFolder;->exists:Z

    const/4 v0, 0x0

    .line 991
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->attributes:[Ljava/lang/String;

    .line 992
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->notifyFolderRenamedListeners(Ljavax/mail/Folder;)V
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_30

    .line 993
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    .line 976
    :cond_28
    :try_start_28
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Can\'t rename across Stores"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_30
    .catchall {:try_start_28 .. :try_end_30} :catchall_30

    :catchall_30
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2369
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_4b

    .line 2374
    :try_start_4
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_7
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_4 .. :try_end_7} :catch_45
    .catch Ljavax/mail/search/SearchException; {:try_start_4 .. :try_end_7} :catch_33
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_4 .. :try_end_7} :catch_28
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_4 .. :try_end_7} :catch_1d
    .catchall {:try_start_4 .. :try_end_7} :catchall_4b

    .line 2375
    :try_start_7
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search(Ljavax/mail/search/SearchTerm;)[I

    move-result-object v1

    if-eqz v1, :cond_16

    .line 2377
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v1

    goto :goto_17

    :cond_16
    const/4 v1, 0x0

    .line 2378
    :goto_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_7 .. :try_end_18} :catchall_1a

    .line 2379
    monitor-exit p0

    return-object v1

    :catchall_1a
    move-exception v1

    .line 2378
    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    :try_start_1c
    throw v1
    :try_end_1d
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_1c .. :try_end_1d} :catch_45
    .catch Ljavax/mail/search/SearchException; {:try_start_1c .. :try_end_1d} :catch_33
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_1c .. :try_end_1d} :catch_28
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_1c .. :try_end_1d} :catch_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_4b

    :catch_1d
    move-exception p1

    .line 2393
    :try_start_1e
    new-instance v0, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_28
    move-exception p1

    .line 2390
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    :catch_33
    move-exception v0

    .line 2386
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    check-cast v1, Lcom/sun/mail/imap/IMAPStore;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPStore;->throwSearchException()Z

    move-result v1

    if-nez v1, :cond_44

    .line 2388
    invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object p1
    :try_end_42
    .catchall {:try_start_1e .. :try_end_42} :catchall_4b

    monitor-exit p0

    return-object p1

    .line 2387
    :cond_44
    :try_start_44
    throw v0

    .line 2383
    :catch_45
    invoke-super {p0, p1}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;

    move-result-object p1
    :try_end_49
    .catchall {:try_start_44 .. :try_end_49} :catchall_4b

    monitor-exit p0

    return-object p1

    :catchall_4b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2405
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 2407
    array-length v0, p2
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_51

    if-nez v0, :cond_9

    .line 2409
    monitor-exit p0

    return-object p2

    .line 2414
    :cond_9
    :try_start_9
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_c
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_9 .. :try_end_c} :catch_4b
    .catch Ljavax/mail/search/SearchException; {:try_start_9 .. :try_end_c} :catch_45
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_9 .. :try_end_c} :catch_3a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_c} :catch_2f
    .catchall {:try_start_9 .. :try_end_c} :catchall_51

    .line 2415
    :try_start_c
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    const/4 v2, 0x0

    .line 2416
    invoke-static {p2, v2}, Lcom/sun/mail/imap/Utility;->toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object v3

    if-eqz v3, :cond_24

    .line 2420
    invoke-virtual {v1, v3, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->search([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/search/SearchTerm;)[I

    move-result-object v1

    if-eqz v1, :cond_21

    .line 2422
    invoke-virtual {p0, v1}, Lcom/sun/mail/imap/IMAPFolder;->getMessagesBySeqNumbers([I)[Lcom/sun/mail/imap/IMAPMessage;

    move-result-object v2

    .line 2423
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_2c

    .line 2424
    monitor-exit p0

    return-object v2

    .line 2418
    :cond_24
    :try_start_24
    new-instance v1, Ljavax/mail/MessageRemovedException;

    const-string v2, "Messages have been removed"

    invoke-direct {v1, v2}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_2c
    move-exception v1

    .line 2423
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v1
    :try_end_2f
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_2e .. :try_end_2f} :catch_4b
    .catch Ljavax/mail/search/SearchException; {:try_start_2e .. :try_end_2f} :catch_45
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_2e .. :try_end_2f} :catch_3a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2e .. :try_end_2f} :catch_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_51

    :catch_2f
    move-exception p1

    .line 2436
    :try_start_30
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_3a
    move-exception p1

    .line 2433
    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2

    .line 2431
    :catch_45
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object p1
    :try_end_49
    .catchall {:try_start_30 .. :try_end_49} :catchall_51

    monitor-exit p0

    return-object p1

    .line 2428
    :catch_4b
    :try_start_4b
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object p1
    :try_end_4f
    .catchall {:try_start_4b .. :try_end_4f} :catchall_51

    monitor-exit p0

    return-object p1

    :catchall_51
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFlags(IILjavax/mail/Flags;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1458
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    .line 1459
    new-array v0, v0, [Ljavax/mail/Message;

    const/4 v1, 0x0

    :goto_b
    if-gt p1, p2, :cond_19

    add-int/lit8 v2, v1, 0x1

    .line 1462
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPFolder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    aput-object v3, v0, v1

    add-int/lit8 p1, p1, 0x1

    move v1, v2

    goto :goto_b

    .line 1463
    :cond_19
    invoke-virtual {p0, v0, p3, p4}, Lcom/sun/mail/imap/IMAPFolder;->setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 1464
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFlags([ILjavax/mail/Flags;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1472
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1473
    array-length v0, p1

    new-array v0, v0, [Ljavax/mail/Message;

    const/4 v1, 0x0

    .line 1474
    :goto_8
    array-length v2, p1

    if-ge v1, v2, :cond_16

    .line 1475
    aget v2, p1, v1

    invoke-virtual {p0, v2}, Lcom/sun/mail/imap/IMAPFolder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 1476
    :cond_16
    invoke-virtual {p0, v0, p2, p3}, Lcom/sun/mail/imap/IMAPFolder;->setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1b

    .line 1477
    monitor-exit p0

    return-void

    :catchall_1b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1430
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    .line 1431
    invoke-direct {p0, p2}, Lcom/sun/mail/imap/IMAPFolder;->checkFlags(Ljavax/mail/Flags;)V

    .line 1433
    array-length v0, p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_42

    if-nez v0, :cond_c

    .line 1434
    monitor-exit p0

    return-void

    .line 1436
    :cond_c
    :try_start_c
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->messageCacheLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_42

    .line 1438
    :try_start_f
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    const/4 v2, 0x0

    .line 1439
    invoke-static {p1, v2}, Lcom/sun/mail/imap/Utility;->toMessageSetSorted([Ljavax/mail/Message;Lcom/sun/mail/imap/Utility$Condition;)[Lcom/sun/mail/imap/protocol/MessageSet;

    move-result-object p1

    if-eqz p1, :cond_20

    .line 1443
    invoke-virtual {v1, p1, p2, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->storeFlags([Lcom/sun/mail/imap/protocol/MessageSet;Ljavax/mail/Flags;Z)V
    :try_end_1d
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_f .. :try_end_1d} :catch_35
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_f .. :try_end_1d} :catch_2a
    .catchall {:try_start_f .. :try_end_1d} :catchall_28

    .line 1449
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_28

    .line 1450
    monitor-exit p0

    return-void

    .line 1441
    :cond_20
    :try_start_20
    new-instance p1, Ljavax/mail/MessageRemovedException;

    const-string p2, "Messages have been removed"

    invoke-direct {p1, p2}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_28
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_20 .. :try_end_28} :catch_35
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_20 .. :try_end_28} :catch_2a
    .catchall {:try_start_20 .. :try_end_28} :catchall_28

    :catchall_28
    move-exception p1

    goto :goto_40

    :catch_2a
    move-exception p1

    .line 1447
    :try_start_2b
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_35
    move-exception p1

    .line 1445
    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2

    .line 1449
    :goto_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_2b .. :try_end_41} :catchall_28

    :try_start_41
    throw p1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_42

    :catchall_42
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setQuota(Ljavax/mail/Quota;)V
    .registers 3
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
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 787
    :try_start_1
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder$5;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/IMAPFolder$5;-><init>(Lcom/sun/mail/imap/IMAPFolder;Z)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/IMAPFolder;->doCommandIgnoreFailure(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 797
    monitor-exit p0

    return-void

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method startIdle(Lcom/sun/mail/imap/IdleManager;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3194
    monitor-enter p0

    .line 3195
    :try_start_1
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPFolder;->checkOpened()V

    if-eqz p1, :cond_15

    .line 3196
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    if-eqz v0, :cond_15

    if-ne p1, v0, :cond_d

    goto :goto_15

    .line 3197
    :cond_d
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Folder already being watched by another IdleManager"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_15
    :goto_15
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

    :catchall_31
    move-exception p1

    .line 3233
    monitor-exit p0
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_31

    throw p1
.end method

.method protected declared-synchronized throwClosedException(Lcom/sun/mail/iap/ConnectionException;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/FolderClosedException;,
            Ljavax/mail/StoreClosedException;
        }
    .end annotation

    monitor-enter p0

    .line 3728
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getProtocol()Lcom/sun/mail/iap/Protocol;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-eq v0, v1, :cond_15

    :cond_d
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    if-nez v0, :cond_1f

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder;->reallyClosed:Z

    if-nez v0, :cond_1f

    .line 3730
    :cond_15
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 3732
    :cond_1f
    new-instance v0, Ljavax/mail/StoreClosedException;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->store:Ljavax/mail/Store;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v0
    :try_end_2b
    .catchall {:try_start_1 .. :try_end_2b} :catchall_2b

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method waitIfIdle()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 3332
    :cond_0
    :goto_0
    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    if-eqz v0, :cond_a4

    const/4 v1, 0x1

    if-ne v0, v1, :cond_26

    .line 3334
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleManager:Lcom/sun/mail/imap/IdleManager;

    if-eqz v0, :cond_16

    .line 3336
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "waitIfIdle: request IdleManager to abort"

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3337
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/IdleManager;->requestAbort(Lcom/sun/mail/imap/IMAPFolder;)V

    goto :goto_35

    .line 3339
    :cond_16
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "waitIfIdle: abort IDLE"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->finest(Ljava/lang/String;)V

    .line 3340
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->protocol:Lcom/sun/mail/imap/protocol/IMAPProtocol;

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    const/4 v0, 0x2

    .line 3341
    iput v0, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    goto :goto_35

    .line 3344
    :cond_26
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    iget v2, p0, Lcom/sun/mail/imap/IMAPFolder;->idleState:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "waitIfIdle: idleState {0}"

    invoke-virtual {v0, v1, v3, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 3347
    :goto_35
    :try_start_35
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_5b

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
    :cond_5b
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
    :try_end_92
    .catch Ljava/lang/InterruptedException; {:try_start_35 .. :try_end_92} :catch_94

    goto/16 :goto_0

    :catch_94
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

    :cond_a4
    return-void
.end method
