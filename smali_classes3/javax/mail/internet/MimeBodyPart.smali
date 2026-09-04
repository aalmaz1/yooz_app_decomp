.class public Ljavax/mail/internet/MimeBodyPart;
.super Ljavax/mail/BodyPart;
.source "MimeBodyPart.java"

# interfaces
.implements Ljavax/mail/internet/MimePart;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;,
        Ljavax/mail/internet/MimeBodyPart$EncodedFileDataSource;
    }
.end annotation


# static fields
.field private static final allowutf8:Z

.field static final cacheMultipart:Z

.field private static final decodeFileName:Z

.field private static final encodeFileName:Z

.field private static final ignoreMultipartEncoding:Z

.field private static final setContentTypeFileName:Z

.field private static final setDefaultTextCharset:Z


# instance fields
.field protected cachedContent:Ljava/lang/Object;

.field protected content:[B

.field protected contentStream:Ljava/io/InputStream;

.field protected dh:Ljavax/activation/DataHandler;

.field protected headers:Ljavax/mail/internet/InternetHeaders;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "mail.mime.setdefaulttextcharset"

    const/4 v1, 0x1

    .line 91
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->setDefaultTextCharset:Z

    const-string v0, "mail.mime.setcontenttypefilename"

    .line 95
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->setContentTypeFileName:Z

    const-string v0, "mail.mime.encodefilename"

    const/4 v2, 0x0

    .line 99
    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->encodeFileName:Z

    const-string v0, "mail.mime.decodefilename"

    .line 101
    invoke-static {v0, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->decodeFileName:Z

    const-string v0, "mail.mime.ignoremultipartencoding"

    .line 103
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->ignoreMultipartEncoding:Z

    const-string v0, "mail.mime.allowutf8"

    .line 106
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->allowutf8:Z

    const-string v0, "mail.mime.cachemultipart"

    .line 111
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljavax/mail/BodyPart;-><init>()V

    .line 162
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0}, Ljavax/mail/internet/InternetHeaders;-><init>()V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 181
    invoke-direct {p0}, Ljavax/mail/BodyPart;-><init>()V

    .line 182
    instance-of v0, p1, Ljava/io/ByteArrayInputStream;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljava/io/BufferedInputStream;

    if-nez v0, :cond_0

    instance-of v0, p1, Ljavax/mail/internet/SharedInputStream;

    if-nez v0, :cond_0

    .line 185
    new-instance v0, Ljava/io/BufferedInputStream;

    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object p1, v0

    .line 187
    :cond_0
    new-instance v0, Ljavax/mail/internet/InternetHeaders;

    invoke-direct {v0, p1}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 189
    instance-of v0, p1, Ljavax/mail/internet/SharedInputStream;

    if-eqz v0, :cond_1

    .line 190
    check-cast p1, Ljavax/mail/internet/SharedInputStream;

    .line 191
    invoke-interface {p1}, Ljavax/mail/internet/SharedInputStream;->getPosition()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    goto :goto_0

    .line 194
    :cond_1
    :try_start_0
    invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/io/InputStream;)[B

    move-result-object p1

    iput-object p1, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 196
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Error reading input stream"

    invoke-direct {v0, v1, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public constructor <init>(Ljavax/mail/internet/InternetHeaders;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 214
    invoke-direct {p0}, Ljavax/mail/BodyPart;-><init>()V

    .line 215
    iput-object p1, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    .line 216
    iput-object p2, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    return-void
.end method

.method static getContentLanguage(Ljavax/mail/internet/MimePart;)[Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Content-Language"

    const/4 v1, 0x0

    .line 1373
    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    .line 1379
    :cond_0
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer;

    const-string v2, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p0, v2}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1386
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v2

    .line 1387
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v3

    const/4 v4, -0x4

    if-ne v3, v4, :cond_3

    .line 1396
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v1

    .line 1399
    :cond_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    .line 1400
    invoke-interface {p0, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    return-object v0

    :cond_3
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 1391
    invoke-virtual {v2}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method static getDescription(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Content-Description"

    const/4 v1, 0x0

    .line 1260
    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    .line 1266
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljavax/mail/internet/MimeUtility;->unfold(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method static getDisposition(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Content-Disposition"

    const/4 v1, 0x0

    .line 1229
    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    .line 1234
    :cond_0
    new-instance v0, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v0, p0}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1235
    invoke-virtual {v0}, Ljavax/mail/internet/ContentDisposition;->getDisposition()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static getEncoding(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Content-Transfer-Encoding"

    const/4 v1, 0x0

    .line 1422
    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v1

    .line 1427
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 1428
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const-string v0, "7bit"

    .line 1432
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "8bit"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "quoted-printable"

    .line 1433
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "binary"

    .line 1434
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "base64"

    .line 1435
    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 1439
    :cond_2
    new-instance v0, Ljavax/mail/internet/HeaderTokenizer;

    const-string v1, "()<>@,;:\\\"\t []/?="

    invoke-direct {v0, p0, v1}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1445
    :cond_3
    invoke-virtual {v0}, Ljavax/mail/internet/HeaderTokenizer;->next()Ljavax/mail/internet/HeaderTokenizer$Token;

    move-result-object v1

    .line 1446
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getType()I

    move-result v2

    const/4 v3, -0x4

    if-ne v2, v3, :cond_4

    return-object p0

    :cond_4
    const/4 v3, -0x1

    if-ne v2, v3, :cond_3

    .line 1450
    invoke-virtual {v1}, Ljavax/mail/internet/HeaderTokenizer$Token;->getValue()Ljava/lang/String;

    move-result-object p0

    :cond_5
    :goto_0
    return-object p0
.end method

.method static getFileName(Ljavax/mail/internet/MimePart;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Content-Disposition"

    const/4 v1, 0x0

    .line 1290
    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1294
    new-instance v2, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v2, v0}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    const-string v0, "filename"

    .line 1295
    invoke-virtual {v2, v0}, Ljavax/mail/internet/ContentDisposition;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    const-string v2, "Content-Type"

    .line 1299
    invoke-interface {p0, v2, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1300
    invoke-static {p0, v1}, Lcom/sun/mail/util/MimeUtil;->cleanContentType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1303
    :try_start_0
    new-instance v1, Ljavax/mail/internet/ContentType;

    invoke-direct {v1, p0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string p0, "name"

    .line 1304
    invoke-virtual {v1, p0}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1308
    :catch_0
    :cond_1
    sget-boolean p0, Ljavax/mail/internet/MimeBodyPart;->decodeFileName:Z

    if-eqz p0, :cond_2

    if-eqz v0, :cond_2

    .line 1310
    :try_start_1
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->decodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 1312
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Can\'t decode filename"

    invoke-direct {v0, v1, p0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method static invalidateContentHeaders(Ljavax/mail/internet/MimePart;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Content-Type"

    .line 1643
    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    const-string v0, "Content-Transfer-Encoding"

    .line 1644
    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    return-void
.end method

.method static isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1200
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object p0

    .line 1202
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, p0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/16 v0, 0x3b

    .line 1206
    :try_start_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 1208
    new-instance v1, Ljavax/mail/internet/ContentType;

    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result p0
    :try_end_1
    .catch Ljavax/mail/internet/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    return p0

    .line 1211
    :catch_1
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static restrictEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1469
    sget-boolean v0, Ljavax/mail/internet/MimeBodyPart;->ignoreMultipartEncoding:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "7bit"

    .line 1472
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "8bit"

    .line 1473
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "binary"

    .line 1474
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 1477
    :cond_1
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_2

    return-object p1

    .line 1487
    :cond_2
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, p0}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string p0, "multipart/*"

    .line 1488
    invoke-virtual {v0, p0}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    return-object v1

    :cond_3
    const-string p0, "message/*"

    .line 1490
    invoke-virtual {v0, p0}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "mail.mime.allowencodedmessages"

    const/4 v0, 0x0

    .line 1491
    invoke-static {p0, v0}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result p0
    :try_end_0
    .catch Ljavax/mail/internet/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_4

    return-object v1

    :catch_0
    :cond_4
    :goto_0
    return-object p1
.end method

.method static setContentLanguage(Ljavax/mail/internet/MimePart;[Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget-object v2, p1, v1

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1407
    aget-object v1, p1, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x12

    add-int/2addr v2, v1

    const/4 v1, 0x1

    move v3, v1

    .line 1408
    :goto_0
    array-length v4, p1

    if-ge v3, v4, :cond_1

    const/16 v4, 0x2c

    .line 1409
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/2addr v2, v1

    const/16 v4, 0x4c

    if-le v2, v4, :cond_0

    const-string v2, "\r\n\t"

    .line 1412
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x8

    .line 1415
    :cond_0
    aget-object v4, p1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1416
    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const-string p1, "Content-Language"

    .line 1418
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static setDescription(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Content-Description"

    if-nez p1, :cond_0

    .line 1276
    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1282
    :try_start_0
    invoke-static {p1, p2, v1}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0x15

    .line 1281
    invoke-static {p2, p1}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 1284
    new-instance p1, Ljavax/mail/MessagingException;

    const-string p2, "Encoding error"

    invoke-direct {p1, p2, p0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method static setDisposition(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Content-Disposition"

    if-nez p1, :cond_0

    .line 1241
    invoke-interface {p0, v0}, Ljavax/mail/internet/MimePart;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1243
    invoke-interface {p0, v0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1250
    new-instance v2, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v2, v1}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1251
    invoke-virtual {v2, p1}, Ljavax/mail/internet/ContentDisposition;->setDisposition(Ljava/lang/String;)V

    .line 1252
    invoke-virtual {v2}, Ljavax/mail/internet/ContentDisposition;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1254
    :cond_1
    invoke-interface {p0, v0, p1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static setEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "Content-Transfer-Encoding"

    .line 1459
    invoke-interface {p0, v0, p1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static setFileName(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1320
    sget-boolean v0, Ljavax/mail/internet/MimeBodyPart;->encodeFileName:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 1322
    :try_start_0
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1324
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "Can\'t encode filename"

    invoke-direct {p1, v0, p0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_0
    :goto_0
    const-string v1, "Content-Disposition"

    const/4 v2, 0x0

    .line 1329
    invoke-interface {p0, v1, v2}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1330
    new-instance v4, Ljavax/mail/internet/ContentDisposition;

    if-nez v3, :cond_1

    const-string v3, "attachment"

    :cond_1
    invoke-direct {v4, v3}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    .line 1333
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object v3

    .line 1334
    invoke-virtual {v4}, Ljavax/mail/internet/ContentDisposition;->getParameterList()Ljavax/mail/internet/ParameterList;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1336
    new-instance v5, Ljavax/mail/internet/ParameterList;

    invoke-direct {v5}, Ljavax/mail/internet/ParameterList;-><init>()V

    .line 1337
    invoke-virtual {v4, v5}, Ljavax/mail/internet/ContentDisposition;->setParameterList(Ljavax/mail/internet/ParameterList;)V

    :cond_2
    const-string v6, "filename"

    if-eqz v0, :cond_3

    .line 1340
    invoke-virtual {v5, v6, p1}, Ljavax/mail/internet/ParameterList;->setLiteral(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1342
    :cond_3
    invoke-virtual {v5, v6, p1, v3}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    :goto_1
    invoke-virtual {v4}, Ljavax/mail/internet/ContentDisposition;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v1, v4}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    sget-boolean v1, Ljavax/mail/internet/MimeBodyPart;->setContentTypeFileName:Z

    if-eqz v1, :cond_6

    const-string v1, "Content-Type"

    .line 1350
    invoke-interface {p0, v1, v2}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1351
    invoke-static {p0, v2}, Lcom/sun/mail/util/MimeUtil;->cleanContentType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 1354
    :try_start_1
    new-instance v4, Ljavax/mail/internet/ContentType;

    invoke-direct {v4, v2}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    .line 1356
    invoke-virtual {v4}, Ljavax/mail/internet/ContentType;->getParameterList()Ljavax/mail/internet/ParameterList;

    move-result-object v2

    if-nez v2, :cond_4

    .line 1358
    new-instance v2, Ljavax/mail/internet/ParameterList;

    invoke-direct {v2}, Ljavax/mail/internet/ParameterList;-><init>()V

    .line 1359
    invoke-virtual {v4, v2}, Ljavax/mail/internet/ContentType;->setParameterList(Ljavax/mail/internet/ParameterList;)V
    :try_end_1
    .catch Ljavax/mail/internet/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_4
    const-string v5, "name"

    if-eqz v0, :cond_5

    .line 1362
    :try_start_2
    invoke-virtual {v2, v5, p1}, Ljavax/mail/internet/ParameterList;->setLiteral(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1364
    :cond_5
    invoke-virtual {v2, v5, p1, v3}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1365
    :goto_2
    invoke-virtual {v4}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/mail/internet/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_6
    return-void
.end method

.method static setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    if-nez p2, :cond_1

    .line 1218
    invoke-static {p1}, Ljavax/mail/internet/MimeUtility;->checkAscii(Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 1219
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "us-ascii"

    .line 1224
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "text/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "; charset="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "()<>@,;:\\\"\t []/?="

    .line 1225
    invoke-static {p2, v0}, Ljavax/mail/internet/MimeUtility;->quote(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1224
    invoke-interface {p0, p1, p2}, Ljavax/mail/internet/MimePart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static updateHeaders(Ljavax/mail/internet/MimePart;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "charset"

    const-string v1, "Content-Type"

    const-string v2, "MIME part of type \""

    .line 1501
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    .line 1506
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljavax/activation/DataHandler;->getContentType()Ljava/lang/String;

    move-result-object v4

    .line 1508
    invoke-interface {p0, v1}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v6

    .line 1510
    :goto_0
    new-instance v8, Ljavax/mail/internet/ContentType;

    invoke-direct {v8, v4}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v9, "multipart/*"

    .line 1518
    invoke-virtual {v8, v9}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 1522
    instance-of v6, p0, Ljavax/mail/internet/MimeBodyPart;

    if-eqz v6, :cond_3

    .line 1523
    move-object v6, p0

    check-cast v6, Ljavax/mail/internet/MimeBodyPart;

    .line 1524
    iget-object v6, v6, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    if-eqz v6, :cond_2

    goto :goto_1

    .line 1525
    :cond_2
    invoke-virtual {v3}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 1526
    :cond_3
    instance-of v6, p0, Ljavax/mail/internet/MimeMessage;

    if-eqz v6, :cond_5

    .line 1527
    move-object v6, p0

    check-cast v6, Ljavax/mail/internet/MimeMessage;

    .line 1528
    iget-object v9, v6, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    if-eqz v9, :cond_4

    iget-object v6, v6, Ljavax/mail/internet/MimeMessage;->cachedContent:Ljava/lang/Object;

    goto :goto_1

    .line 1529
    :cond_4
    invoke-virtual {v3}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v6

    goto :goto_1

    .line 1531
    :cond_5
    invoke-virtual {v3}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v6

    .line 1532
    :goto_1
    instance-of v9, v6, Ljavax/mail/internet/MimeMultipart;

    if-eqz v9, :cond_6

    .line 1533
    check-cast v6, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v6}, Ljavax/mail/internet/MimeMultipart;->updateHeaders()V

    goto :goto_2

    .line 1535
    :cond_6
    new-instance p0, Ljavax/mail/MessagingException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" contains object of type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1537
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " instead of MimeMultipart"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    const-string v2, "message/rfc822"

    .line 1538
    invoke-virtual {v8, v2}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_2
    move v6, v7

    .line 1552
    :cond_8
    instance-of v2, v3, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;

    if-eqz v2, :cond_b

    .line 1553
    move-object v2, v3

    check-cast v2, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;

    .line 1554
    invoke-virtual {v2}, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->getPart()Ljavax/mail/internet/MimePart;

    move-result-object v2

    if-eq v2, p0, :cond_a

    if-eqz v5, :cond_9

    .line 1557
    invoke-interface {v2}, Ljavax/mail/internet/MimePart;->getContentType()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v1, v7}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1562
    :cond_9
    invoke-interface {v2}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 1564
    invoke-static {p0, v2}, Ljavax/mail/internet/MimeBodyPart;->setEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    :cond_a
    return-void

    :cond_b
    if-nez v6, :cond_e

    const-string v2, "Content-Transfer-Encoding"

    .line 1574
    invoke-interface {p0, v2}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_c

    .line 1575
    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->getEncoding(Ljavax/activation/DataHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Ljavax/mail/internet/MimeBodyPart;->setEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    :cond_c
    if-eqz v5, :cond_e

    .line 1577
    sget-boolean v2, Ljavax/mail/internet/MimeBodyPart;->setDefaultTextCharset:Z

    if-eqz v2, :cond_e

    const-string v2, "text/*"

    .line 1578
    invoke-virtual {v8, v2}, Ljavax/mail/internet/ContentType;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1579
    invoke-virtual {v8, v0}, Ljavax/mail/internet/ContentType;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_e

    .line 1591
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_d

    const-string v3, "7bit"

    .line 1592
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "us-ascii"

    goto :goto_3

    .line 1595
    :cond_d
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object v2

    .line 1596
    :goto_3
    invoke-virtual {v8, v0, v2}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1597
    invoke-virtual {v8}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_e
    if-eqz v5, :cond_12

    .line 1611
    sget-boolean v0, Ljavax/mail/internet/MimeBodyPart;->setContentTypeFileName:Z

    if-eqz v0, :cond_11

    const-string v0, "Content-Disposition"

    const/4 v2, 0x0

    .line 1612
    invoke-interface {p0, v0, v2}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1615
    new-instance v2, Ljavax/mail/internet/ContentDisposition;

    invoke-direct {v2, v0}, Ljavax/mail/internet/ContentDisposition;-><init>(Ljava/lang/String;)V

    const-string v0, "filename"

    .line 1616
    invoke-virtual {v2, v0}, Ljavax/mail/internet/ContentDisposition;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 1618
    invoke-virtual {v8}, Ljavax/mail/internet/ContentType;->getParameterList()Ljavax/mail/internet/ParameterList;

    move-result-object v2

    if-nez v2, :cond_f

    .line 1620
    new-instance v2, Ljavax/mail/internet/ParameterList;

    invoke-direct {v2}, Ljavax/mail/internet/ParameterList;-><init>()V

    .line 1621
    invoke-virtual {v8, v2}, Ljavax/mail/internet/ContentType;->setParameterList(Ljavax/mail/internet/ParameterList;)V

    .line 1623
    :cond_f
    sget-boolean v3, Ljavax/mail/internet/MimeBodyPart;->encodeFileName:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "name"

    if-eqz v3, :cond_10

    .line 1625
    :try_start_1
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1624
    invoke-virtual {v2, v4, v0}, Ljavax/mail/internet/ParameterList;->setLiteral(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 1628
    :cond_10
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultMIMECharset()Ljava/lang/String;

    move-result-object v3

    .line 1627
    invoke-virtual {v2, v4, v0, v3}, Ljavax/mail/internet/ParameterList;->set(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1629
    :goto_4
    invoke-virtual {v8}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1634
    :cond_11
    invoke-interface {p0, v1, v4}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_12
    return-void

    :catch_0
    move-exception p0

    .line 1637
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "IOException updating headers"

    invoke-direct {v0, v1, p0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method static writeTo(Ljavax/mail/internet/MimePart;Ljava/io/OutputStream;[Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1652
    instance-of v0, p1, Lcom/sun/mail/util/LineOutputStream;

    if-eqz v0, :cond_0

    .line 1653
    move-object v0, p1

    check-cast v0, Lcom/sun/mail/util/LineOutputStream;

    goto :goto_0

    .line 1655
    :cond_0
    new-instance v0, Lcom/sun/mail/util/LineOutputStream;

    sget-boolean v1, Ljavax/mail/internet/MimeBodyPart;->allowutf8:Z

    invoke-direct {v0, p1, v1}, Lcom/sun/mail/util/LineOutputStream;-><init>(Ljava/io/OutputStream;Z)V

    .line 1660
    :goto_0
    invoke-interface {p0, p2}, Ljavax/mail/internet/MimePart;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p2

    .line 1661
    :goto_1
    invoke-interface {p2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1662
    invoke-interface {p2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/LineOutputStream;->writeln(Ljava/lang/String;)V

    goto :goto_1

    .line 1665
    :cond_1
    invoke-virtual {v0}, Lcom/sun/mail/util/LineOutputStream;->writeln()V

    const/4 p2, 0x0

    .line 1678
    :try_start_0
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    .line 1679
    instance-of v1, v0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;

    if-eqz v1, :cond_2

    .line 1680
    check-cast v0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;

    .line 1681
    invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->getPart()Ljavax/mail/internet/MimePart;

    move-result-object v1

    .line 1682
    invoke-interface {v1}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 1683
    invoke-virtual {v0}, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;->getContentStream()Ljava/io/InputStream;

    move-result-object p2

    :cond_2
    if-eqz p2, :cond_3

    const/16 p0, 0x2000

    new-array p0, p0, [B

    .line 1689
    :goto_2
    invoke-virtual {p2, p0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    if-lez v0, :cond_4

    const/4 v1, 0x0

    .line 1690
    invoke-virtual {p1, p0, v1, v0}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_2

    .line 1693
    :cond_3
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->restrictEncoding(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1692
    invoke-static {p1, v0}, Ljavax/mail/internet/MimeUtility;->encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object p1

    .line 1694
    invoke-interface {p0}, Ljavax/mail/internet/MimePart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljavax/activation/DataHandler;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    if-eqz p2, :cond_5

    .line 1698
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 1701
    :cond_5
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    return-void

    :catchall_0
    move-exception p0

    if-eqz p2, :cond_6

    .line 1698
    invoke-virtual {p2}, Ljava/io/InputStream;->close()V

    .line 1700
    :cond_6
    throw p0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1061
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

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

    .line 1106
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->addHeaderLine(Ljava/lang/String;)V

    return-void
.end method

.method public attachFile(Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 839
    new-instance v0, Ljavax/activation/FileDataSource;

    invoke-direct {v0, p1}, Ljavax/activation/FileDataSource;-><init>(Ljava/io/File;)V

    .line 840
    new-instance p1, Ljavax/activation/DataHandler;

    invoke-direct {p1, v0}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 841
    invoke-virtual {v0}, Ljavax/activation/FileDataSource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    const-string p1, "attachment"

    .line 842
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljava/lang/String;)V

    return-void
.end method

.method public attachFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 881
    new-instance v0, Ljavax/mail/internet/MimeBodyPart$EncodedFileDataSource;

    invoke-direct {v0, p1, p2, p3}, Ljavax/mail/internet/MimeBodyPart$EncodedFileDataSource;-><init>(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    new-instance p1, Ljavax/activation/DataHandler;

    invoke-direct {p1, v0}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 883
    invoke-interface {v0}, Ljavax/activation/DataSource;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    const-string p1, "attachment"

    .line 884
    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljava/lang/String;)V

    return-void
.end method

.method public attachFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 858
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->attachFile(Ljava/io/File;)V

    return-void
.end method

.method public attachFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 906
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2, p3}, Ljavax/mail/internet/MimeBodyPart;->attachFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    return-void
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

    .line 1116
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

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

    .line 1078
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0}, Ljavax/mail/internet/InternetHeaders;->getAllHeaders()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 679
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    if-eqz v0, :cond_0

    return-object v0

    .line 683
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/activation/DataHandler;->getContent()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/sun/mail/util/FolderClosedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/mail/util/MessageRemovedIOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 689
    sget-boolean v1, Ljavax/mail/internet/MimeBodyPart;->cacheMultipart:Z

    if-eqz v1, :cond_3

    instance-of v1, v0, Ljavax/mail/Multipart;

    if-nez v1, :cond_1

    instance-of v1, v0, Ljavax/mail/Message;

    if-eqz v1, :cond_3

    :cond_1
    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-nez v1, :cond_2

    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v1, :cond_3

    .line 692
    :cond_2
    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    .line 697
    instance-of v1, v0, Ljavax/mail/internet/MimeMultipart;

    if-eqz v1, :cond_3

    .line 698
    move-object v1, v0

    check-cast v1, Ljavax/mail/internet/MimeMultipart;

    invoke-virtual {v1}, Ljavax/mail/internet/MimeMultipart;->parse()V

    :cond_3
    return-object v0

    :catch_0
    move-exception v0

    .line 687
    new-instance v1, Ljavax/mail/MessageRemovedException;

    invoke-virtual {v0}, Lcom/sun/mail/util/MessageRemovedIOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/mail/MessageRemovedException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_1
    move-exception v0

    .line 685
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

    .line 372
    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    .line 432
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

    .line 405
    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

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

    .line 613
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 614
    check-cast v0, Ljavax/mail/internet/SharedInputStream;

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/mail/internet/SharedInputStream;->newStream(JJ)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    .line 615
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-eqz v0, :cond_1

    .line 616
    new-instance v0, Ljava/io/ByteArrayInputStream;

    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v0

    .line 618
    :cond_1
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "No MimeBodyPart content"

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

    .line 283
    invoke-virtual {p0, v0, v1}, Ljavax/mail/internet/MimeBodyPart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-static {p0, v0}, Lcom/sun/mail/util/MimeUtil;->cleanContentType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "text/plain"

    :cond_0
    return-object v0
.end method

.method public getDataHandler()Ljavax/activation/DataHandler;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 651
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    if-nez v0, :cond_0

    .line 652
    new-instance v0, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;

    invoke-direct {v0, p0}, Ljavax/mail/internet/MimeBodyPart$MimePartDataHandler;-><init>(Ljavax/mail/internet/MimePart;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    .line 653
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 464
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

    .line 327
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

    .line 359
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

    .line 549
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->getFileName(Ljavax/mail/internet/MimePart;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1028
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

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

    .line 1010
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

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

    .line 598
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getDataHandler()Ljavax/activation/DataHandler;

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

    .line 1127
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

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

    .line 1088
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object p1

    return-object p1
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

    .line 1138
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

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

    .line 1098
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

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

    .line 639
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 237
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    if-eqz v0, :cond_0

    .line 238
    array-length v0, v0

    return v0

    .line 239
    :cond_0
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    .line 241
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

.method public isMimeType(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 308
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->isMimeType(Ljavax/mail/internet/MimePart;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public removeHeader(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1069
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1}, Ljavax/mail/internet/InternetHeaders;->removeHeader(Ljava/lang/String;)V

    return-void
.end method

.method public saveFile(Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 951
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 952
    :try_start_1
    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    const/16 p1, 0x2000

    new-array p1, p1, [B

    .line 955
    :goto_0
    invoke-virtual {v0, p1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 956
    invoke-virtual {v1, p1, v3, v2}, Ljava/io/OutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 961
    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 965
    :catch_0
    :cond_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    :goto_1
    if-eqz v0, :cond_2

    .line 961
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :catch_2
    :cond_2
    if-eqz v1, :cond_3

    .line 965
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 967
    :catch_3
    :cond_3
    throw p1
.end method

.method public saveFile(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 980
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 981
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->saveFile(Ljava/io/File;)V

    return-void
.end method

.method public setContent(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 742
    instance-of v0, p1, Ljavax/mail/Multipart;

    if-eqz v0, :cond_0

    .line 743
    check-cast p1, Ljavax/mail/Multipart;

    invoke-virtual {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljavax/mail/Multipart;)V

    goto :goto_0

    .line 745
    :cond_0
    new-instance v0, Ljavax/activation/DataHandler;

    invoke-direct {v0, p1, p2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

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

    .line 821
    new-instance v0, Ljavax/activation/DataHandler;

    invoke-virtual {p1}, Ljavax/mail/Multipart;->getContentType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->setDataHandler(Ljavax/activation/DataHandler;)V

    .line 822
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

    .line 390
    invoke-virtual {p0, v0}, Ljavax/mail/internet/MimeBodyPart;->removeHeader(Ljava/lang/String;)V

    goto :goto_0

    .line 392
    :cond_0
    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 444
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

    .line 418
    invoke-virtual {p0, v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDataHandler(Ljavax/activation/DataHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 716
    iput-object p1, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    const/4 p1, 0x0

    .line 717
    iput-object p1, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    .line 718
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->invalidateContentHeaders(Ljavax/mail/internet/MimePart;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 494
    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDescription(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 525
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

    .line 343
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

    .line 577
    invoke-static {p0, p1}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljavax/mail/internet/MimePart;Ljava/lang/String;)V

    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1045
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->headers:Ljavax/mail/internet/InternetHeaders;

    invoke-virtual {v0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 770
    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljava/lang/String;Ljava/lang/String;)V

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

    .line 787
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

    .line 806
    invoke-static {p0, p1, p2, p3}, Ljavax/mail/internet/MimeBodyPart;->setText(Ljavax/mail/internet/MimePart;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected updateHeaders()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1172
    invoke-static {p0}, Ljavax/mail/internet/MimeBodyPart;->updateHeaders(Ljavax/mail/internet/MimePart;)V

    .line 1179
    iget-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1180
    new-instance v0, Ljavax/activation/DataHandler;

    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    invoke-virtual {p0}, Ljavax/mail/internet/MimeBodyPart;->getContentType()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljavax/activation/DataHandler;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->dh:Ljavax/activation/DataHandler;

    const/4 v0, 0x0

    .line 1181
    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->cachedContent:Ljava/lang/Object;

    .line 1182
    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->content:[B

    .line 1183
    iget-object v1, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 1185
    :try_start_0
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1188
    :catch_0
    :cond_0
    iput-object v0, p0, Ljavax/mail/internet/MimeBodyPart;->contentStream:Ljava/io/InputStream;

    :cond_1
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

    .line 996
    invoke-static {p0, p1, v0}, Ljavax/mail/internet/MimeBodyPart;->writeTo(Ljavax/mail/internet/MimePart;Ljava/io/OutputStream;[Ljava/lang/String;)V

    return-void
.end method
