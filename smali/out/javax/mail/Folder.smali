.class public abstract Ljavax/mail/Folder;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field public static final HOLDS_FOLDERS:I = 0x2

.field public static final HOLDS_MESSAGES:I = 0x1

.field public static final READ_ONLY:I = 0x1

.field public static final READ_WRITE:I = 0x2


# instance fields
.field private volatile connectionListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljavax/mail/event/ConnectionListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile folderListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljavax/mail/event/FolderListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile messageChangedListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljavax/mail/event/MessageChangedListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile messageCountListeners:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljavax/mail/event/MessageCountListener;",
            ">;"
        }
    .end annotation
.end field

.field protected mode:I

.field private final q:Ljavax/mail/EventQueue;

.field protected store:Ljavax/mail/Store;


# direct methods
.method protected constructor <init>(Ljavax/mail/Store;)V
    .registers 6

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 132
    iput v0, p0, Ljavax/mail/Folder;->mode:I

    const/4 v0, 0x0

    .line 1349
    iput-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    .line 1416
    iput-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    .line 1497
    iput-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    .line 1585
    iput-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    .line 145
    iput-object p1, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    .line 148
    invoke-virtual {p1}, Ljavax/mail/Store;->getSession()Ljavax/mail/Session;

    move-result-object v0

    .line 150
    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v1

    const-string v2, "mail.event.scope"

    const-string v3, "folder"

    invoke-virtual {v1, v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 152
    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v2

    const-string v3, "mail.event.executor"

    invoke-virtual {v2, v3}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/concurrent/Executor;

    const-string v3, "application"

    .line 153
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3c

    .line 154
    invoke-static {v2}, Ljavax/mail/EventQueue;->getApplicationEventQueue(Ljava/util/concurrent/Executor;)Ljavax/mail/EventQueue;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    goto :goto_61

    :cond_3c
    const-string v3, "session"

    .line 155
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4b

    .line 156
    invoke-virtual {v0}, Ljavax/mail/Session;->getEventQueue()Ljavax/mail/EventQueue;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    goto :goto_61

    :cond_4b
    const-string v0, "store"

    .line 157
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5a

    .line 158
    invoke-virtual {p1}, Ljavax/mail/Store;->getEventQueue()Ljavax/mail/EventQueue;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    goto :goto_61

    .line 160
    :cond_5a
    new-instance p1, Ljavax/mail/EventQueue;

    invoke-direct {p1, v2}, Ljavax/mail/EventQueue;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    :goto_61
    return-void
.end method

.method private queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/mail/event/MailEvent;",
            "Ljava/util/Vector<",
            "+",
            "Ljava/util/EventListener;",
            ">;)V"
        }
    .end annotation

    .line 1654
    invoke-virtual {p2}, Ljava/util/Vector;->clone()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Vector;

    .line 1655
    iget-object v0, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/EventQueue;->enqueue(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized addConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .registers 3

    monitor-enter p0

    .line 1362
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    .line 1363
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    .line 1364
    :cond_c
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 1365
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addFolderListener(Ljavax/mail/event/FolderListener;)V
    .registers 3

    monitor-enter p0

    .line 1428
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    .line 1429
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    .line 1430
    :cond_c
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 1431
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMessageChangedListener(Ljavax/mail/event/MessageChangedListener;)V
    .registers 3

    monitor-enter p0

    .line 1599
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    .line 1600
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    .line 1601
    :cond_c
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 1602
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addMessageCountListener(Ljavax/mail/event/MessageCountListener;)V
    .registers 3

    monitor-enter p0

    .line 1509
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-nez v0, :cond_c

    .line 1510
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    .line 1511
    :cond_c
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 1512
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract appendMessages([Ljavax/mail/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 669
    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->close(Z)V

    return-void
.end method

.method public abstract close(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public copyMessages([Ljavax/mail/Message;Ljavax/mail/Folder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1216
    invoke-virtual {p2}, Ljavax/mail/Folder;->exists()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1221
    invoke-virtual {p2, p1}, Ljavax/mail/Folder;->appendMessages([Ljavax/mail/Message;)V

    return-void

    .line 1217
    :cond_a
    new-instance p1, Ljavax/mail/FolderNotFoundException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1218
    invoke-virtual {p2}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " does not exist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p2}, Ljavax/mail/FolderNotFoundException;-><init>(Ljava/lang/String;Ljavax/mail/Folder;)V

    throw p1
.end method

.method public abstract create(I)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract delete(Z)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract exists()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract expunge()[Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    return-void
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1661
    :try_start_0
    iget-object v0, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    invoke-virtual {v0}, Ljavax/mail/EventQueue;->terminateQueue()V
    :try_end_5
    .catchall {:try_start_0 .. :try_end_5} :catchall_9

    .line 1663
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_9
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 1664
    throw v0
.end method

.method public declared-synchronized getDeletedMessageCount()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 853
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_25

    if-nez v0, :cond_a

    .line 854
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 857
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I

    move-result v0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_25

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_10
    if-gt v1, v0, :cond_23

    .line 860
    :try_start_12
    invoke-virtual {p0, v1}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    sget-object v4, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v3, v4}, Ljavax/mail/Message;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v3
    :try_end_1c
    .catch Ljavax/mail/MessageRemovedException; {:try_start_12 .. :try_end_1c} :catch_20
    .catchall {:try_start_12 .. :try_end_1c} :catchall_25

    if-eqz v3, :cond_20

    add-int/lit8 v2, v2, 0x1

    :catch_20
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 867
    :cond_23
    monitor-exit p0

    return v2

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getFullName()Ljava/lang/String;
.end method

.method public abstract getMessage(I)Ljavax/mail/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getMessageCount()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public declared-synchronized getMessages()[Ljavax/mail/Message;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 991
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 993
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I

    move-result v0

    .line 994
    new-array v1, v0, [Ljavax/mail/Message;

    const/4 v2, 0x1

    :goto_e
    if-gt v2, v0, :cond_1b

    add-int/lit8 v3, v2, -0x1

    .line 996
    invoke-virtual {p0, v2}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v4

    aput-object v4, v1, v3
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_25

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 997
    :cond_1b
    monitor-exit p0

    return-object v1

    .line 992
    :cond_1d
    :try_start_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_25
    .catchall {:try_start_1d .. :try_end_25} :catchall_25

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMessages(II)[Ljavax/mail/Message;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    .line 931
    :try_start_5
    new-array v0, v0, [Ljavax/mail/Message;

    move v1, p1

    :goto_8
    if-gt v1, p2, :cond_15

    sub-int v2, v1, p1

    .line 933
    invoke-virtual {p0, v1}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    aput-object v3, v0, v2
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_17

    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 934
    :cond_15
    monitor-exit p0

    return-object v0

    :catchall_17
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessages([I)[Ljavax/mail/Message;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 961
    :try_start_1
    array-length v0, p1

    .line 962
    new-array v1, v0, [Ljavax/mail/Message;

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v0, :cond_12

    .line 964
    aget v3, p1, v2

    invoke-virtual {p0, v3}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_14

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 965
    :cond_12
    monitor-exit p0

    return-object v1

    :catchall_14
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMode()I
    .registers 3

    monitor-enter p0

    .line 690
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 692
    iget v0, p0, Ljavax/mail/Folder;->mode:I
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_13

    monitor-exit p0

    return v0

    .line 691
    :cond_b
    :try_start_b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder not open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_13

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public declared-synchronized getNewMessageCount()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 761
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_25

    if-nez v0, :cond_a

    .line 762
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 765
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I

    move-result v0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_25

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_10
    if-gt v1, v0, :cond_23

    .line 768
    :try_start_12
    invoke-virtual {p0, v1}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    sget-object v4, Ljavax/mail/Flags$Flag;->RECENT:Ljavax/mail/Flags$Flag;

    invoke-virtual {v3, v4}, Ljavax/mail/Message;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v3
    :try_end_1c
    .catch Ljavax/mail/MessageRemovedException; {:try_start_12 .. :try_end_1c} :catch_20
    .catchall {:try_start_12 .. :try_end_1c} :catchall_25

    if-eqz v3, :cond_20

    add-int/lit8 v2, v2, 0x1

    :catch_20
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 775
    :cond_23
    monitor-exit p0

    return v2

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract getParent()Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getPermanentFlags()Ljavax/mail/Flags;
.end method

.method public abstract getSeparator()C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getStore()Ljavax/mail/Store;
    .registers 2

    .line 236
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    return-object v0
.end method

.method public abstract getType()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public getURLName()Ljavax/mail/URLName;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Ljavax/mail/Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/Store;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz v1, :cond_16

    .line 216
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    :cond_16
    new-instance v1, Ljavax/mail/URLName;

    invoke-virtual {v0}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v5

    .line 224
    invoke-virtual {v0}, Ljavax/mail/URLName;->getPort()I

    move-result v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 225
    invoke-virtual {v0}, Ljavax/mail/URLName;->getUsername()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public declared-synchronized getUnreadMessageCount()I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 807
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/Folder;->isOpen()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_25

    if-nez v0, :cond_a

    .line 808
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 811
    :cond_a
    :try_start_a
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessageCount()I

    move-result v0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_25

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_10
    if-gt v1, v0, :cond_23

    .line 814
    :try_start_12
    invoke-virtual {p0, v1}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v3

    sget-object v4, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v3, v4}, Ljavax/mail/Message;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v3
    :try_end_1c
    .catch Ljavax/mail/MessageRemovedException; {:try_start_12 .. :try_end_1c} :catch_20
    .catchall {:try_start_12 .. :try_end_1c} :catchall_25

    if-nez v3, :cond_20

    add-int/lit8 v2, v2, 0x1

    :catch_20
    :cond_20
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 821
    :cond_23
    monitor-exit p0

    return v2

    :catchall_25
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract hasNewMessages()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract isOpen()Z
.end method

.method public isSubscribed()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public list()[Ljavax/mail/Folder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "%"

    .line 351
    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->list(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public abstract list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public listSubscribed()[Ljavax/mail/Folder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "%"

    .line 369
    invoke-virtual {p0, v0}, Ljavax/mail/Folder;->listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method public listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 333
    invoke-virtual {p0, p1}, Ljavax/mail/Folder;->list(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object p1

    return-object p1
.end method

.method protected notifyConnectionListeners(I)V
    .registers 4

    .line 1396
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    if-eqz v0, :cond_e

    .line 1397
    new-instance v0, Ljavax/mail/event/ConnectionEvent;

    invoke-direct {v0, p0, p1}, Ljavax/mail/event/ConnectionEvent;-><init>(Ljava/lang/Object;I)V

    .line 1398
    iget-object v1, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    :cond_e
    const/4 v0, 0x3

    if-ne p1, v0, :cond_16

    .line 1412
    iget-object p1, p0, Ljavax/mail/Folder;->q:Ljavax/mail/EventQueue;

    invoke-virtual {p1}, Ljavax/mail/EventQueue;->terminateQueue()V

    :cond_16
    return-void
.end method

.method protected notifyFolderListeners(I)V
    .registers 4

    .line 1463
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-eqz v0, :cond_e

    .line 1464
    new-instance v0, Ljavax/mail/event/FolderEvent;

    invoke-direct {v0, p0, p0, p1}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;I)V

    .line 1465
    iget-object v1, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1467
    :cond_e
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    invoke-virtual {v0, p1, p0}, Ljavax/mail/Store;->notifyFolderListeners(ILjavax/mail/Folder;)V

    return-void
.end method

.method protected notifyFolderRenamedListeners(Ljavax/mail/Folder;)V
    .registers 4

    .line 1488
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-eqz v0, :cond_f

    .line 1489
    new-instance v0, Ljavax/mail/event/FolderEvent;

    const/4 v1, 0x3

    invoke-direct {v0, p0, p0, p1, v1}, Ljavax/mail/event/FolderEvent;-><init>(Ljava/lang/Object;Ljavax/mail/Folder;Ljavax/mail/Folder;I)V

    .line 1491
    iget-object v1, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, v1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    .line 1493
    :cond_f
    iget-object v0, p0, Ljavax/mail/Folder;->store:Ljavax/mail/Store;

    invoke-virtual {v0, p0, p1}, Ljavax/mail/Store;->notifyFolderRenamedListeners(Ljavax/mail/Folder;Ljavax/mail/Folder;)V

    return-void
.end method

.method protected notifyMessageAddedListeners([Ljavax/mail/Message;)V
    .registers 5

    .line 1544
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-nez v0, :cond_5

    return-void

    .line 1547
    :cond_5
    new-instance v0, Ljavax/mail/event/MessageCountEvent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2, p1}, Ljavax/mail/event/MessageCountEvent;-><init>(Ljavax/mail/Folder;IZ[Ljavax/mail/Message;)V

    .line 1553
    iget-object p1, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, p1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    return-void
.end method

.method protected notifyMessageChangedListeners(ILjavax/mail/Message;)V
    .registers 4

    .line 1633
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    if-nez v0, :cond_5

    return-void

    .line 1636
    :cond_5
    new-instance v0, Ljavax/mail/event/MessageChangedEvent;

    invoke-direct {v0, p0, p1, p2}, Ljavax/mail/event/MessageChangedEvent;-><init>(Ljava/lang/Object;ILjavax/mail/Message;)V

    .line 1637
    iget-object p1, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, p1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    return-void
.end method

.method protected notifyMessageRemovedListeners(Z[Ljavax/mail/Message;)V
    .registers 5

    .line 1573
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-nez v0, :cond_5

    return-void

    .line 1576
    :cond_5
    new-instance v0, Ljavax/mail/event/MessageCountEvent;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1, p1, p2}, Ljavax/mail/event/MessageCountEvent;-><init>(Ljavax/mail/Folder;IZ[Ljavax/mail/Message;)V

    .line 1581
    iget-object p1, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-direct {p0, v0, p1}, Ljavax/mail/Folder;->queueEvent(Ljavax/mail/event/MailEvent;Ljava/util/Vector;)V

    return-void
.end method

.method public abstract open(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public declared-synchronized removeConnectionListener(Ljavax/mail/event/ConnectionListener;)V
    .registers 3

    monitor-enter p0

    .line 1378
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    .line 1379
    iget-object v0, p0, Ljavax/mail/Folder;->connectionListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1380
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeFolderListener(Ljavax/mail/event/FolderListener;)V
    .registers 3

    monitor-enter p0

    .line 1443
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    .line 1444
    iget-object v0, p0, Ljavax/mail/Folder;->folderListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1445
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMessageChangedListener(Ljavax/mail/event/MessageChangedListener;)V
    .registers 3

    monitor-enter p0

    .line 1615
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    .line 1616
    iget-object v0, p0, Ljavax/mail/Folder;->messageChangedListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1617
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeMessageCountListener(Ljavax/mail/event/MessageCountListener;)V
    .registers 3

    monitor-enter p0

    .line 1525
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    if-eqz v0, :cond_a

    .line 1526
    iget-object v0, p0, Ljavax/mail/Folder;->messageCountListeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 1527
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public abstract renameTo(Ljavax/mail/Folder;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation
.end method

.method public search(Ljavax/mail/search/SearchTerm;)[Ljavax/mail/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1280
    invoke-virtual {p0}, Ljavax/mail/Folder;->getMessages()[Ljavax/mail/Message;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Ljavax/mail/Folder;->search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;

    move-result-object p1

    return-object p1
.end method

.method public search(Ljavax/mail/search/SearchTerm;[Ljavax/mail/Message;)[Ljavax/mail/Message;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1317
    array-length v1, p2

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v1, :cond_17

    aget-object v3, p2, v2

    .line 1319
    :try_start_b
    invoke-virtual {v3, p1}, Ljavax/mail/Message;->match(Ljavax/mail/search/SearchTerm;)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1320
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljavax/mail/MessageRemovedException; {:try_start_b .. :try_end_14} :catch_14

    :catch_14
    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 1324
    :cond_17
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljavax/mail/Message;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljavax/mail/Message;

    return-object p1
.end method

.method public declared-synchronized setFlags(IILjavax/mail/Flags;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    :goto_1
    if-gt p1, p2, :cond_11

    .line 1136
    :try_start_3
    invoke-virtual {p0, p1}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v0

    .line 1137
    invoke-virtual {v0, p3, p4}, Ljavax/mail/Message;->setFlags(Ljavax/mail/Flags;Z)V
    :try_end_a
    .catch Ljavax/mail/MessageRemovedException; {:try_start_3 .. :try_end_a} :catch_e
    .catchall {:try_start_3 .. :try_end_a} :catchall_b

    goto :goto_e

    :catchall_b
    move-exception p1

    monitor-exit p0

    throw p1

    :catch_e
    :goto_e
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1142
    :cond_11
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setFlags([ILjavax/mail/Flags;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1176
    :goto_2
    :try_start_2
    array-length v1, p1
    :try_end_3
    .catchall {:try_start_2 .. :try_end_3} :catchall_13

    if-ge v0, v1, :cond_11

    .line 1178
    :try_start_5
    aget v1, p1, v0

    invoke-virtual {p0, v1}, Ljavax/mail/Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v1

    .line 1179
    invoke-virtual {v1, p2, p3}, Ljavax/mail/Message;->setFlags(Ljavax/mail/Flags;Z)V
    :try_end_e
    .catch Ljavax/mail/MessageRemovedException; {:try_start_5 .. :try_end_e} :catch_e
    .catchall {:try_start_5 .. :try_end_e} :catchall_13

    :catch_e
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1184
    :cond_11
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setFlags([Ljavax/mail/Message;Ljavax/mail/Flags;Z)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1091
    :goto_2
    :try_start_2
    array-length v1, p1
    :try_end_3
    .catchall {:try_start_2 .. :try_end_3} :catchall_f

    if-ge v0, v1, :cond_d

    .line 1093
    :try_start_5
    aget-object v1, p1, v0

    invoke-virtual {v1, p2, p3}, Ljavax/mail/Message;->setFlags(Ljavax/mail/Flags;Z)V
    :try_end_a
    .catch Ljavax/mail/MessageRemovedException; {:try_start_5 .. :try_end_a} :catch_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_f

    :catch_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1098
    :cond_d
    monitor-exit p0

    return-void

    :catchall_f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setSubscribed(Z)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 455
    new-instance p1, Ljavax/mail/MethodNotSupportedException;

    invoke-direct {p1}, Ljavax/mail/MethodNotSupportedException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .line 1675
    invoke-virtual {p0}, Ljavax/mail/Folder;->getFullName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    return-object v0

    .line 1679
    :cond_7
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
