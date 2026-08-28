.class public Lcom/sun/mail/imap/IMAPInputStream;
.super Ljava/io/InputStream;
.source "IMAPInputStream.java"


# static fields
.field private static final slop:I = 0x40


# instance fields
.field private blksize:I

.field private buf:[B

.field private bufcount:I

.field private bufpos:I

.field private lastBuffer:Z

.field private max:I

.field private msg:Lcom/sun/mail/imap/IMAPMessage;

.field private peek:Z

.field private pos:I

.field private readbuf:Lcom/sun/mail/iap/ByteArray;

.field private section:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/mail/imap/IMAPMessage;Ljava/lang/String;IZ)V
    .registers 5

    .line 85
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    .line 87
    iput-object p2, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    .line 88
    iput p3, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    .line 89
    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    const/4 p2, 0x0

    .line 90
    iput p2, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    .line 91
    invoke-virtual {p1}, Lcom/sun/mail/imap/IMAPMessage;->getFetchBlockSize()I

    move-result p1

    iput p1, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    return-void
.end method

.method private checkSeen()V
    .registers 4

    .line 272
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    if-eqz v0, :cond_5

    return-void

    .line 275
    :cond_5
    :try_start_5
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 276
    invoke-virtual {v0}, Ljavax/mail/Folder;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_25

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    sget-object v2, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    .line 277
    invoke-virtual {v0, v2}, Lcom/sun/mail/imap/IMAPMessage;->isSet(Ljavax/mail/Flags$Flag;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 278
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    sget-object v2, Ljavax/mail/Flags$Flag;->SEEN:Ljavax/mail/Flags$Flag;

    invoke-virtual {v0, v2, v1}, Lcom/sun/mail/imap/IMAPMessage;->setFlag(Ljavax/mail/Flags$Flag;Z)V
    :try_end_25
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_25} :catch_25

    :catch_25
    :cond_25
    return-void
.end method

.method private fill()V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 127
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->lastBuffer:Z

    if-nez v0, :cond_c4

    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_f

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-lt v2, v0, :cond_f

    goto/16 :goto_c4

    .line 135
    :cond_f
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    if-nez v0, :cond_1e

    .line 136
    new-instance v0, Lcom/sun/mail/iap/ByteArray;

    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    add-int/lit8 v2, v2, 0x40

    invoke-direct {v0, v2}, Lcom/sun/mail/iap/ByteArray;-><init>(I)V

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    .line 141
    :cond_1e
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 143
    :try_start_25
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3

    .line 146
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v2

    if-nez v2, :cond_9b

    .line 150
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v2}, Lcom/sun/mail/imap/IMAPMessage;->getSequenceNumber()I

    move-result v4

    .line 151
    iget v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->blksize:I

    .line 152
    iget v5, p0, Lcom/sun/mail/imap/IMAPInputStream;->max:I

    if-eq v5, v1, :cond_47

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    add-int v6, v1, v2

    if-le v6, v5, :cond_47

    sub-int v2, v5, v1

    .line 154
    :cond_47
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->peek:Z

    if-eqz v1, :cond_57

    .line 155
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    iget v6, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget-object v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->peekBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v1

    goto :goto_62

    .line 157
    :cond_57
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPInputStream;->section:Ljava/lang/String;

    iget v6, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    iget-object v8, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    move v7, v2

    invoke-virtual/range {v3 .. v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->fetchBody(ILjava/lang/String;IILcom/sun/mail/iap/ByteArray;)Lcom/sun/mail/imap/protocol/BODY;

    move-result-object v1
    :try_end_62
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_25 .. :try_end_62} :catch_b4
    .catch Ljavax/mail/FolderClosedException; {:try_start_25 .. :try_end_62} :catch_a5
    .catchall {:try_start_25 .. :try_end_62} :catchall_a3

    :goto_62
    const/4 v3, 0x0

    if-eqz v1, :cond_6b

    .line 166
    :try_start_65
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/BODY;->getByteArray()Lcom/sun/mail/iap/ByteArray;

    move-result-object v1

    if-nez v1, :cond_73

    .line 167
    :cond_6b
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->forceCheckExpunged()V

    .line 172
    new-instance v1, Lcom/sun/mail/iap/ByteArray;

    invoke-direct {v1, v3}, Lcom/sun/mail/iap/ByteArray;-><init>(I)V

    .line 174
    :cond_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_65 .. :try_end_74} :catchall_a3

    .line 177
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-nez v0, :cond_7b

    .line 178
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->checkSeen()V

    .line 181
    :cond_7b
    invoke-virtual {v1}, Lcom/sun/mail/iap/ByteArray;->getBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    .line 182
    invoke-virtual {v1}, Lcom/sun/mail/iap/ByteArray;->getStart()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    .line 183
    invoke-virtual {v1}, Lcom/sun/mail/iap/ByteArray;->getCount()I

    move-result v0

    if-ge v0, v2, :cond_8e

    const/4 v3, 0x1

    .line 186
    :cond_8e
    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->lastBuffer:Z

    .line 187
    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    .line 188
    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    return-void

    .line 147
    :cond_9b
    :try_start_9b
    new-instance v1, Lcom/sun/mail/util/MessageRemovedIOException;

    const-string v2, "No content for expunged message"

    invoke-direct {v1, v2}, Lcom/sun/mail/util/MessageRemovedIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_a3
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9b .. :try_end_a3} :catch_b4
    .catch Ljavax/mail/FolderClosedException; {:try_start_9b .. :try_end_a3} :catch_a5
    .catchall {:try_start_9b .. :try_end_a3} :catchall_a3

    :catchall_a3
    move-exception v1

    goto :goto_c2

    :catch_a5
    move-exception v1

    .line 162
    :try_start_a6
    new-instance v2, Lcom/sun/mail/util/FolderClosedIOException;

    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    .line 163
    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :catch_b4
    move-exception v1

    .line 159
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->forceCheckExpunged()V

    .line 160
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 174
    :goto_c2
    monitor-exit v0
    :try_end_c3
    .catchall {:try_start_a6 .. :try_end_c3} :catchall_a3

    throw v1

    .line 128
    :cond_c4
    :goto_c4
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->pos:I

    if-nez v0, :cond_cb

    .line 129
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->checkSeen()V

    :cond_cb
    const/4 v0, 0x0

    .line 130
    iput-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->readbuf:Lcom/sun/mail/iap/ByteArray;

    return-void
