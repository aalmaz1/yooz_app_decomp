.class public Lcom/sun/mail/pop3/POP3Message;
.super Ljavax/mail/internet/MimeMessage;
.source "POP3Message.java"

# interfaces
.implements Lcom/sun/mail/util/ReadableMime;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field static final UNKNOWN:Ljava/lang/String; = "UNKNOWN"


# instance fields
.field private folder:Lcom/sun/mail/pop3/POP3Folder;

.field private hdrSize:I

.field private msgSize:I

.field private rawData:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation
.end field

.field uid:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Folder;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    const/4 p2, -0x1

    .line 70
    iput p2, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    .line 71
    iput p2, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    const-string p2, "UNKNOWN"

    .line 72
    iput-object p2, p0, Lcom/sun/mail/pop3/POP3Message;->uid:Ljava/lang/String;

    .line 75
    new-instance p2, Ljava/lang/ref/SoftReference;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/sun/mail/pop3/POP3Message;->rawData:Ljava/lang/ref/SoftReference;

    .line 82
    check-cast p1, Lcom/sun/mail/pop3/POP3Folder;

    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    return-void
.end method

.method private getRawStream(Z)Ljava/io/InputStream;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "can\'t retrieve message #"

    const-string v1, "caching message #"

    const/4 v2, 0x0

    .line 161
    :try_start_5
    monitor-enter p0
    :try_end_6
    .catch Ljava/io/EOFException; {:try_start_5 .. :try_end_6} :catch_122
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_6} :catch_119

    .line 162
    :try_start_6
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->rawData:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/InputStream;

    if-nez v3, :cond_104

    .line 164
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v3}, Lcom/sun/mail/pop3/POP3Folder;->getFileCache()Lcom/sun/mail/pop3/TempFile;

    move-result-object v3

    if-eqz v3, :cond_61

    .line 166
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    iget-object v4, v4, Lcom/sun/mail/pop3/POP3Folder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_40

    .line 167
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    iget-object v4, v4, Lcom/sun/mail/pop3/POP3Folder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " in temp file"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 169
    :cond_40
    invoke-virtual {v3}, Lcom/sun/mail/pop3/TempFile;->getAppendStream()Lcom/sun/mail/pop3/AppendStream;

    move-result-object v1

    .line 170
    new-instance v3, Ljava/io/BufferedOutputStream;

    invoke-direct {v3, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_49
    .catchall {:try_start_6 .. :try_end_49} :catchall_116

    .line 172
    :try_start_49
    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v4}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v4

    iget v5, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v4, v5, v3}, Lcom/sun/mail/pop3/Protocol;->retr(ILjava/io/OutputStream;)Z
    :try_end_54
    .catchall {:try_start_49 .. :try_end_54} :catchall_5c

    .line 174
    :try_start_54
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 176
    invoke-virtual {v1}, Lcom/sun/mail/pop3/AppendStream;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    goto :goto_76

    :catchall_5c
    move-exception p1

    .line 174
    invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V

    .line 175
    throw p1

    .line 178
    :cond_61
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v1}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v1

    iget v3, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    iget v4, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    if-lez v4, :cond_71

    iget v5, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    add-int/2addr v4, v5

    goto :goto_72

    :cond_71
    move v4, v2

    :goto_72
    invoke-virtual {v1, v3, v4}, Lcom/sun/mail/pop3/Protocol;->retr(II)Ljava/io/InputStream;

    move-result-object v1

    :goto_76
    move-object v3, v1

    const/4 v1, 0x1

    if-eqz v3, :cond_e7

    .line 188
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-eqz v0, :cond_c8

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    .line 189
    invoke-virtual {v0}, Lcom/sun/mail/pop3/POP3Folder;->getStore()Ljavax/mail/Store;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/pop3/POP3Store;

    move-object v4, v0

    check-cast v4, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v0, v0, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    if-eqz v0, :cond_8e

    goto :goto_c8

    :cond_8e
    move v0, v2

    .line 210
    :goto_8f
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v4

    if-ltz v4, :cond_b4

    const/16 v5, 0xa

    if-ne v4, v5, :cond_9a

    goto :goto_b4

    :cond_9a
    const/16 v6, 0xd

    if-ne v4, v6, :cond_b1

    .line 215
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    if-lez v4, :cond_b4

    .line 216
    invoke-virtual {v3, v1}, Ljava/io/InputStream;->mark(I)V

    .line 217
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v4

    if-eq v4, v5, :cond_b4

    .line 218
    invoke-virtual {v3}, Ljava/io/InputStream;->reset()V

    goto :goto_b4

    :cond_b1
    add-int/lit8 v0, v0, 0x1

    goto :goto_8f

    .line 229
    :cond_b4
    :goto_b4
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v4

    if-nez v4, :cond_bb

    goto :goto_bd

    :cond_bb
    if-nez v0, :cond_8e

    .line 236
    :goto_bd
    move-object v0, v3

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    .line 237
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    goto :goto_d9

    .line 190
    :cond_c8
    :goto_c8
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, v3}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 191
    move-object v0, v3

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    .line 192
    invoke-interface {v0}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    .line 241
    :goto_d9
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    .line 243
    new-instance v0, Ljava/lang/ref/SoftReference;

    invoke-direct {v0, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->rawData:Ljava/lang/ref/SoftReference;

    goto :goto_104

    .line 182
    :cond_e7
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Message;->expunged:Z

    .line 183
    new-instance p1, Ljavax/mail/MessageRemovedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " in POP3Message.getContentStream"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 245
    :cond_104
    :goto_104
    monitor-exit p0
    :try_end_105
    .catchall {:try_start_54 .. :try_end_105} :catchall_116

    .line 258
    check-cast v3, Ljavax/mail/internet/SharedInputStream;

    if-eqz p1, :cond_10d

    iget p1, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    int-to-long v0, p1

    goto :goto_10f

    :cond_10d
    const-wide/16 v0, 0x0

    :goto_10f
    const-wide/16 v4, -0x1

    invoke-interface {v3, v0, v1, v4, v5}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :catchall_116
    move-exception p1

    .line 245
    :try_start_117
    monitor-exit p0
    :try_end_118
    .catchall {:try_start_117 .. :try_end_118} :catchall_116

    :try_start_118
    throw p1
    :try_end_119
    .catch Ljava/io/EOFException; {:try_start_118 .. :try_end_119} :catch_122
    .catch Ljava/io/IOException; {:try_start_118 .. :try_end_119} :catch_119

    :catch_119
    move-exception p1

    .line 250
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "error fetching POP3 content"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_122
    move-exception p1

    .line 247
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v0, v2}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 248
    new-instance v0, Ljavax/mail/FolderClosedException;

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {p1}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0
.end method

