.class public Ljavax/mail/internet/InternetHeaders;
.super Ljava/lang/Object;
.source "InternetHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/mail/internet/InternetHeaders$MatchHeaderEnum;,
        Ljavax/mail/internet/InternetHeaders$MatchStringEnum;,
        Ljavax/mail/internet/InternetHeaders$MatchEnum;,
        Ljavax/mail/internet/InternetHeaders$InternetHeader;
    }
.end annotation


# static fields
.field private static final ignoreWhitespaceLines:Z


# instance fields
.field protected headers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/mail/internet/InternetHeaders$InternetHeader;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const-string v0, "mail.mime.ignorewhitespacelines"

    const/4 v1, 0x0

    .line 86
    invoke-static {v0, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanSystemProperty(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Ljavax/mail/internet/InternetHeaders;->ignoreWhitespaceLines:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    .line 309
    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Return-Path"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 310
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Received"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 311
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Resent-Date"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 312
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Resent-From"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 313
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Resent-Sender"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 314
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Resent-To"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Resent-Cc"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 316
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Resent-Bcc"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 317
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Resent-Message-Id"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Date"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 319
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "From"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 320
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Sender"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Reply-To"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "To"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Cc"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Bcc"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 325
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Message-Id"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "In-Reply-To"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "References"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 328
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Subject"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 329
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Comments"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Keywords"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 331
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Errors-To"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 332
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "MIME-Version"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Content-Type"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Content-Transfer-Encoding"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 335
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Content-MD5"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 336
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, ":"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 337
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Content-Length"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    const-string v2, "Status"

    invoke-direct {v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 357
    invoke-direct {p0, p1, v0}, Ljavax/mail/internet/InternetHeaders;-><init>(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 379
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    .line 380
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;Z)V

    return-void
.end method

.method private static final isEmpty(Ljava/lang/String;)Z
    .registers 2

    .line 472
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_17

    sget-boolean v0, Ljavax/mail/internet/InternetHeaders;->ignoreWhitespaceLines:Z

    if-eqz v0, :cond_15

    .line 473
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-nez p0, :cond_15

    goto :goto_17

    :cond_15
    const/4 p0, 0x0

    goto :goto_18

    :cond_17
    :goto_17
    const/4 p0, 0x1

    :goto_18
    return p0
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 585
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "Received"

    .line 587
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1b

    const-string v1, "Return-Path"

    .line 588
    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    goto :goto_1b

    :cond_19
    move v1, v2

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v1, v3

    :goto_1c
    if-eqz v1, :cond_1f

    move v0, v2

    .line 591
    :cond_1f
    iget-object v2, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    :goto_26
    if-ltz v2, :cond_5c

    .line 592
    iget-object v4, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 593
    invoke-virtual {v4}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4a

    if-eqz v1, :cond_3e

    move v0, v2

    goto :goto_4a

    .line 597
    :cond_3e
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    add-int/2addr v2, v3

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    invoke-direct {v1, p1, p2}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void

    :cond_4a
    :goto_4a
    if-nez v1, :cond_59

    .line 602
    invoke-virtual {v4}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    move v0, v2

    :cond_59
    add-int/lit8 v2, v2, -0x1

    goto :goto_26

    .line 605
    :cond_5c
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v2, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    invoke-direct {v2, p1, p2}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public addHeaderLine(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 665
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_19

    const/16 v1, 0x9

    if-ne v0, v1, :cond_e

    goto :goto_19

    .line 670
    :cond_e
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    new-instance v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    invoke-direct {v1, p1}, Ljavax/mail/internet/InternetHeaders$InternetHeader;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_42

    .line 667
    :cond_19
    :goto_19
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 668
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;
    :try_end_42
    .catch Ljava/lang/StringIndexOutOfBoundsException; {:try_start_1 .. :try_end_42} :catch_42
    .catch Ljava/util/NoSuchElementException; {:try_start_1 .. :try_end_42} :catch_42

    :catch_42
    :goto_42
    return-void
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

    const/4 v0, 0x0

    .line 685
    invoke-virtual {p0, v0}, Ljavax/mail/internet/InternetHeaders;->getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public getAllHeaders()Ljava/util/Enumeration;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "Ljavax/mail/Header;",
            ">;"
        }
    .end annotation

    .line 630
    new-instance v0, Ljavax/mail/internet/InternetHeaders$MatchHeaderEnum;

    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljavax/mail/internet/InternetHeaders$MatchHeaderEnum;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 516
    invoke-virtual {p0, p1}, Ljavax/mail/internet/InternetHeaders;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 521
    :cond_8
    array-length v0, p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2a

    if-nez p2, :cond_10

    goto :goto_2a

    .line 524
    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    aget-object v1, p1, v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 525
    :goto_17
    array-length v1, p1

    if-ge v2, v1, :cond_25

    .line 526
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_17

    .line 529
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 522
    :cond_2a
    :goto_2a
    aget-object p1, p1, v1

    return-object p1
.end method

.method public getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    .line 485
    iget-object v0, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 487
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 489
    :cond_b
    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 490
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 491
    invoke-virtual {v2}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v2, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    if-eqz v3, :cond_b

    .line 492
    invoke-virtual {v2}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_b

    .line 495
    :cond_2d
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_35

    const/4 p1, 0x0

    return-object p1

    .line 498
    :cond_35
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    .line 499
    invoke-interface {v1, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1
.end method

.method public getMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 5
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

    .line 695
    new-instance v0, Ljavax/mail/internet/InternetHeaders$MatchStringEnum;

    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Ljavax/mail/internet/InternetHeaders$MatchStringEnum;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 5
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

    .line 640
    new-instance v0, Ljavax/mail/internet/InternetHeaders$MatchHeaderEnum;

    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    const/4 v2, 0x1

    invoke-direct {v0, v1, p1, v2}, Ljavax/mail/internet/InternetHeaders$MatchHeaderEnum;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getNonMatchingHeaderLines([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 5
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

    .line 705
    new-instance v0, Ljavax/mail/internet/InternetHeaders$MatchStringEnum;

    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Ljavax/mail/internet/InternetHeaders$MatchStringEnum;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v0
.end method

.method public getNonMatchingHeaders([Ljava/lang/String;)Ljava/util/Enumeration;
    .registers 5
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

    .line 650
    new-instance v0, Ljavax/mail/internet/InternetHeaders$MatchHeaderEnum;

    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Ljavax/mail/internet/InternetHeaders$MatchHeaderEnum;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v0
.end method

.method public load(Ljava/io/InputStream;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 398
    invoke-virtual {p0, p1, v0}, Ljavax/mail/internet/InternetHeaders;->load(Ljava/io/InputStream;Z)V

    return-void
.end method

.method public load(Ljava/io/InputStream;Z)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 422
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v0, p1, p2}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;Z)V

    .line 425
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 p2, 0x0

    const/4 v1, 0x1

    move-object v2, p2

    .line 433
    :goto_d
    :try_start_d
    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_49

    const-string v5, " "

    .line 435
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_24

    const-string v5, "\t"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_49

    :cond_24
    if-eqz v2, :cond_2a

    .line 438
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v2, p2

    :cond_2a
    if-eqz v1, :cond_3a

    .line 442
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 443
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_60

    .line 444
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60

    .line 446
    :cond_3a
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_45

    const-string v1, "\r\n"

    .line 447
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    :cond_45
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_60

    :cond_49
    if-eqz v2, :cond_4f

    .line 453
    invoke-virtual {p0, v2}, Ljavax/mail/internet/InternetHeaders;->addHeaderLine(Ljava/lang/String;)V

    goto :goto_5f

    .line 454
    :cond_4f
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_5f

    .line 456
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/mail/internet/InternetHeaders;->addHeaderLine(Ljava/lang/String;)V

    .line 457
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_5f
    :goto_5f
    move-object v2, v3

    :cond_60
    :goto_60
    if-eqz v3, :cond_6b

    .line 462
    invoke-static {v3}, Ljavax/mail/internet/InternetHeaders;->isEmpty(Ljava/lang/String;)Z

    move-result v1
    :try_end_66
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_66} :catch_6c

    if-eqz v1, :cond_69

    goto :goto_6b

    :cond_69
    move v1, v4

    goto :goto_d

    :cond_6b
    :goto_6b
    return-void

    :catch_6c
    move-exception p1

    .line 464
    new-instance p2, Ljavax/mail/MessagingException;

    const-string v0, "Error in input stream"

    invoke-direct {p2, v0, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2
.end method

.method public removeHeader(Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    .line 613
    :goto_1
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_21

    .line 614
    iget-object v1, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 615
    invoke-virtual {v1}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    const/4 v2, 0x0

    .line 616
    iput-object v2, v1, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_21
    return-void
.end method

.method public setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 545
    :goto_3
    iget-object v3, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_74

    .line 546
    iget-object v3, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/mail/internet/InternetHeaders$InternetHeader;

    .line 547
    invoke-virtual {v3}, Ljavax/mail/internet/InternetHeaders$InternetHeader;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_72

    if-nez v2, :cond_6b

    .line 550
    iget-object v2, v3, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    if-eqz v2, :cond_50

    iget-object v2, v3, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ltz v2, :cond_50

    .line 551
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v3, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v6, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    goto :goto_69

    .line 554
    :cond_50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ": "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v3, Ljavax/mail/internet/InternetHeaders$InternetHeader;->line:Ljava/lang/String;

    :goto_69
    move v2, v5

    goto :goto_72

    .line 558
    :cond_6b
    iget-object v3, p0, Ljavax/mail/internet/InternetHeaders;->headers:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    :cond_72
    :goto_72
    add-int/2addr v1, v5

    goto :goto_3

    :cond_74
    if-nez v2, :cond_79

    .line 565
    invoke-virtual {p0, p1, p2}, Ljavax/mail/internet/InternetHeaders;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_79
    return-void
.end method
