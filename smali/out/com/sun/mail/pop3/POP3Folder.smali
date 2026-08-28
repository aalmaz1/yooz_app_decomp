.class public Lcom/sun/mail/pop3/POP3Folder;
.super Ljavax/mail/Folder;
.source "POP3Folder.java"


# instance fields
.field private doneUidl:Z

.field private exists:Z

.field private volatile fileCache:Lcom/sun/mail/pop3/TempFile;

.field private forceClose:Z

.field logger:Lcom/sun/mail/util/MailLogger;

.field private message_cache:[Lcom/sun/mail/pop3/POP3Message;

.field private name:Ljava/lang/String;

.field private volatile opened:Z

.field private volatile port:Lcom/sun/mail/pop3/Protocol;

.field private size:I

.field private store:Lcom/sun/mail/pop3/POP3Store;

.field private total:I


# direct methods
.method protected constructor <init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V
    .registers 6

    .line 83
    invoke-direct {p0, p1}, Ljavax/mail/Folder;-><init>(Ljavax/mail/Store;)V

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    .line 74
    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    .line 76
    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    const/4 v0, 0x0

    .line 77
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    .line 84
    iput-object p2, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    const-string v0, "INBOX"

    .line 86
    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1c

    const/4 p2, 0x1

    .line 87
    iput-boolean p2, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    .line 88
    :cond_1c
    new-instance p2, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 89
    invoke-virtual {p1}, Lcom/sun/mail/pop3/POP3Store;->getSession()Ljavax/mail/Session;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/mail/Session;->getDebug()Z

    move-result v1

    invoke-virtual {p1}, Lcom/sun/mail/pop3/POP3Store;->getSession()Ljavax/mail/Session;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object p1

    const-string v2, "DEBUG POP3"

    invoke-direct {p2, v0, v2, v1, p1}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    iput-object p2, p0, Lcom/sun/mail/pop3/POP3Folder;->logger:Lcom/sun/mail/util/MailLogger;

    return-void
.end method

.method private checkClosed()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 591
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-nez v0, :cond_5

    return-void

    .line 592
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is Open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkOpen()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 585
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-eqz v0, :cond_5

    return-void

    .line 586
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is not Open"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkReadable()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 597
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_e

    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_f

    :cond_e
    return-void

    .line 598
    :cond_f
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Folder is not Readable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public appendMessages([Ljavax/mail/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 396
    new-instance p1, Ljavax/mail/MethodNotSupportedException;

    const-string v0, "Append not supported"

    invoke-direct {p1, v0}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized close(Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 256
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_b6

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 268
    :try_start_7
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v3, v3, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    if-eqz v3, :cond_16

    iget-boolean v3, p0, Lcom/sun/mail/pop3/POP3Folder;->forceClose:Z

    if-nez v3, :cond_16

    .line 269
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/Protocol;->rset()Z

    :cond_16
    if-eqz p1, :cond_47

    .line 271
    iget p1, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    const/4 v3, 0x2

    if-ne p1, v3, :cond_47

    iget-boolean p1, p0, Lcom/sun/mail/pop3/POP3Folder;->forceClose:Z

    if-nez p1, :cond_47

    move p1, v1

    .line 273
    :goto_22
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:[Lcom/sun/mail/pop3/POP3Message;

    array-length v4, v3

    if-ge p1, v4, :cond_47

    .line 274
    aget-object v3, v3, p1

    if-eqz v3, :cond_44

    .line 275
    sget-object v4, Ljavax/mail/Flags$Flag;->DELETED:Ljavax/mail/Flags$Flag;

    invoke-virtual {v3, v4}, Lcom/sun/mail/pop3/POP3Message;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v3
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_31} :catch_9c
    .catchall {:try_start_7 .. :try_end_31} :catchall_81

    if-eqz v3, :cond_44

    .line 277
    :try_start_33
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/mail/pop3/Protocol;->dele(I)Z
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_3a} :catch_3b
    .catchall {:try_start_33 .. :try_end_3a} :catchall_81

    goto :goto_44

    :catch_3b
    move-exception p1

    .line 279
    :try_start_3c
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "Exception deleting messages during close"

    invoke-direct {v3, v4, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3

    :cond_44
    :goto_44
    add-int/lit8 p1, p1, 0x1

    goto :goto_22

    :cond_47
    move p1, v1

    .line 290
    :goto_48
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:[Lcom/sun/mail/pop3/POP3Message;

    array-length v4, v3

    if-ge p1, v4, :cond_58

    .line 291
    aget-object v3, v3, p1

    if-eqz v3, :cond_55

    const/4 v4, 0x1

    .line 292
    invoke-virtual {v3, v4}, Lcom/sun/mail/pop3/POP3Message;->invalidate(Z)V

    :cond_55
    add-int/lit8 p1, p1, 0x1

    goto :goto_48

    .line 295
    :cond_58
    iget-boolean p1, p0, Lcom/sun/mail/pop3/POP3Folder;->forceClose:Z

    if-eqz p1, :cond_62

    .line 296
    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {p1}, Lcom/sun/mail/pop3/Protocol;->close()V

    goto :goto_67

    .line 298
    :cond_62
    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {p1}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_67} :catch_9c
    .catchall {:try_start_3c .. :try_end_67} :catchall_81

    .line 302
    :goto_67
    :try_start_67
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 303
    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {p1, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 304
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:[Lcom/sun/mail/pop3/POP3Message;

    .line 305
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    .line 306
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V

    .line 307
    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    if-eqz p1, :cond_b4

    .line 308
    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    invoke-virtual {p1}, Lcom/sun/mail/pop3/TempFile;->close()V

    .line 309
    :goto_7e
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    goto :goto_b4

    :catchall_81
    move-exception p1

    .line 302
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 303
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v3, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 304
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:[Lcom/sun/mail/pop3/POP3Message;

    .line 305
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    .line 306
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V

    .line 307
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    if-eqz v0, :cond_9b

    .line 308
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/TempFile;->close()V

    .line 309
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    .line 311
    :cond_9b
    throw p1

    .line 302
    :catch_9c
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 303
    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {p1, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 304
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:[Lcom/sun/mail/pop3/POP3Message;

    .line 305
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    .line 306
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V

    .line 307
    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    if-eqz p1, :cond_b4

    .line 308
    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    invoke-virtual {p1}, Lcom/sun/mail/pop3/TempFile;->close()V
    :try_end_b3
    .catchall {:try_start_67 .. :try_end_b3} :catchall_b6

    goto :goto_7e

    .line 312
    :cond_b4
    :goto_b4
    monitor-exit p0

    return-void

    :catchall_b6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public create(I)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method protected createMessage(Ljavax/mail/Folder;I)Lcom/sun/mail/pop3/POP3Message;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 374
    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    iget-object p1, p1, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_1a

    const/4 v0, 0x2

    :try_start_7
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    .line 377
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 378
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/mail/pop3/POP3Message;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_19} :catch_1a

    goto :goto_1b

    :catch_1a
    :cond_1a
    const/4 p1, 0x0

    :goto_1b
    if-nez p1, :cond_22

    .line 384
    new-instance p1, Lcom/sun/mail/pop3/POP3Message;

    invoke-direct {p1, p0, p2}, Lcom/sun/mail/pop3/POP3Message;-><init>(Ljavax/mail/Folder;I)V

    :cond_22
    return-object p1
.end method

.method public delete(Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 191
    new-instance p1, Ljavax/mail/MethodNotSupportedException;

    const-string v0, "delete"

    invoke-direct {p1, v0}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public exists()Z
    .registers 2

    .line 115
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z

    return v0
.end method

.method public expunge()[Ljavax/mail/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 410
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Expunge not supported"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized fetch([Ljavax/mail/Message;Ljavax/mail/FetchProfile;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 425
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkReadable()V

    .line 426
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    const/4 v1, 0x0

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v0, v0, Lcom/sun/mail/pop3/POP3Store;->supportsUidl:Z

    if-eqz v0, :cond_58

    sget-object v0, Ljavax/mail/UIDFolder$FetchProfileItem;->UID:Ljavax/mail/UIDFolder$FetchProfileItem;

    .line 427
    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 436
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:[Lcom/sun/mail/pop3/POP3Message;

    array-length v0, v0

    new-array v2, v0, [Ljava/lang/String;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_74

    .line 438
    :try_start_1c
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v3, v2}, Lcom/sun/mail/pop3/Protocol;->uidl([Ljava/lang/String;)Z

    move-result v3
    :try_end_22
    .catch Ljava/io/EOFException; {:try_start_1c .. :try_end_22} :catch_4a
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_22} :catch_41
    .catchall {:try_start_1c .. :try_end_22} :catchall_74

    if-nez v3, :cond_26

    .line 439
    monitor-exit p0

    return-void

    :cond_26
    move v3, v1

    :goto_27
    if-ge v3, v0, :cond_3d

    .line 447
    :try_start_29
    aget-object v4, v2, v3

    if-nez v4, :cond_2e

    goto :goto_3a

    :cond_2e
    add-int/lit8 v4, v3, 0x1

    .line 449
    invoke-virtual {p0, v4}, Lcom/sun/mail/pop3/POP3Folder;->getMessage(I)Ljavax/mail/Message;

    move-result-object v4

    check-cast v4, Lcom/sun/mail/pop3/POP3Message;

    .line 450
    aget-object v5, v2, v3

    iput-object v5, v4, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    :goto_3a
    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_3d
    const/4 v0, 0x1

    .line 452
    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    goto :goto_58

    :catch_41
    move-exception p1

    .line 444
    new-instance p2, Ljavax/mail/MessagingException;

    const-string v0, "error getting UIDL"

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_4a
    move-exception p1

    .line 441
    invoke-virtual {p0, v1}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 442
    new-instance p2, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p2

    .line 454
    :cond_58
    :goto_58
    sget-object v0, Ljavax/mail/FetchProfile$Item;->ENVELOPE:Ljavax/mail/FetchProfile$Item;

    invoke-virtual {p2, v0}, Ljavax/mail/FetchProfile;->contains(Ljavax/mail/FetchProfile$Item;)Z

    move-result p2

    if-eqz p2, :cond_72

    .line 455
    :goto_60
    array-length p2, p1
    :try_end_61
    .catchall {:try_start_29 .. :try_end_61} :catchall_74

    if-ge v1, p2, :cond_72

    .line 457
    :try_start_63
    aget-object p2, p1, v1

    check-cast p2, Lcom/sun/mail/pop3/POP3Message;

    const-string v0, ""

    .line 459
    invoke-virtual {p2, v0}, Lcom/sun/mail/pop3/POP3Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    .line 461
    invoke-virtual {p2}, Lcom/sun/mail/pop3/POP3Message;->getSize()I
    :try_end_6f
    .catch Ljavax/mail/MessageRemovedException; {:try_start_63 .. :try_end_6f} :catch_6f
    .catchall {:try_start_63 .. :try_end_6f} :catchall_74

    :catch_6f
    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 467
    :cond_72
    monitor-exit p0

    return-void

    :catchall_74
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v0, v0, Lcom/sun/mail/pop3/POP3Store;->finalizeCleanClose:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->forceClose:Z

    const/4 v0, 0x0

    .line 575
    :try_start_9
    iget-boolean v1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z

    if-eqz v1, :cond_10

    .line 576
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_16

    .line 578
    :cond_10
    invoke-super {p0}, Ljavax/mail/Folder;->finalize()V

    .line 579
    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->forceClose:Z

    return-void

    :catchall_16
    move-exception v1

    .line 578
    invoke-super {p0}, Ljavax/mail/Folder;->finalize()V

    .line 579
    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->forceClose:Z

    .line 580
    throw v1
.end method

.method getFileCache()Lcom/sun/mail/pop3/TempFile;
    .registers 2

    .line 633
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 179
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "not a directory"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getFullName()Ljava/lang/String;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getMessage(I)Ljavax/mail/Message;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 359
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 364
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:[Lcom/sun/mail/pop3/POP3Message;

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    if-nez v0, :cond_14

    .line 365
    invoke-virtual {p0, p0, p1}, Lcom/sun/mail/pop3/POP3Folder;->createMessage(Ljavax/mail/Folder;I)Lcom/sun/mail/pop3/POP3Message;

    move-result-object v0

    .line 366
    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:[Lcom/sun/mail/pop3/POP3Message;

    aput-object v0, p1, v1
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 368
    :cond_14
    monitor-exit p0

    return-object v0

    :catchall_16
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getMessageCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 350
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_f

    if-nez v0, :cond_8

    .line 351
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 352
    :cond_8
    :try_start_8
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkReadable()V

    .line 353
    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_f

    monitor-exit p0

    return v0

    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .line 94
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getParent()Ljavax/mail/Folder;
    .registers 3

    .line 104
    new-instance v0, Lcom/sun/mail/pop3/DefaultFolder;

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-direct {v0, v1}, Lcom/sun/mail/pop3/DefaultFolder;-><init>(Lcom/sun/mail/pop3/POP3Store;)V

    return-object v0
.end method

.method public getPermanentFlags()Ljavax/mail/Flags;
    .registers 2

    .line 340
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    return-object v0
.end method

.method getProtocol()Lcom/sun/mail/pop3/Protocol;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 615
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 616
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    return-object v0
.end method

.method public getSeparator()C
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized getSize()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 505
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 506
    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->size:I
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getSizes()[I
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 520
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 521
    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    new-array v0, v0, [I
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_62

    const/4 v1, 0x0

    .line 525
    :try_start_9
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v2}, Lcom/sun/mail/pop3/Protocol;->list()Ljava/io/InputStream;

    move-result-object v2
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_f} :catch_57
    .catchall {:try_start_9 .. :try_end_f} :catchall_4a

    .line 526
    :try_start_f
    new-instance v3, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v3, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_14} :catch_58
    .catchall {:try_start_f .. :try_end_14} :catchall_48

    .line 528
    :catch_14
    :cond_14
    :goto_14
    :try_start_14
    invoke-virtual {v3}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v1
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_18} :catch_46
    .catchall {:try_start_14 .. :try_end_18} :catchall_43

    if-eqz v1, :cond_3a

    .line 530
    :try_start_1a
    new-instance v4, Ljava/util/StringTokenizer;

    invoke-direct {v4, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 531
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 532
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    if-lez v1, :cond_14

    .line 533
    iget v5, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    if-gt v1, v5, :cond_14

    add-int/lit8 v1, v1, -0x1

    .line 534
    aput v4, v0, v1
    :try_end_39
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_39} :catch_14
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_39} :catch_46
    .catchall {:try_start_1a .. :try_end_39} :catchall_43

    goto :goto_14

    .line 543
    :cond_3a
    :try_start_3a
    invoke-virtual {v3}, Lcom/sun/mail/util/LineInputStream;->close()V
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_3d} :catch_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_62

    :catch_3d
    if-eqz v2, :cond_60

    .line 547
    :goto_3f
    :try_start_3f
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_3f .. :try_end_42} :catch_60
    .catchall {:try_start_3f .. :try_end_42} :catchall_62

    goto :goto_60

    :catchall_43
    move-exception v0

    move-object v1, v3

    goto :goto_4c

    :catch_46
    move-object v1, v3

    goto :goto_58

    :catchall_48
    move-exception v0

    goto :goto_4c

    :catchall_4a
    move-exception v0

    move-object v2, v1

    :goto_4c
    if-eqz v1, :cond_51

    .line 543
    :try_start_4e
    invoke-virtual {v1}, Lcom/sun/mail/util/LineInputStream;->close()V
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_51
    .catchall {:try_start_4e .. :try_end_51} :catchall_62

    :catch_51
    :cond_51
    if-eqz v2, :cond_56

    .line 547
    :try_start_53
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_56
    .catchall {:try_start_53 .. :try_end_56} :catchall_62

    .line 549
    :catch_56
    :cond_56
    :try_start_56
    throw v0
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_62

    :catch_57
    move-object v2, v1

    :catch_58
    :goto_58
    if-eqz v1, :cond_5d

    .line 543
    :try_start_5a
    invoke-virtual {v1}, Lcom/sun/mail/util/LineInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_62

    :catch_5d
    :cond_5d
    if-eqz v2, :cond_60

    goto :goto_3f

    .line 550
    :catch_60
    :cond_60
    :goto_60
    monitor-exit p0

    return-object v0

    :catchall_62
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getType()I
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized getUID(Ljavax/mail/Message;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 478
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 479
    instance-of v0, p1, Lcom/sun/mail/pop3/POP3Message;

    if-eqz v0, :cond_41

    .line 481
    check-cast p1, Lcom/sun/mail/pop3/POP3Message;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_49

    .line 483
    :try_start_a
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v0, v0, Lcom/sun/mail/pop3/POP3Store;->supportsUidl:Z
    :try_end_e
    .catch Ljava/io/EOFException; {:try_start_a .. :try_end_e} :catch_32
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_e} :catch_29
    .catchall {:try_start_a .. :try_end_e} :catchall_49

    if-nez v0, :cond_13

    .line 484
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    .line 485
    :cond_13
    :try_start_13
    iget-object v0, p1, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    const-string v1, "UNKNOWN"

    if-ne v0, v1, :cond_25

    .line 486
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {p1}, Lcom/sun/mail/pop3/POP3Message;->getMessageNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/pop3/Protocol;->uidl(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    .line 487
    :cond_25
    iget-object p1, p1, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;
    :try_end_27
    .catch Ljava/io/EOFException; {:try_start_13 .. :try_end_27} :catch_32
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_27} :catch_29
    .catchall {:try_start_13 .. :try_end_27} :catchall_49

    monitor-exit p0

    return-object p1

    :catch_29
    move-exception p1

    .line 492
    :try_start_2a
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "error getting UIDL"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_32
    move-exception p1

    const/4 v0, 0x0

    .line 489
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 490
    new-instance v0, Ljavax/mail/FolderClosedException;

    invoke-virtual {p1}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0

    .line 480
    :cond_41
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "message is not a POP3Message"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_49
    .catchall {:try_start_2a .. :try_end_49} :catchall_49

    :catchall_49
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public hasNewMessages()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public declared-synchronized isOpen()Z
    .registers 4

    monitor-enter p0

    .line 316
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 317
    monitor-exit p0

    return v1

    .line 319
    :cond_8
    :try_start_8
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->noop()Z

    move-result v0
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_e} :catch_1b
    .catchall {:try_start_8 .. :try_end_e} :catchall_20

    if-eqz v0, :cond_13

    .line 329
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 320
    :cond_13
    :try_start_13
    new-instance v0, Ljava/io/IOException;

    const-string v2, "NOOP failed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_1b} :catch_1b
    .catchall {:try_start_13 .. :try_end_1b} :catchall_20

    .line 323
    :catch_1b
    :try_start_1b
    invoke-virtual {p0, v1}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V
    :try_end_1e
    .catch Ljavax/mail/MessagingException; {:try_start_1b .. :try_end_1e} :catch_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_20

    .line 327
    :catch_1e
    monitor-exit p0

    return v1

    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 126
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "not a directory"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized listCommand()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 564
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkOpen()V

    .line 565
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->list()Ljava/io/InputStream;

    move-result-object v0
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    monitor-exit p0

    return-object v0

    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected notifyMessageChangedListeners(ILjavax/mail/Message;)V
    .registers 3

    .line 626
    invoke-super {p0, p1, p2}, Ljavax/mail/Folder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V

    return-void
.end method

.method public declared-synchronized open(I)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 215
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Folder;->checkClosed()V

    .line 216
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->exists:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_7f

    if-eqz v0, :cond_77

    .line 220
    :try_start_8
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v0, p0}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 221
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->stat()Lcom/sun/mail/pop3/Status;

    move-result-object v0

    .line 222
    iget v1, v0, Lcom/sun/mail/pop3/Status;->total:I

    iput v1, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    .line 223
    iget v0, v0, Lcom/sun/mail/pop3/Status;->size:I

    iput v0, p0, Lcom/sun/mail/pop3/POP3Folder;->size:I

    .line 224
    iput p1, p0, Lcom/sun/mail/pop3/POP3Folder;->mode:I

    .line 225
    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    iget-boolean p1, p1, Lcom/sun/mail/pop3/POP3Store;->useFileCache:Z
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_24} :catch_4e
    .catchall {:try_start_8 .. :try_end_24} :catchall_7f

    if-eqz p1, :cond_3d

    .line 227
    :try_start_26
    new-instance p1, Lcom/sun/mail/pop3/TempFile;

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    iget-object v0, v0, Lcom/sun/mail/pop3/POP3Store;->fileCacheDir:Ljava/io/File;

    invoke-direct {p1, v0}, Lcom/sun/mail/pop3/TempFile;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Folder;->fileCache:Lcom/sun/mail/pop3/TempFile;
    :try_end_31
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_31} :catch_32
    .catchall {:try_start_26 .. :try_end_31} :catchall_7f

    goto :goto_3d

    :catch_32
    move-exception p1

    .line 229
    :try_start_33
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v2, "failed to create file cache"

    invoke-virtual {v0, v1, v2, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    throw p1

    :cond_3d
    :goto_3d
    const/4 p1, 0x1

    .line 233
    iput-boolean p1, p0, Lcom/sun/mail/pop3/POP3Folder;->opened:Z
    :try_end_40
    .catch Ljava/io/IOException; {:try_start_33 .. :try_end_40} :catch_4e
    .catchall {:try_start_33 .. :try_end_40} :catchall_7f

    .line 248
    :try_start_40
    iget v0, p0, Lcom/sun/mail/pop3/POP3Folder;->total:I

    new-array v0, v0, [Lcom/sun/mail/pop3/POP3Message;

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->message_cache:[Lcom/sun/mail/pop3/POP3Message;

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Folder;->doneUidl:Z

    .line 251
    invoke-virtual {p0, p1}, Lcom/sun/mail/pop3/POP3Folder;->notifyConnectionListeners(I)V
    :try_end_4c
    .catchall {:try_start_40 .. :try_end_4c} :catchall_7f

    .line 252
    monitor-exit p0

    return-void

    :catch_4e
    move-exception p1

    const/4 v0, 0x0

    .line 236
    :try_start_50
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v1, :cond_59

    .line 237
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    invoke-virtual {v1}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_59} :catch_6a
    .catchall {:try_start_50 .. :try_end_59} :catchall_61

    .line 241
    :cond_59
    :try_start_59
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 242
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    :goto_5d
    invoke-virtual {v0, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    goto :goto_6f

    :catchall_61
    move-exception p1

    .line 241
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 242
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    invoke-virtual {v0, p0}, Lcom/sun/mail/pop3/POP3Store;->closePort(Lcom/sun/mail/pop3/POP3Folder;)V

    .line 243
    throw p1

    .line 241
    :catch_6a
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->port:Lcom/sun/mail/pop3/Protocol;

    .line 242
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Folder;->store:Lcom/sun/mail/pop3/POP3Store;

    goto :goto_5d

    .line 244
    :goto_6f
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Open failed"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    .line 217
    :cond_77
    new-instance p1, Ljavax/mail/FolderNotFoundException;

    const-string v0, "folder is not INBOX"

    invoke-direct {p1, p0, v0}, Ljavax/mail/FolderNotFoundException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw p1
    :try_end_7f
    .catchall {:try_start_59 .. :try_end_7f} :catchall_7f

    :catchall_7f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public renameTo(Ljavax/mail/Folder;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 202
    new-instance p1, Ljavax/mail/MethodNotSupportedException;

    const-string v0, "renameTo"

    invoke-direct {p1, v0}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
