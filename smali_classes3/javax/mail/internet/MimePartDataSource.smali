.class public Ljavax/mail/internet/MimePartDataSource;
.super Ljava/lang/Object;
.source "MimePartDataSource.java"

# interfaces
.implements Ljavax/activation/DataSource;
.implements Ljavax/mail/MessageAware;


# instance fields
.field private context:Ljavax/mail/MessageContext;

.field protected part:Ljavax/mail/internet/MimePart;


# direct methods
.method public constructor <init>(Ljavax/mail/internet/MimePart;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    return-void
.end method


# virtual methods
.method public getContentType()Ljava/lang/String;
    .locals 1

    .line 141
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-interface {v0}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const-string v0, "application/octet-stream"

    return-object v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 99
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    instance-of v1, v0, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v1, :cond_0

    .line 100
    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    .line 101
    :cond_0
    instance-of v1, v0, Ljavax/mail/internet/MimeMessage;

    if-eqz v1, :cond_2

    .line 102
    check-cast v0, Ljavax/mail/internet/MimeMessage;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    .line 106
    :goto_0
    iget-object v1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    .line 107
    invoke-interface {v1}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Ljavax/mail/internet/MimeBodyPart;->restrictEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 109
    invoke-static {v0, v1}, Ljavax/mail/internet/MimeUtility;->decode(Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :cond_1
    return-object v0

    .line 104
    :cond_2
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Unknown part"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljavax/mail/FolderClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 118
    throw v1

    :catch_1
    move-exception v0

    .line 113
    new-instance v1, Lcom/sun/mail/util/FolderClosedIOException;

    invoke-virtual {v0}, Ljavax/mail/FolderClosedException;->getFolder()Ljavax/mail/Folder;

    move-result-object v2

    .line 114
    invoke-virtual {v0}, Ljavax/mail/FolderClosedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lcom/sun/mail/util/FolderClosedIOException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
.end method

.method public declared-synchronized getMessageContext()Ljavax/mail/MessageContext;
    .locals 2

    monitor-enter p0

    .line 173
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Ljavax/mail/MessageContext;

    iget-object v1, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    invoke-direct {v0, v1}, Ljavax/mail/MessageContext;-><init>(Ljavax/mail/Part;)V

    iput-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;

    .line 175
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->context:Ljavax/mail/MessageContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 159
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimePartDataSource;->part:Ljavax/mail/internet/MimePart;

    instance-of v1, v0, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v1, :cond_0

    .line 160
    check-cast v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart;->getFileName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 129
    new-instance v0, Ljava/net/UnknownServiceException;

    const-string v1, "Writing not supported"

    invoke-direct {v0, v1}, Ljava/net/UnknownServiceException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