.method private loadHeaders()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 622
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_2} :catch_5a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_2} :catch_51

    .line 623
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-eqz v1, :cond_8

    .line 624
    monitor-exit p0

    return-void

    .line 626
    :cond_8
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v1}, Lcom/sun/mail/pop3/POP3Folder;->getStore()Ljavax/mail/Store;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/pop3/POP3Store;

    move-object v2, v1

    check-cast v2, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v1, v1, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    if-nez v1, :cond_3d

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    .line 627
    invoke-virtual {v1}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v1

    iget v2, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v1, v2, v0}, Lcom/sun/mail/pop3/Protocol;->top(II)Ljava/io/InputStream;

    move-result-object v1
    :try_end_23
    .catchall {:try_start_2 .. :try_end_23} :catchall_4e

    if-nez v1, :cond_26

    goto :goto_3d

    .line 634
    :cond_26
    :try_start_26
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    iput v2, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    .line 635
    new-instance v2, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v2, v1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_38

    .line 637
    :try_start_33
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    move v1, v0

    goto :goto_3e

    :catchall_38
    move-exception v2

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 638
    throw v2

    :cond_3d
    :goto_3d
    const/4 v1, 0x1

    .line 640
    :goto_3e
    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_33 .. :try_end_3f} :catchall_4e

    if-eqz v1, :cond_4d

    .line 655
    :try_start_41
    invoke-virtual {p0}, Lcom/sun/mail/pop3/POP3Message;->getContentStream()Ljava/io/InputStream;

    move-result-object v1
    :try_end_45
    .catchall {:try_start_41 .. :try_end_45} :catchall_4b

    if-eqz v1, :cond_4d

    .line 658
    :try_start_47
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_4d

    :catchall_4b
    move-exception v1

    .line 659
    throw v1
    :try_end_4d
    .catch Ljava/io/EOFException; {:try_start_47 .. :try_end_4d} :catch_5a
    .catch Ljava/io/IOException; {:try_start_47 .. :try_end_4d} :catch_51

    :cond_4d
    :goto_4d
    return-void

    :catchall_4e
    move-exception v1

    .line 640
    :try_start_4f
    monitor-exit p0
    :try_end_50
    .catchall {:try_start_4f .. :try_end_50} :catchall_4e

    :try_start_50
    throw v1
    :try_end_51
    .catch Ljava/io/EOFException; {:try_start_50 .. :try_end_51} :catch_5a
    .catch Ljava/io/IOException; {:try_start_50 .. :try_end_51} :catch_51

    :catch_51
    move-exception v0

    .line 665
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "error loading POP3 headers"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_5a
    move-exception v1

    .line 662
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v2, v0}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 663
    new-instance v0, Ljavax/mail/FolderClosedException;

    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v1}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 431
    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string p2, "POP3 messages are read-only"

    invoke-direct {p1, p2}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 509
    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "POP3 messages are read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 521
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 522
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 523
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljavax/mail/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 464
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 465
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 466
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized getContentStream()Ljava/io/InputStream;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 272
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    const-wide/16 v1, -0x1

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_13

    .line 273
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    invoke-interface {v0, v3, v4, v1, v2}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_3a

    monitor-exit p0

    return-object v0

    :cond_13
    const/4 v0, 0x1

    .line 275
    :try_start_14
    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/POP3Message;->getRawStream(Z)Ljava/io/InputStream;

    move-result-object v0

    .line 281
    iget-object v5, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v5}, Lcom/sun/mail/pop3/POP3Folder;->getFileCache()Lcom/sun/mail/pop3/TempFile;

    move-result-object v5

    if-nez v5, :cond_2f

    .line 282
    iget-object v5, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    .line 283
    invoke-virtual {v5}, Lcom/sun/mail/pop3/POP3Folder;->getStore()Ljavax/mail/Store;

    move-result-object v5

    check-cast v5, Lcom/sun/mail/pop3/POP3Store;

    move-object v6, v5

    check-cast v6, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v5, v5, Lcom/sun/mail/pop3/POP3Store;->keepMessageContent:Z

    if-eqz v5, :cond_38

    .line 284
    :cond_2f
    move-object v5, v0

    check-cast v5, Ljavax/mail/internet/SharedInputStream;

    invoke-interface {v5, v3, v4, v1, v2}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;
    :try_end_38
    .catchall {:try_start_14 .. :try_end_38} :catchall_3a

    .line 285
    :cond_38
    monitor-exit p0

    return-object v0

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 390
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 391
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 392
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 371
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 372
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 536
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 537
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 538
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljavax/mail/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 478
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 479
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 480
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public getMimeStream()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 296
    invoke-direct {p0, v0}, Lcom/sun/mail/pop3/POP3Message;->getRawStream(Z)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 551
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 552
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 553
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration<",
            "Ljavax/mail/Header;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 492
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_7

    .line 493
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 494
    :cond_7
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public getSize()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 115
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_1} :catch_38
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_2f

    .line 117
    :try_start_1
    iget v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    if-lez v0, :cond_7

    .line 118
    monitor-exit p0

    return v0

    .line 119
    :cond_7
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_2c

    .line 136
    :try_start_8
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    if-nez v0, :cond_f

    .line 137
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Message;->loadHeaders()V

    .line 139
    :cond_f
    monitor-enter p0
    :try_end_10
    .catch Ljava/io/EOFException; {:try_start_8 .. :try_end_10} :catch_38
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_10} :catch_2f

    .line 140
    :try_start_10
    iget v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    if-gez v0, :cond_25

    .line 141
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v0, v1}, Lcom/sun/mail/pop3/Protocol;->list(I)I

    move-result v0

    iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    .line 142
    :cond_25
    iget v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    monitor-exit p0

    return v0

    :catchall_29
    move-exception v0

    .line 143
    monitor-exit p0
    :try_end_2b
    .catchall {:try_start_10 .. :try_end_2b} :catchall_29

    :try_start_2b
    throw v0
    :try_end_2c
    .catch Ljava/io/EOFException; {:try_start_2b .. :try_end_2c} :catch_38
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2c} :catch_2f

    :catchall_2c
    move-exception v0

    .line 119
    :try_start_2d
    monitor-exit p0
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2c

    :try_start_2e
    throw v0
    :try_end_2f
    .catch Ljava/io/EOFException; {:try_start_2e .. :try_end_2f} :catch_38
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2f} :catch_2f

    :catch_2f
    move-exception v0

    .line 148
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "error getting size"

    invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_38
    move-exception v0

    .line 145
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 146
    new-instance v1, Ljavax/mail/FolderClosedException;

    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v0}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized invalidate(Z)V
    .registers 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 308
    :try_start_2
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->content:[B

    .line 309
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->rawData:Ljava/lang/ref/SoftReference;

    invoke-virtual {v1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_c
    .catchall {:try_start_2 .. :try_end_c} :catchall_2e

    if-eqz v1, :cond_18

    .line 314
    :try_start_e
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_11} :catch_11
    .catchall {:try_start_e .. :try_end_11} :catchall_2e

    .line 318
    :catch_11
    :try_start_11
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->rawData:Ljava/lang/ref/SoftReference;

    .line 320
    :cond_18
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_2e

    if-eqz v1, :cond_23

    .line 322
    :try_start_1c
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_21} :catch_21
    .catchall {:try_start_1c .. :try_end_21} :catchall_2e

    .line 326
    :catch_21
    :try_start_21
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->contentStream:Ljava/io/InputStream;

    :cond_23
    const/4 v1, -0x1

    .line 328
    iput v1, p0, Lcom/sun/mail/pop3/POP3Message;->msgSize:I

    if-eqz p1, :cond_2c

    .line 330
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 331
    iput v1, p0, Lcom/sun/mail/pop3/POP3Message;->hdrSize:I
    :try_end_2c
    .catchall {:try_start_21 .. :try_end_2c} :catchall_2e

    .line 333
    :cond_2c
    monitor-exit p0

    return-void

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public removeHeader(Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 447
    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string v0, "POP3 messages are read-only"

    invoke-direct {p1, v0}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public saveChanges()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 566
    new-instance v0, Ljavax/mail/IllegalWriteException;

    const-string v1, "POP3 messages are read-only"

    invoke-direct {v0, v1}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized setFlags(Ljavax/mail/Flags;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 94
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;

    .line 95
    invoke-super {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->setFlags(Ljavax/mail/Flags;Z)V

    .line 96
    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Message;->flags:Ljavax/mail/Flags;

    invoke-virtual {p1, v0}, Ljavax/mail/Flags;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 97
    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    const/4 p2, 0x1

    invoke-virtual {p1, p2, p0}, Lcom/sun/mail/pop3/POP3Folder;->notifyMessageChangedListeners(ILjavax/mail/Message;)V
    :try_end_1a
    .catchall {:try_start_1 .. :try_end_1a} :catchall_1c

    .line 99
    :cond_1a
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 412
    new-instance p1, Ljavax/mail/IllegalWriteException;

    const-string p2, "POP3 messages are read-only"

    invoke-direct {p1, p2}, Ljavax/mail/IllegalWriteException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public top(I)Ljava/io/InputStream;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 346
    :try_start_0
    monitor-enter p0
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_1} :catch_1b
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1} :catch_12

    .line 347
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {v0}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v0, v1, p1}, Lcom/sun/mail/pop3/Protocol;->top(II)Ljava/io/InputStream;

    move-result-object p1

    monitor-exit p0

    return-object p1

    :catchall_f
    move-exception p1

    .line 348
    monitor-exit p0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_f

    :try_start_11
    throw p1
    :try_end_12
    .catch Ljava/io/EOFException; {:try_start_11 .. :try_end_12} :catch_1b
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_12} :catch_12

    :catch_12
    move-exception p1

    .line 353
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "error getting size"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :catch_1b
    move-exception p1

    .line 350
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/mail/pop3/POP3Folder;->close(Z)V

    .line 351
    new-instance v0, Ljavax/mail/FolderClosedException;

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {p1}, Ljava/io/EOFException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "can\'t retrieve message #"

    const-string v1, "streaming msg "

    monitor-enter p0

    .line 586
    :try_start_5
    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Message;->rawData:Ljava/lang/ref/SoftReference;

    invoke-virtual {v2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/InputStream;

    if-nez v2, :cond_6f

    if-nez p2, :cond_6f

    .line 587
    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    .line 588
    invoke-virtual {v3}, Lcom/sun/mail/pop3/POP3Folder;->getStore()Ljavax/mail/Store;

    move-result-object v3

    check-cast v3, Lcom/sun/mail/pop3/POP3Store;

    move-object v4, v3

    check-cast v4, Lcom/sun/mail/pop3/POP3Store;

    iget-boolean v3, v3, Lcom/sun/mail/pop3/POP3Store;->cacheWriteTo:Z

    if-nez v3, :cond_6f

    .line 589
    iget-object p2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    iget-object p2, p2, Lcom/sun/mail/pop3/POP3Folder;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_42

    .line 590
    iget-object p2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    iget-object p2, p2, Lcom/sun/mail/pop3/POP3Folder;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 591
    :cond_42
    iget-object p2, p0, Lcom/sun/mail/pop3/POP3Message;->folder:Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {p2}, Lcom/sun/mail/pop3/POP3Folder;->getProtocol()Lcom/sun/mail/pop3/Protocol;

    move-result-object p2

    iget v1, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {p2, v1, p1}, Lcom/sun/mail/pop3/Protocol;->retr(ILjava/io/OutputStream;)Z

    move-result p1

    if-eqz p1, :cond_51

    goto :goto_9c

    :cond_51
    const/4 p1, 0x1

    .line 592
    iput-boolean p1, p0, Lcom/sun/mail/pop3/POP3Message;->expunged:Z

    .line 593
    new-instance p1, Ljavax/mail/MessageRemovedException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/sun/mail/pop3/POP3Message;->msgnum:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, " in POP3Message.writeTo"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6f
    if-eqz v2, :cond_99

    if-nez p2, :cond_99

    .line 598
    check-cast v2, Ljavax/mail/internet/SharedInputStream;

    const-wide/16 v0, 0x0

    const-wide/16 v3, -0x1

    invoke-interface {v2, v0, v1, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object p2
    :try_end_7d
    .catchall {:try_start_5 .. :try_end_7d} :catchall_9e

    const/16 v0, 0x4000

    :try_start_7f
    new-array v0, v0, [B

    .line 602
    :goto_81
    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_8c

    const/4 v2, 0x0

    .line 603
    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_8b
    .catchall {:try_start_7f .. :try_end_8b} :catchall_92

    goto :goto_81

    :cond_8c
    if-eqz p2, :cond_9c

    .line 607
    :try_start_8e
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_91
    .catch Ljava/io/IOException; {:try_start_8e .. :try_end_91} :catch_9c
    .catchall {:try_start_8e .. :try_end_91} :catchall_9e

    goto :goto_9c

    :catchall_92
    move-exception p1

    if-eqz p2, :cond_98

    :try_start_95
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V
    :try_end_98
    .catch Ljava/io/IOException; {:try_start_95 .. :try_end_98} :catch_98
    .catchall {:try_start_95 .. :try_end_98} :catchall_9e

    .line 609
    :catch_98
    :cond_98
    :try_start_98
    throw p1

    .line 611
    :cond_99
    invoke-super {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V
    :try_end_9c
    .catchall {:try_start_98 .. :try_end_9c} :catchall_9e

    .line 612
    :catch_9c
    :cond_9c
    :goto_9c
    monitor-exit p0

    return-void

    :catchall_9e
    move-exception p1

    monitor-exit p0

    throw p1
.end method