.end method

.method private forceCheckExpunged()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/util/MessageRemovedIOException;,
            Lcom/sun/mail/util/FolderClosedIOException;
        }
    .end annotation

    .line 100
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->getMessageCacheLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 102
    :try_start_7
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v1}, Lcom/sun/mail/imap/IMAPMessage;->getProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_10
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_10} :catch_32
    .catch Ljavax/mail/FolderClosedException; {:try_start_7 .. :try_end_10} :catch_23
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_10} :catch_13
    .catchall {:try_start_7 .. :try_end_10} :catchall_11

    goto :goto_13

    :catchall_11
    move-exception v1

    goto :goto_43

    .line 112
    :catch_13
    :goto_13
    :try_start_13
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_11

    .line 113
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v0}, Lcom/sun/mail/imap/IMAPMessage;->isExpunged()Z

    move-result v0

    if-nez v0, :cond_1d

    return-void

    .line 114
    :cond_1d
    new-instance v0, Lcom/sun/mail/util/MessageRemovedIOException;

    invoke-direct {v0}, Lcom/sun/mail/util/MessageRemovedIOException;-><init>()V

    throw v0

    :catch_23
    move-exception v1

    .line 107
    :try_start_24
    new-instance v2, Lcom/sun/mail/util/FolderClosedIOException;

    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    .line 108
    invoke-virtual {v1}, Ljavax/mail/FolderClosedException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    :catch_32
    move-exception v1

    .line 104
    new-instance v2, Lcom/sun/mail/util/FolderClosedIOException;

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPInputStream;->msg:Lcom/sun/mail/imap/IMAPMessage;

    invoke-virtual {v3}, Lcom/sun/mail/imap/IMAPMessage;->getFolder()Ljavax/mail/Folder;

    move-result-object v3

    .line 105
    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v2

    .line 112
    :goto_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_24 .. :try_end_44} :catchall_11

    throw v1
.end method


# virtual methods
.method public declared-synchronized available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 261
    :try_start_1
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_8

    sub-int/2addr v0, v1

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized read()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 197
    :try_start_1
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    if-lt v0, v1, :cond_13

    .line 198
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->fill()V

    .line 199
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I
    :try_end_e
    .catchall {:try_start_1 .. :try_end_e} :catchall_21

    if-lt v0, v1, :cond_13

    .line 200
    monitor-exit p0

    const/4 v0, -0x1

    return v0

    .line 202
    :cond_13
    :try_start_13
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    aget-byte v0, v0, v1
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_21

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read([B)I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 252
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/imap/IMAPInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public declared-synchronized read([BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 223
    :try_start_1
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    sub-int/2addr v0, v1

    if-gtz v0, :cond_15

    .line 225
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPInputStream;->fill()V

    .line 226
    iget v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufcount:I

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_26

    sub-int/2addr v0, v1

    if-gtz v0, :cond_15

    .line 228
    monitor-exit p0

    const/4 p1, -0x1

    return p1

    :cond_15
    if-ge v0, p3, :cond_18

    move p3, v0

    .line 231
    :cond_18
    :try_start_18
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPInputStream;->buf:[B

    iget v1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    iget p1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/sun/mail/imap/IMAPInputStream;->bufpos:I
    :try_end_24
    .catchall {:try_start_18 .. :try_end_24} :catchall_26

    .line 233
    monitor-exit p0

    return p3

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method
