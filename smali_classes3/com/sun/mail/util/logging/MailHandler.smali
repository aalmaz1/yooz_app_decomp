.class public Lcom/sun/mail/util/logging/MailHandler;
.super Ljava/util/logging/Handler;
.source "MailHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;,
        Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;,
        Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final EMPTY_FILTERS:[Ljava/util/logging/Filter;

.field private static final EMPTY_FORMATTERS:[Ljava/util/logging/Formatter;

.field private static final MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/security/PrivilegedAction<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private static final MIN_HEADER_SIZE:I = 0x400

.field private static final MUTEX:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final MUTEX_LINKAGE:Ljava/lang/Integer;

.field private static final MUTEX_PUBLISH:Ljava/lang/Integer;

.field private static final MUTEX_REPORT:Ljava/lang/Integer;

.field private static final offValue:I


# instance fields
.field private volatile attachmentFilters:[Ljava/util/logging/Filter;

.field private attachmentFormatters:[Ljava/util/logging/Formatter;

.field private attachmentNames:[Ljava/util/logging/Formatter;

.field private auth:Ljavax/mail/Authenticator;

.field private capacity:I

.field private comparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation
.end field

.field private contentTypes:Ljavax/activation/FileTypeMap;

.field private data:[Ljava/util/logging/LogRecord;

.field private encoding:Ljava/lang/String;

.field private volatile errorManager:Ljava/util/logging/ErrorManager;

.field private volatile filter:Ljava/util/logging/Filter;

.field private formatter:Ljava/util/logging/Formatter;

.field private isWriting:Z

.field private volatile logLevel:Ljava/util/logging/Level;

.field private mailProps:Ljava/util/Properties;

.field private matched:[I

.field private pushFilter:Ljava/util/logging/Filter;

.field private pushLevel:Ljava/util/logging/Level;

.field private volatile sealed:Z

.field private session:Ljavax/mail/Session;

.field private size:I

.field private subjectFormatter:Ljava/util/logging/Formatter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/util/logging/Filter;

    .line 364
    sput-object v1, Lcom/sun/mail/util/logging/MailHandler;->EMPTY_FILTERS:[Ljava/util/logging/Filter;

    new-array v0, v0, [Ljava/util/logging/Formatter;

    .line 368
    sput-object v0, Lcom/sun/mail/util/logging/MailHandler;->EMPTY_FORMATTERS:[Ljava/util/logging/Formatter;

    .line 376
    sget-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    sput v0, Lcom/sun/mail/util/logging/MailHandler;->offValue:I

    .line 384
    new-instance v0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;

    const-class v1, Lcom/sun/mail/util/logging/MailHandler;

    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    .line 398
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    const/4 v0, -0x2

    .line 403
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_PUBLISH:Ljava/lang/Integer;

    const/4 v0, -0x4

    .line 408
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_REPORT:Ljava/lang/Integer;

    const/4 v0, -0x8

    .line 413
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_LINKAGE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 543
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 493
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 535
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->defaultErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    const/4 v0, 0x0

    .line 544
    move-object v1, v0

    check-cast v1, Ljava/util/Properties;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->init(Ljava/util/Properties;)V

    const/4 v0, 0x1

    .line 545
    iput-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->sealed:Z

    .line 546
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 558
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 493
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 535
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->defaultErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    const/4 v0, 0x0

    .line 559
    move-object v1, v0

    check-cast v1, Ljava/util/Properties;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->init(Ljava/util/Properties;)V

    const/4 v0, 0x1

    .line 560
    iput-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->sealed:Z

    .line 561
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setCapacity0(I)V

    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 1

    .line 574
    invoke-direct {p0}, Ljava/util/logging/Handler;-><init>()V

    .line 493
    sget-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 535
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->defaultErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    .line 576
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->init(Ljava/util/Properties;)V

    const/4 v0, 0x1

    .line 579
    iput-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->sealed:Z

    .line 580
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setMailProperties0(Ljava/util/Properties;)V

    return-void
.end method

.method private alignAttachmentFilters()Z
    .locals 5

    .line 1959
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v0, v0

    .line 1960
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    array-length v1, v1

    const/4 v2, 0x0

    if-eq v1, v0, :cond_1

    .line 1962
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    const-class v4, [Ljava/util/logging/Filter;

    invoke-static {v3, v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/util/logging/Filter;

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    .line 1964
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->clearMatches(I)V

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    .line 1969
    :cond_0
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    if-eqz v3, :cond_1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 1972
    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    aput-object v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez v0, :cond_2

    .line 1979
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFilterArray()[Ljava/util/logging/Filter;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    :cond_2
    return v2
.end method

.method private alignAttachmentNames()Z
    .locals 5

    .line 1928
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v0, v0

    .line 1929
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    array-length v2, v1

    const/4 v3, 0x0

    if-eq v2, v0, :cond_0

    .line 1931
    const-class v4, [Ljava/util/logging/Formatter;

    invoke-static {v1, v0, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/util/logging/Formatter;

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-nez v0, :cond_1

    .line 1938
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    goto :goto_2

    :cond_1
    :goto_1
    if-ge v3, v0, :cond_3

    .line 1942
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v4, v2, v3

    if-nez v4, :cond_2

    .line 1943
    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v4, v4, v3

    .line 1944
    invoke-direct {p0, v4}, Lcom/sun/mail/util/logging/MailHandler;->toString(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v4

    .line 1943
    invoke-static {v4}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->of(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v4

    aput-object v4, v2, v3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    return v1
.end method

.method private allowRestrictedHeaders()Z
    .locals 1

    .line 4238
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->hasLogManager()Z

    move-result v0

    return v0
.end method

.method private appendContentLang(Ljavax/mail/internet/MimePart;Ljava/util/Locale;)V
    .locals 6

    const-string v0, "\r\n\t"

    const-string v1, "Content-Language"

    .line 3691
    :try_start_0
    invoke-static {p2}, Lcom/sun/mail/util/logging/LogManagerProperties;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    .line 3692
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x0

    .line 3693
    invoke-interface {p1, v1, v2}, Ljavax/mail/internet/MimePart;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3694
    invoke-static {v2}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3695
    invoke-interface {p1, v1, p2}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 3696
    :cond_0
    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, ","

    .line 3697
    invoke-virtual {v3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v3, 0x0

    .line 3699
    :cond_1
    invoke-virtual {v2, p2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, -0x1

    if-le v3, v4, :cond_2

    .line 3700
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    .line 3701
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 3702
    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2c

    if-ne v4, v5, :cond_1

    :cond_2
    if-gez v3, :cond_5

    .line 3708
    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_3

    .line 3710
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x14

    goto :goto_0

    .line 3712
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    add-int/lit8 v3, v4, 0x8

    .line 3716
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    const/16 v4, 0x4c

    if-le v3, v4, :cond_4

    .line 3717
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    .line 3719
    :cond_4
    invoke-virtual {v2, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3721
    :goto_1
    invoke-interface {p1, v1, p2}, Ljavax/mail/internet/MimePart;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 3726
    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p0, p2, p1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :cond_5
    :goto_2
    return-void
.end method

.method private appendFileName(Ljavax/mail/Part;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 3592
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3593
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/util/logging/MailHandler;->appendFileName0(Ljavax/mail/Part;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 3596
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportNullError(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private appendFileName0(Ljavax/mail/Part;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "[\\x00-\\x1F\\x7F]+"

    const-string v1, ""

    .line 3609
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3610
    invoke-interface {p1}, Ljavax/mail/Part;->getFileName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3611
    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    invoke-interface {p1, p2}, Ljavax/mail/Part;->setFileName(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3613
    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p0, p2, p1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :goto_0
    return-void
.end method

.method private appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V
    .locals 1

    if-eqz p2, :cond_0

    .line 3624
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 3625
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject0(Ljavax/mail/Message;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x5

    .line 3628
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportNullError(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private appendSubject0(Ljavax/mail/Message;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, "[\\x00-\\x1F\\x7F]+"

    const-string v1, ""

    .line 3641
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3642
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v0

    .line 3643
    invoke-virtual {p1}, Ljavax/mail/Message;->getSubject()Ljava/lang/String;

    move-result-object v1

    .line 3645
    check-cast p1, Ljavax/mail/internet/MimeMessage;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3646
    :cond_0
    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3645
    invoke-virtual {p1, p2, v0}, Ljavax/mail/internet/MimeMessage;->setSubject(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3648
    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p0, p2, p1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :goto_0
    return-void
.end method

.method private static atIndexMsg(I)Ljava/lang/String;
    .locals 2

    .line 4247
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "At index: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 v0, 0x2e

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static attach(Ljavax/mail/MessagingException;Ljava/lang/Exception;)Ljavax/mail/MessagingException;
    .locals 2

    if-eqz p1, :cond_1

    .line 4182
    invoke-virtual {p0, p1}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4183
    instance-of v0, p1, Ljavax/mail/MessagingException;

    if-eqz v0, :cond_0

    .line 4184
    move-object v0, p1

    check-cast v0, Ljavax/mail/MessagingException;

    .line 4185
    invoke-virtual {v0, p0}, Ljavax/mail/MessagingException;->setNextException(Ljava/lang/Exception;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    if-eq p1, p0, :cond_1

    .line 4191
    invoke-virtual {p0, p1}, Ljavax/mail/MessagingException;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    return-object p0
.end method

.method private static attachmentMismatch(II)Ljava/lang/RuntimeException;
    .locals 2

    .line 4169
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Attachments mismatched, expected "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v0, " but given "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const/16 p1, 0x2e

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p0

    return-object p0
.end method

.method private static attachmentMismatch(Ljava/lang/String;)Ljava/lang/RuntimeException;
    .locals 1

    .line 4159
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0, p0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private checkAccess()V
    .locals 1

    .line 1610
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->sealed:Z

    if-eqz v0, :cond_0

    .line 1611
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->checkLogManagerAccess()V

    :cond_0
    return-void
.end method

.method private clearMatches(I)V
    .locals 3

    const/4 v0, 0x0

    .line 784
    :goto_0
    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-ge v0, v1, :cond_1

    .line 785
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->matched:[I

    aget v2, v1, v0

    if-lt v2, p1, :cond_0

    .line 786
    sget-object v2, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_PUBLISH:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private contentWithEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1854
    :try_start_0
    new-instance v0, Ljavax/mail/internet/ContentType;

    invoke-direct {v0, p1}, Ljavax/mail/internet/ContentType;-><init>(Ljava/lang/String;)V

    const-string v1, "charset"

    .line 1855
    invoke-static {p2}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljavax/mail/internet/ContentType;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1856
    invoke-virtual {v0}, Ljavax/mail/internet/ContentType;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1857
    invoke-static {p2}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    move-object p1, p2

    goto :goto_0

    :catch_0
    move-exception p2

    const/4 v0, 0x5

    .line 1861
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :cond_0
    :goto_0
    return-object p1
.end method

.method private createBodyPart()Ljavax/mail/internet/MimeBodyPart;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3493
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    const-string v1, "inline"

    .line 3494
    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljava/lang/String;)V

    .line 3495
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v1

    .line 3496
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 3495
    invoke-direct {p0, v1, v2, v3}, Lcom/sun/mail/util/logging/MailHandler;->descriptionFrom(Ljava/util/logging/Formatter;Ljava/util/logging/Filter;Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;)V

    .line 3497
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->setAcceptLang(Ljavax/mail/Part;)V

    return-object v0
.end method

.method private createBodyPart(I)Ljavax/mail/internet/MimeBodyPart;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 3511
    new-instance v0, Ljavax/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V

    const-string v1, "attachment"

    .line 3512
    invoke-virtual {v0, v1}, Ljavax/mail/internet/MimeBodyPart;->setDisposition(Ljava/lang/String;)V

    .line 3513
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v1, v1, p1

    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object p1, v3, p1

    invoke-direct {p0, v1, v2, p1}, Lcom/sun/mail/util/logging/MailHandler;->descriptionFrom(Ljava/util/logging/Formatter;Ljava/util/logging/Filter;Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;)V

    .line 3517
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->setAcceptLang(Ljavax/mail/Part;)V

    return-object v0
.end method

.method private static createSimpleFormatter()Ljava/util/logging/Formatter;
    .locals 2

    .line 2218
    const-class v0, Ljava/util/logging/Formatter;

    new-instance v1, Ljava/util/logging/SimpleFormatter;

    invoke-direct {v1}, Ljava/util/logging/SimpleFormatter;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/logging/Formatter;

    return-object v0
.end method

.method private defaultErrorManager()Ljava/util/logging/ErrorManager;
    .locals 1

    .line 2498
    :try_start_0
    invoke-super {p0}, Ljava/util/logging/Handler;->getErrorManager()Ljava/util/logging/ErrorManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 2505
    new-instance v0, Ljava/util/logging/ErrorManager;

    invoke-direct {v0}, Ljava/util/logging/ErrorManager;-><init>()V

    :cond_0
    return-object v0
.end method

.method private descriptionFrom(Ljava/util/Comparator;Ljava/util/logging/Level;Ljava/util/logging/Filter;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "*>;",
            "Ljava/util/logging/Level;",
            "Ljava/util/logging/Filter;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 3533
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Sorted using "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, "no comparator"

    goto :goto_0

    .line 3534
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", pushed when "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", and "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez p3, :cond_1

    const-string p2, "no push filter"

    goto :goto_1

    .line 3536
    :cond_1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private descriptionFrom(Ljava/util/logging/Formatter;Ljava/util/logging/Filter;Ljava/util/logging/Formatter;)Ljava/lang/String;
    .locals 2

    .line 3547
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Formatted using "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", filtered with "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    if-nez p2, :cond_0

    const-string p2, "no filter"

    goto :goto_0

    .line 3549
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", and named by "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 3550
    invoke-direct {p0, p3}, Lcom/sun/mail/util/logging/MailHandler;->getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p2, 0x2e

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private static emptyFilterArray()[Ljava/util/logging/Filter;
    .locals 1

    .line 1917
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->EMPTY_FILTERS:[Ljava/util/logging/Filter;

    return-object v0
.end method

.method private static emptyFormatterArray()[Ljava/util/logging/Formatter;
    .locals 1

    .line 1909
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->EMPTY_FORMATTERS:[Ljava/util/logging/Formatter;

    return-object v0
.end method

.method private envelopeFor(Ljavax/mail/Message;Z)V
    .locals 2

    .line 3464
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setAcceptLang(Ljavax/mail/Part;)V

    .line 3465
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setFrom(Ljavax/mail/Message;)V

    const-string v0, "mail.to"

    .line 3466
    sget-object v1, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->setRecipient(Ljavax/mail/Message;Ljava/lang/String;Ljavax/mail/Message$RecipientType;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3467
    sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/logging/MailHandler;->setDefaultRecipient(Ljavax/mail/Message;Ljavax/mail/Message$RecipientType;)V

    :cond_0
    const-string v0, "mail.cc"

    .line 3469
    sget-object v1, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->setRecipient(Ljavax/mail/Message;Ljava/lang/String;Ljavax/mail/Message$RecipientType;)Z

    const-string v0, "mail.bcc"

    .line 3470
    sget-object v1, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;

    invoke-direct {p0, p1, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->setRecipient(Ljavax/mail/Message;Ljava/lang/String;Ljavax/mail/Message$RecipientType;)Z

    .line 3471
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setReplyTo(Ljavax/mail/Message;)V

    .line 3472
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setSender(Ljavax/mail/Message;)V

    .line 3473
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setMailer(Ljavax/mail/Message;)V

    .line 3474
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setAutoSubmitted(Ljavax/mail/Message;)V

    if-eqz p2, :cond_1

    .line 3476
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setPriority(Ljavax/mail/Message;)V

    .line 3480
    :cond_1
    :try_start_0
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p1, p2}, Ljavax/mail/Message;->setSentDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3482
    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p0, p2, p1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :goto_0
    return-void
.end method

.method private format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 1

    .line 3828
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/logging/Formatter;->format(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3830
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x5

    invoke-virtual {p0, p2, p1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    const-string p1, ""

    return-object p1
.end method

.method private getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 4138
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->NOT_MODIFIED:Ljava/lang/Object;

    if-eq p1, v0, :cond_1

    .line 4141
    :try_start_0
    instance-of v0, p1, Ljava/security/PrivilegedAction;

    if-eqz v0, :cond_0

    .line 4142
    check-cast p1, Ljava/security/PrivilegedAction;

    goto :goto_0

    .line 4144
    :cond_0
    new-instance v0, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;-><init>(Ljava/lang/Object;)V

    move-object p1, v0

    .line 4146
    :goto_0
    invoke-static {p1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 4150
    :catch_0
    :cond_1
    sget-object p1, Lcom/sun/mail/util/logging/MailHandler$GetAndSetContext;->NOT_MODIFIED:Ljava/lang/Object;

    return-object p1
.end method

.method private getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;
    .locals 1

    .line 3562
    instance-of v0, p1, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    if-eqz v0, :cond_0

    .line 3563
    const-class p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 3565
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getContentType(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1802
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->contentTypes:Ljavax/activation/FileTypeMap;

    invoke-virtual {v0, p1}, Ljavax/activation/FileTypeMap;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "application/octet-stream"

    .line 1803
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return-object p1
.end method

.method private getEncodingName()Ljava/lang/String;
    .locals 1

    .line 1815
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncoding()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1817
    invoke-static {}, Ljavax/mail/internet/MimeUtility;->getDefaultJavaCharset()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private getLocalHost(Ljavax/mail/Service;)Ljava/lang/String;
    .locals 2

    .line 4205
    :try_start_0
    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->getLocalHost(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    .line 4209
    invoke-virtual {p1}, Ljavax/mail/Service;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :catch_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getMatchedPart()I
    .locals 3

    .line 756
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 757
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->readOnlyAttachmentFilters()[Ljava/util/logging/Filter;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_1

    .line 758
    :cond_0
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_PUBLISH:Ljava/lang/Integer;

    .line 760
    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private getSession(Ljavax/mail/Message;)Ljavax/mail/Session;
    .locals 1

    .line 4223
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4225
    new-instance v0, Ljavax/mail/MessageContext;

    invoke-direct {v0, p1}, Ljavax/mail/MessageContext;-><init>(Ljavax/mail/Part;)V

    invoke-virtual {v0}, Ljavax/mail/MessageContext;->getSession()Ljavax/mail/Session;

    move-result-object p1

    return-object p1
.end method

.method private grow()V
    .locals 4

    .line 2003
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v1, v0

    shr-int/lit8 v2, v1, 0x1

    add-int/2addr v2, v1

    add-int/lit8 v2, v2, 0x1

    .line 2005
    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-gt v2, v3, :cond_0

    if-ge v2, v1, :cond_1

    :cond_0
    move v2, v3

    .line 2009
    :cond_1
    const-class v1, [Ljava/util/logging/LogRecord;

    invoke-static {v0, v2, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/logging/LogRecord;

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    .line 2010
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->matched:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->matched:[I

    return-void
.end method

.method private static hasValue(Ljava/lang/String;)Z
    .locals 1

    .line 2236
    invoke-static {p0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "null"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private head(Ljava/util/logging/Formatter;)Ljava/lang/String;
    .locals 2

    .line 3813
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/logging/Formatter;->getHead(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3815
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    const-string p1, ""

    return-object p1
.end method

.method private declared-synchronized init(Ljava/util/Properties;)V
    .locals 3

    monitor-enter p0

    .line 2022
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2023
    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->mailProps:Ljava/util/Properties;

    .line 2024
    sget-object v1, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2026
    :try_start_1
    invoke-static {}, Ljavax/activation/FileTypeMap;->getDefaultFileTypeMap()Ljavax/activation/FileTypeMap;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->contentTypes:Ljavax/activation/FileTypeMap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2028
    :try_start_2
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2032
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initErrorManager(Ljava/lang/String;)V

    .line 2034
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initLevel(Ljava/lang/String;)V

    .line 2035
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initFilter(Ljava/lang/String;)V

    .line 2036
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initCapacity(Ljava/lang/String;)V

    .line 2037
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initAuthenticator(Ljava/lang/String;)V

    .line 2039
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initEncoding(Ljava/lang/String;)V

    .line 2040
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initFormatter(Ljava/lang/String;)V

    .line 2041
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initComparator(Ljava/lang/String;)V

    .line 2042
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initPushLevel(Ljava/lang/String;)V

    .line 2043
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initPushFilter(Ljava/lang/String;)V

    .line 2045
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initSubject(Ljava/lang/String;)V

    .line 2047
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initAttachmentFormaters(Ljava/lang/String;)V

    .line 2048
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initAttachmentFilters(Ljava/lang/String;)V

    .line 2049
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->initAttachmentNames(Ljava/lang/String;)V

    if-nez p1, :cond_0

    const-string p1, ".verify"

    .line 2051
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2052
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->initSession()Ljavax/mail/Session;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings(Ljavax/mail/Session;)V

    .line 2054
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->intern()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2055
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    .line 2028
    :try_start_3
    invoke-direct {p0, v1}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2029
    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private initAttachmentFilters(Ljava/lang/String;)V
    .locals 6

    const-string v0, ".attachment.filters"

    .line 2248
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2249
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ","

    .line 2250
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2251
    array-length v0, p1

    new-array v1, v0, [Ljava/util/logging/Filter;

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v0, :cond_1

    .line 2253
    aget-object v4, p1, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, p1, v2

    const-string v5, "null"

    .line 2254
    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2256
    :try_start_0
    aget-object v4, p1, v2

    invoke-static {v4}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFilter(Ljava/lang/String;)Ljava/util/logging/Filter;

    move-result-object v4

    aput-object v4, v1, v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    .line 2260
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v4, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_1

    :catch_1
    move-exception p1

    .line 2258
    throw p1

    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2265
    :cond_1
    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    .line 2266
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->alignAttachmentFilters()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Length mismatch."

    .line 2268
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    const-string v0, "Attachment filters."

    .line 2267
    invoke-virtual {p0, v0, p1, v3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_2

    .line 2271
    :cond_2
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFilterArray()[Ljava/util/logging/Filter;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    .line 2272
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->alignAttachmentFilters()Z

    :cond_3
    :goto_2
    return-void
.end method

.method private initAttachmentFormaters(Ljava/lang/String;)V
    .locals 6

    const-string v0, ".attachment.formatters"

    .line 2284
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2285
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, ","

    .line 2287
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2288
    array-length v0, p1

    if-nez v0, :cond_0

    .line 2289
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object v0

    goto :goto_0

    .line 2291
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/util/logging/Formatter;

    :goto_0
    const/4 v1, 0x0

    .line 2294
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 2295
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p1, v1

    const-string v3, "null"

    .line 2296
    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "Attachment formatter."

    const/4 v4, 0x4

    if-nez v2, :cond_1

    .line 2298
    :try_start_0
    aget-object v2, p1, v1

    invoke-static {v2}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v2

    aput-object v2, v0, v1

    .line 2299
    instance-of v2, v2, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    if-eqz v2, :cond_2

    .line 2300
    new-instance v2, Ljava/lang/ClassNotFoundException;

    aget-object v5, v0, v1

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    .line 2301
    invoke-virtual {p0, v3, v2, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2302
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->createSimpleFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 2307
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2308
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->createSimpleFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 2305
    throw p1

    .line 2311
    :cond_1
    new-instance v2, Ljava/lang/NullPointerException;

    invoke-static {v1}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2312
    invoke-virtual {p0, v3, v2, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2313
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->createSimpleFormatter()Ljava/util/logging/Formatter;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2317
    :cond_3
    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    goto :goto_3

    .line 2319
    :cond_4
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    :goto_3
    return-void
.end method

.method private initAttachmentNames(Ljava/lang/String;)V
    .locals 7

    const-string v0, ".attachment.names"

    .line 2333
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2334
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, ","

    .line 2335
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 2336
    array-length v0, p1

    new-array v1, v0, [Ljava/util/logging/Formatter;

    const/4 v2, 0x0

    :goto_0
    const-string v3, "Attachment names."

    const/4 v4, 0x4

    if-ge v2, v0, :cond_1

    .line 2338
    aget-object v5, p1, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    aput-object v5, p1, v2

    const-string v6, "null"

    .line 2339
    invoke-virtual {v6, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2342
    :try_start_0
    aget-object v3, p1, v2

    invoke-static {v3}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_2

    .line 2345
    :catch_2
    :try_start_1
    aget-object v3, p1, v2

    invoke-static {v3}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->of(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v3

    aput-object v3, v1, v2
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 2350
    :goto_1
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v3, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_3

    .line 2348
    :goto_2
    throw p1

    .line 2353
    :cond_0
    new-instance v5, Ljava/lang/NullPointerException;

    invoke-static {v2}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 2354
    invoke-virtual {p0, v3, v5, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2358
    :cond_1
    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 2359
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->alignAttachmentNames()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "Length mismatch."

    .line 2361
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object p1

    .line 2360
    invoke-virtual {p0, v3, p1, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_4

    .line 2364
    :cond_2
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 2365
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->alignAttachmentNames()Z

    :cond_3
    :goto_4
    return-void
.end method

.method private initAuthenticator(Ljava/lang/String;)V
    .locals 2

    const-string v0, ".authenticator"

    .line 2377
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "null"

    .line 2378
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2379
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2381
    :try_start_0
    const-class v0, Ljavax/mail/Authenticator;

    .line 2382
    invoke-static {p1, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Authenticator;

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2389
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 2387
    :catch_1
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;->of(Ljava/lang/String;)Ljavax/mail/Authenticator;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;

    goto :goto_0

    :catch_2
    move-exception p1

    .line 2384
    throw p1

    .line 2392
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;->of(Ljava/lang/String;)Ljavax/mail/Authenticator;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;

    :cond_1
    :goto_0
    return-void
.end method

.method private initCapacity(Ljava/lang/String;)V
    .locals 3

    const/16 v0, 0x3e8

    :try_start_0
    const-string v1, ".capacity"

    .line 2450
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2452
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setCapacity0(I)V

    goto :goto_0

    .line 2454
    :cond_0
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->setCapacity0(I)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2459
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {p0, v1, p1, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2462
    :goto_0
    iget p1, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-gtz p1, :cond_1

    .line 2463
    iput v0, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    :cond_1
    const/4 p1, 0x1

    new-array p1, p1, [Ljava/util/logging/LogRecord;

    .line 2466
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    .line 2467
    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->matched:[I

    return-void

    :catch_1
    move-exception p1

    .line 2457
    throw p1
.end method

.method private initComparator(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, ".comparator"

    .line 2569
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ".comparator.reverse"

    .line 2570
    invoke-virtual {p1, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2571
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2572
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newComparator(Ljava/lang/String;)Ljava/util/Comparator;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    .line 2573
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 2575
    iget-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    goto :goto_0

    .line 2578
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 2579
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "No comparator to reverse."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 2586
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :cond_2
    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 2584
    throw p1
.end method

.method private initEncoding(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, ".encoding"

    .line 2479
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2481
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setEncoding0(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 2486
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :cond_0
    :goto_1
    return-void

    :catch_2
    move-exception p1

    .line 2484
    throw p1
.end method

.method private initErrorManager(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, ".errorManager"

    .line 2519
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2521
    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->newErrorManager(Ljava/lang/String;)Ljava/util/logging/ErrorManager;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setErrorManager0(Ljava/util/logging/ErrorManager;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2526
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :cond_0
    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 2524
    throw p1
.end method

.method private initFilter(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, ".filter"

    .line 2429
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2430
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2431
    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFilter(Ljava/lang/String;)Ljava/util/logging/Filter;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2436
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :cond_0
    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 2434
    throw p1
.end method

.method private initFormatter(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, ".formatter"

    .line 2539
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2540
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2542
    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object p1

    .line 2544
    instance-of v0, p1, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    if-nez v0, :cond_0

    .line 2545
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;

    goto :goto_0

    .line 2547
    :cond_0
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->createSimpleFormatter()Ljava/util/logging/Formatter;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;

    goto :goto_0

    .line 2550
    :cond_1
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->createSimpleFormatter()Ljava/util/logging/Formatter;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2555
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2556
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->createSimpleFormatter()Ljava/util/logging/Formatter;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 2553
    throw p1
.end method

.method private initLevel(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, ".level"

    .line 2406
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2408
    invoke-static {p1}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    goto :goto_0

    .line 2410
    :cond_0
    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2415
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2416
    sget-object p1, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 2413
    throw p1
.end method

.method private initPushFilter(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, ".pushFilter"

    .line 2621
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 2622
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2623
    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFilter(Ljava/lang/String;)Ljava/util/logging/Filter;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2628
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :cond_0
    :goto_0
    return-void

    :catch_1
    move-exception p1

    .line 2626
    throw p1
.end method

.method private initPushLevel(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    const-string v0, ".pushLevel"

    .line 2599
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2601
    invoke-static {p1}, Ljava/util/logging/Level;->parse(Ljava/lang/String;)Ljava/util/logging/Level;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2604
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2607
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;

    if-nez p1, :cond_1

    .line 2608
    sget-object p1, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;

    :cond_1
    return-void
.end method

.method private initSession()Ljavax/mail/Session;
    .locals 3

    .line 3450
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 3451
    new-instance v1, Lcom/sun/mail/util/logging/LogManagerProperties;

    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->mailProps:Ljava/util/Properties;

    invoke-direct {v1, v2, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;-><init>(Ljava/util/Properties;Ljava/lang/String;)V

    .line 3452
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;

    invoke-static {v1, v0}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    return-object v0
.end method

.method private initSubject(Ljava/lang/String;)V
    .locals 2

    const-string v0, ".subject"

    .line 2640
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, "com.sun.mail.util.logging.CollectorFormatter"

    .line 2645
    :cond_0
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2647
    :try_start_0
    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2654
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->of(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 2655
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    .line 2652
    :catch_1
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->of(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    goto :goto_0

    :catch_2
    move-exception p1

    .line 2649
    throw p1

    .line 2658
    :cond_1
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->of(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    :goto_0
    return-void
.end method

.method private intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2163
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p2

    goto :goto_0

    .line 2168
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2173
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_5

    .line 2174
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_3

    .line 2177
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 2178
    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v1, :cond_2

    if-eqz v2, :cond_2

    .line 2181
    invoke-interface {p1, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2183
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportNonDiscriminating(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2184
    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p2, :cond_5

    .line 2186
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportNonDiscriminating(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 2187
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    goto :goto_1

    :cond_2
    if-eq v1, v2, :cond_5

    .line 2192
    invoke-direct {p0, p2, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportNonSymmetric(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 2198
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p1, v0, :cond_4

    move-object p2, v1

    goto :goto_1

    .line 2201
    :cond_4
    invoke-direct {p0, p2, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportNonDiscriminating(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-object p2
.end method

.method private intern()V
    .locals 5

    const/4 v0, 0x4

    .line 2069
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_2

    .line 2071
    :try_start_1
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 2073
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_2

    .line 2077
    :goto_0
    :try_start_3
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    .line 2078
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_0

    .line 2079
    instance-of v2, v3, Ljava/util/logging/Filter;

    if-eqz v2, :cond_0

    .line 2080
    check-cast v3, Ljava/util/logging/Filter;

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    .line 2083
    :cond_0
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;

    .line 2084
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_1

    .line 2085
    instance-of v2, v3, Ljava/util/logging/Formatter;

    if-eqz v2, :cond_1

    .line 2086
    check-cast v3, Ljava/util/logging/Formatter;

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 2089
    :try_start_4
    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 2092
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 2093
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_2

    .line 2094
    instance-of v2, v3, Ljava/util/logging/Formatter;

    if-eqz v2, :cond_2

    .line 2095
    check-cast v3, Ljava/util/logging/Formatter;

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 2098
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;

    .line 2099
    invoke-direct {p0, v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eq v3, v2, :cond_3

    .line 2100
    instance-of v2, v3, Ljava/util/logging/Filter;

    if-eqz v2, :cond_3

    .line 2101
    check-cast v3, Ljava/util/logging/Filter;

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;

    :cond_3
    const/4 v2, 0x0

    .line 2104
    :goto_2
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v4, v3

    if-ge v2, v4, :cond_7

    .line 2105
    aget-object v3, v3, v2

    .line 2106
    invoke-direct {p0, v1, v3}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_4

    .line 2107
    instance-of v3, v4, Ljava/util/logging/Formatter;

    if-eqz v3, :cond_4

    .line 2108
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    check-cast v4, Ljava/util/logging/Formatter;

    aput-object v4, v3, v2

    .line 2111
    :cond_4
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    aget-object v3, v3, v2

    .line 2112
    invoke-direct {p0, v1, v3}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_5

    .line 2113
    instance-of v3, v4, Ljava/util/logging/Filter;

    if-eqz v3, :cond_5

    .line 2114
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    check-cast v4, Ljava/util/logging/Filter;

    aput-object v4, v3, v2

    .line 2117
    :cond_5
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v3, v3, v2

    .line 2118
    invoke-direct {p0, v1, v3}, Lcom/sun/mail/util/logging/MailHandler;->intern(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eq v4, v3, :cond_6

    .line 2119
    instance-of v3, v4, Ljava/util/logging/Formatter;

    if-eqz v3, :cond_6

    .line 2120
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    check-cast v4, Ljava/util/logging/Formatter;

    aput-object v4, v3, v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_2
    move-exception v1

    .line 2126
    invoke-virtual {v1}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {v3, v1}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {p0, v2, v3, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_3

    :catch_3
    move-exception v1

    .line 2124
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :cond_7
    :goto_3
    return-void
.end method

.method private isAttachmentLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 4

    .line 2670
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->readOnlyAttachmentFilters()[Ljava/util/logging/Filter;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    .line 2671
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 2672
    aget-object v3, v0, v2

    if-eqz v3, :cond_1

    .line 2673
    invoke-interface {v3, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2674
    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Lcom/sun/mail/util/logging/MailHandler;->setMatchedPart(I)V

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 2227
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isPushable(Ljava/util/logging/LogRecord;)Z
    .locals 4

    .line 2690
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getPushLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    .line 2691
    sget v1, Lcom/sun/mail/util/logging/MailHandler;->offValue:I

    if-eq v0, v1, :cond_5

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    if-ge v1, v0, :cond_0

    goto :goto_0

    .line 2695
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getPushFilter()Ljava/util/logging/Filter;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 2700
    :cond_1
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getMatchedPart()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_2

    .line 2701
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v3

    if-eq v3, v0, :cond_3

    :cond_2
    if-ltz v2, :cond_4

    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    aget-object v2, v3, v2

    if-ne v2, v0, :cond_4

    :cond_3
    return v1

    .line 2705
    :cond_4
    invoke-interface {v0, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private localeFor(Ljava/util/logging/LogRecord;)Ljava/util/Locale;
    .locals 1

    .line 3662
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 3664
    invoke-virtual {p1}, Ljava/util/ResourceBundle;->getLocale()Ljava/util/Locale;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3665
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3671
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :cond_2
    :goto_0
    return-object p1
.end method

.method private publish0(Ljava/util/logging/LogRecord;)V
    .locals 5

    .line 658
    monitor-enter p0

    .line 659
    :try_start_0
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v1, v1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-ge v0, v1, :cond_0

    .line 660
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->grow()V

    .line 663
    :cond_0
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_2

    .line 665
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->matched:[I

    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getMatchedPart()I

    move-result v4

    aput v4, v1, v0

    .line 666
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    aput-object p1, v0, v1

    add-int/2addr v1, v3

    .line 667
    iput v1, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    .line 668
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->isPushable(Ljava/util/logging/LogRecord;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 669
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-lt v0, v1, :cond_3

    .line 670
    :cond_1
    invoke-direct {p0, v3}, Lcom/sun/mail/util/logging/MailHandler;->writeLogRecords(I)Ljavax/mail/Message;

    move-result-object v2

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 678
    :cond_3
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_4

    .line 681
    invoke-direct {p0, v2, p1, v3}, Lcom/sun/mail/util/logging/MailHandler;->send(Ljavax/mail/Message;ZI)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 678
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private push(ZI)V
    .locals 1

    .line 2715
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->tryMutex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2717
    :try_start_0
    invoke-direct {p0, p2}, Lcom/sun/mail/util/logging/MailHandler;->writeLogRecords(I)Ljavax/mail/Message;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2719
    invoke-direct {p0, v0, p1, p2}, Lcom/sun/mail/util/logging/MailHandler;->send(Ljavax/mail/Message;ZI)V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2724
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->releaseMutex()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 2722
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/util/logging/MailHandler;->reportLinkageError(Ljava/lang/Throwable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2724
    :goto_1
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->releaseMutex()V

    .line 2725
    throw p1

    :cond_1
    const/4 p1, 0x0

    .line 2727
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportUnPublishedError(Ljava/util/logging/LogRecord;)V

    :goto_2
    return-void
.end method

.method private readOnlyAttachmentFilters()[Ljava/util/logging/Filter;
    .locals 1

    .line 1901
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    return-object v0
.end method

.method private releaseMutex()V
    .locals 1

    .line 743
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    return-void
.end method

.method private reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V
    .locals 1

    .line 1750
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->toRawString(Ljavax/mail/Message;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1754
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->toMsgString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_1

    :catch_2
    move-exception p1

    .line 1752
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->toMsgString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1757
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportLinkageError(Ljava/lang/Throwable;I)V

    :goto_1
    return-void
.end method

.method private reportFilterError(Ljava/util/logging/LogRecord;)V
    .locals 4

    .line 3758
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->createSimpleFormatter()Ljava/util/logging/Formatter;

    move-result-object v0

    .line 3759
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Log record "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " was filtered from all message parts.  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3761
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ""

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 3762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3763
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->readOnlyAttachmentFilters()[Ljava/util/logging/Filter;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3764
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x5

    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    return-void
.end method

.method private reportLinkageError(Ljava/lang/Throwable;I)V
    .locals 3

    if-eqz p1, :cond_5

    .line 1777
    sget-object p2, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 1778
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    sget-object v2, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_LINKAGE:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 1779
    :cond_0
    sget-object v1, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_LINKAGE:Ljava/lang/Integer;

    invoke-virtual {p2, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 1781
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v1

    .line 1782
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    .line 1786
    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 1788
    :cond_1
    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->remove()V

    goto :goto_1

    :catchall_0
    move-exception p1

    if-eqz v0, :cond_2

    .line 1786
    sget-object p2, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {p2, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 1788
    :cond_2
    sget-object p2, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {p2}, Ljava/lang/ThreadLocal;->remove()V

    .line 1790
    :goto_0
    throw p1

    :catch_0
    if-eqz v0, :cond_3

    .line 1786
    sget-object p1, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {p1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 1788
    :cond_3
    sget-object p1, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->remove()V

    :cond_4
    :goto_1
    return-void

    .line 1774
    :cond_5
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private reportNonDiscriminating(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 3791
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3792
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " should not be equal to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 3793
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x4

    const-string p2, "Non discriminating equals implementation."

    .line 3791
    invoke-virtual {p0, p2, v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    return-void
.end method

.method private reportNonSymmetric(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 3776
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3777
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, " is not equal to "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 3778
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x4

    const-string p2, "Non symmetric equals implementation."

    .line 3776
    invoke-virtual {p0, p2, v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    return-void
.end method

.method private reportNullError(I)V
    .locals 2

    .line 3803
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    const-string v1, "null"

    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    return-void
.end method

.method private reportUnPublishedError(Ljava/util/logging/LogRecord;)V
    .locals 8

    const-string v0, "Recursive publish detected by thread "

    const-string v1, "Log record "

    .line 694
    sget-object v2, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 695
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-object v5, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_REPORT:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-le v4, v5, :cond_3

    .line 696
    :cond_0
    sget-object v4, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_REPORT:Ljava/lang/Integer;

    invoke-virtual {v2, v4}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    .line 700
    :try_start_0
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->createSimpleFormatter()Ljava/util/logging/Formatter;

    move-result-object v4

    .line 701
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " was not published. "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 703
    invoke-direct {p0, v4}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0, v4, p1}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ""

    invoke-direct {p0, v4, v1}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    .line 707
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 709
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 710
    invoke-virtual {p0, p1, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v3, :cond_2

    .line 713
    invoke-virtual {v2, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_1

    .line 715
    :cond_2
    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->remove()V

    :cond_3
    :goto_1
    return-void

    :goto_2
    if-eqz v3, :cond_4

    .line 713
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, v3}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_3

    .line 715
    :cond_4
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    .line 717
    :goto_3
    throw p1
.end method

.method private reportUnexpectedSend(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    .line 3383
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "An empty message was sent."

    invoke-direct {v0, v1, p3}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3385
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/mail/util/logging/MailHandler;->setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x4

    .line 3386
    invoke-direct {p0, p1, v0, p2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    return-void
.end method

.method private reset()V
    .locals 5

    .line 1990
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-ge v0, v2, :cond_0

    .line 1991
    invoke-static {v1, v3, v0, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0

    .line 1993
    :cond_0
    invoke-static {v1, v4}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1995
    :goto_0
    iput v3, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    return-void
.end method

.method private saveChangesNoContent(Ljavax/mail/Message;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 3287
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->saveChanges()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception v0

    :try_start_1
    const-string v1, "Content-Transfer-Encoding"

    .line 3293
    invoke-virtual {p1, v1}, Ljavax/mail/Message;->getHeader(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, "base64"

    .line 3294
    invoke-virtual {p1, v1, v2}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 3295
    invoke-virtual {p1}, Ljavax/mail/Message;->saveChanges()V

    goto :goto_2

    .line 3297
    :cond_0
    throw v0
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_3

    :catch_3
    move-exception p1

    goto :goto_0

    :catch_4
    move-exception p1

    :goto_0
    if-eq p1, v0, :cond_1

    .line 3301
    :try_start_2
    invoke-virtual {p1, v0}, Ljava/lang/Exception;->addSuppressed(Ljava/lang/Throwable;)V

    .line 3303
    :cond_1
    throw p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    const/4 v0, 0x5

    .line 3307
    invoke-virtual {p0, p2, p1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :cond_2
    :goto_2
    return-void
.end method

.method private send(Ljavax/mail/Message;ZI)V
    .locals 1

    .line 2743
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sun/mail/util/logging/MailHandler;->envelopeFor(Ljavax/mail/Message;Z)V

    .line 2744
    sget-object p2, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {p0, p2}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2746
    :try_start_1
    invoke-static {p1}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2748
    :try_start_2
    invoke-direct {p0, p2}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-direct {p0, p2}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2749
    throw v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p2

    .line 2753
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto :goto_0

    :catch_1
    move-exception p2

    .line 2751
    invoke-direct {p0, p1, p2, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    :goto_0
    return-void
.end method

.method private setAcceptLang(Ljavax/mail/Part;)V
    .locals 2

    .line 3739
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 3740
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "Accept-Language"

    .line 3741
    invoke-interface {p1, v1, v0}, Ljavax/mail/Part;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3744
    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :cond_0
    :goto_0
    return-void
.end method

.method private setAuthenticator0(Ljavax/mail/Authenticator;)V
    .locals 1

    .line 1241
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1244
    monitor-enter p0

    .line 1245
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1248
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;

    .line 1249
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->updateSession()Ljavax/mail/Session;

    move-result-object p1

    .line 1250
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1251
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings(Ljavax/mail/Session;)V

    return-void

    .line 1246
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 1250
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private setAutoSubmitted(Ljavax/mail/Message;)V
    .locals 2

    .line 3916
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->allowRestrictedHeaders()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "auto-submitted"

    const-string v1, "auto-generated"

    .line 3918
    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3920
    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :cond_0
    :goto_0
    return-void
.end method

.method private declared-synchronized setCapacity0(I)V
    .locals 1

    monitor-enter p0

    .line 1877
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    if-lez p1, :cond_2

    .line 1882
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_1

    .line 1886
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-gez v0, :cond_0

    neg-int p1, p1

    .line 1887
    iput p1, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    goto :goto_0

    .line 1889
    :cond_0
    iput p1, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1891
    :goto_0
    monitor-exit p0

    return-void

    .line 1883
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1879
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Capacity must be greater than zero."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private setContent(Ljavax/mail/internet/MimePart;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1830
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v0

    if-eqz p3, :cond_0

    const-string v1, "text/plain"

    .line 1831
    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1832
    invoke-direct {p0, p3, v0}, Lcom/sun/mail/util/logging/MailHandler;->contentWithEncoding(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1834
    :try_start_0
    new-instance v1, Ljavax/mail/util/ByteArrayDataSource;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p3}, Ljavax/mail/util/ByteArrayDataSource;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    new-instance p3, Ljavax/activation/DataHandler;

    invoke-direct {p3, v1}, Ljavax/activation/DataHandler;-><init>(Ljavax/activation/DataSource;)V

    invoke-interface {p1, p3}, Ljavax/mail/internet/MimePart;->setDataHandler(Ljavax/activation/DataHandler;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 1837
    invoke-virtual {p3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, p3, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 1838
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, v0}, Ljavax/mail/internet/MimePart;->setText(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1841
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0}, Ljavax/mail/internet/MimeUtility;->mimeCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Ljavax/mail/internet/MimePart;->setText(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setDefaultFrom(Ljavax/mail/Message;)V
    .locals 2

    .line 3960
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->setFrom()V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3962
    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :goto_0
    return-void
.end method

.method private setDefaultRecipient(Ljavax/mail/Message;Ljavax/mail/Message$RecipientType;)V
    .locals 2

    .line 3976
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v0

    invoke-static {v0}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3978
    invoke-virtual {p1, p2, v0}, Ljavax/mail/Message;->setRecipient(Ljavax/mail/Message$RecipientType;Ljavax/mail/Address;)V

    goto :goto_1

    .line 3980
    :cond_0
    new-instance v0, Ljavax/mail/internet/MimeMessage;

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 3981
    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->setFrom()V

    .line 3982
    invoke-virtual {v0}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    .line 3983
    array-length v1, v0

    if-lez v1, :cond_1

    .line 3984
    invoke-virtual {p1, p2, v0}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V

    goto :goto_1

    .line 3986
    :cond_1
    new-instance p1, Ljavax/mail/MessagingException;

    const-string p2, "No local address."

    invoke-direct {p1, p2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    :goto_0
    const-string p2, "Unable to compute a default recipient."

    const/4 v0, 0x5

    .line 3990
    invoke-virtual {p0, p2, p1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :goto_1
    return-void
.end method

.method private setEncoding0(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1053
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->isSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1054
    :cond_0
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/nio/charset/IllegalCharsetNameException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1057
    :catch_0
    new-instance v0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {v0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1061
    :cond_1
    :goto_0
    monitor-enter p0

    .line 1062
    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->encoding:Ljava/lang/String;

    .line 1063
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 5

    const-string v0, "Formatted using "

    .line 3403
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3404
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->createBodyPart()Ljavax/mail/internet/MimeBodyPart;

    move-result-object v1

    .line 3405
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;

    iget-object v4, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;

    invoke-direct {p0, v2, v3, v4}, Lcom/sun/mail/util/logging/MailHandler;->descriptionFrom(Ljava/util/Comparator;Ljava/util/logging/Level;Ljava/util/logging/Filter;)Ljava/lang/String;

    move-result-object v2

    .line 3406
    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    invoke-direct {p0, v3}, Lcom/sun/mail/util/logging/MailHandler;->getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v3

    .line 3407
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3409
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p3, :cond_0

    const-class v0, Ljava/lang/Throwable;

    .line 3410
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3411
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ", filtered with "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, ", and named by "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const/16 v0, 0x2e

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 3409
    invoke-virtual {v1, p2}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;)V

    .line 3414
    invoke-direct {p0, p3}, Lcom/sun/mail/util/logging/MailHandler;->toMsgString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "text/plain"

    invoke-direct {p0, v1, p2, p3}, Lcom/sun/mail/util/logging/MailHandler;->setContent(Ljavax/mail/internet/MimePart;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 3415
    new-instance p2, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {p2}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 3416
    invoke-virtual {p2, v1}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    .line 3417
    invoke-virtual {p1, p2}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 3418
    invoke-virtual {p1, v2}, Ljavax/mail/internet/MimeMessage;->setDescription(Ljava/lang/String;)V

    .line 3419
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setAcceptLang(Ljavax/mail/Part;)V

    .line 3420
    invoke-virtual {p1}, Ljavax/mail/internet/MimeMessage;->saveChanges()V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 3407
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1
    :try_end_4
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    :goto_1
    const-string p2, "Unable to create body."

    const/4 p3, 0x4

    .line 3422
    invoke-virtual {p0, p2, p1, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :goto_2
    return-void
.end method

.method private setErrorManager0(Ljava/util/logging/ErrorManager;)V
    .locals 0

    .line 970
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 973
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    .line 975
    invoke-super {p0, p1}, Ljava/util/logging/Handler;->setErrorManager(Ljava/util/logging/ErrorManager;)V

    .line 976
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method private setFrom(Ljavax/mail/Message;)V
    .locals 4

    .line 3930
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v0

    const-string v1, "mail.from"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 3933
    :try_start_0
    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    .line 3934
    array-length v2, v0

    if-lez v2, :cond_2

    .line 3935
    array-length v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 3936
    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljavax/mail/Message;->setFrom(Ljavax/mail/Address;)V

    goto :goto_0

    .line 3938
    :cond_0
    invoke-virtual {p1, v0}, Ljavax/mail/Message;->addFrom([Ljavax/mail/Address;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3946
    invoke-virtual {v0}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3947
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setDefaultFrom(Ljavax/mail/Message;)V

    goto :goto_0

    .line 3950
    :cond_1
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setDefaultFrom(Ljavax/mail/Message;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private setIncompleteCopy(Ljavax/mail/Message;)V
    .locals 2

    :try_start_0
    const-string v0, "Incomplete-Copy"

    const-string v1, ""

    .line 3903
    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3905
    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :goto_0
    return-void
.end method

.method private setMailProperties0(Ljava/util/Properties;)V
    .locals 1

    .line 1275
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1276
    invoke-virtual {p1}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Properties;

    .line 1278
    monitor-enter p0

    .line 1279
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1282
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->mailProps:Ljava/util/Properties;

    .line 1283
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->updateSession()Ljavax/mail/Session;

    move-result-object p1

    .line 1284
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1285
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings(Ljavax/mail/Session;)V

    return-void

    .line 1280
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 1284
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private setMailer(Ljavax/mail/Message;)V
    .locals 5

    const/4 v0, 0x5

    .line 3856
    :try_start_0
    const-class v1, Lcom/sun/mail/util/logging/MailHandler;

    .line 3857
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v2, v1, :cond_0

    .line 3860
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 3863
    :cond_0
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/mail/MessagingException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-exception v3

    .line 3865
    :try_start_2
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v3, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3866
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "[^\\x00-\\x7F]"

    const-string v4, "\u001a"

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3868
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " using the "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " extension."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2, v1}, Ljavax/mail/internet/MimeUtility;->fold(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v2, "X-Mailer"

    .line 3871
    invoke-virtual {p1, v2, v1}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 3873
    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, p1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :goto_2
    return-void
.end method

.method private setMatchedPart(I)V
    .locals 3

    .line 771
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_PUBLISH:Ljava/lang/Integer;

    sget-object v1, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 772
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private setPriority(Ljavax/mail/Message;)V
    .locals 2

    :try_start_0
    const-string v0, "Importance"

    const-string v1, "High"

    .line 3883
    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "Priority"

    const-string v1, "urgent"

    .line 3884
    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "X-Priority"

    const-string v1, "2"

    .line 3885
    invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3887
    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :goto_0
    return-void
.end method

.method private setRecipient(Ljavax/mail/Message;Ljava/lang/String;Ljavax/mail/Message$RecipientType;)Z
    .locals 3

    .line 4059
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    .line 4061
    :goto_0
    invoke-static {p2}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 4063
    :try_start_0
    invoke-static {p2, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object p2

    .line 4064
    array-length v0, p2

    if-lez v0, :cond_1

    .line 4065
    invoke-virtual {p1, p3, p2}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 4068
    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x5

    invoke-virtual {p0, p2, p1, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :cond_1
    :goto_1
    return v1
.end method

.method private setReplyTo(Ljavax/mail/Message;)V
    .locals 2

    .line 4000
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v0

    const-string v1, "mail.reply.to"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4001
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 4003
    :try_start_0
    invoke-static {v0, v1}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    .line 4004
    array-length v1, v0

    if-lez v1, :cond_0

    .line 4005
    invoke-virtual {p1, v0}, Ljavax/mail/Message;->setReplyTo([Ljavax/mail/Address;)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4008
    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :cond_0
    :goto_0
    return-void
.end method

.method private setSender(Ljavax/mail/Message;)V
    .locals 4

    .line 4019
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getSession(Ljavax/mail/Message;)Ljavax/mail/Session;

    move-result-object v0

    const-string v1, "mail.sender"

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4020
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x5

    const/4 v2, 0x0

    .line 4023
    :try_start_0
    invoke-static {v0, v2}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    .line 4024
    array-length v3, v0

    if-lez v3, :cond_0

    .line 4025
    check-cast p1, Ljavax/mail/internet/MimeMessage;

    aget-object v2, v0, v2

    invoke-virtual {p1, v2}, Ljavax/mail/internet/MimeMessage;->setSender(Ljavax/mail/Address;)V

    .line 4026
    array-length p1, v0

    const/4 v2, 0x1

    if-le p1, v2, :cond_0

    const-string p1, "Ignoring other senders."

    .line 4028
    invoke-direct {p0, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->tooManyAddresses([Ljavax/mail/Address;I)Ljavax/mail/internet/AddressException;

    move-result-object v0

    .line 4027
    invoke-virtual {p0, p1, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_0
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4033
    invoke-virtual {p1}, Ljavax/mail/MessagingException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :cond_0
    :goto_0
    return-void
.end method

.method private sort()V
    .locals 4

    .line 2763
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    if-eqz v0, :cond_2

    .line 2765
    :try_start_0
    iget v1, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    .line 2766
    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    invoke-static {v2, v3, v1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V

    goto :goto_0

    .line 2768
    :cond_0
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    aget-object v1, v1, v3

    invoke-interface {v0, v1, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 2769
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    .line 2770
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    .line 2774
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {p0, v1, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method private tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 3843
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/util/logging/Formatter;->getTail(Ljava/util/logging/Handler;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3845
    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    return-object p2
.end method

.method private toMsgString(Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const-string p1, "null"

    return-object p1

    .line 4109
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    .line 4111
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 4115
    new-instance v3, Ljava/io/OutputStreamWriter;

    invoke-direct {v3, v2, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4116
    :try_start_1
    new-instance v4, Ljava/io/PrintWriter;

    invoke-direct {v4, v3}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 4117
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4118
    invoke-virtual {p1, v4}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 4119
    invoke-virtual {v4}, Ljava/io/PrintWriter;->flush()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4120
    :try_start_3
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V

    .line 4121
    invoke-virtual {v2, v0}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    return-object p1

    :catchall_0
    move-exception v0

    .line 4115
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    .line 4120
    :try_start_6
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_7
    invoke-virtual {v0, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception v0

    .line 4115
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :catchall_4
    move-exception v2

    .line 4120
    :try_start_9
    invoke-virtual {v3}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    goto :goto_1

    :catchall_5
    move-exception v3

    :try_start_a
    invoke-virtual {v0, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1
    throw v2
    :try_end_a
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception v0

    .line 4125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :catch_1
    move-exception v0

    .line 4123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private toRawString(Ljavax/mail/Message;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 4085
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 4087
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Message;->getSize()I

    move-result v1

    const/16 v2, 0x400

    add-int/2addr v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 4088
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 4089
    invoke-virtual {p1, v2}, Ljavax/mail/Message;->writeTo(Ljava/io/OutputStream;)V

    const-string p1, "UTF-8"

    .line 4090
    invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4092
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :catchall_0
    move-exception p1

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4093
    throw p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private toString(Ljava/util/logging/Formatter;)Ljava/lang/String;
    .locals 2

    .line 3576
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3577
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 3580
    :cond_0
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->getClassId(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private tooManyAddresses([Ljavax/mail/Address;I)Ljavax/mail/internet/AddressException;
    .locals 1

    .line 4045
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    array-length p1, p1

    invoke-interface {v0, p2, p1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    .line 4046
    new-instance p2, Ljavax/mail/internet/AddressException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/mail/internet/AddressException;-><init>(Ljava/lang/String;)V

    return-object p2
.end method

.method private tryMutex()Z
    .locals 2

    .line 729
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MUTEX:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 730
    sget-object v1, Lcom/sun/mail/util/logging/MailHandler;->MUTEX_PUBLISH:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updateSession()Ljavax/mail/Session;
    .locals 2

    .line 3434
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->mailProps:Ljava/util/Properties;

    const-string v1, "verify"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3435
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->initSession()Ljavax/mail/Session;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3438
    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    :goto_0
    return-object v0
.end method

.method private static verifyAddresses([Ljavax/mail/Address;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/internet/AddressException;
        }
    .end annotation

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    .line 3366
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 3367
    aget-object v1, p0, v0

    .line 3368
    instance-of v2, v1, Ljavax/mail/internet/InternetAddress;

    if-eqz v2, :cond_0

    .line 3369
    check-cast v1, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v1}, Ljavax/mail/internet/InternetAddress;->validate()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static verifyHost(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3345
    invoke-static {p0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3346
    invoke-static {}, Ljava/net/InetAddress;->getLocalHost()Ljava/net/InetAddress;

    move-result-object p0

    goto :goto_0

    .line 3348
    :cond_0
    invoke-static {p0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0

    .line 3350
    :goto_0
    invoke-virtual {p0}, Ljava/net/InetAddress;->getCanonicalHostName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_1

    return-object p0

    .line 3351
    :cond_1
    new-instance p0, Ljava/net/UnknownHostException;

    invoke-direct {p0}, Ljava/net/UnknownHostException;-><init>()V

    throw p0
.end method

.method private static verifyProperties(Ljavax/mail/Session;Ljava/lang/String;)V
    .locals 3

    const-string v0, "mail.from"

    .line 3322
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 3323
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".from"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mail.dsn.ret"

    .line 3324
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 3325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".dsn.ret"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mail.dsn.notify"

    .line 3326
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 3327
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".dsn.notify"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 3328
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".port"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "mail.user"

    .line 3329
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 3330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".user"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 3331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".localport"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method private verifySettings(Ljavax/mail/Session;)V
    .locals 3

    if-eqz p1, :cond_1

    .line 2979
    :try_start_0
    invoke-virtual {p1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "verify"

    const-string v2, ""

    .line 2980
    invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2981
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2982
    check-cast v0, Ljava/lang/String;

    .line 2984
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->hasValue(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2985
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings0(Ljavax/mail/Session;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 2989
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/logging/MailHandler;->verifySettings0(Ljavax/mail/Session;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 v0, 0x4

    .line 2994
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportLinkageError(Ljava/lang/Throwable;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private verifySettings0(Ljavax/mail/Session;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "local"

    .line 3011
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x4

    if-nez v0, :cond_0

    const-string v0, "remote"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "limited"

    .line 3012
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "resolve"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "login"

    .line 3013
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Verify must be \'limited\', local\', \'resolve\', \'login\', or \'remote\'."

    .line 3014
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    return-void

    .line 3021
    :cond_0
    new-instance v5, Ljavax/mail/internet/MimeMessage;

    invoke-direct {v5, v2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    const-string v0, "limited"

    .line 3023
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v6, 0x5

    if-nez v0, :cond_1

    .line 3024
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v7, "Local address is "

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 3025
    invoke-static/range {p1 .. p1}, Ljavax/mail/internet/InternetAddress;->getLocalAddress(Ljavax/mail/Session;)Ljavax/mail/internet/InternetAddress;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v7, 0x2e

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 3028
    :try_start_0
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3030
    new-instance v8, Ljava/io/UnsupportedEncodingException;

    .line 3031
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    .line 3032
    invoke-virtual {v8, v0}, Ljava/io/UnsupportedEncodingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 3033
    invoke-virtual {v1, v7, v8, v6}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    :cond_1
    const-string v7, "Skipping local address check."

    .line 3041
    :goto_0
    monitor-enter p0

    .line 3042
    :try_start_1
    iget-object v0, v1, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    invoke-direct {v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 3043
    iget-object v0, v1, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    const-string v8, ""

    invoke-direct {v1, v0, v8}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v5, v0}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 3044
    iget-object v0, v1, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    array-length v8, v0

    new-array v9, v8, [Ljava/lang/String;

    const/4 v10, 0x0

    move v0, v10

    :goto_1
    if-ge v0, v8, :cond_3

    .line 3046
    iget-object v11, v1, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v11, v11, v0

    invoke-direct {v1, v11}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v0

    .line 3047
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_2

    .line 3048
    iget-object v11, v1, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v11, v11, v0

    const-string v12, ""

    invoke-direct {v1, v11, v12}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v0

    goto :goto_2

    .line 3050
    :cond_2
    aget-object v11, v9, v0

    iget-object v12, v1, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v12, v12, v0

    const-string v13, ""

    invoke-direct {v1, v12, v13}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3053
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    .line 3055
    invoke-direct {v1, v5}, Lcom/sun/mail/util/logging/MailHandler;->setIncompleteCopy(Ljavax/mail/Message;)V

    const/4 v0, 0x1

    .line 3056
    invoke-direct {v1, v5, v0}, Lcom/sun/mail/util/logging/MailHandler;->envelopeFor(Ljavax/mail/Message;Z)V

    .line 3057
    invoke-direct {v1, v5, v7}, Lcom/sun/mail/util/logging/MailHandler;->saveChangesNoContent(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 3060
    :try_start_2
    invoke-virtual {v5}, Ljavax/mail/internet/MimeMessage;->getAllRecipients()[Ljavax/mail/Address;

    move-result-object v0

    if-nez v0, :cond_4

    new-array v0, v10, [Ljavax/mail/internet/InternetAddress;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_f

    :cond_4
    move-object v11, v0

    .line 3066
    :try_start_3
    array-length v0, v11

    if-eqz v0, :cond_5

    move-object v0, v11

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    :goto_3
    if-eqz v0, :cond_6

    .line 3067
    array-length v12, v0

    if-eqz v12, :cond_6

    .line 3068
    aget-object v0, v0, v10

    invoke-virtual {v2, v0}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;

    move-result-object v0

    const-string v12, "mail.transport.protocol"

    .line 3069
    invoke-virtual {v2, v12}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_4

    .line 3071
    :cond_6
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v12, "No recipient or from address."

    invoke-direct {v0, v12}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 3073
    invoke-virtual {v1, v7, v0, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    .line 3074
    throw v0
    :try_end_3
    .catch Ljavax/mail/MessagingException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_10
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_f

    :catch_1
    move-exception v0

    move-object v12, v0

    .line 3078
    :try_start_4
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_10
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_f

    .line 3080
    :try_start_5
    invoke-virtual/range {p1 .. p1}, Ljavax/mail/Session;->getTransport()Ljavax/mail/Transport;

    move-result-object v0
    :try_end_5
    .catch Ljavax/mail/MessagingException; {:try_start_5 .. :try_end_5} :catch_d
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 3084
    :try_start_6
    invoke-direct {v1, v13}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    move-object v12, v0

    const-string v0, "remote"

    .line 3089
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const-string v0, "login"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    goto/16 :goto_8

    .line 3141
    :cond_7
    invoke-virtual {v12}, Ljavax/mail/Transport;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 3142
    invoke-static {v2, v0}, Lcom/sun/mail/util/logging/MailHandler;->verifyProperties(Ljavax/mail/Session;Ljava/lang/String;)V

    .line 3143
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mail."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".host"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 3145
    invoke-static {v13}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_8

    const-string v13, "mail.host"

    .line 3146
    invoke-virtual {v2, v13}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto :goto_5

    :cond_8
    const-string v14, "mail.host"

    .line 3148
    invoke-virtual {v2, v14}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 3151
    :goto_5
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mail."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ".localhost"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 3152
    invoke-static {v14}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_9

    .line 3153
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "mail."

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v14, ".localaddress"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    goto :goto_6

    .line 3156
    :cond_9
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "mail."

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, ".localaddress"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    :goto_6
    const-string v0, "resolve"

    .line 3159
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_f

    if-eqz v0, :cond_12

    .line 3161
    :try_start_7
    invoke-virtual {v12}, Ljavax/mail/Transport;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/URLName;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 3162
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    .line 3163
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->verifyHost(Ljava/lang/String;)Ljava/net/InetAddress;

    .line 3164
    invoke-virtual {v0, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3165
    invoke-static {v13}, Lcom/sun/mail/util/logging/MailHandler;->verifyHost(Ljava/lang/String;)Ljava/net/InetAddress;

    goto/16 :goto_f

    .line 3168
    :cond_a
    invoke-static {v13}, Lcom/sun/mail/util/logging/MailHandler;->verifyHost(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_f

    goto/16 :goto_f

    :catch_2
    move-exception v0

    goto :goto_7

    :catch_3
    move-exception v0

    .line 3171
    :goto_7
    :try_start_8
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-direct {v2, v7, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3173
    invoke-direct {v1, v5, v3, v2}, Lcom/sun/mail/util/logging/MailHandler;->setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3174
    invoke-direct {v1, v5, v2, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto/16 :goto_f

    .line 3091
    :cond_b
    :goto_8
    invoke-virtual {v12}, Ljavax/mail/Transport;->connect()V
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_10
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_f

    const/4 v10, 0x0

    .line 3095
    :try_start_9
    invoke-direct {v1, v12}, Lcom/sun/mail/util/logging/MailHandler;->getLocalHost(Ljavax/mail/Service;)Ljava/lang/String;

    move-result-object v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    const-string v0, "remote"

    .line 3100
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 3101
    invoke-virtual {v12, v5, v11}, Ljavax/mail/Transport;->sendMessage(Ljavax/mail/Message;[Ljavax/mail/Address;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 3105
    :cond_c
    :try_start_b
    invoke-virtual {v12}, Ljavax/mail/Transport;->close()V
    :try_end_b
    .catch Ljavax/mail/MessagingException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljavax/mail/SendFailedException; {:try_start_b .. :try_end_b} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_b} :catch_10
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_f

    move-object v14, v10

    goto :goto_9

    :catch_4
    move-exception v0

    move-object v14, v0

    :goto_9
    :try_start_c
    const-string v0, "remote"

    .line 3111
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3112
    invoke-direct {v1, v5, v3, v10}, Lcom/sun/mail/util/logging/MailHandler;->reportUnexpectedSend(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_e

    .line 3114
    :cond_d
    invoke-virtual {v12}, Ljavax/mail/Transport;->getURLName()Ljavax/mail/URLName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 3115
    invoke-static {v2, v0}, Lcom/sun/mail/util/logging/MailHandler;->verifyProperties(Ljavax/mail/Session;Ljava/lang/String;)V
    :try_end_c
    .catch Ljavax/mail/SendFailedException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljavax/mail/MessagingException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_c .. :try_end_c} :catch_10
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_f

    goto :goto_e

    :catch_5
    move-exception v0

    goto :goto_c

    :catch_6
    move-exception v0

    move-object v10, v14

    goto :goto_d

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v13, v10

    .line 3105
    :goto_a
    :try_start_d
    invoke-virtual {v12}, Ljavax/mail/Transport;->close()V
    :try_end_d
    .catch Ljavax/mail/MessagingException; {:try_start_d .. :try_end_d} :catch_8
    .catch Ljavax/mail/SendFailedException; {:try_start_d .. :try_end_d} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_d .. :try_end_d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_f

    goto :goto_b

    :catch_7
    move-exception v0

    goto :goto_d

    :catch_8
    move-exception v0

    move-object v10, v0

    .line 3109
    :goto_b
    :try_start_e
    throw v2
    :try_end_e
    .catch Ljavax/mail/SendFailedException; {:try_start_e .. :try_end_e} :catch_7
    .catch Ljavax/mail/MessagingException; {:try_start_e .. :try_end_e} :catch_9
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_e} :catch_10
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_f

    :catch_9
    move-exception v0

    move-object v14, v10

    .line 3129
    :goto_c
    :try_start_f
    invoke-virtual {v1, v5, v0}, Lcom/sun/mail/util/logging/MailHandler;->isMissingContent(Ljavax/mail/Message;Ljava/lang/Throwable;)Z

    move-result v2

    if-nez v2, :cond_10

    .line 3130
    invoke-direct {v1, v5, v3, v0}, Lcom/sun/mail/util/logging/MailHandler;->setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3131
    invoke-direct {v1, v5, v0, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto :goto_e

    .line 3118
    :goto_d
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getInvalidAddresses()[Ljavax/mail/Address;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 3119
    array-length v2, v2

    if-eqz v2, :cond_e

    .line 3120
    invoke-direct {v1, v5, v3, v0}, Lcom/sun/mail/util/logging/MailHandler;->setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3121
    invoke-direct {v1, v5, v0, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    .line 3124
    :cond_e
    invoke-virtual {v0}, Ljavax/mail/SendFailedException;->getValidSentAddresses()[Ljavax/mail/Address;

    move-result-object v2

    if-eqz v2, :cond_f

    .line 3125
    array-length v2, v2

    if-eqz v2, :cond_f

    .line 3126
    invoke-direct {v1, v5, v3, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportUnexpectedSend(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Exception;)V

    :cond_f
    move-object v14, v10

    :cond_10
    :goto_e
    if-eqz v14, :cond_11

    .line 3136
    invoke-direct {v1, v5, v3, v14}, Lcom/sun/mail/util/logging/MailHandler;->setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x3

    .line 3137
    invoke-direct {v1, v5, v14, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    :cond_11
    move-object v14, v13

    :cond_12
    :goto_f
    const-string v0, "limited"

    .line 3179
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_f

    if-nez v0, :cond_16

    :try_start_10
    const-string v0, "remote"

    .line 3181
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    const-string v0, "login"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 3182
    invoke-direct {v1, v12}, Lcom/sun/mail/util/logging/MailHandler;->getLocalHost(Ljavax/mail/Service;)Ljava/lang/String;

    move-result-object v14

    .line 3184
    :cond_13
    invoke-static {v14}, Lcom/sun/mail/util/logging/MailHandler;->verifyHost(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_10 .. :try_end_10} :catch_b
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_a
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_f

    goto :goto_11

    :catch_a
    move-exception v0

    goto :goto_10

    :catch_b
    move-exception v0

    .line 3186
    :goto_10
    :try_start_11
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-direct {v2, v7, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3187
    invoke-direct {v1, v5, v3, v2}, Lcom/sun/mail/util/logging/MailHandler;->setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3188
    invoke-direct {v1, v5, v2, v4}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V
    :try_end_11
    .catch Ljava/lang/RuntimeException; {:try_start_11 .. :try_end_11} :catch_10
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_f

    .line 3192
    :goto_11
    :try_start_12
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_12 .. :try_end_12} :catch_10
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_f

    .line 3195
    :try_start_13
    new-instance v0, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v0}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 3196
    new-array v10, v8, [Ljavax/mail/internet/MimeBodyPart;

    .line 3199
    monitor-enter p0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_3

    .line 3200
    :try_start_14
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v12

    invoke-virtual {v1, v12}, Lcom/sun/mail/util/logging/MailHandler;->contentTypeOf(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v12

    .line 3201
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->createBodyPart()Ljavax/mail/internet/MimeBodyPart;

    move-result-object v13

    const/4 v14, 0x0

    :goto_12
    if-ge v14, v8, :cond_14

    .line 3203
    invoke-direct {v1, v14}, Lcom/sun/mail/util/logging/MailHandler;->createBodyPart(I)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v15

    aput-object v15, v10, v14

    .line 3204
    aget-object v4, v9, v14

    invoke-virtual {v15, v4}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    .line 3206
    aget-object v4, v9, v14

    invoke-direct {v1, v4}, Lcom/sun/mail/util/logging/MailHandler;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v14

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x4

    goto :goto_12

    .line 3208
    :cond_14
    monitor-exit p0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 3210
    :try_start_15
    invoke-virtual {v13, v3}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;)V

    const-string v4, ""

    .line 3211
    invoke-direct {v1, v13, v4, v12}, Lcom/sun/mail/util/logging/MailHandler;->setContent(Ljavax/mail/internet/MimePart;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 3212
    invoke-virtual {v0, v13}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    const/4 v4, 0x0

    :goto_13
    if-ge v4, v8, :cond_15

    .line 3214
    aget-object v12, v10, v4

    invoke-virtual {v12, v3}, Ljavax/mail/internet/MimeBodyPart;->setDescription(Ljava/lang/String;)V

    .line 3215
    aget-object v12, v10, v4

    const-string v13, ""

    aget-object v14, v9, v4

    invoke-direct {v1, v12, v13, v14}, Lcom/sun/mail/util/logging/MailHandler;->setContent(Ljavax/mail/internet/MimePart;Ljava/lang/CharSequence;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 3218
    :cond_15
    invoke-virtual {v5, v0}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    .line 3219
    invoke-virtual {v5}, Ljavax/mail/internet/MimeMessage;->saveChanges()V

    .line 3220
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v4, 0x400

    invoke-direct {v0, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {v5, v0}, Ljavax/mail/internet/MimeMessage;->writeTo(Ljava/io/OutputStream;)V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 3222
    :try_start_16
    invoke-direct {v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_16 .. :try_end_16} :catch_e
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_f

    goto :goto_14

    :catchall_2
    move-exception v0

    .line 3208
    :try_start_17
    monitor-exit p0
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_2

    :try_start_18
    throw v0
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    :catchall_3
    move-exception v0

    .line 3222
    :try_start_19
    invoke-direct {v1, v2}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3223
    throw v0
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_c
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_19} :catch_e
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_f

    :catch_c
    move-exception v0

    .line 3225
    :try_start_1a
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-direct {v2, v7, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    .line 3226
    invoke-direct {v1, v5, v3, v2}, Lcom/sun/mail/util/logging/MailHandler;->setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3227
    invoke-direct {v1, v5, v2, v6}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    .line 3232
    :cond_16
    :goto_14
    array-length v0, v11

    if-eqz v0, :cond_1c

    .line 3233
    invoke-static {v11}, Lcom/sun/mail/util/logging/MailHandler;->verifyAddresses([Ljavax/mail/Address;)V

    .line 3239
    invoke-virtual {v5}, Ljavax/mail/internet/MimeMessage;->getFrom()[Ljavax/mail/Address;

    move-result-object v0

    .line 3240
    invoke-virtual {v5}, Ljavax/mail/internet/MimeMessage;->getSender()Ljavax/mail/Address;

    move-result-object v2

    .line 3241
    instance-of v4, v2, Ljavax/mail/internet/InternetAddress;

    if-eqz v4, :cond_17

    .line 3242
    move-object v4, v2

    check-cast v4, Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v4}, Ljavax/mail/internet/InternetAddress;->validate()V

    :cond_17
    const-string v4, "From"

    const-string v6, ","

    .line 3246
    invoke-virtual {v5, v4, v6}, Ljavax/mail/internet/MimeMessage;->getHeader(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_19

    array-length v4, v0

    if-eqz v4, :cond_19

    .line 3247
    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->verifyAddresses([Ljavax/mail/Address;)V

    const/4 v10, 0x0

    .line 3248
    :goto_15
    array-length v4, v0

    if-ge v10, v4, :cond_1a

    .line 3249
    aget-object v4, v0, v10

    invoke-virtual {v4, v2}, Ljavax/mail/Address;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    add-int/lit8 v10, v10, 0x1

    goto :goto_15

    .line 3250
    :cond_18
    new-instance v0, Ljavax/mail/MessagingException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Sender address \'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "\' equals from address."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 3253
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-direct {v2, v7, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :cond_19
    if-eqz v2, :cond_1b

    .line 3265
    :cond_1a
    invoke-virtual {v5}, Ljavax/mail/internet/MimeMessage;->getReplyTo()[Ljavax/mail/Address;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->verifyAddresses([Ljavax/mail/Address;)V

    goto :goto_18

    .line 3258
    :cond_1b
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v2, "No from or sender address."

    invoke-direct {v0, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    .line 3260
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-direct {v2, v7, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    .line 3235
    :cond_1c
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v2, "No recipient addresses."

    invoke-direct {v0, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1a
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_1a} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_f

    :catchall_4
    move-exception v0

    goto :goto_16

    :catch_d
    move-exception v0

    move-object v2, v0

    .line 3082
    :try_start_1b
    invoke-static {v12, v2}, Lcom/sun/mail/util/logging/MailHandler;->attach(Ljavax/mail/MessagingException;Ljava/lang/Exception;)Ljavax/mail/MessagingException;

    move-result-object v0

    throw v0
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_4

    .line 3084
    :goto_16
    :try_start_1c
    invoke-direct {v1, v13}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3085
    throw v0
    :try_end_1c
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_1c} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_f

    :catch_e
    move-exception v0

    const/4 v2, 0x4

    goto :goto_17

    :catch_f
    move-exception v0

    .line 3270
    invoke-direct {v1, v5, v3, v0}, Lcom/sun/mail/util/logging/MailHandler;->setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x4

    .line 3271
    invoke-direct {v1, v5, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    goto :goto_18

    :catch_10
    move-exception v0

    move v2, v4

    .line 3267
    :goto_17
    invoke-direct {v1, v5, v3, v0}, Lcom/sun/mail/util/logging/MailHandler;->setErrorContent(Ljavax/mail/internet/MimeMessage;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3268
    invoke-direct {v1, v5, v0, v2}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljavax/mail/Message;Ljava/lang/Exception;I)V

    :goto_18
    return-void

    :catchall_5
    move-exception v0

    .line 3053
    :try_start_1d
    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    throw v0
.end method

.method private writeLogRecords(I)Ljavax/mail/Message;
    .locals 2

    .line 2790
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2791
    :try_start_1
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2792
    iput-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x0

    .line 2794
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->writeLogRecords0()Ljavax/mail/Message;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2796
    :try_start_3
    iput-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    .line 2797
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-lez v0, :cond_0

    .line 2798
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->reset()V

    :cond_0
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    .line 2796
    iput-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    .line 2797
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-lez v0, :cond_1

    .line 2798
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->reset()V

    .line 2800
    :cond_1
    throw v1

    .line 2802
    :cond_2
    monitor-exit p0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    .line 2806
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2804
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private writeLogRecords0()Ljavax/mail/Message;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 2825
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->sort()V

    .line 2826
    iget-object v1, v0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    if-nez v1, :cond_0

    .line 2827
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->initSession()Ljavax/mail/Session;

    .line 2829
    :cond_0
    new-instance v1, Ljavax/mail/internet/MimeMessage;

    iget-object v2, v0, Lcom/sun/mail/util/logging/MailHandler;->session:Ljavax/mail/Session;

    invoke-direct {v1, v2}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V

    .line 2836
    iget-object v2, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v2, v2

    new-array v3, v2, [Ljavax/mail/internet/MimeBodyPart;

    .line 2841
    new-array v4, v2, [Ljava/lang/StringBuilder;

    if-nez v2, :cond_1

    .line 2846
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v5

    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v6

    iget-object v7, v0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 2845
    invoke-direct {v0, v5, v6, v7}, Lcom/sun/mail/util/logging/MailHandler;->descriptionFrom(Ljava/util/logging/Formatter;Ljava/util/logging/Filter;Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/mail/internet/MimeMessage;->setDescription(Ljava/lang/String;)V

    move-object v5, v1

    goto :goto_0

    .line 2849
    :cond_1
    iget-object v5, v0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;

    iget-object v6, v0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;

    iget-object v7, v0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;

    invoke-direct {v0, v5, v6, v7}, Lcom/sun/mail/util/logging/MailHandler;->descriptionFrom(Ljava/util/Comparator;Ljava/util/logging/Level;Ljava/util/logging/Filter;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljavax/mail/internet/MimeMessage;->setDescription(Ljava/lang/String;)V

    .line 2851
    invoke-direct/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->createBodyPart()Ljavax/mail/internet/MimeBodyPart;

    move-result-object v5

    .line 2854
    :goto_0
    iget-object v6, v0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    invoke-direct {v0, v6}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v1, v6}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 2855
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->getFormatter()Ljava/util/logging/Formatter;

    move-result-object v6

    .line 2856
    invoke-virtual/range {p0 .. p0}, Lcom/sun/mail/util/logging/MailHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v7

    const/4 v9, 0x0

    move-object v11, v9

    move-object v12, v11

    const/4 v10, 0x0

    .line 2859
    :goto_1
    iget v13, v0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-ge v10, v13, :cond_e

    .line 2861
    iget-object v13, v0, Lcom/sun/mail/util/logging/MailHandler;->matched:[I

    aget v13, v13, v10

    .line 2862
    iget-object v14, v0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    aget-object v15, v14, v10

    .line 2863
    aput-object v9, v14, v10

    .line 2865
    invoke-direct {v0, v15}, Lcom/sun/mail/util/logging/MailHandler;->localeFor(Ljava/util/logging/LogRecord;)Ljava/util/Locale;

    move-result-object v14

    .line 2866
    iget-object v9, v0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    invoke-direct {v0, v9, v15}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v0, v1, v9}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    if-eqz v7, :cond_3

    const/4 v9, -0x1

    if-eq v13, v9, :cond_3

    if-eqz v2, :cond_3

    if-ge v13, v9, :cond_2

    .line 2869
    invoke-interface {v7, v15}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    const/4 v9, 0x0

    const/16 v16, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    if-nez v11, :cond_4

    .line 2872
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 2873
    invoke-direct {v0, v6}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2876
    :cond_4
    invoke-direct {v0, v6, v15}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_5

    .line 2877
    invoke-virtual {v14, v12}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 2878
    invoke-direct {v0, v5, v14}, Lcom/sun/mail/util/logging/MailHandler;->appendContentLang(Ljavax/mail/internet/MimePart;Ljava/util/Locale;)V

    :cond_5
    move-object/from16 v16, v7

    const/4 v9, 0x1

    :goto_3
    move-object/from16 v17, v7

    move-object/from16 v8, v16

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v2, :cond_b

    move-object/from16 v18, v11

    .line 2885
    iget-object v11, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    aget-object v11, v11, v7

    if-eqz v11, :cond_6

    if-eq v8, v11, :cond_6

    if-eq v13, v7, :cond_6

    if-ge v13, v7, :cond_a

    .line 2887
    invoke-interface {v11, v15}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v19

    if-eqz v19, :cond_a

    :cond_6
    if-nez v8, :cond_7

    if-eqz v11, :cond_7

    move-object v8, v11

    .line 2891
    :cond_7
    aget-object v9, v3, v7

    if-nez v9, :cond_8

    .line 2892
    invoke-direct {v0, v7}, Lcom/sun/mail/util/logging/MailHandler;->createBodyPart(I)Ljavax/mail/internet/MimeBodyPart;

    move-result-object v9

    aput-object v9, v3, v7

    .line 2893
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    aput-object v9, v4, v7

    .line 2894
    iget-object v11, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v11, v11, v7

    invoke-direct {v0, v11}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2895
    aget-object v9, v3, v7

    iget-object v11, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v11, v11, v7

    invoke-direct {v0, v11}, Lcom/sun/mail/util/logging/MailHandler;->head(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v9, v11}, Lcom/sun/mail/util/logging/MailHandler;->appendFileName(Ljavax/mail/Part;Ljava/lang/String;)V

    .line 2898
    :cond_8
    aget-object v9, v3, v7

    iget-object v11, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v11, v11, v7

    invoke-direct {v0, v11, v15}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v9, v11}, Lcom/sun/mail/util/logging/MailHandler;->appendFileName(Ljavax/mail/Part;Ljava/lang/String;)V

    .line 2899
    aget-object v9, v4, v7

    iget-object v11, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v11, v11, v7

    invoke-direct {v0, v11, v15}, Lcom/sun/mail/util/logging/MailHandler;->format(Ljava/util/logging/Formatter;Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v14, :cond_9

    .line 2900
    invoke-virtual {v14, v12}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_9

    .line 2901
    aget-object v9, v3, v7

    invoke-direct {v0, v9, v14}, Lcom/sun/mail/util/logging/MailHandler;->appendContentLang(Ljavax/mail/internet/MimePart;Ljava/util/Locale;)V

    :cond_9
    const/4 v9, 0x1

    :cond_a
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v11, v18

    goto :goto_4

    :cond_b
    move-object/from16 v18, v11

    if-eqz v9, :cond_c

    if-eq v5, v1, :cond_d

    if-eqz v14, :cond_d

    .line 2908
    invoke-virtual {v14, v12}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 2909
    invoke-direct {v0, v1, v14}, Lcom/sun/mail/util/logging/MailHandler;->appendContentLang(Ljavax/mail/internet/MimePart;Ljava/util/Locale;)V

    goto :goto_5

    .line 2912
    :cond_c
    invoke-direct {v0, v15}, Lcom/sun/mail/util/logging/MailHandler;->reportFilterError(Ljava/util/logging/LogRecord;)V

    :cond_d
    :goto_5
    add-int/lit8 v10, v10, 0x1

    move-object v12, v14

    move-object/from16 v7, v17

    move-object/from16 v11, v18

    const/4 v9, 0x0

    goto/16 :goto_1

    :cond_e
    const/4 v7, 0x0

    .line 2916
    iput v7, v0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    add-int/lit8 v7, v2, -0x1

    :goto_6
    const-string v8, ""

    if-ltz v7, :cond_12

    .line 2919
    aget-object v9, v3, v7

    if-eqz v9, :cond_11

    .line 2920
    iget-object v10, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    aget-object v10, v10, v7

    const-string v12, "err"

    invoke-direct {v0, v10, v12}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v9, v10}, Lcom/sun/mail/util/logging/MailHandler;->appendFileName(Ljavax/mail/Part;Ljava/lang/String;)V

    .line 2921
    aget-object v9, v4, v7

    iget-object v10, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v10, v10, v7

    invoke-direct {v0, v10, v8}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2923
    aget-object v8, v4, v7

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v8

    if-lez v8, :cond_10

    .line 2924
    aget-object v8, v3, v7

    invoke-virtual {v8}, Ljavax/mail/internet/MimeBodyPart;->getFileName()Ljava/lang/String;

    move-result-object v8

    .line 2925
    invoke-static {v8}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_f

    .line 2926
    iget-object v8, v0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    aget-object v8, v8, v7

    invoke-direct {v0, v8}, Lcom/sun/mail/util/logging/MailHandler;->toString(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v8

    .line 2927
    aget-object v9, v3, v7

    invoke-virtual {v9, v8}, Ljavax/mail/internet/MimeBodyPart;->setFileName(Ljava/lang/String;)V

    .line 2929
    :cond_f
    aget-object v9, v3, v7

    aget-object v10, v4, v7

    invoke-direct {v0, v8}, Lcom/sun/mail/util/logging/MailHandler;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v9, v10, v8}, Lcom/sun/mail/util/logging/MailHandler;->setContent(Ljavax/mail/internet/MimePart;Ljava/lang/CharSequence;Ljava/lang/String;)V

    const/4 v9, 0x0

    goto :goto_7

    .line 2931
    :cond_10
    invoke-direct {v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->setIncompleteCopy(Ljavax/mail/Message;)V

    const/4 v9, 0x0

    .line 2932
    aput-object v9, v3, v7

    .line 2934
    :goto_7
    aput-object v9, v4, v7

    goto :goto_8

    :cond_11
    const/4 v9, 0x0

    :goto_8
    add-int/lit8 v7, v7, -0x1

    goto :goto_6

    :cond_12
    if-eqz v11, :cond_13

    .line 2939
    invoke-direct {v0, v6, v8}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    goto :goto_9

    .line 2943
    :cond_13
    new-instance v11, Ljava/lang/StringBuilder;

    const/4 v4, 0x0

    invoke-direct {v11, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2946
    :goto_9
    iget-object v7, v0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    invoke-direct {v0, v7, v8}, Lcom/sun/mail/util/logging/MailHandler;->tail(Ljava/util/logging/Formatter;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v7}, Lcom/sun/mail/util/logging/MailHandler;->appendSubject(Ljavax/mail/Message;Ljava/lang/String;)V

    .line 2948
    invoke-virtual {v0, v11}, Lcom/sun/mail/util/logging/MailHandler;->contentTypeOf(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 2949
    invoke-virtual {v0, v6}, Lcom/sun/mail/util/logging/MailHandler;->contentTypeOf(Ljava/util/logging/Formatter;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_14

    goto :goto_a

    :cond_14
    move-object v7, v6

    .line 2950
    :goto_a
    invoke-direct {v0, v5, v11, v7}, Lcom/sun/mail/util/logging/MailHandler;->setContent(Ljavax/mail/internet/MimePart;Ljava/lang/CharSequence;Ljava/lang/String;)V

    if-eq v5, v1, :cond_17

    .line 2952
    new-instance v6, Ljavax/mail/internet/MimeMultipart;

    invoke-direct {v6}, Ljavax/mail/internet/MimeMultipart;-><init>()V

    .line 2954
    check-cast v5, Ljavax/mail/BodyPart;

    invoke-virtual {v6, v5}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    move v8, v4

    :goto_b
    if-ge v8, v2, :cond_16

    .line 2957
    aget-object v4, v3, v8

    if-eqz v4, :cond_15

    .line 2958
    invoke-virtual {v6, v4}, Ljavax/mail/internet/MimeMultipart;->addBodyPart(Ljavax/mail/BodyPart;)V

    :cond_15
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 2961
    :cond_16
    invoke-virtual {v1, v6}, Ljavax/mail/internet/MimeMessage;->setContent(Ljavax/mail/Multipart;)V

    :cond_17
    return-object v1
.end method


# virtual methods
.method public close()V
    .locals 4

    const/4 v0, 0x3

    .line 860
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 862
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    .line 864
    :try_start_1
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->writeLogRecords(I)Ljavax/mail/Message;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 866
    :try_start_2
    sget-object v3, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 873
    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-lez v3, :cond_0

    neg-int v3, v3

    .line 874
    iput v3, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    .line 878
    :cond_0
    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v3, v3

    if-eq v3, v1, :cond_1

    new-array v1, v1, [Ljava/util/logging/LogRecord;

    .line 879
    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    .line 880
    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->matched:[I

    .line 883
    :cond_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_4

    const/4 v1, 0x0

    .line 886
    :try_start_3
    invoke-direct {p0, v2, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->send(Ljavax/mail/Message;ZI)V
    :try_end_3
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catchall_0
    move-exception v2

    .line 866
    :try_start_4
    sget-object v3, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    iput-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 873
    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-lez v3, :cond_2

    .line 874
    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    neg-int v3, v3

    iput v3, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    .line 878
    :cond_2
    iget v3, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    array-length v3, v3

    if-eq v3, v1, :cond_3

    new-array v1, v1, [Ljava/util/logging/LogRecord;

    .line 879
    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->data:[Ljava/util/logging/LogRecord;

    .line 880
    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->matched:[I

    .line 882
    :cond_3
    throw v2

    :catchall_1
    move-exception v1

    .line 883
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    throw v1
    :try_end_5
    .catch Ljava/lang/LinkageError; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v1

    .line 889
    invoke-direct {p0, v1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportLinkageError(Ljava/lang/Throwable;I)V

    :cond_4
    :goto_0
    return-void
.end method

.method final contentTypeOf(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .line 1625
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1627
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/16 v1, 0x19

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 1628
    invoke-interface {p1, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 1631
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->getEncodingName()Ljava/lang/String;

    move-result-object v0

    .line 1632
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    .line 1633
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 1635
    invoke-static {v0}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 1637
    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, p1, v1}, Lcom/sun/mail/util/logging/MailHandler;->reportError(Ljava/lang/String;Ljava/lang/Exception;I)V

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method final contentTypeOf(Ljava/util/logging/Formatter;)Ljava/lang/String;
    .locals 6

    if-eqz p1, :cond_4

    .line 1657
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getContentType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    .line 1662
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    :goto_0
    const-class v0, Ljava/util/logging/Formatter;

    if-eq p1, v0, :cond_4

    .line 1666
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InternalError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1668
    :catch_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1670
    :goto_1
    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x24

    .line 1671
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    :goto_2
    const-string v3, "ml"

    .line 1672
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_3

    if-lez v1, :cond_2

    add-int/lit8 v3, v1, -0x1

    .line 1674
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x78

    if-ne v4, v5, :cond_1

    const-string p1, "application/xml"

    return-object p1

    :cond_1
    if-le v1, v2, :cond_2

    add-int/lit8 v4, v1, -0x2

    .line 1677
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x68

    if-ne v4, v5, :cond_2

    .line 1678
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x74

    if-ne v3, v4, :cond_2

    const-string p1, "text/html"

    return-object p1

    :cond_2
    add-int/lit8 v1, v1, 0x2

    goto :goto_2

    .line 1663
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method public flush()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 841
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->push(ZI)V

    return-void
.end method

.method public final getAttachmentFilters()[Ljava/util/logging/Filter;
    .locals 1

    .line 1310
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->readOnlyAttachmentFilters()[Ljava/util/logging/Filter;

    move-result-object v0

    invoke-virtual {v0}, [Ljava/util/logging/Filter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/logging/Filter;

    return-object v0
.end method

.method public final getAttachmentFormatters()[Ljava/util/logging/Formatter;
    .locals 1

    .line 1360
    monitor-enter p0

    .line 1361
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    .line 1362
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1363
    invoke-virtual {v0}, [Ljava/util/logging/Formatter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/logging/Formatter;

    return-object v0

    :catchall_0
    move-exception v0

    .line 1362
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final getAttachmentNames()[Ljava/util/logging/Formatter;
    .locals 1

    .line 1412
    monitor-enter p0

    .line 1413
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 1414
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1415
    invoke-virtual {v0}, [Ljava/util/logging/Formatter;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/logging/Formatter;

    return-object v0

    :catchall_0
    move-exception v0

    .line 1414
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getAuthenticator()Ljavax/mail/Authenticator;
    .locals 1

    monitor-enter p0

    .line 1199
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1200
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->auth:Ljavax/mail/Authenticator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getCapacity()I
    .locals 1

    monitor-enter p0

    .line 1189
    :try_start_0
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1162
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getEncoding()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1021
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->encoding:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getErrorManager()Ljava/util/logging/ErrorManager;
    .locals 1

    .line 938
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 939
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    return-object v0
.end method

.method public getFilter()Ljava/util/logging/Filter;
    .locals 1

    .line 988
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    return-object v0
.end method

.method public declared-synchronized getFormatter()Ljava/util/logging/Formatter;
    .locals 1

    monitor-enter p0

    .line 1073
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLevel()Ljava/util/logging/Level;
    .locals 1

    .line 926
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    return-object v0
.end method

.method public final getMailProperties()Ljava/util/Properties;
    .locals 1

    .line 1295
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1297
    monitor-enter p0

    .line 1298
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->mailProps:Ljava/util/Properties;

    .line 1299
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1300
    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    return-object v0

    :catchall_0
    move-exception v0

    .line 1299
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final declared-synchronized getPushFilter()Ljava/util/logging/Filter;
    .locals 1

    monitor-enter p0

    .line 1134
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getPushLevel()Ljava/util/logging/Level;
    .locals 1

    monitor-enter p0

    .line 1103
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized getSubject()Ljava/util/logging/Formatter;
    .locals 1

    monitor-enter p0

    .line 1526
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public isLoggable(Ljava/util/logging/LogRecord;)Z
    .locals 2

    .line 597
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getLevel()Ljava/util/logging/Level;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Level;->intValue()I

    move-result v0

    .line 598
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/logging/Level;->intValue()I

    move-result v1

    if-lt v1, v0, :cond_3

    sget v1, Lcom/sun/mail/util/logging/MailHandler;->offValue:I

    if-ne v0, v1, :cond_0

    goto :goto_1

    .line 602
    :cond_0
    invoke-virtual {p0}, Lcom/sun/mail/util/logging/MailHandler;->getFilter()Ljava/util/logging/Filter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 603
    invoke-interface {v0, p1}, Ljava/util/logging/Filter;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 608
    :cond_1
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->isAttachmentLoggable(Ljava/util/logging/LogRecord;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, -0x1

    .line 604
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setMatchedPart(I)V

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method final isMissingContent(Ljavax/mail/Message;Ljava/lang/Throwable;)Z
    .locals 7

    .line 1702
    sget-object v0, Lcom/sun/mail/util/logging/MailHandler;->MAILHANDLER_LOADER:Ljava/security/PrivilegedAction;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 1704
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    const/16 v3, 0x400

    invoke-direct {v2, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    invoke-virtual {p1, v2}, Ljavax/mail/Message;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1733
    :cond_0
    :goto_0
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_3

    :catch_0
    move-exception p1

    .line 1708
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 1709
    invoke-static {v2}, Lcom/sun/mail/util/logging/MailHandler;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    move v3, v1

    :cond_1
    if-eqz p2, :cond_0

    .line 1712
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    .line 1713
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v4, :cond_2

    .line 1733
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    return v6

    .line 1719
    :cond_2
    :try_start_2
    invoke-virtual {p2}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_3

    .line 1720
    instance-of v5, p2, Ljavax/mail/MessagingException;

    if-eqz v5, :cond_3

    .line 1721
    check-cast p2, Ljavax/mail/MessagingException;

    invoke-virtual {p2}, Ljavax/mail/MessagingException;->getNextException()Ljava/lang/Exception;

    move-result-object p2

    goto :goto_1

    :cond_3
    move-object p2, v4

    :goto_1
    add-int/2addr v3, v6

    const/high16 v4, 0x10000

    if-ne v3, v4, :cond_1

    goto :goto_0

    :goto_2
    return v1

    :catch_1
    move-exception p1

    .line 1706
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1733
    :goto_3
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->getAndSetContextClassLoader(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1734
    throw p1
.end method

.method public postConstruct()V
    .locals 0

    return-void
.end method

.method public preDestroy()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 820
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->push(ZI)V

    return-void
.end method

.method public publish(Ljava/util/logging/LogRecord;)V
    .locals 1

    .line 634
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->tryMutex()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->isLoggable(Ljava/util/logging/LogRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 637
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    .line 638
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->publish0(Ljava/util/logging/LogRecord;)V
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 643
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->releaseMutex()V

    goto :goto_2

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    const/4 v0, 0x1

    .line 641
    :try_start_1
    invoke-direct {p0, p1, v0}, Lcom/sun/mail/util/logging/MailHandler;->reportLinkageError(Ljava/lang/Throwable;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 643
    :goto_1
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->releaseMutex()V

    .line 644
    throw p1

    .line 646
    :cond_1
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->reportUnPublishedError(Ljava/util/logging/LogRecord;)V

    :goto_2
    return-void
.end method

.method public push()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x2

    .line 830
    invoke-direct {p0, v0, v1}, Lcom/sun/mail/util/logging/MailHandler;->push(ZI)V

    return-void
.end method

.method protected reportError(Ljava/lang/String;Ljava/lang/Exception;I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1596
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    sget-object v1, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    invoke-virtual {v1}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ": "

    .line 1597
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1596
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_1

    .line 1599
    :cond_0
    iget-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->errorManager:Ljava/util/logging/ErrorManager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2, p3}, Ljava/util/logging/ErrorManager;->error(Ljava/lang/String;Ljava/lang/Exception;I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 1602
    :goto_0
    invoke-direct {p0, p1, p3}, Lcom/sun/mail/util/logging/MailHandler;->reportLinkageError(Ljava/lang/Throwable;I)V

    :goto_1
    return-void
.end method

.method public final varargs setAttachmentFilters([Ljava/util/logging/Filter;)V
    .locals 3

    .line 1326
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1327
    array-length v0, p1

    if-nez v0, :cond_0

    .line 1328
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFilterArray()[Ljava/util/logging/Filter;

    move-result-object p1

    goto :goto_0

    .line 1330
    :cond_0
    array-length v0, p1

    const-class v1, [Ljava/util/logging/Filter;

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/logging/Filter;

    .line 1332
    :goto_0
    monitor-enter p0

    .line 1333
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_4

    .line 1337
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_3

    .line 1341
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->size:I

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 1342
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1343
    aget-object v1, p1, v0

    iget-object v2, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    aget-object v2, v2, v0

    if-eq v1, v2, :cond_1

    .line 1344
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->clearMatches(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1349
    :cond_2
    :goto_2
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFilters:[Ljava/util/logging/Filter;

    .line 1350
    monitor-exit p0

    return-void

    .line 1338
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1334
    :cond_4
    array-length v0, v0

    array-length p1, p1

    invoke-static {v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(II)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 1350
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final varargs setAttachmentFormatters([Ljava/util/logging/Formatter;)V
    .locals 2

    .line 1379
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1380
    array-length v0, p1

    if-nez v0, :cond_0

    .line 1381
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object p1

    goto :goto_1

    .line 1383
    :cond_0
    array-length v0, p1

    const-class v1, [Ljava/util/logging/Formatter;

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/logging/Formatter;

    const/4 v0, 0x0

    .line 1385
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1386
    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1387
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1392
    :cond_2
    :goto_1
    monitor-enter p0

    .line 1393
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_3

    .line 1397
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    .line 1398
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->alignAttachmentFilters()Z

    .line 1399
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->alignAttachmentNames()Z

    .line 1400
    monitor-exit p0

    return-void

    .line 1394
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 1400
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final varargs setAttachmentNames([Ljava/lang/String;)V
    .locals 4

    .line 1434
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1437
    array-length v0, p1

    if-nez v0, :cond_0

    .line 1438
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object v0

    goto :goto_0

    .line 1440
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/util/logging/Formatter;

    :goto_0
    const/4 v1, 0x0

    .line 1443
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 1444
    aget-object v2, p1, v1

    if-eqz v2, :cond_2

    .line 1446
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 1447
    invoke-static {v2}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->of(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1449
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v1}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1452
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-static {v1}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1456
    :cond_3
    monitor-enter p0

    .line 1457
    :try_start_0
    iget-object v1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v2, v1

    array-length v3, p1

    if-ne v2, v3, :cond_5

    .line 1461
    iget-boolean p1, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez p1, :cond_4

    .line 1464
    iput-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 1465
    monitor-exit p0

    return-void

    .line 1462
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1458
    :cond_5
    array-length v0, v1

    array-length p1, p1

    invoke-static {v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(II)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 1465
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final varargs setAttachmentNames([Ljava/util/logging/Formatter;)V
    .locals 3

    .line 1490
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1492
    array-length v0, p1

    if-nez v0, :cond_0

    .line 1493
    invoke-static {}, Lcom/sun/mail/util/logging/MailHandler;->emptyFormatterArray()[Ljava/util/logging/Formatter;

    move-result-object p1

    goto :goto_0

    .line 1495
    :cond_0
    array-length v0, p1

    const-class v1, [Ljava/util/logging/Formatter;

    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/util/logging/Formatter;

    :goto_0
    const/4 v0, 0x0

    .line 1499
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    .line 1500
    aget-object v1, p1, v0

    if-eqz v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1501
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler;->atIndexMsg(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1505
    :cond_2
    monitor-enter p0

    .line 1506
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentFormatters:[Ljava/util/logging/Formatter;

    array-length v1, v0

    array-length v2, p1

    if-ne v1, v2, :cond_4

    .line 1511
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_3

    .line 1515
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->attachmentNames:[Ljava/util/logging/Formatter;

    .line 1516
    monitor-exit p0

    return-void

    .line 1512
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1507
    :cond_4
    array-length v0, v0

    array-length p1, p1

    invoke-static {v0, p1}, Lcom/sun/mail/util/logging/MailHandler;->attachmentMismatch(II)Ljava/lang/RuntimeException;

    move-result-object p1

    throw p1

    :catchall_0
    move-exception p1

    .line 1516
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setAuthenticator(Ljavax/mail/Authenticator;)V
    .locals 0

    .line 1211
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setAuthenticator0(Ljavax/mail/Authenticator;)V

    return-void
.end method

.method public final varargs setAuthenticator([C)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 1227
    move-object v0, p1

    check-cast v0, Ljavax/mail/Authenticator;

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setAuthenticator0(Ljavax/mail/Authenticator;)V

    goto :goto_0

    .line 1229
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    invoke-static {v0}, Lcom/sun/mail/util/logging/MailHandler$DefaultAuthenticator;->of(Ljava/lang/String;)Ljavax/mail/Authenticator;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setAuthenticator0(Ljavax/mail/Authenticator;)V

    :goto_0
    return-void
.end method

.method public final declared-synchronized setComparator(Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    .line 1174
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1175
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1178
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->comparator:Ljava/util/Comparator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1179
    monitor-exit p0

    return-void

    .line 1176
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setEncoding(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1039
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1040
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setEncoding0(Ljava/lang/String;)V

    return-void
.end method

.method public setErrorManager(Ljava/util/logging/ErrorManager;)V
    .locals 0

    .line 955
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 956
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setErrorManager0(Ljava/util/logging/ErrorManager;)V

    return-void
.end method

.method public setFilter(Ljava/util/logging/Filter;)V
    .locals 1

    .line 1004
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1005
    monitor-enter p0

    .line 1006
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    .line 1007
    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/MailHandler;->clearMatches(I)V

    .line 1009
    :cond_0
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->filter:Ljava/util/logging/Filter;

    .line 1010
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public declared-synchronized setFormatter(Ljava/util/logging/Formatter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    monitor-enter p0

    .line 1090
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    if-eqz p1, :cond_0

    .line 1094
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->formatter:Ljava/util/logging/Formatter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1095
    monitor-exit p0

    return-void

    .line 1092
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLevel(Ljava/util/logging/Level;)V
    .locals 1

    .line 905
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 907
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 910
    monitor-enter p0

    .line 911
    :try_start_0
    iget v0, p0, Lcom/sun/mail/util/logging/MailHandler;->capacity:I

    if-lez v0, :cond_0

    .line 912
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->logLevel:Ljava/util/logging/Level;

    .line 914
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final setMailProperties(Ljava/util/Properties;)V
    .locals 0

    .line 1266
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setMailProperties0(Ljava/util/Properties;)V

    return-void
.end method

.method public final declared-synchronized setPushFilter(Ljava/util/logging/Filter;)V
    .locals 1

    monitor-enter p0

    .line 1149
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1150
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1153
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->pushFilter:Ljava/util/logging/Filter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1154
    monitor-exit p0

    return-void

    .line 1151
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized setPushLevel(Ljava/util/logging/Level;)V
    .locals 1

    monitor-enter p0

    .line 1118
    :try_start_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    if-eqz p1, :cond_1

    .line 1123
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1126
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->pushLevel:Ljava/util/logging/Level;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1127
    monitor-exit p0

    return-void

    .line 1124
    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 1120
    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setSubject(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1542
    invoke-static {p1}, Lcom/sun/mail/util/logging/MailHandler$TailNameFormatter;->of(Ljava/lang/String;)Ljava/util/logging/Formatter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/MailHandler;->setSubject(Ljava/util/logging/Formatter;)V

    return-void

    .line 1544
    :cond_0
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    const/4 p1, 0x0

    .line 1545
    throw p1
.end method

.method public final setSubject(Ljava/util/logging/Formatter;)V
    .locals 1

    .line 1569
    invoke-direct {p0}, Lcom/sun/mail/util/logging/MailHandler;->checkAccess()V

    .line 1571
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1574
    monitor-enter p0

    .line 1575
    :try_start_0
    iget-boolean v0, p0, Lcom/sun/mail/util/logging/MailHandler;->isWriting:Z

    if-nez v0, :cond_0

    .line 1578
    iput-object p1, p0, Lcom/sun/mail/util/logging/MailHandler;->subjectFormatter:Ljava/util/logging/Formatter;

    .line 1579
    monitor-exit p0

    return-void

    .line 1576
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :catchall_0
    move-exception p1

    .line 1579
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
