.class public Ljavax/mail/internet/MimeMultipart;
.super Ljavax/mail/Multipart;
.source "MimeMultipart.java"


# instance fields
.field protected allowEmpty:Z

.field protected complete:Z

.field protected ds:Ljavax/activation/DataSource;

.field protected ignoreExistingBoundaryParameter:Z

.field protected ignoreMissingBoundaryParameter:Z

.field protected ignoreMissingEndBoundary:Z

.field protected parsed:Z

.field protected preamble:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "mixed"

    .line 193
    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 6

    .line 208
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    const/4 v1, 0x1

    .line 128
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 135
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 143
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 152
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 162
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    const/4 v1, 0x0

    .line 172
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    .line 181
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->allowEmpty:Z

    .line 212
    invoke-static {}, Ljavax/mail/internet/UniqueValue;->getUniqueBoundaryValue()Ljava/lang/String;

    move-result-object v1

    .line 213
    new-instance v2, Ljavax/mail/internet/ContentType;

    const-string v3, "multipart"

    invoke-direct {v2, v3, p1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/internet/ParameterList;)V

    const-string p1, "boundary"

    .line 214
    invoke-virtual {v2, p1, v1}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-virtual {v2}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    .line 216
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->initializeProperties()V

    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[Ljavax/mail/BodyPart;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 244
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    .line 245
    array-length p1, p2

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p1, :cond_f

    aget-object v1, p2, v0

    .line 246
    invoke-super {p0, v1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_f
    return-void
.end method

.method public constructor <init>(Ljavax/activation/DataSource;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 270
    invoke-direct {p0}, Ljavax/mail/Multipart;-><init>()V

    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    const/4 v1, 0x1

    .line 128
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 135
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z

    .line 143
    iput-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    .line 152
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    .line 162
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    .line 181
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->allowEmpty:Z

    .line 272
    instance-of v1, p1, Ljavax/mail/MessageAware;

    if-eqz v1, :cond_28

    .line 273
    move-object v1, p1

    check-cast v1, Ljavax/mail/MessageAware;

    invoke-interface {v1}, Ljavax/mail/MessageAware;->getMessageContext()Ljavax/mail/MessageContext;

    move-result-object v1

    .line 274
    invoke-virtual {v1}, Ljavax/mail/MessageContext;->getPart()Ljavax/mail/Part;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMultipart;->setParent(Ljavax/mail/Part;)V

    .line 277
    :cond_28
    instance-of v1, p1, Ljavax/mail/MultipartDataSource;

    if-eqz v1, :cond_32

    .line 279
    check-cast p1, Ljavax/mail/MultipartDataSource;

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMultipart;->setMultipartDataSource(Ljavax/mail/MultipartDataSource;)V

    return-void

    .line 285
    :cond_32
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->parsed:Z

    .line 286
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    .line 287
    invoke-interface {p1}, Ljavax/activation/DataSource;->getContentType()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    return-void
.end method

.method public varargs constructor <init>([Ljavax/mail/BodyPart;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 228
    invoke-direct {p0}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 229
    array-length v0, p1

    const/4 v1, 0x0

    :goto_5
    if-ge v1, v0, :cond_f

    aget-object v2, p1, v1

    .line 230
    invoke-super {p0, v2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_f
    return-void
.end method

.method private static allDashes(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    move v1, v0

    .line 919
    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_14

    .line 920
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x2d

    if-eq v2, v3, :cond_11

    return v0

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_14
    const/4 p0, 0x1

    return p0
.end method

.method private createMimeBodyPartIs(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1024
    :try_start_0
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_0 .. :try_end_4} :catchall_8

    .line 1027
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_7

    :catch_7
    return-object v0

    :catchall_8
    move-exception v0

    :try_start_9
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_c} :catch_c

    .line 1031
    :catch_c
    throw v0
.end method

.method private static readFully(Ljava/io/InputStream;[BII)I
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p3, :cond_4

    return v0

    :cond_4
    :goto_4
    if-lez p3, :cond_11

    .line 946
    invoke-virtual {p0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    if-gtz v1, :cond_d

    goto :goto_11

    :cond_d
    add-int/2addr p2, v1

    add-int/2addr v0, v1

    sub-int/2addr p3, v1

    goto :goto_4

    :cond_11
    :goto_11
    if-lez v0, :cond_14

    goto :goto_15

    :cond_14
    const/4 v0, -0x1

    :goto_15
    return v0
.end method

.method private skipFully(Ljava/io/InputStream;J)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_18

    .line 962
    invoke-virtual {p1, p2, p3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    cmp-long v0, v2, v0

    if-lez v0, :cond_10

    sub-long/2addr p2, v2

    goto :goto_0

    .line 964
    :cond_10
    new-instance p1, Ljava/io/EOFException;

    const-string p2, "can\'t skip"

    invoke-direct {p1, p2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_18
    return-void
.end method


# virtual methods
.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 424
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 425
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 426
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized addBodyPart(Ljavax/mail/BodyPart;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 445
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 446
    invoke-super {p0, p1, p2}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;I)V
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_9

    .line 447
    monitor-exit p0

    return-void

    :catchall_9
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 983
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1018
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method protected createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1001
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V

    return-object v0
.end method

.method public declared-synchronized getBodyPart(I)Ljavax/mail/BodyPart;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 350
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 351
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object p1
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return-object p1

    :catchall_a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getBodyPart(Ljava/lang/String;)Ljavax/mail/BodyPart;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 364
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 366
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->getCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_9
    if-ge v1, v0, :cond_22

    .line 368
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMultipart;->getBodyPart(I)Ljavax/mail/BodyPart;

    move-result-object v2

    check-cast v2, Ljavax/mail/internet/MimeBodyPart;

    .line 369
    invoke-virtual {v2}, Ljavax/mail/internet/MimeBodyPart;->getContentID()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1f

    .line 370
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_1b
    .catchall {:try_start_1 .. :try_end_1b} :catchall_25

    if-eqz v3, :cond_1f

    .line 371
    monitor-exit p0

    return-object v2

    :cond_1f
    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    .line 373
    :cond_22
    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_25
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 336
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 337
    invoke-super {p0}, Ljavax/mail/Multipart;->getCount()I

    move-result v0
    :try_end_8
    .catchall {:try_start_1 .. :try_end_8} :catchall_a

    monitor-exit p0

    return v0

    :catchall_a
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getPreamble()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 479
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 480
    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return-object v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected initializeProperties()V
    .registers 3

    const-string v0, "mail.mime.multipart.ignoremissingendboundary"

    const/4 v1, 0x1

    .line 301
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    const-string v0, "mail.mime.multipart.ignoremissingboundaryparameter"

    .line 304
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    const-string v0, "mail.mime.multipart.ignoreexistingboundaryparameter"

    const/4 v1, 0x0

    .line 307
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    const-string v0, "mail.mime.multipart.allowempty"

    .line 310
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->allowEmpty:Z

    return-void
.end method

.method public declared-synchronized isComplete()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 465
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 466
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMultipart;->complete:Z
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    monitor-exit p0

    return v0

    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized parse()V
    .registers 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "--"

    monitor-enter p0

    .line 584
    :try_start_5
    iget-boolean v2, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_7
    .catchall {:try_start_5 .. :try_end_7} :catchall_362

    if-eqz v2, :cond_b

    .line 585
    monitor-exit p0

    return-void

    .line 587
    :cond_b
    :try_start_b
    invoke-virtual/range {p0 .. p0}, Ljavax/mail/internet/MimeMultipart;->initializeProperties()V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_362

    .line 594
    :try_start_e
    iget-object v2, v1, Ljavax/mail/internet/MimeMultipart;->ds:Ljavax/activation/DataSource;

    invoke-interface {v2}, Ljavax/activation/DataSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 595
    instance-of v3, v2, Ljava/io/ByteArrayInputStream;

    if-nez v3, :cond_26

    instance-of v3, v2, Ljava/io/BufferedInputStream;

    if-nez v3, :cond_26

    instance-of v3, v2, Ljavax/mail/internet/SharedInputStream;

    if-nez v3, :cond_26

    .line 598
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_25} :catch_359
    .catchall {:try_start_e .. :try_end_25} :catchall_362

    move-object v2, v3

    .line 602
    :cond_26
    :try_start_26
    nop

    instance-of v3, v2, Ljavax/mail/internet/SharedInputStream;

    if-eqz v3, :cond_2f

    .line 603
    move-object v3, v2

    check-cast v3, Ljavax/mail/internet/SharedInputStream;

    goto :goto_30

    :cond_2f
    const/4 v3, 0x0

    .line 605
    :goto_30
    new-instance v5, Ljavax/mail/internet/ContentType;

    iget-object v6, v1, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 607
    iget-boolean v6, v1, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    if-nez v6, :cond_51

    const-string v6, "boundary"

    .line 608
    invoke-virtual {v5, v6}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_51

    .line 610
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    if-nez v0, :cond_65

    .line 612
    iget-boolean v5, v1, Ljavax/mail/internet/MimeMultipart;->ignoreMissingBoundaryParameter:Z

    if-nez v5, :cond_65

    iget-boolean v5, v1, Ljavax/mail/internet/MimeMultipart;->ignoreExistingBoundaryParameter:Z

    if-eqz v5, :cond_5d

    goto :goto_65

    .line 614
    :cond_5d
    new-instance v0, Ljavax/mail/internet/ParseException;

    const-string v2, "Missing boundary parameter"

    invoke-direct {v0, v2}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_65
    .catchall {:try_start_26 .. :try_end_65} :catchall_362

    .line 618
    :cond_65
    :goto_65
    :try_start_65
    new-instance v5, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v5, v2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 v6, 0x0

    .line 621
    :cond_6b
    :goto_6b
    invoke-virtual {v5}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v7

    const/16 v8, 0x9

    const/16 v9, 0x20

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-eqz v7, :cond_f2

    .line 629
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    sub-int/2addr v13, v12

    :goto_7d
    if-ltz v13, :cond_8b

    .line 630
    invoke-virtual {v7, v13}, Ljava/lang/String;->charAt(I)C

    move-result v14

    if-eq v14, v9, :cond_88

    if-eq v14, v8, :cond_88

    goto :goto_8b

    :cond_88
    add-int/lit8 v13, v13, -0x1

    goto :goto_7d

    :cond_8b
    :goto_8b
    add-int/lit8 v13, v13, 0x1

    .line 634
    invoke-virtual {v7, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    if-eqz v0, :cond_b5

    .line 636
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9a

    goto :goto_f2

    .line 638
    :cond_9a
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v14, v10

    if-ne v13, v14, :cond_d3

    .line 639
    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d3

    const-string v13, "--"

    invoke-virtual {v7, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d3

    const/4 v7, 0x0

    goto :goto_f2

    .line 649
    :cond_b5
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v10, :cond_d3

    const-string v13, "--"

    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d3

    .line 650
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x4

    if-le v13, v14, :cond_d1

    invoke-static {v7}, Ljavax/mail/internet/MimeMultipart;->allDashes(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d1

    goto :goto_d3

    :cond_d1
    move-object v0, v7

    goto :goto_f2

    .line 665
    :cond_d3
    :goto_d3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_6b

    if-nez v6, :cond_e5

    .line 668
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v10

    invoke-direct {v6, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 669
    :cond_e5
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_6b

    :cond_f2
    :goto_f2
    if-eqz v6, :cond_fa

    .line 674
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v1, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    :cond_fa
    if-nez v7, :cond_10d

    .line 677
    iget-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->allowEmpty:Z
    :try_end_fe
    .catch Ljava/io/IOException; {:try_start_65 .. :try_end_fe} :catch_34c
    .catchall {:try_start_65 .. :try_end_fe} :catchall_34a

    if-eqz v0, :cond_105

    .line 906
    :try_start_100
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_103
    .catch Ljava/io/IOException; {:try_start_100 .. :try_end_103} :catch_103
    .catchall {:try_start_100 .. :try_end_103} :catchall_362

    .line 678
    :catch_103
    monitor-exit p0

    return-void

    .line 680
    :cond_105
    :try_start_105
    new-instance v0, Ljavax/mail/internet/ParseException;

    const-string v3, "Missing start boundary"

    invoke-direct {v0, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 684
    :cond_10d
    invoke-static {v0}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 685
    array-length v6, v0

    const/16 v7, 0x100

    new-array v7, v7, [I

    move v13, v11

    :goto_117
    if-ge v13, v6, :cond_122

    .line 694
    aget-byte v14, v0, v13

    and-int/lit16 v14, v14, 0xff

    add-int/lit8 v13, v13, 0x1

    aput v13, v7, v14

    goto :goto_117

    .line 697
    :cond_122
    new-array v13, v6, [I

    move v14, v6

    :goto_125
    if-lez v14, :cond_148

    add-int/lit8 v15, v6, -0x1

    :goto_129
    if-lt v15, v14, :cond_13c

    .line 703
    aget-byte v4, v0, v15

    sub-int v16, v15, v14

    aget-byte v8, v0, v16

    if-ne v4, v8, :cond_143

    add-int/lit8 v4, v15, -0x1

    .line 705
    aput v14, v13, v4

    add-int/lit8 v15, v15, -0x1

    const/16 v8, 0x9

    goto :goto_129

    :cond_13c
    :goto_13c
    if-lez v15, :cond_143

    add-int/lit8 v15, v15, -0x1

    .line 713
    aput v14, v13, v15

    goto :goto_13c

    :cond_143
    add-int/lit8 v14, v14, -0x1

    const/16 v8, 0x9

    goto :goto_125

    :cond_148
    add-int/lit8 v4, v6, -0x1

    .line 715
    aput v12, v13, v4

    const-wide/16 v14, 0x0

    move v8, v11

    move-wide/from16 v17, v14

    :goto_151
    if-nez v8, :cond_342

    if-eqz v3, :cond_17b

    .line 726
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v14

    .line 728
    :goto_159
    invoke-virtual {v5}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_166

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v19

    if-lez v19, :cond_166

    goto :goto_159

    :cond_166
    if-nez v16, :cond_178

    .line 731
    iget-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-eqz v0, :cond_170

    .line 735
    iput-boolean v11, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    goto/16 :goto_342

    .line 732
    :cond_170
    new-instance v0, Ljavax/mail/internet/ParseException;

    const-string v3, "missing multipart end boundary"

    invoke-direct {v0, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_178
    const/16 v20, 0x0

    goto :goto_181

    .line 740
    :cond_17b
    invoke-virtual {v1, v2}, Ljavax/mail/internet/MimeMultipart;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v16

    move-object/from16 v20, v16

    .line 743
    :goto_181
    invoke-virtual {v2}, Ljava/io/InputStream;->markSupported()Z

    move-result v16

    if-eqz v16, :cond_33a

    if-nez v3, :cond_191

    .line 749
    new-instance v16, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v16 .. v16}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object/from16 v21, v16

    goto :goto_197

    .line 751
    :cond_191
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v17

    const/16 v21, 0x0

    .line 763
    :goto_197
    new-array v9, v6, [B

    .line 764
    new-array v12, v6, [B

    move v10, v11

    const/16 v22, 0x1

    :goto_19e
    add-int/lit8 v11, v6, 0x4

    add-int/lit16 v11, v11, 0x3e8

    .line 774
    invoke-virtual {v2, v11}, Ljava/io/InputStream;->mark(I)V

    move/from16 v23, v4

    const/4 v11, 0x0

    .line 776
    invoke-static {v2, v9, v11, v6}, Ljavax/mail/internet/MimeMultipart;->readFully(Ljava/io/InputStream;[BII)I

    move-result v4

    if-ge v4, v6, :cond_1cf

    .line 779
    iget-boolean v8, v1, Ljavax/mail/internet/MimeMultipart;->ignoreMissingEndBoundary:Z

    if-eqz v8, :cond_1c7

    if-eqz v3, :cond_1b8

    .line 783
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v17

    :cond_1b8
    const/4 v8, 0x0

    .line 784
    iput-boolean v8, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    move-object/from16 v24, v5

    move/from16 v26, v6

    move-object/from16 v22, v9

    move-wide/from16 v5, v17

    const/4 v8, 0x1

    const/4 v11, 0x0

    goto/16 :goto_265

    .line 780
    :cond_1c7
    new-instance v0, Ljavax/mail/internet/ParseException;

    const-string v3, "missing multipart end boundary"

    invoke-direct {v0, v3}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1cf
    move/from16 v11, v23

    :goto_1d1
    if-ltz v11, :cond_1e5

    move-object/from16 v24, v5

    .line 791
    aget-byte v5, v9, v11

    move/from16 v25, v8

    aget-byte v8, v0, v11

    if-eq v5, v8, :cond_1de

    goto :goto_1e9

    :cond_1de
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v5, v24

    move/from16 v8, v25

    goto :goto_1d1

    :cond_1e5
    move-object/from16 v24, v5

    move/from16 v25, v8

    :goto_1e9
    if-gez v11, :cond_2ca

    const/16 v5, 0xd

    const/16 v8, 0xa

    if-nez v22, :cond_208

    add-int/lit8 v11, v10, -0x1

    .line 799
    aget-byte v11, v12, v11

    if-eq v11, v5, :cond_1f9

    if-ne v11, v8, :cond_208

    :cond_1f9
    if-ne v11, v8, :cond_206

    const/4 v11, 0x2

    if-lt v10, v11, :cond_206

    add-int/lit8 v11, v10, -0x2

    .line 803
    aget-byte v11, v12, v11

    if-ne v11, v5, :cond_206

    const/4 v11, 0x2

    goto :goto_209

    :cond_206
    const/4 v11, 0x1

    goto :goto_209

    :cond_208
    const/4 v11, 0x0

    :goto_209
    if-nez v22, :cond_217

    if-lez v11, :cond_20e

    goto :goto_217

    :cond_20e
    move/from16 v26, v6

    move-object v11, v9

    move-object/from16 v6, v20

    move-object/from16 v9, v21

    goto/16 :goto_2ac

    :cond_217
    :goto_217
    if-eqz v3, :cond_226

    .line 813
    invoke-interface {v3}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v17

    move-object/from16 v22, v9

    int-to-long v8, v6

    sub-long v17, v17, v8

    int-to-long v8, v11

    sub-long v17, v17, v8

    goto :goto_228

    :cond_226
    move-object/from16 v22, v9

    .line 816
    :goto_228
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v8

    const/16 v9, 0x2d

    if-ne v8, v9, :cond_23f

    .line 818
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v5

    if-ne v5, v9, :cond_23f

    const/4 v5, 0x1

    .line 819
    iput-boolean v5, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    move/from16 v26, v6

    move-wide/from16 v5, v17

    const/4 v8, 0x1

    goto :goto_265

    :cond_23f
    :goto_23f
    const/16 v5, 0x20

    if-eq v8, v5, :cond_2b0

    const/16 v9, 0x9

    if-ne v8, v9, :cond_249

    goto/16 :goto_2b0

    :cond_249
    const/16 v5, 0xa

    if-ne v8, v5, :cond_24e

    goto :goto_25f

    :cond_24e
    const/16 v9, 0xd

    if-ne v8, v9, :cond_2a4

    const/4 v8, 0x1

    .line 831
    invoke-virtual {v2, v8}, Ljava/io/InputStream;->mark(I)V

    .line 832
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v8

    if-eq v8, v5, :cond_25f

    .line 833
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    :cond_25f
    :goto_25f
    move/from16 v26, v6

    move-wide/from16 v5, v17

    move/from16 v8, v25

    :goto_265
    if-eqz v3, :cond_270

    .line 889
    invoke-interface {v3, v14, v15, v5, v6}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v1, v4}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPartIs(Ljava/io/InputStream;)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v4

    goto :goto_292

    :cond_270
    sub-int/2addr v10, v11

    if-lez v10, :cond_27a

    move-object/from16 v9, v21

    const/4 v11, 0x0

    .line 893
    invoke-virtual {v9, v12, v11, v10}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_27c

    :cond_27a
    move-object/from16 v9, v21

    .line 896
    :goto_27c
    iget-boolean v10, v1, Ljavax/mail/internet/MimeMultipart;->complete:Z

    if-nez v10, :cond_288

    if-lez v4, :cond_288

    move-object/from16 v11, v22

    const/4 v10, 0x0

    .line 897
    invoke-virtual {v9, v11, v10, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 898
    :cond_288
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    move-object/from16 v9, v20

    invoke-virtual {v1, v9, v4}, Ljavax/mail/internet/MimeMultipart;->createMimeBodyPart(Ljavax/mail/internet/InternetHeaders;[B)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v4

    .line 900
    :goto_292
    invoke-super {v1, v4}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    move-wide/from16 v17, v5

    move/from16 v4, v23

    move-object/from16 v5, v24

    move/from16 v6, v26

    const/16 v9, 0x20

    const/4 v10, 0x2

    const/4 v11, 0x0

    const/4 v12, 0x1

    goto/16 :goto_151

    :cond_2a4
    move/from16 v26, v6

    move-object/from16 v6, v20

    move-object/from16 v9, v21

    move-object/from16 v11, v22

    :goto_2ac
    move-object v5, v9

    move-object v8, v11

    const/4 v11, 0x0

    goto :goto_2d1

    :cond_2b0
    :goto_2b0
    move/from16 v26, v6

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    move-object/from16 v8, v22

    const/16 v9, 0xd

    .line 826
    invoke-virtual {v2}, Ljava/io/InputStream;->read()I

    move-result v21

    move-object/from16 v20, v6

    move-object/from16 v22, v8

    move/from16 v8, v21

    move/from16 v6, v26

    move-object/from16 v21, v5

    goto/16 :goto_23f

    :cond_2ca
    move/from16 v26, v6

    move-object v8, v9

    move-object/from16 v6, v20

    move-object/from16 v5, v21

    :goto_2d1
    add-int/lit8 v4, v11, 0x1

    .line 847
    aget-byte v9, v8, v11

    and-int/lit8 v9, v9, 0x7f

    aget v9, v7, v9

    sub-int/2addr v4, v9

    aget v9, v13, v11

    invoke-static {v4, v9}, Ljava/lang/Math;->max(II)I

    move-result v4

    const/4 v9, 0x2

    if-ge v4, v9, :cond_310

    if-nez v3, :cond_2ee

    const/4 v4, 0x1

    if-le v10, v4, :cond_2ee

    add-int/lit8 v4, v10, -0x1

    const/4 v11, 0x0

    .line 854
    invoke-virtual {v5, v12, v11, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 855
    :cond_2ee
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    move v11, v10

    const-wide/16 v9, 0x1

    .line 856
    invoke-direct {v1, v2, v9, v10}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    const/4 v4, 0x1

    if-lt v11, v4, :cond_308

    add-int/lit8 v10, v11, -0x1

    .line 859
    aget-byte v9, v12, v10

    const/4 v10, 0x0

    aput-byte v9, v12, v10

    .line 860
    aget-byte v9, v8, v10

    aput-byte v9, v12, v4

    const/4 v9, 0x0

    const/4 v10, 0x2

    goto :goto_328

    :cond_308
    const/4 v4, 0x0

    .line 864
    aget-byte v9, v8, v4

    aput-byte v9, v12, v4

    const/4 v9, 0x0

    const/4 v10, 0x1

    goto :goto_328

    :cond_310
    move v11, v10

    if-lez v11, :cond_31a

    if-nez v3, :cond_31a

    const/4 v9, 0x0

    .line 871
    invoke-virtual {v5, v12, v9, v11}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_31b

    :cond_31a
    const/4 v9, 0x0

    .line 874
    :goto_31b
    invoke-virtual {v2}, Ljava/io/InputStream;->reset()V

    int-to-long v10, v4

    .line 875
    invoke-direct {v1, v2, v10, v11}, Ljavax/mail/internet/MimeMultipart;->skipFully(Ljava/io/InputStream;J)V

    move v10, v4

    move-object/from16 v27, v12

    move-object v12, v8

    move-object/from16 v8, v27

    :goto_328
    move-object/from16 v21, v5

    move-object/from16 v20, v6

    move v11, v9

    move/from16 v22, v11

    move/from16 v4, v23

    move-object/from16 v5, v24

    move/from16 v6, v26

    move-object v9, v8

    move/from16 v8, v25

    goto/16 :goto_19e

    .line 744
    :cond_33a
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v3, "Stream doesn\'t support mark"

    invoke-direct {v0, v3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_342
    .catch Ljava/io/IOException; {:try_start_105 .. :try_end_342} :catch_34c
    .catchall {:try_start_105 .. :try_end_342} :catchall_34a

    .line 906
    :cond_342
    :goto_342
    :try_start_342
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_345
    .catch Ljava/io/IOException; {:try_start_342 .. :try_end_345} :catch_345
    .catchall {:try_start_342 .. :try_end_345} :catchall_362

    :catch_345
    const/4 v0, 0x1

    .line 912
    :try_start_346
    iput-boolean v0, v1, Ljavax/mail/internet/MimeMultipart;->parsed:Z
    :try_end_348
    .catchall {:try_start_346 .. :try_end_348} :catchall_362

    .line 913
    monitor-exit p0

    return-void

    :catchall_34a
    move-exception v0

    goto :goto_355

    :catch_34c
    move-exception v0

    .line 903
    :try_start_34d
    new-instance v3, Ljavax/mail/MessagingException;

    const-string v4, "IO Error"

    invoke-direct {v3, v4, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v3
    :try_end_355
    .catchall {:try_start_34d .. :try_end_355} :catchall_34a

    .line 906
    :goto_355
    :try_start_355
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_358
    .catch Ljava/io/IOException; {:try_start_355 .. :try_end_358} :catch_358
    .catchall {:try_start_355 .. :try_end_358} :catchall_362

    .line 910
    :catch_358
    :try_start_358
    throw v0

    :catch_359
    move-exception v0

    .line 600
    new-instance v2, Ljavax/mail/MessagingException;

    const-string v3, "No inputstream from datasource"

    invoke-direct {v2, v3, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
    :try_end_362
    .catchall {:try_start_358 .. :try_end_362} :catchall_362

    :catchall_362
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeBodyPart(I)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 407
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 408
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(I)V

    return-void
.end method

.method public removeBodyPart(Ljavax/mail/BodyPart;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 389
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 390
    invoke-super {p0, p1}, Ljavax/mail/Multipart;->removeBodyPart(Ljavax/mail/BodyPart;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized setPreamble(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 497
    :try_start_1
    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 498
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSubType(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 324
    :try_start_1
    new-instance v0, Ljavax/mail/internet/ContentType;

    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 325
    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->setSubType(Ljava/lang/String;)V

    .line 326
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 327
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected declared-synchronized updateHeaders()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 520
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    const/4 v0, 0x0

    .line 521
    :goto_5
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    .line 522
    iget-object v1, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders()V
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_1d

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 523
    :cond_1b
    monitor-exit p0

    return-void

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized writeTo(Ljava/io/OutputStream;)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Empty multipart: "

    const-string v1, "--"

    monitor-enter p0

    .line 532
    :try_start_5
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMultipart;->parse()V

    .line 534
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljavax/mail/internet/ContentType;

    iget-object v3, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v3, "boundary"

    .line 535
    invoke-virtual {v1, v3}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 536
    new-instance v2, Lcom/sun/mail/util/LineOutputStream;

    invoke-direct {v2, p1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 539
    iget-object v3, p0, Ljavax/mail/internet/MimeMultipart;->preamble:Ljava/lang/String;

    if-eqz v3, :cond_4a

    .line 540
    invoke-static {v3}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 541
    invoke-virtual {v2, v3}, Lcom/sun/mail/util/LineOutputStream;->write([B)V

    .line 543
    array-length v4, v3

    if-lez v4, :cond_4a

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-byte v4, v3, v4

    const/16 v5, 0xd

    if-eq v4, v5, :cond_4a

    array-length v4, v3

    add-int/lit8 v4, v4, -0x1

    aget-byte v3, v3, v4

    const/16 v4, 0xa

    if-eq v3, v4, :cond_4a

    .line 545
    invoke-virtual {v2}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 550
    :cond_4a
    iget-object v3, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-nez v3, :cond_72

    .line 551
    iget-boolean p1, p0, Ljavax/mail/internet/MimeMultipart;->allowEmpty:Z

    if-eqz p1, :cond_5d

    .line 553
    invoke-virtual {v2, v1}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 554
    invoke-virtual {v2}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    goto :goto_8f

    .line 556
    :cond_5d
    new-instance p1, Ljavax/mail/MessagingException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Ljavax/mail/internet/MimeMultipart;->contentType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_72
    const/4 v0, 0x0

    .line 559
    :goto_73
    iget-object v3, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_8f

    .line 560
    invoke-virtual {v2, v1}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    .line 561
    iget-object v3, p0, Ljavax/mail/internet/MimeMultipart;->parts:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/internet/MimeBodyPart;

    invoke-virtual {v3, p1}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljava/io/OutputStream;)V

    .line 562
    invoke-virtual {v2}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_73

    .line 567
    :cond_8f
    :goto_8f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "--"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V
    :try_end_a5
    .catchall {:try_start_5 .. :try_end_a5} :catchall_a7

    .line 568
    monitor-exit p0

    return-void

    :catchall_a7
    move-exception p1

    monitor-exit p0

    throw p1
.end method
