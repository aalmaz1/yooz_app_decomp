.class public Ljavax/mail/internet/MimeMessage;
.super Ljavax/mail/Message;
.source "MimeMessage.java"

# interfaces
.implements Ljavax/mail/internet/MimePart;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/MimeMessage$RecipientType;
    }
.end annotation


# static fields
.field private static final answeredFlag:Ljavax/mail/Flags;

.field private static final mailDateFormat:Ljavax/mail/internet/MailDateFormat;


# instance fields
.field private allowutf8:Z

.field protected cachedContent:Ljava/lang/Object;

.field protected content:[B

.field protected contentStream:Ljava/io/InputStream;

.field protected dh:Ljavax/activation/DataHandler;

.field protected flags:Ljavax/mail/Flags;

.field protected headers:Ljavax/mail/internet/InternetHeaders;

.field protected modified:Z

.field protected saved:Z

.field private strict:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 182
    new-instance v0, Ljavax/mail/internet/MailDateFormat;

    invoke-direct {v0}, Ljavax/mail/internet/MailDateFormat;-><init>()V

    sput-object v0, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    .line 1821
    new-instance v0, Ljavax/mail/Flags;

    sget-object v1, Ljavax/mail/Flags$Flag;->ANSWERED:Ljavax/mail/Flags$Flag;

    invoke-direct {v0, v1}, Ljavax/mail/Flags;-><init>(Ljavax/mail/Flags$Flag;)V

    sput-object v0, Ljavax/mail/internet/MimeMessage;->answeredFlag:Ljavax/mail/Flags;

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;I)V
    .locals 0

    .line 276
    invoke-direct {p0, p1, p2}, Ljavax/mail/Message;-><init>(Ljavax/mail/Folder;I)V

    const/4 p1, 0x0

    .line 152
    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 165
    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    const/4 p2, 0x1

    .line 185
    iput-boolean p2, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 187
    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->allowutf8:Z

    .line 277
    new-instance p1, Ljavax/mail/Flags;

    invoke-direct {p1}, Ljavax/mail/Flags;-><init>()V

    iput-object p1, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    .line 278
    iput-boolean p2, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 279
    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;Ljava/io/InputStream;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 297
    invoke-direct {p0, p1, p3}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    .line 298
    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    .line 299
    invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Folder;Ljavax/mail/internet/InternetHeaders;[BI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 316
    invoke-direct {p0, p1, p4}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Folder;I)V

    .line 317
    iput-object p2, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 318
    iput-object p3, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    .line 319
    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;)V
    .locals 1

    .line 198
    invoke-direct {p0, p1}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    const/4 p1, 0x0

    .line 165
    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 187
    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->allowutf8:Z

    .line 199
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 200
    new-instance p1, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {p1}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object p1, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 201
    new-instance p1, Ljavax/mail/Flags;

    invoke-direct {p1}, Ljavax/mail/Flags;-><init>()V

    iput-object p1, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    .line 202
    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljava/io/InputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 220
    invoke-direct {p0, p1}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    const/4 p1, 0x0

    .line 152
    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 165
    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    const/4 v0, 0x1

    .line 185
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 187
    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->allowutf8:Z

    .line 221
    new-instance p1, Ljavax/mail/Flags;

    invoke-direct {p1}, Ljavax/mail/Flags;-><init>()V

    iput-object p1, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    .line 222
    invoke-direct {p0}, Ljavax/mail/internet/MimeMessage;->initStrict()V

    .line 223
    invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 224
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    return-void
.end method

