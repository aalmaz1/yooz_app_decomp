.class public Lcom/sun/mail/imap/DefaultFolder;
.super Lcom/sun/mail/imap/IMAPFolder;
.source "DefaultFolder.java"


# direct methods
.method protected constructor <init>(Lcom/sun/mail/imap/IMAPStore;)V
    .registers 5

    const v0, 0xffff

    const/4 v1, 0x0

    const-string v2, ""

    .line 60
    invoke-direct {p0, v2, v0, p1, v1}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Ljava/lang/Boolean;)V

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Lcom/sun/mail/imap/DefaultFolder;->exists:Z

    const/4 p1, 0x2

    .line 62
    iput p1, p0, Lcom/sun/mail/imap/DefaultFolder;->type:I

    return-void
.end method


# virtual methods
.method public appendMessages([Ljavax/mail/Message;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 143
    new-instance p1, Ljavax/mail/MethodNotSupportedException;

    const-string v0, "Cannot append to Default Folder"

    invoke-direct {p1, v0}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public delete(Z)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 131
    new-instance p1, Ljavax/mail/MethodNotSupportedException;

    const-string v0, "Cannot delete Default Folder"

    invoke-direct {p1, v0}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public expunge()[Ljavax/mail/Message;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 149
    new-instance v0, Ljavax/mail/MethodNotSupportedException;

    const-string v1, "Cannot expunge Default Folder"

    invoke-direct {v0, v1}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/sun/mail/imap/DefaultFolder;->store:Ljavax/mail/Store;

    check-cast v0, Lcom/sun/mail/imap/IMAPStore;

    const v1, 0xffff

    invoke-virtual {v0, p1, v1}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getName()Ljava/lang/String;
    .registers 2

    monitor-enter p0

    .line 67
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/imap/DefaultFolder;->fullName:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getParent()Ljavax/mail/Folder;
    .registers 2

    const/4 v0, 0x0

    return-object v0
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

.method public declared-synchronized list(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 80
    :try_start_1
    new-instance v0, Lcom/sun/mail/imap/DefaultFolder$1;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/DefaultFolder$1;-><init>(Lcom/sun/mail/imap/DefaultFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/DefaultFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sun/mail/imap/protocol/ListInfo;

    check-cast p1, [Lcom/sun/mail/imap/protocol/ListInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_15

    new-array p1, v0, [Ljavax/mail/Folder;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_2b

    .line 88
    monitor-exit p0

    return-object p1

    .line 90
    :cond_15
    :try_start_15
    array-length v1, p1

    new-array v2, v1, [Lcom/sun/mail/imap/IMAPFolder;

    :goto_18
    if-ge v0, v1, :cond_29

    .line 92
    iget-object v3, p0, Lcom/sun/mail/imap/DefaultFolder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/imap/IMAPStore;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Lcom/sun/mail/imap/protocol/ListInfo;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_2b

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 93
    :cond_29
    monitor-exit p0

    return-object v2

    :catchall_2b
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized listSubscribed(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 101
    :try_start_1
    new-instance v0, Lcom/sun/mail/imap/DefaultFolder$2;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/imap/DefaultFolder$2;-><init>(Lcom/sun/mail/imap/DefaultFolder;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/mail/imap/DefaultFolder;->doCommand(Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/sun/mail/imap/protocol/ListInfo;

    check-cast p1, [Lcom/sun/mail/imap/protocol/ListInfo;

    const/4 v0, 0x0

    if-nez p1, :cond_15

    new-array p1, v0, [Ljavax/mail/Folder;
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_2b

    .line 109
    monitor-exit p0

    return-object p1

    .line 111
    :cond_15
    :try_start_15
    array-length v1, p1

    new-array v2, v1, [Lcom/sun/mail/imap/IMAPFolder;

    :goto_18
    if-ge v0, v1, :cond_29

    .line 113
    iget-object v3, p0, Lcom/sun/mail/imap/DefaultFolder;->store:Ljavax/mail/Store;

    check-cast v3, Lcom/sun/mail/imap/IMAPStore;

    aget-object v4, p1, v0

    invoke-virtual {v3, v4}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Lcom/sun/mail/imap/protocol/ListInfo;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v3

    aput-object v3, v2, v0
    :try_end_26
    .catchall {:try_start_15 .. :try_end_26} :catchall_2b

    add-int/lit8 v0, v0, 0x1

    goto :goto_18

    .line 114
    :cond_29
    monitor-exit p0

    return-object v2

    :catchall_2b
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

    .line 137
    new-instance p1, Ljavax/mail/MethodNotSupportedException;

    const-string v0, "Cannot rename Default Folder"

    invoke-direct {p1, v0}, Ljavax/mail/MethodNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