.method public constructor <init>(Ljavax/mail/internet/MimeMessage;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 240
    iget-object v0, p1, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-direct {p0, v0}, Ljavax/mail/Message;-><init>(Ljavax/mail/Session;)V

    const/4 v0, 0x0

    .line 152
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 165
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    const/4 v1, 0x1

    .line 185
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 187
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->allowutf8:Z

    .line 241
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getFlags()Ljavax/mail/Flags;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    if-nez v0, :cond_0

    .line 243
    new-instance v0, Ljavax/mail/Flags;

    invoke-direct {v0}, Ljavax/mail/Flags;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    .line 245
    :cond_0
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->getSize()I

    move-result v0

    if-lez v0, :cond_1

    .line 247
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    goto :goto_0

    .line 249
    :cond_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 251
    :goto_0
    :try_start_0
    iget-boolean v0, p1, Ljavax/mail/internet/MimeMessage;->strict:Z

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    .line 252
    invoke-virtual {p1, v2}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V

    .line 253
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 254
    new-instance p1, Ljavax/mail/util/SharedByteArrayInputStream;

    .line 255
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-direct {p1, v0}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([B)V

    .line 256
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    .line 257
    invoke-virtual {p1}, Ljavax/mail/util/SharedByteArrayInputStream;->close()V

    .line 258
    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->saved:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 261
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "IOException while copying message"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method private addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    if-eqz p2, :cond_5

    .line 775
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_2

    .line 777
    :cond_0
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 779
    array-length v1, v0

    if-nez v1, :cond_1

    goto :goto_0

    .line 782
    :cond_1
    array-length v1, v0

    array-length v2, p2

    add-int/2addr v1, v2

    new-array v1, v1, [Ljavax/mail/Address;

    .line 783
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 784
    array-length v0, v0

    array-length v2, p2

    invoke-static {p2, v3, v1, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p2, v1

    .line 787
    :cond_2
    :goto_0
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->allowutf8:Z

    if-eqz v0, :cond_3

    .line 788
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Ljavax/mail/internet/InternetAddress;->toUnicodeString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 790
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object p2

    :goto_1
    if-nez p2, :cond_4

    return-void

    .line 793
    :cond_4
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_2
    return-void
.end method

.method private eliminateDuplicates(Ljava/util/List;[Ljavax/mail/Address;)[Ljavax/mail/Address;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljavax/mail/Address;",
            ">;[",
            "Ljavax/mail/Address;",
            ")[",
            "Ljavax/mail/Address;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 1832
    :goto_0
    array-length v4, p2

    if-ge v2, v4, :cond_4

    move v4, v1

    .line 1835
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 1836
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/mail/internet/InternetAddress;

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljavax/mail/internet/InternetAddress;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0x1

    .line 1840
    aput-object v0, p2, v2

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v1

    :goto_2
    if-nez v4, :cond_3

    .line 1845
    aget-object v4, p2, v2

    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v3, :cond_8

    .line 1852
    instance-of p1, p2, [Ljavax/mail/internet/InternetAddress;

    if-eqz p1, :cond_5

    .line 1853
    array-length p1, p2

    sub-int/2addr p1, v3

    new-array p1, p1, [Ljavax/mail/internet/InternetAddress;

    goto :goto_3

    .line 1855
    :cond_5
    array-length p1, p2

    sub-int/2addr p1, v3

    new-array p1, p1, [Ljavax/mail/Address;

    :goto_3
    move v0, v1

    .line 1856
    :goto_4
    array-length v2, p2

    if-ge v1, v2, :cond_7

    .line 1857
    aget-object v2, p2, v1

    if-eqz v2, :cond_6

    add-int/lit8 v3, v0, 0x1

    .line 1858
    aput-object v2, p1, v0

    move v0, v3

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    move-object p2, p1

    :cond_8
    return-object p2
.end method

.method private getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, ","

    .line 755
    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 756
    :cond_0
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    invoke-static {p1, v0}, Ljavax/mail/internet/InternetAddress;->parseHeader(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1363
    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_0

    const-string p1, "To"

    goto :goto_0

    .line 1365
    :cond_0
    sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_1

    const-string p1, "Cc"

    goto :goto_0

    .line 1367
    :cond_1
    sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    if-ne p1, v0, :cond_2

    const-string p1, "Bcc"

    goto :goto_0

    .line 1369
    :cond_2
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_3

    const-string p1, "Newsgroups"

    :goto_0
    return-object p1

    .line 1372
    :cond_3
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Invalid Recipient Type"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private initStrict()V
    .locals 3

    .line 326
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "mail.mime.address.strict"

    const/4 v2, 0x1

    .line 328
    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->strict:Z

    const-string v1, "mail.mime.allowutf8"

    const/4 v2, 0x0

    .line 330
    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->allowutf8:Z

    :cond_0
    return-void
.end method

.method private setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 763
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->allowutf8:Z

    if-eqz v0, :cond_0

    .line 764
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Ljavax/mail/internet/InternetAddress;->toUnicodeString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 766
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    invoke-static {p2, v0}, Ljavax/mail/internet/InternetAddress;->toString([Ljavax/mail/Address;I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    .line 768
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_1

    .line 770
    :cond_1
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public addFrom([Ljavax/mail/Address;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "From"

    .line 474
    invoke-direct {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    return-void
.end method

.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2027
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2101
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->addHeaderLine(Ljava/lang/String;)V

    return-void
.end method

.method public addRecipients(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 709
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    .line 710
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "Newsgroups"

    .line 711
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 713
    :cond_0
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object p1

    .line 714
    invoke-static {p2}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object p2

    .line 713
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 684
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_0

    .line 685
    invoke-static {p2}, Ljavax/mail/internet/NewsAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string p2, "Newsgroups"

    .line 687
    invoke-virtual {p0, p2, p1}, Ljavax/mail/internet/MimeMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 689
    :cond_0
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->addAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2304
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    iget-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->allowutf8:Z

    invoke-direct {v0, p1, v1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;Z)V

    return-object v0
.end method

.method protected createMimeMessage(Ljavax/mail/Session;)Ljavax/mail/internet/MimeMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2321
    new-instance v0, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v0, p1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    return-object v0
.end method

.method public getAllHeaderLines()Ljava/util/Enumeration;
    .locals 1
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

    .line 2113
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaderLines()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .locals 1
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

    .line 2061
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllRecipients()[Ljavax/mail/Address;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 598
    invoke-super {p0}, Ljavax/mail/Message;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v0

    .line 599
    sget-object v1, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    if-nez v0, :cond_1

    return-object v1

    .line 606
    :cond_1
    array-length v2, v0

    array-length v3, v1

    add-int/2addr v2, v3

    new-array v2, v2, [Ljavax/mail/Address;

    .line 607
    array-length v3, v0

    const/4 v4, 0x0

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 608
    array-length v0, v0

    array-length v3, v1

    invoke-static {v1, v4, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method

.method public getContent()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1504
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 1508
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/sun/mail/util/FolderClosedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/util/MessageRemovedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1514
    sget-boolean v1, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z

    if-eqz v1, :cond_3

    instance-of v1, v0, Ljavax/mail/Multipart;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljavax/mail/Message;

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez v1, :cond_2

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    .line 1517
    :cond_2
    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    .line 1522
    instance-of v1, v0, Ljavax/mail/internet/MimeMultipart;

    if-eqz v1, :cond_3

    .line 1523
    move-object v1, v0

    check-cast v1, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeMultipart;->parse()V

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 1512
    new-instance v1, Ljavax/mail/MessageRemovedException;

    invoke-virtual {v0}, Lcom/sun/mail/util/MessageRemovedIOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 1510
    new-instance v1, Ljavax/mail/FolderClosedException;

    invoke-virtual {v0}, Lcom/sun/mail/util/FolderClosedIOException;->getFolder()Ljavax/mail/Folder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/sun/mail/util/FolderClosedIOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljavax/mail/FolderClosedException;-><init>(Ljavax/mail/Folder;Ljava/lang/String;)V

    throw v1
.end method

.method public getContentID()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Content-Id"

    const/4 v1, 0x0

    .line 1123
    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentLanguage()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1271
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentLanguage(Ljavax/mail/internet/MimePart;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentMD5()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Content-MD5"

    const/4 v1, 0x0

    .line 1158
    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContentStream()Ljava/io/InputStream;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1414
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 1415
    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 1416
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-eqz v0, :cond_1

    .line 1417
    new-instance v0, Ljavax/mail/util/SharedByteArrayInputStream;

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    invoke-direct {v0, v1}, Ljavax/mail/util/SharedByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 1419
    :cond_1
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "No MimeMessage content"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Content-Type"

    const/4 v1, 0x0

    .line 1028
    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1029
    invoke-static {p0, v0}, Lcom/sun/mail/util/MimeUtil;->cleanContentType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "text/plain"

    :cond_0
    return-object v0
.end method

.method public declared-synchronized getDataHandler()Ljavax/activation/DataHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1474
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    if-nez v0, :cond_0

    .line 1475
    new-instance v0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;

    invoke-direct {v0, p0}, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;-><init>(Ljavax/mail/internet/MimePart;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    .line 1476
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1193
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getDescription(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisposition()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1074
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getDisposition(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1107
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getEncoding(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1331
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getFileName(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getFlags()Ljavax/mail/Flags;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2156
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0}, Ljavax/mail/Flags;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Flags;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getFrom()[Ljavax/mail/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "From"

    .line 384
    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Sender"

    .line 386
    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1984
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1966
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1395
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getLineCount()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, -0x1

    return v0
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
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

    .line 2126
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
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

    .line 2074
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public getMessageID()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Message-ID"

    const/4 v1, 0x0

    .line 1306
    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
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

    .line 2139
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 1
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

    .line 2087
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
.end method

.method public getRawInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1440
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getReceivedDate()Ljava/util/Date;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 578
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_1

    const-string p1, "Newsgroups"

    const-string v0, ","

    .line 579
    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 580
    :cond_0
    invoke-static {p1}, Ljavax/mail/internet/NewsAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/NewsAddress;

    move-result-object p1

    :goto_0
    return-object p1

    .line 582
    :cond_1
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object p1

    return-object p1
.end method

.method public getReplyTo()[Ljavax/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Reply-To"

    .line 730
    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 731
    array-length v1, v0

    if-nez v1, :cond_1

    .line 732
    :cond_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getSender()Ljavax/mail/Address;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Sender"

    .line 491
    invoke-direct {p0, v0}, Ljavax/mail/internet/MimeMessage;->getAddressHeader(Ljava/lang/String;)[Ljavax/mail/Address;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 492
    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 494
    aget-object v0, v0, v1

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSentDate()Ljava/util/Date;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Date"

    const/4 v1, 0x0

    .line 905
    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 908
    :try_start_0
    sget-object v2, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    monitor-enter v2
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 909
    :try_start_1
    invoke-virtual {v2, v0}, Ljavax/mail/internet/MailDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    monitor-exit v2

    return-object v0

    :catchall_0
    move-exception v0

    .line 910
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    return-object v1
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 979
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-eqz v0, :cond_0

    .line 980
    array-length v0, v0

    return v0

    .line 981
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 983
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v0, :cond_1

    return v0

    :catch_0
    :cond_1
    const/4 v0, -0x1

    return v0
.end method

.method public getSubject()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Subject"

    const/4 v1, 0x0

    .line 813
    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-object v1

    .line 819
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1055
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized isSet(Ljavax/mail/Flags$Flag;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2180
    :try_start_0
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {v0, p1}, Ljavax/mail/Flags;->contains(Ljavax/mail/Flags$Flag;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected parse(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 348
    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljavax/mail/internet/SharedInputStream;

    if-nez v0, :cond_0

    .line 351
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 353
    :cond_0
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->createInternetHeaders(Ljava/io/InputStream;)Ljavax/mail/internet/InternetHeaders;

    move-result-object v0

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 355
    instance-of v0, p1, Ljavax/mail/internet/SharedInputStream;

    if-eqz v0, :cond_1

    .line 356
    check-cast p1, Ljavax/mail/internet/SharedInputStream;

    .line 357
    invoke-interface {p1}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;

    goto :goto_0

    .line 360
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/MimeMessage;->content:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 p1, 0x0

    .line 366
    iput-boolean p1, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    return-void

    :catch_0
    move-exception p1

    .line 362
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "IOException"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2041
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->removeHeader(Ljava/lang/String;)V

    return-void
.end method

.method public reply(Z)Ljavax/mail/Message;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1683
    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->reply(ZZ)Ljavax/mail/Message;

    move-result-object p1

    return-object p1
.end method

.method public reply(ZZ)Ljavax/mail/Message;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1722
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->createMimeMessage(Ljavax/mail/Session;)Ljavax/mail/internet/MimeMessage;

    move-result-object v0

    const-string v1, "Subject"

    const/4 v2, 0x0

    .line 1730
    invoke-virtual {p0, v1, v2}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const-string v6, "Re: "

    const/4 v7, 0x0

    const/4 v8, 0x4

    move-object v3, v9

    .line 1732
    invoke-virtual/range {v3 .. v8}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1733
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Re: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1734
    :cond_0
    invoke-virtual {v0, v1, v9}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1736
    :cond_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getReplyTo()[Ljavax/mail/Address;

    move-result-object v1

    .line 1737
    sget-object v3, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v3, v1}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    if-eqz p1, :cond_9

    .line 1739
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1741
    iget-object v3, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-static {v3}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1743
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1746
    :cond_2
    iget-object v3, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    if-eqz v3, :cond_3

    .line 1747
    iget-object v3, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    const-string v4, "mail.alternates"

    invoke-virtual {v3, v4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_3
    move-object v3, v2

    :goto_0
    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 1750
    invoke-static {v3, v4}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v3

    .line 1749
    invoke-direct {p0, p1, v3}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/List;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    .line 1754
    :cond_4
    iget-object v3, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    if-eqz v3, :cond_5

    .line 1755
    iget-object v3, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    .line 1756
    invoke-virtual {v3}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v3

    const-string v5, "mail.replyallcc"

    .line 1755
    invoke-static {v3, v5, v4}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v4

    .line 1759
    :cond_5
    invoke-direct {p0, p1, v1}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/List;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    .line 1760
    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v1

    .line 1761
    invoke-direct {p0, p1, v1}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/List;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 1762
    array-length v3, v1

    if-lez v3, :cond_7

    if-eqz v4, :cond_6

    .line 1764
    sget-object v3, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v3, v1}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    goto :goto_1

    .line 1766
    :cond_6
    sget-object v3, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v3, v1}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 1768
    :cond_7
    :goto_1
    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object v1

    .line 1769
    invoke-direct {p0, p1, v1}, Ljavax/mail/internet/MimeMessage;->eliminateDuplicates(Ljava/util/List;[Ljavax/mail/Address;)[Ljavax/mail/Address;

    move-result-object p1

    if-eqz p1, :cond_8

    .line 1770
    array-length v1, p1

    if-lez v1, :cond_8

    .line 1771
    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-virtual {v0, v1, p1}, Ljavax/mail/internet/MimeMessage;->addRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    .line 1773
    :cond_8
    sget-object p1, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->getRecipients(Ljavax/mail/Message$RecipientType;)[Ljavax/mail/Address;

    move-result-object p1

    if-eqz p1, :cond_9

    .line 1774
    array-length v1, p1

    if-lez v1, :cond_9

    .line 1775
    sget-object v1, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    invoke-virtual {v0, v1, p1}, Ljavax/mail/internet/MimeMessage;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    :cond_9
    const-string p1, "Message-Id"

    .line 1778
    invoke-virtual {p0, p1, v2}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "In-Reply-To"

    if-eqz p1, :cond_a

    .line 1780
    invoke-virtual {v0, v1, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    const-string v2, "References"

    const-string v3, " "

    .line 1796
    invoke-virtual {p0, v2, v3}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_b

    .line 1799
    invoke-virtual {p0, v1, v3}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_b
    if-eqz p1, :cond_c

    if-eqz v4, :cond_d

    .line 1803
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_c
    move-object p1, v4

    :cond_d
    :goto_2
    if-eqz p1, :cond_e

    const/16 v1, 0xc

    .line 1808
    invoke-static {v1, p1}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v2, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    if-eqz p2, :cond_f

    .line 1812
    :try_start_0
    sget-object p1, Ljavax/mail/internet/MimeMessage;->answeredFlag:Ljavax/mail/Flags;

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->setFlags(Ljavax/mail/Flags;Z)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_f
    return-object v0
.end method

.method public saveChanges()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 2229
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    .line 2230
    iput-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    .line 2231
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->updateHeaders()V

    return-void
.end method

.method public setContent(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1569
    instance-of v0, p1, Ljavax/mail/Multipart;

    if-eqz v0, :cond_0

    .line 1570
    check-cast p1, Ljavax/mail/Multipart;

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    goto :goto_0

    .line 1572
    :cond_0
    new-instance v0, Ljavax/activation/DataHandler;

    invoke-direct {v0, p1, p2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->setDataHandler(Ljavax/activation/DataHandler;)V

    :goto_0
    return-void
.end method

.method public setContent(Ljavax/mail/Multipart;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1648
    new-instance v0, Ljavax/activation/DataHandler;

    invoke-virtual {p1}, Ljavax/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 1649
    invoke-virtual {p1, p0}, Ljavax/mail/Multipart;->setParent(Ljavax/mail/Part;)V

    return-void
.end method

.method public setContentID(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Content-ID"

    if-nez p1, :cond_0

    .line 1140
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 1142
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setContentLanguage([Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1288
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setContentLanguage(Ljavax/mail/internet/MimePart;[Ljava/lang/String;)V

    return-void
.end method

.method public setContentMD5(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Content-MD5"

    .line 1172
    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setDataHandler(Ljavax/activation/DataHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1542
    :try_start_0
    iput-object p1, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    const/4 p1, 0x0

    .line 1543
    iput-object p1, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    .line 1544
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->invalidateContentHeaders(Ljavax/mail/internet/MimePart;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1545
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1223
    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setDescription(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1254
    invoke-static {p0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDisposition(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1090
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1356
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setFlags(Ljavax/mail/Flags;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    if-eqz p2, :cond_0

    .line 2198
    :try_start_0
    iget-object p2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {p2, p1}, Ljavax/mail/Flags;->add(Ljavax/mail/Flags;)V

    goto :goto_0

    .line 2200
    :cond_0
    iget-object p2, p0, Ljavax/mail/internet/MimeMessage;->flags:Ljavax/mail/Flags;

    invoke-virtual {p2, p1}, Ljavax/mail/Flags;->remove(Ljavax/mail/Flags;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2201
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setFrom()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "No From address"

    .line 448
    :try_start_0
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    invoke-static {v1}, Ljavax/mail/internet/InternetAddress;->_getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {p0, v1}, Ljavax/mail/internet/MimeMessage;->setFrom(Ljavax/mail/Address;)V

    return-void

    .line 457
    :cond_0
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-direct {v1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_0
    move-exception v1

    .line 452
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-direct {v2, v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "From"

    if-nez p1, :cond_0

    .line 428
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 430
    :cond_0
    invoke-static {p1}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    :goto_0
    return-void
.end method

.method public setFrom(Ljavax/mail/Address;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "From"

    if-nez p1, :cond_0

    .line 407
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x6

    .line 409
    invoke-virtual {p1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2006
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRecipients(Ljavax/mail/Message$RecipientType;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 659
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_2

    const-string p1, "Newsgroups"

    if-eqz p2, :cond_1

    .line 660
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 663
    :cond_0
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 661
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_2

    .line 665
    :cond_2
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object p1

    if-nez p2, :cond_3

    const/4 p2, 0x0

    goto :goto_1

    .line 666
    :cond_3
    invoke-static {p2}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;

    move-result-object p2

    .line 665
    :goto_1
    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    :goto_2
    return-void
.end method

.method public setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 630
    sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;

    if-ne p1, v0, :cond_2

    const-string p1, "Newsgroups"

    if-eqz p2, :cond_1

    .line 631
    array-length v0, p2

    if-nez v0, :cond_0

    goto :goto_0

    .line 634
    :cond_0
    invoke-static {p2}, Ljavax/mail/internet/NewsAddress;->toString([Ljavax/mail/Address;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 632
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_1

    .line 636
    :cond_2
    invoke-direct {p0, p1}, Ljavax/mail/internet/MimeMessage;->getHeaderName(Ljavax/mail/Message$RecipientType;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    :goto_1
    return-void
.end method

.method public setReplyTo([Ljavax/mail/Address;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Reply-To"

    .line 749
    invoke-direct {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setAddressHeader(Ljava/lang/String;[Ljavax/mail/Address;)V

    return-void
.end method

.method public setSender(Ljavax/mail/Address;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Sender"

    if-nez p1, :cond_0

    .line 513
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    .line 515
    invoke-virtual {p1}, Ljavax/mail/Address;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setSentDate(Ljava/util/Date;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string p1, "Date"

    .line 934
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 936
    :cond_0
    sget-object v0, Ljavax/mail/internet/MimeMessage;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    monitor-enter v0

    :try_start_0
    const-string v1, "Date"

    .line 937
    invoke-virtual {v0, p1}, Ljavax/mail/internet/MailDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    monitor-exit v0

    :goto_0
    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setSubject(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 851
    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSubject(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Subject"

    if-nez p1, :cond_0

    .line 881
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 885
    :try_start_0
    invoke-static {p1, p2, v1}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x9

    .line 884
    invoke-static {p2, p1}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 887
    new-instance p2, Ljavax/mail/MessagingException;

    const-string v0, "Encoding error"

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1596
    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->setText(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "plain"

    .line 1613
    invoke-static {p0, p1, p2, v0}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1632
    invoke-static {p0, p1, p2, p3}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected declared-synchronized updateHeaders()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2271
    :try_start_0
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders(Ljavax/mail/internet/MimePart;)V

    const-string v0, "MIME-Version"

    const-string v1, "1.0"

    .line 2272
    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Date"

    .line 2273
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2274
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeMessage;->setSentDate(Ljava/util/Date;)V

    .line 2275
    :cond_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->updateMessageID()V

    .line 2277
    iget-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 2278
    new-instance v0, Ljavax/activation/DataHandler;

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->dh:Ljavax/activation/DataHandler;

    const/4 v0, 0x0

    .line 2279
    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    .line 2280
    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    .line 2281
    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 2283
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2286
    :catch_0
    :cond_1
    :try_start_2
    iput-object v0, p0, Ljavax/mail/internet/MimeMessage;->contentStream:Ljava/io/InputStream;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2288
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected updateMessageID()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2243
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "<"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljavax/mail/internet/MimeMessage;->session:Ljavax/mail/Session;

    .line 2244
    invoke-static {v1}, Ljavax/mail/internet/UniqueValue;->getUniqueMessageIDValue(Ljavax/mail/Session;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Message-ID"

    .line 2243
    invoke-virtual {p0, v1, v0}, Ljavax/mail/internet/MimeMessage;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1887
    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V

    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1909
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->saved:Z

    if-nez v0, :cond_0

    .line 1910
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->saveChanges()V

    .line 1912
    :cond_0
    iget-boolean v0, p0, Ljavax/mail/internet/MimeMessage;->modified:Z

    if-eqz v0, :cond_1

    .line 1913
    invoke-static {p0, p1, p2}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljavax/mail/internet/MimePart;Ljava/io/OutputStream;[Ljava/lang/String;)V

    return-void

    .line 1919
    :cond_1
    invoke-virtual {p0, p2}, Ljavax/mail/internet/MimeMessage;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p2

    .line 1920
    new-instance v0, Lcom/sun/mail/util/LineOutputStream;

    iget-boolean v1, p0, Ljavax/mail/internet/MimeMessage;->allowutf8:Z

    invoke-direct {v0, p1, v1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 1921
    :goto_0
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1922
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_0

    .line 1925
    :cond_2
    invoke-virtual {v0}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    .line 1928
    iget-object p2, p0, Ljavax/mail/internet/MimeMessage;->content:[B

    if-nez p2, :cond_5

    const/16 p2, 0x2000

    new-array p2, p2, [B

    .line 1934
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeMessage;->getContentStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1937
    :goto_1
    :try_start_1
    invoke-virtual {v0, p2}, Ljava/io/InputStream;->read([B)I

    move-result v1

    if-lez v1, :cond_3

    const/4 v2, 0x0

    .line 1938
    invoke-virtual {p1, p2, v2, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_6

    .line 1941
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 1943
    :cond_4
    throw p1

    .line 1945
    :cond_5
    invoke-virtual {p1, p2}, Ljava/io/OutputStream;->write([B)V

    .line 1947
    :cond_6
    :goto_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void
.end method
