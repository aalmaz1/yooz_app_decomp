.class public Lcom/sun/mail/imap/IMAPStore;
.super Ljavax/mail/Store;
.source "IMAPStore.java"

# interfaces
.implements Ljavax/mail/QuotaAwareStore;
.implements Lcom/sun/mail/iap/ResponseHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/mail/imap/IMAPStore$ConnectionPool;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ID_ADDRESS:Ljava/lang/String; = "address"

.field public static final ID_ARGUMENTS:Ljava/lang/String; = "arguments"

.field public static final ID_COMMAND:Ljava/lang/String; = "command"

.field public static final ID_DATE:Ljava/lang/String; = "date"

.field public static final ID_ENVIRONMENT:Ljava/lang/String; = "environment"

.field public static final ID_NAME:Ljava/lang/String; = "name"

.field public static final ID_OS:Ljava/lang/String; = "os"

.field public static final ID_OS_VERSION:Ljava/lang/String; = "os-version"

.field public static final ID_SUPPORT_URL:Ljava/lang/String; = "support-url"

.field public static final ID_VENDOR:Ljava/lang/String; = "vendor"

.field public static final ID_VERSION:Ljava/lang/String; = "version"

.field public static final RESPONSE:I = 0x3e8


# instance fields
.field private final appendBufferSize:I

.field protected authorizationID:Ljava/lang/String;

.field private final blksize:I

.field private closeFoldersOnStoreFailure:Z

.field private volatile connectionFailed:Z

.field private final connectionFailedLock:Ljava/lang/Object;

.field private debugpassword:Z

.field private debugusername:Z

.field protected final defaultPort:I

.field private enableCompress:Z

.field private enableImapEvents:Z

.field private enableResponseEvents:Z

.field private enableSASL:Z

.field private enableStartTLS:Z

.field private finalizeCleanClose:Z

.field private volatile folderConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile folderConstructorLI:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private volatile forceClose:Z

.field private forcePasswordRefresh:Z

.field private guid:Ljava/lang/String;

.field protected host:Ljava/lang/String;

.field private ignoreSize:Z

.field protected final isSSL:Z

.field protected logger:Lcom/sun/mail/util/MailLogger;

.field private messageCacheDebug:Z

.field private final minIdleTime:I

.field protected final name:Ljava/lang/String;

.field private namespaces:Lcom/sun/mail/imap/protocol/Namespaces;

.field private nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

.field protected password:Ljava/lang/String;

.field private peek:Z

.field private final pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

.field private volatile port:I

.field protected proxyAuthUser:Ljava/lang/String;

.field private requireStartTLS:Z

.field private saslMechanisms:[Ljava/lang/String;

.field protected saslRealm:Ljava/lang/String;

.field private final statusCacheTimeout:I

.field private throwSearchException:Z

.field protected user:Ljava/lang/String;

.field private usingSSL:Z


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .registers 5

    const-string v0, "imap"

    const/4 v1, 0x0

    .line 429
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/mail/imap/IMAPStore;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V

    return-void
.end method

.method protected constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V
    .registers 14

    .line 442
    const-class v0, Lcom/sun/mail/imap/IMAPStore;

    invoke-direct {p0, p1, p2}, Ljavax/mail/Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    const/4 v1, -0x1

    .line 202
    iput v1, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    const/4 v2, 0x0

    .line 214
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->enableStartTLS:Z

    .line 215
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->requireStartTLS:Z

    .line 216
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->usingSSL:Z

    .line 217
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    .line 219
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z

    .line 221
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->enableResponseEvents:Z

    .line 223
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->enableImapEvents:Z

    .line 225
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->throwSearchException:Z

    .line 226
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->peek:Z

    const/4 v3, 0x1

    .line 227
    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPStore;->closeFoldersOnStoreFailure:Z

    .line 228
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->enableCompress:Z

    .line 229
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->finalizeCleanClose:Z

    .line 240
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailed:Z

    .line 241
    iput-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->forceClose:Z

    .line 242
    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailedLock:Ljava/lang/Object;

    const/4 v4, 0x0

    .line 251
    iput-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->folderConstructor:Ljava/lang/reflect/Constructor;

    .line 252
    iput-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->folderConstructorLI:Ljava/lang/reflect/Constructor;

    .line 410
    new-instance v4, Lcom/sun/mail/imap/IMAPStore$1;

    invoke-direct {v4, p0}, Lcom/sun/mail/imap/IMAPStore$1;-><init>(Lcom/sun/mail/imap/IMAPStore;)V

    iput-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    .line 443
    invoke-virtual {p1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v4

    if-eqz p2, :cond_43

    .line 446
    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    .line 447
    :cond_43
    iput-object p3, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    const-string p2, "mail."

    if-nez p4, :cond_60

    .line 449
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v5, ".ssl.enable"

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    :cond_60
    if-eqz p4, :cond_67

    const/16 v5, 0x3e1

    .line 452
    iput v5, p0, Lcom/sun/mail/imap/IMAPStore;->defaultPort:I

    goto :goto_6b

    :cond_67
    const/16 v5, 0x8f

    .line 454
    iput v5, p0, Lcom/sun/mail/imap/IMAPStore;->defaultPort:I

    .line 455
    :goto_6b
    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    .line 457
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->debug:Z

    const-string p4, "mail.debug.auth.username"

    .line 458
    invoke-static {v4, p4, v3}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->debugusername:Z

    const-string p4, "mail.debug.auth.password"

    .line 460
    invoke-static {v4, p4, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->debugpassword:Z

    .line 462
    new-instance p4, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "DEBUG "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 463
    invoke-virtual {p3, v7}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 464
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v7

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v8

    invoke-direct {p4, v5, v6, v7, v8}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    iput-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    .line 466
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v5, ".partialfetch"

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4, v3}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    if-nez p4, :cond_ce

    .line 469
    iput v1, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    .line 470
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v5, "mail.imap.partialfetch: false"

    invoke-virtual {p4, v5}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    goto :goto_107

    .line 472
    :cond_ce
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v5, ".fetchsize"

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/16 v5, 0x4000

    invoke-static {v4, p4, v5}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    .line 474
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_107

    .line 475
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail.imap.fetchsize: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v5, p4}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 478
    :cond_107
    :goto_107
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v5, ".ignorebodystructuresize"

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->ignoreSize:Z

    .line 480
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p4

    if-eqz p4, :cond_140

    .line 481
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mail.imap.ignorebodystructuresize: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v6, p0, Lcom/sun/mail/imap/IMAPStore;->ignoreSize:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p4, v5}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 483
    :cond_140
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v5, ".statuscachetimeout"

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/16 v5, 0x3e8

    invoke-static {v4, p4, v5}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/sun/mail/imap/IMAPStore;->statusCacheTimeout:I

    .line 485
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v5, v6}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_179

    .line 486
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "mail.imap.statuscachetimeout: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v5, p4}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 489
    :cond_179
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v5, ".appendbuffersize"

    invoke-virtual {p4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4, v1}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/sun/mail/imap/IMAPStore;->appendBufferSize:I

    .line 491
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v1, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1b0

    .line 492
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mail.imap.appendbuffersize: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 494
    :cond_1b0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ".minidletime"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const/16 v1, 0xa

    invoke-static {v4, p4, v1}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result p4

    iput p4, p0, Lcom/sun/mail/imap/IMAPStore;->minIdleTime:I

    .line 496
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v1, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_1e9

    .line 497
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "mail.imap.minidletime: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {v1, p4}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 500
    :cond_1e9
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ".proxyauth.user"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_224

    .line 502
    iput-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    .line 503
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p4, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p4

    if-eqz p4, :cond_224

    .line 504
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v5, "mail.imap.proxyauth.user: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p4, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 508
    :cond_224
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ".starttls.enable"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->enableStartTLS:Z

    if-eqz p4, :cond_246

    .line 511
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "enable STARTTLS"

    invoke-virtual {p4, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 514
    :cond_246
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ".starttls.required"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->requireStartTLS:Z

    if-eqz p4, :cond_268

    .line 517
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "require STARTTLS"

    invoke-virtual {p4, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 520
    :cond_268
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ".sasl.enable"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    if-eqz p4, :cond_28a

    .line 523
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "enable SASL"

    invoke-virtual {p4, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 526
    :cond_28a
    iget-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    if-eqz p4, :cond_2f7

    .line 527
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ".sasl.mechanisms"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_2f7

    .line 528
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2f7

    .line 529
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v1, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_2cb

    .line 530
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "SASL mechanisms allowed: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 531
    :cond_2cb
    new-instance v1, Ljava/util/ArrayList;

    const/4 v5, 0x5

    invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 532
    new-instance v5, Ljava/util/StringTokenizer;

    const-string v6, " ,"

    invoke-direct {v5, p4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    :cond_2d8
    :goto_2d8
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result p4

    if-eqz p4, :cond_2ec

    .line 534
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object p4

    .line 535
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_2d8

    .line 536
    invoke-interface {v1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2d8

    .line 538
    :cond_2ec
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p4

    new-array p4, p4, [Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->saslMechanisms:[Ljava/lang/String;

    .line 539
    invoke-interface {v1, p4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 544
    :cond_2f7
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ".sasl.authorizationid"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_31d

    .line 546
    iput-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    .line 547
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v5, "mail.imap.sasl.authorizationid: {0}"

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    invoke-virtual {p4, v1, v5, v6}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 552
    :cond_31d
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ".sasl.realm"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_343

    .line 554
    iput-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->saslRealm:Ljava/lang/String;

    .line 555
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v5, "mail.imap.sasl.realm: {0}"

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->saslRealm:Ljava/lang/String;

    invoke-virtual {p4, v1, v5, v6}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 559
    :cond_343
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ".forcepasswordrefresh"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z

    if-eqz p4, :cond_365

    .line 562
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "enable forcePasswordRefresh"

    invoke-virtual {p4, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 565
    :cond_365
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ".enableresponseevents"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->enableResponseEvents:Z

    if-eqz p4, :cond_387

    .line 568
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "enable IMAP response events"

    invoke-virtual {p4, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 571
    :cond_387
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ".enableimapevents"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->enableImapEvents:Z

    if-eqz p4, :cond_3a9

    .line 574
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "enable IMAP IDLE events"

    invoke-virtual {p4, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 577
    :cond_3a9
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ".messagecache.debug"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->messageCacheDebug:Z

    .line 580
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ".yahoo.guid"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    iput-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->guid:Ljava/lang/String;

    if-eqz p4, :cond_3e8

    .line 582
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v5, "mail.imap.yahoo.guid: {0}"

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->guid:Ljava/lang/String;

    invoke-virtual {p4, v1, v5, v6}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 585
    :cond_3e8
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ".throwsearchexception"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->throwSearchException:Z

    if-eqz p4, :cond_40a

    .line 588
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "throw SearchException"

    invoke-virtual {p4, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 591
    :cond_40a
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ".peek"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->peek:Z

    if-eqz p4, :cond_42c

    .line 594
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "peek"

    invoke-virtual {p4, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 597
    :cond_42c
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ".closefoldersonstorefailure"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4, v3}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->closeFoldersOnStoreFailure:Z

    if-eqz p4, :cond_44e

    .line 600
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "closeFoldersOnStoreFailure"

    invoke-virtual {p4, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 603
    :cond_44e
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ".compress.enable"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->enableCompress:Z

    if-eqz p4, :cond_470

    .line 606
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "enable COMPRESS"

    invoke-virtual {p4, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 609
    :cond_470
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v1, ".finalizecleanclose"

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v4, p4, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/imap/IMAPStore;->finalizeCleanClose:Z

    if-eqz p4, :cond_492

    .line 612
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "close connection cleanly in finalize"

    invoke-virtual {p4, v1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 614
    :cond_492
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p4, ".folder.class"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4f7

    .line 616
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v4, "IMAP: folder class: {0}"

    invoke-virtual {p4, v1, v4, p2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 618
    :try_start_4b4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p4
    :try_end_4bc
    .catch Ljava/lang/Exception; {:try_start_4b4 .. :try_end_4bc} :catch_4ed

    .line 626
    :try_start_4bc
    invoke-static {p2, v2, p4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p2
    :try_end_4c0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4bc .. :try_end_4c0} :catch_4c1
    .catch Ljava/lang/Exception; {:try_start_4bc .. :try_end_4c0} :catch_4ed

    goto :goto_4c5

    .line 631
    :catch_4c1
    :try_start_4c1
    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    :goto_4c5
    const/4 p4, 0x4

    new-array p4, p4, [Ljava/lang/Class;

    .line 634
    const-class v1, Ljava/lang/String;

    aput-object v1, p4, v2

    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    aput-object v1, p4, v3

    const/4 v1, 0x2

    aput-object v0, p4, v1

    const-class v4, Ljava/lang/Boolean;

    const/4 v5, 0x3

    aput-object v4, p4, v5

    .line 636
    invoke-virtual {p2, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p4

    iput-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->folderConstructor:Ljava/lang/reflect/Constructor;

    new-array p4, v1, [Ljava/lang/Class;

    .line 637
    const-class v1, Lcom/sun/mail/imap/protocol/ListInfo;

    aput-object v1, p4, v2

    aput-object v0, p4, v3

    .line 638
    invoke-virtual {p2, p4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->folderConstructorLI:Ljava/lang/reflect/Constructor;
    :try_end_4ec
    .catch Ljava/lang/Exception; {:try_start_4c1 .. :try_end_4ec} :catch_4ed

    goto :goto_4f7

    :catch_4ed
    move-exception p2

    .line 640
    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v1, "IMAP: failed to load folder class"

    invoke-virtual {p4, v0, v1, p2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 645
    :cond_4f7
    :goto_4f7
    new-instance p2, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    iget-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    invoke-direct {p2, p3, p4, p1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;-><init>(Ljava/lang/String;Lcom/sun/mail/util/MailLogger;Ljavax/mail/Session;)V

    iput-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    return-void
.end method

.method private authenticate(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 874
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".auth.mechanisms"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PLAIN LOGIN NTLM XOAUTH2"

    if-nez v0, :cond_22

    move-object v0, v1

    .line 885
    :cond_22
    new-instance v3, Ljava/util/StringTokenizer;

    invoke-direct {v3, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 886
    :cond_27
    :goto_27
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_100

    .line 887
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    .line 888
    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "XOAUTH2"

    if-ne v0, v1, :cond_99

    .line 894
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".auth."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 895
    invoke-virtual {v4, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".disable"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 896
    iget-object v7, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    .line 897
    invoke-virtual {v7}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v7

    .line 898
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    .line 896
    invoke-static {v7, v6, v8}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_99

    .line 900
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v5, v7}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 901
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "mechanism "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " disabled by property: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_27

    .line 907
    :cond_99
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "AUTH="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v6

    const-string v7, "LOGIN"

    if-nez v6, :cond_c9

    .line 908
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_be

    const-string v6, "AUTH-LOGIN"

    invoke-virtual {p1, v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_c9

    .line 909
    :cond_be
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "mechanism {0} not supported by server"

    invoke-virtual {v5, v6, v7, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_27

    :cond_c9
    const-string v6, "PLAIN"

    .line 914
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d5

    .line 915
    invoke-virtual {p1, p2, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authplain(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f4

    .line 916
    :cond_d5
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_df

    .line 917
    invoke-virtual {p1, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authlogin(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f4

    :cond_df
    const-string v6, "NTLM"

    .line 918
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_eb

    .line 919
    invoke-virtual {p1, p2, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authntlm(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f4

    .line 920
    :cond_eb
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f5

    .line 921
    invoke-virtual {p1, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->authoauth2(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f4
    return-void

    .line 923
    :cond_f5
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v6, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v7, "no authenticator for mechanism {0}"

    invoke-virtual {v5, v6, v7, v4}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_27

    :cond_100
    const-string p2, "LOGINDISABLED"

    .line 929
    invoke-virtual {p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_10c

    .line 930
    invoke-virtual {p1, p3, p4}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->login(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 934
    :cond_10c
    new-instance p1, Lcom/sun/mail/iap/ProtocolException;

    const-string p2, "No login methods supported!"

    invoke-direct {p1, p2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private checkConnected()V
    .registers 3

    .line 1982
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 1983
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private declared-synchronized cleanup()V
    .registers 5

    const-string v0, "IMAPStore cleanup, force "

    monitor-enter p0

    .line 1655
    :try_start_3
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1656
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "IMAPStore cleanup, not connected"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_54

    .line 1657
    monitor-exit p0

    return-void

    .line 1667
    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailedLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_54

    .line 1668
    :try_start_15
    iget-boolean v2, p0, Lcom/sun/mail/imap/IMAPStore;->forceClose:Z

    const/4 v3, 0x0

    .line 1669
    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPStore;->forceClose:Z

    .line 1670
    iput-boolean v3, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailed:Z

    .line 1671
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_51

    .line 1672
    :try_start_1d
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_39

    .line 1673
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    :cond_39
    if-eqz v2, :cond_3f

    .line 1675
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->closeFoldersOnStoreFailure:Z

    if-eqz v0, :cond_42

    .line 1676
    :cond_3f
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->closeAllFolders(Z)V

    .line 1679
    :cond_42
    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->emptyConnectionPool(Z)V
    :try_end_45
    .catchall {:try_start_1d .. :try_end_45} :catchall_54

    .line 1683
    :try_start_45
    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_48
    .catch Ljavax/mail/MessagingException; {:try_start_45 .. :try_end_48} :catch_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_54

    .line 1687
    :catch_48
    :try_start_48
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "IMAPStore cleanup done"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_54

    .line 1688
    monitor-exit p0

    return-void

    :catchall_51
    move-exception v0

    .line 1671
    :try_start_52
    monitor-exit v1
    :try_end_53
    .catchall {:try_start_52 .. :try_end_53} :catchall_51

    :try_start_53
    throw v0
    :try_end_54
    .catchall {:try_start_53 .. :try_end_54} :catchall_54

    :catchall_54
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private closeAllFolders(Z)V
    .registers 10

    const/4 v0, 0x0

    move-object v1, v0

    .line 1707
    :cond_2
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2

    .line 1708
    :try_start_5
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$400(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1b

    .line 1710
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$400(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    .line 1711
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3, v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$402(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Ljava/util/Vector;)Ljava/util/Vector;

    move v3, v4

    goto :goto_1c

    :cond_1b
    const/4 v3, 0x1

    .line 1715
    :goto_1c
    monitor-exit v2
    :try_end_1d
    .catchall {:try_start_5 .. :try_end_1d} :catchall_47

    if-eqz v3, :cond_20

    return-void

    .line 1720
    :cond_20
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    move v3, v4

    :goto_25
    if-ge v3, v2, :cond_2

    .line 1721
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/mail/imap/IMAPFolder;

    if-eqz p1, :cond_3a

    .line 1725
    :try_start_2f
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v7, "force folder to close"

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1729
    invoke-virtual {v5}, Lcom/sun/mail/imap/IMAPFolder;->forceClose()V

    goto :goto_44

    .line 1731
    :cond_3a
    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v7, "close folder"

    invoke-virtual {v6, v7}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1732
    invoke-virtual {v5, v4}, Lcom/sun/mail/imap/IMAPFolder;->close(Z)V
    :try_end_44
    .catch Ljavax/mail/MessagingException; {:try_start_2f .. :try_end_44} :catch_44
    .catch Ljava/lang/IllegalStateException; {:try_start_2f .. :try_end_44} :catch_44

    :catch_44
    :goto_44
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    :catchall_47
    move-exception p1

    .line 1715
    :try_start_48
    monitor-exit v2
    :try_end_49
    .catchall {:try_start_48 .. :try_end_49} :catchall_47

    throw p1
.end method

.method private emptyConnectionPool(Z)V
    .registers 5

    .line 1406
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v0

    .line 1407
    :try_start_3
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_42

    add-int/lit8 v1, v1, -0x1

    :goto_f
    if-ltz v1, :cond_2c

    .line 1410
    :try_start_11
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1411
    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 1412
    invoke-virtual {v2, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    if-eqz p1, :cond_26

    .line 1414
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    goto :goto_29

    .line 1416
    :cond_26
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_29
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_11 .. :try_end_29} :catch_29
    .catchall {:try_start_11 .. :try_end_29} :catchall_42

    :catch_29
    :goto_29
    add-int/lit8 v1, v1, -0x1

    goto :goto_f

    .line 1420
    :cond_2c
    :try_start_2c
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Vector;->removeAllElements()V

    .line 1421
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_2c .. :try_end_36} :catchall_42

    .line 1423
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object p1

    const-string v0, "removed all authenticated connections from pool"

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    return-void

    :catchall_42
    move-exception p1

    .line 1421
    :try_start_43
    monitor-exit v0
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    throw p1
.end method

.method private declared-synchronized getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1874
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 1878
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->namespaces:Lcom/sun/mail/imap/protocol/Namespaces;
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_37

    if-nez v0, :cond_33

    const/4 v0, 0x0

    .line 1880
    :try_start_9
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 1881
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->namespace()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->namespaces:Lcom/sun/mail/imap/protocol/Namespaces;
    :try_end_13
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_9 .. :try_end_13} :catch_13
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_9 .. :try_end_13} :catch_24
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9 .. :try_end_13} :catch_19
    .catchall {:try_start_9 .. :try_end_13} :catchall_17

    .line 1889
    :catch_13
    :try_start_13
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_37

    goto :goto_33

    :catchall_17
    move-exception v1

    goto :goto_2f

    :catch_19
    move-exception v1

    .line 1887
    :try_start_1a
    new-instance v2, Ljavax/mail/MessagingException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2

    :catch_24
    move-exception v1

    .line 1885
    new-instance v2, Ljavax/mail/StoreClosedException;

    invoke-virtual {v1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, p0, v1}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v2
    :try_end_2f
    .catchall {:try_start_1a .. :try_end_2f} :catchall_17

    .line 1889
    :goto_2f
    :try_start_2f
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1890
    throw v1

    .line 1892
    :cond_33
    :goto_33
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->namespaces:Lcom/sun/mail/imap/protocol/Namespaces;
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_37

    monitor-exit p0

    return-object v0

    :catchall_37
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    const/4 v0, 0x0

    move-object v1, v0

    :goto_2
    if-nez v1, :cond_ee

    .line 1150
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2

    .line 1151
    :try_start_7
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->waitIfIdle()V

    .line 1155
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_55

    .line 1156
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v3

    const-string v4, "getStoreProtocol() - no connections in the pool, creating a new one"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_eb

    .line 1159
    :try_start_21
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z

    if-eqz v3, :cond_28

    .line 1160
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->refreshPassword()V

    .line 1162
    :cond_28
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    iget v4, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    invoke-virtual {p0, v3, v4}, Lcom/sun/mail/imap/IMAPStore;->newIMAPProtocol(Ljava/lang/String;I)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 1164
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_37} :catch_38
    .catchall {:try_start_21 .. :try_end_37} :catchall_eb

    goto :goto_3e

    :catch_38
    if-eqz v1, :cond_3d

    .line 1168
    :try_start_3a
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_3d
    .catch Ljava/lang/Exception; {:try_start_3a .. :try_end_3d} :catch_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_eb

    :catch_3d
    :cond_3d
    move-object v1, v0

    :goto_3e
    if-eqz v1, :cond_4d

    .line 1177
    :try_start_40
    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1178
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_b5

    .line 1174
    :cond_4d
    new-instance v0, Lcom/sun/mail/iap/ConnectionException;

    const-string v1, "failed to create new store connection"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ConnectionException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1182
    :cond_55
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_89

    .line 1183
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getStoreProtocol() - connection available -- size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1185
    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1183
    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1186
    :cond_89
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->firstElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 1189
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    if-eqz v3, :cond_b5

    .line 1190
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getProxyAuthUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b5

    const-string v3, "X-UNAUTHENTICATE"

    .line 1191
    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b5

    .line 1192
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->unauthenticate()V

    .line 1193
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V

    .line 1197
    :cond_b5
    :goto_b5
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$200(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v3
    :try_end_bb
    .catchall {:try_start_40 .. :try_end_bb} :catchall_eb

    if-eqz v3, :cond_d4

    .line 1202
    :try_start_bd
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_c2
    .catch Ljava/lang/InterruptedException; {:try_start_bd .. :try_end_c2} :catch_c4
    .catchall {:try_start_bd .. :try_end_c2} :catchall_eb

    move-object v1, v0

    goto :goto_e5

    :catch_c4
    move-exception v0

    .line 1206
    :try_start_c5
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 1209
    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    const-string v3, "Interrupted getStoreProtocol"

    invoke-direct {v1, v3, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 1213
    :cond_d4
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$202(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)Z

    .line 1215
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v3

    const-string v4, "getStoreProtocol() -- storeConnectionInUse"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1218
    :goto_e5
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    .line 1219
    monitor-exit v2

    goto/16 :goto_2

    :catchall_eb
    move-exception v0

    monitor-exit v2
    :try_end_ed
    .catchall {:try_start_c5 .. :try_end_ed} :catchall_eb

    throw v0

    :cond_ee
    return-object v1
.end method

.method private login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 773
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->enableStartTLS:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->requireStartTLS:Z

    if-eqz v0, :cond_2f

    :cond_8
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isSSL()Z

    move-result v0

    if-nez v0, :cond_2f

    const-string v0, "STARTTLS"

    .line 774
    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 775
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->startTLS()V

    .line 777
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capability()V

    goto :goto_2f

    .line 778
    :cond_1d
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->requireStartTLS:Z

    if-nez v0, :cond_22

    goto :goto_2f

    .line 779
    :cond_22
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string p2, "STARTTLS required but not supported by server"

    invoke-virtual {p1, p2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 780
    new-instance p1, Lcom/sun/mail/iap/ProtocolException;

    invoke-direct {p1, p2}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 784
    :cond_2f
    :goto_2f
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_36

    return-void

    .line 788
    :cond_36
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPStore;->preLogin(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 792
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->guid:Ljava/lang/String;

    if-eqz v0, :cond_4c

    .line 793
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "GUID"

    .line 794
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->guid:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 795
    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->id(Ljava/util/Map;)Ljava/util/Map;

    .line 803
    :cond_4c
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    const-string v1, ""

    const-string v2, "__PRELOGIN__"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 805
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->authorizationID:Ljava/lang/String;

    if-eqz v0, :cond_5c

    goto :goto_62

    .line 807
    :cond_5c
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    if-eqz v0, :cond_61

    goto :goto_62

    :cond_61
    const/4 v0, 0x0

    .line 812
    :goto_62
    iget-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->enableSASL:Z

    if-eqz v1, :cond_80

    .line 814
    :try_start_66
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->saslMechanisms:[Ljava/lang/String;

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->saslRealm:Ljava/lang/String;

    move-object v3, p1

    move-object v6, v0

    move-object v7, p2

    move-object v8, p3

    invoke-virtual/range {v3 .. v8}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->sasllogin([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isAuthenticated()Z

    move-result v1

    if-eqz v1, :cond_78

    goto :goto_80

    .line 816
    :cond_78
    new-instance v1, Lcom/sun/mail/iap/CommandFailedException;

    const-string v3, "SASL authentication failed"

    invoke-direct {v1, v3}, Lcom/sun/mail/iap/CommandFailedException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_80
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_66 .. :try_end_80} :catch_80

    .line 823
    :catch_80
    :cond_80
    :goto_80
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isAuthenticated()Z

    move-result v1

    if-nez v1, :cond_89

    .line 824
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/sun/mail/imap/IMAPStore;->authenticate(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    :cond_89
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    if-eqz p2, :cond_90

    .line 827
    invoke-virtual {p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->proxyauth(Ljava/lang/String;)V

    .line 833
    :cond_90
    invoke-virtual {p1, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_9c

    .line 835
    :try_start_96
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->capability()V
    :try_end_99
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_96 .. :try_end_99} :catch_9a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_96 .. :try_end_99} :catch_9c

    goto :goto_9c

    :catch_9a
    move-exception p1

    .line 837
    throw p1

    .line 844
    :catch_9c
    :cond_9c
    :goto_9c
    iget-boolean p2, p0, Lcom/sun/mail/imap/IMAPStore;->enableCompress:Z

    if-eqz p2, :cond_ab

    const-string p2, "COMPRESS=DEFLATE"

    .line 845
    invoke-virtual {p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_ab

    .line 846
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->compress()V

    :cond_ab
    const-string p2, "UTF8=ACCEPT"

    .line 852
    invoke-virtual {p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_bb

    const-string p3, "UTF8=ONLY"

    invoke-virtual {p1, p3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_be

    .line 853
    :cond_bb
    invoke-virtual {p1, p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->enable(Ljava/lang/String;)V

    :cond_be
    return-void
.end method

.method private namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 11

    .line 1897
    array-length v0, p1

    new-array v1, v0, [Ljavax/mail/Folder;

    const/4 v2, 0x0

    move v3, v2

    :goto_5
    if-ge v3, v0, :cond_4b

    .line 1899
    aget-object v4, p1, v3

    iget-object v4, v4, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->prefix:Ljava/lang/String;

    if-nez p2, :cond_24

    .line 1902
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_35

    add-int/lit8 v5, v5, -0x1

    .line 1903
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget-object v7, p1, v3

    iget-char v7, v7, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    if-ne v6, v7, :cond_35

    .line 1904
    invoke-virtual {v4, v2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_35

    .line 1907
    :cond_24
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1909
    :cond_35
    :goto_35
    aget-object v5, p1, v3

    iget-char v5, v5, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    if-nez p2, :cond_3d

    const/4 v6, 0x1

    goto :goto_3e

    :cond_3d
    move v6, v2

    .line 1910
    :goto_3e
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 1909
    invoke-virtual {p0, v4, v5, v6}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;CLjava/lang/Boolean;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4b
    return-object v1
.end method

.method private refreshPassword()V
    .registers 8

    .line 1243
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1244
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "refresh password, user: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/sun/mail/imap/IMAPStore;->traceUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1247
    :cond_24
    :try_start_24
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    invoke-static {v0}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0
    :try_end_2a
    .catch Ljava/net/UnknownHostException; {:try_start_24 .. :try_end_2a} :catch_2b

    goto :goto_2c

    :catch_2b
    const/4 v0, 0x0

    :goto_2c
    move-object v2, v0

    .line 1251
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    iget v3, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    .line 1252
    invoke-virtual/range {v1 .. v6}, Ljavax/mail/Session;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;

    move-result-object v0

    if-eqz v0, :cond_48

    .line 1255
    invoke-virtual {v0}, Ljavax/mail/PasswordAuthentication;->getUserName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    .line 1256
    invoke-virtual {v0}, Ljavax/mail/PasswordAuthentication;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    :cond_48
    return-void
.end method

.method private releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .registers 5

    if-nez p1, :cond_6

    .line 1349
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    return-void

    .line 1358
    :cond_6
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailedLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1359
    :try_start_9
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailed:Z

    const/4 v1, 0x0

    .line 1360
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailed:Z

    .line 1361
    monitor-exit p1
    :try_end_f
    .catchall {:try_start_9 .. :try_end_f} :catchall_34

    .line 1364
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2

    .line 1365
    :try_start_12
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {p1, v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$202(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)Z

    .line 1366
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 1368
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {p1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object p1

    const-string v1, "releaseStoreProtocol()"

    invoke-virtual {p1, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1370
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    .line 1371
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_12 .. :try_end_2b} :catchall_31

    if-eqz v0, :cond_30

    .line 1380
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    :cond_30
    return-void

    :catchall_31
    move-exception p1

    .line 1371
    :try_start_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw p1

    :catchall_34
    move-exception v0

    .line 1361
    :try_start_35
    monitor-exit p1
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    throw v0
.end method

.method private timeoutConnections()V
    .registers 11

    const-string v0, "clientTimeoutInterval: "

    const-string v1, "checking for connections to prune: "

    .line 1431
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2

    .line 1435
    :try_start_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v5}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$700(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1436
    invoke-static {v5}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$800(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_f9

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1437
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_f9

    .line 1439
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v3

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_74

    .line 1440
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1441
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$700(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1440
    invoke-virtual {v3, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1442
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1443
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$900(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1442
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1451
    :cond_74
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    sub-int/2addr v0, v4

    :goto_7f
    if-lez v0, :cond_f0

    .line 1453
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    .line 1454
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 1455
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_c0

    .line 1456
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "protocol last used: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1457
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1456
    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1458
    :cond_c0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v5

    sub-long/2addr v3, v5

    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1459
    invoke-static {v5}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$900(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_ed

    .line 1461
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v3

    const-string v4, "authenticated connection timed out, logging out the connection"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1465
    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1466
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Vector;->removeElementAt(I)V
    :try_end_ea
    .catchall {:try_start_7 .. :try_end_ea} :catchall_fb

    .line 1469
    :try_start_ea
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_ed
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_ea .. :try_end_ed} :catch_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_fb

    :catch_ed
    :cond_ed
    add-int/lit8 v0, v0, -0x1

    goto :goto_7f

    .line 1473
    :cond_f0
    :try_start_f0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v0, v3, v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$702(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;J)J

    .line 1475
    :cond_f9
    monitor-exit v2

    return-void

    :catchall_fb
    move-exception v0

    monitor-exit v2
    :try_end_fd
    .catchall {:try_start_f0 .. :try_end_fd} :catchall_fb

    throw v0
.end method

.method private tracePassword(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2231
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debugpassword:Z

    if-eqz v0, :cond_5

    goto :goto_c

    :cond_5
    if-nez p1, :cond_a

    const-string p1, "<null>"

    goto :goto_c

    :cond_a
    const-string p1, "<non-null>"

    :goto_c
    return-object p1
.end method

.method private traceUser(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 2227
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->debugusername:Z

    if-eqz v0, :cond_5

    goto :goto_7

    :cond_5
    const-string p1, "<user name suppressed>"

    :goto_7
    return-object p1
.end method

.method private waitIfIdle()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 2147
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v0

    if-eqz v0, :cond_2f

    .line 2148
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 2149
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1100(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleAbort()V

    .line 2150
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1002(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)I

    .line 2154
    :cond_20
    :try_start_20
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_20 .. :try_end_25} :catch_26

    goto :goto_0

    :catch_26
    move-exception v0

    .line 2161
    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    const-string v2, "Interrupted waitIfIdle"

    invoke-direct {v1, v2, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2f
    return-void
.end method


# virtual methods
.method allowReadOnlySelect()Z
    .registers 4

    .line 1266
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "mail."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".allowreadonlyselect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1626
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->cleanup()V

    const/4 v0, 0x0

    .line 1629
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->closeAllFolders(Z)V

    .line 1630
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->emptyConnectionPool(Z)V
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    .line 1631
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1635
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->finalizeCleanClose:Z

    if-nez v0, :cond_13

    .line 1637
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1638
    :try_start_8
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailed:Z

    .line 1639
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->forceClose:Z

    .line 1640
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_8 .. :try_end_d} :catchall_10

    .line 1641
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->closeFoldersOnStoreFailure:Z

    goto :goto_13

    :catchall_10
    move-exception v1

    .line 1640
    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v1

    .line 1644
    :cond_13
    :goto_13
    :try_start_13
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_1a

    .line 1646
    invoke-super {p0}, Ljavax/mail/Store;->finalize()V

    return-void

    :catchall_1a
    move-exception v0

    invoke-super {p0}, Ljavax/mail/Store;->finalize()V

    .line 1647
    throw v0
.end method

.method getAppendBufferSize()I
    .registers 2

    .line 1510
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->appendBufferSize:I

    return v0
.end method

.method getConnectionPoolLogger()Lcom/sun/mail/util/MailLogger;
    .registers 2

    .line 1281
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getDefaultFolder()Ljavax/mail/Folder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1750
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 1751
    new-instance v0, Lcom/sun/mail/imap/DefaultFolder;

    invoke-direct {v0, p0}, Lcom/sun/mail/imap/DefaultFolder;-><init>(Lcom/sun/mail/imap/IMAPStore;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getFetchBlockSize()I
    .registers 2

    .line 1482
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->blksize:I

    return v0
.end method

.method public declared-synchronized getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1760
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    const v0, 0xffff

    .line 1761
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object p1

    :catchall_d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1770
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 1771
    invoke-virtual {p1}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object p1

    const v0, 0xffff

    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object p1
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    monitor-exit p0

    return-object p1

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getFolderStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 1228
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 1229
    invoke-virtual {v0, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1230
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    return-object v0
.end method

.method getMessageCacheDebug()Z
    .registers 2

    .line 1288
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->messageCacheDebug:Z

    return v0
.end method

.method getMinIdleTime()I
    .registers 2

    .line 1517
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->minIdleTime:I

    return v0
.end method

.method getPeek()Z
    .registers 2

    .line 1531
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->peek:Z

    return v0
.end method

.method public getPersonalNamespaces()[Ljavax/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1842
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1843
    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->personal:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    if-nez v1, :cond_b

    goto :goto_13

    .line 1845
    :cond_b
    iget-object v0, v0, Lcom/sun/mail/imap/protocol/Namespaces;->personal:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPStore;->namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0

    .line 1844
    :cond_13
    :goto_13
    invoke-super {p0}, Ljavax/mail/Store;->getPersonalNamespaces()[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method getProtocol(Lcom/sun/mail/imap/IMAPFolder;)Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_1
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_143

    .line 1017
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2

    .line 1021
    :try_start_7
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e5

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1022
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_32

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1023
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$100(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v3

    if-nez v3, :cond_e5

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$200(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v3

    if-eqz v3, :cond_32

    goto/16 :goto_e5

    .line 1046
    :cond_32
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 1047
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "connection available -- size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1048
    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1047
    invoke-virtual {v1, v3}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1051
    :cond_5e
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 1052
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1055
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getTimestamp()J

    move-result-wide v5

    sub-long/2addr v3, v5

    .line 1056
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v5}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$300(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)J

    move-result-wide v5
    :try_end_82
    .catchall {:try_start_7 .. :try_end_82} :catchall_140

    cmp-long v3, v3, v5

    if-lez v3, :cond_a5

    .line 1063
    :try_start_86
    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1064
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1065
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V

    .line 1066
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1067
    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    :try_end_99
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_86 .. :try_end_99} :catch_9a
    .catchall {:try_start_86 .. :try_end_99} :catchall_140

    goto :goto_a5

    .line 1070
    :catch_9a
    :try_start_9a
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1071
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_a2
    .catch Ljava/lang/RuntimeException; {:try_start_9a .. :try_end_a2} :catch_a2
    .catchall {:try_start_9a .. :try_end_a2} :catchall_140

    .line 1076
    :catch_a2
    :try_start_a2
    monitor-exit v2

    goto/16 :goto_1

    .line 1081
    :cond_a5
    :goto_a5
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    if-eqz v3, :cond_e1

    .line 1082
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getProxyAuthUser()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e1

    const-string v3, "X-UNAUTHENTICATE"

    .line 1083
    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result v3
    :try_end_b9
    .catchall {:try_start_a2 .. :try_end_b9} :catchall_140

    if-eqz v3, :cond_e1

    .line 1090
    :try_start_bb
    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1091
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1092
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->unauthenticate()V

    .line 1093
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V

    .line 1094
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1095
    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    :try_end_d5
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_bb .. :try_end_d5} :catch_d6
    .catchall {:try_start_bb .. :try_end_d5} :catchall_140

    goto :goto_e1

    .line 1098
    :catch_d6
    :try_start_d6
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1099
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_de
    .catch Ljava/lang/RuntimeException; {:try_start_d6 .. :try_end_de} :catch_de
    .catchall {:try_start_d6 .. :try_end_de} :catchall_140

    .line 1104
    :catch_de
    :try_start_de
    monitor-exit v2

    goto/16 :goto_1

    .line 1109
    :cond_e1
    :goto_e1
    invoke-virtual {v1, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    goto :goto_115

    .line 1025
    :cond_e5
    :goto_e5
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v4, "no connections in the pool, creating a new one"

    invoke-virtual {v3, v4}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_ec
    .catchall {:try_start_de .. :try_end_ec} :catchall_140

    .line 1027
    :try_start_ec
    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPStore;->forcePasswordRefresh:Z

    if-eqz v3, :cond_f3

    .line 1028
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->refreshPassword()V

    .line 1030
    :cond_f3
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    iget v4, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    invoke-virtual {p0, v3, v4}, Lcom/sun/mail/imap/IMAPStore;->newIMAPProtocol(Ljava/lang/String;I)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v1

    .line 1031
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1033
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    invoke-direct {p0, v1, v3, v4}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V

    .line 1034
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {v1, v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V
    :try_end_10c
    .catch Ljava/lang/Exception; {:try_start_ec .. :try_end_10c} :catch_10d
    .catchall {:try_start_ec .. :try_end_10c} :catchall_140

    goto :goto_113

    :catch_10d
    if-eqz v1, :cond_112

    .line 1038
    :try_start_10f
    invoke-virtual {v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V
    :try_end_112
    .catch Ljava/lang/Exception; {:try_start_10f .. :try_end_112} :catch_112
    .catchall {:try_start_10f .. :try_end_112} :catchall_140

    :catch_112
    :cond_112
    move-object v1, v0

    :goto_113
    if-eqz v1, :cond_138

    .line 1113
    :goto_115
    :try_start_115
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    if-eqz p1, :cond_135

    .line 1117
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$400(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    if-nez v3, :cond_12c

    .line 1118
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    invoke-static {v3, v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$402(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Ljava/util/Vector;)Ljava/util/Vector;

    .line 1119
    :cond_12c
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$400(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1121
    :cond_135
    monitor-exit v2

    goto/16 :goto_2

    .line 1044
    :cond_138
    new-instance p1, Ljavax/mail/MessagingException;

    const-string v0, "connection failure"

    invoke-direct {p1, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_140
    move-exception p1

    .line 1121
    monitor-exit v2
    :try_end_142
    .catchall {:try_start_115 .. :try_end_142} :catchall_140

    throw p1

    :cond_143
    return-object v1
.end method

.method public getProxyAuthUser()Ljava/lang/String;
    .registers 2

    .line 1576
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getQuota(Ljava/lang/String;)[Ljavax/mail/Quota;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1934
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_37

    const/4 v0, 0x0

    .line 1939
    :try_start_5
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 1940
    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->getQuotaRoot(Ljava/lang/String;)[Ljavax/mail/Quota;

    move-result-object p1
    :try_end_d
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_5 .. :try_end_d} :catch_2a
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_d} :catch_1f
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_d} :catch_14
    .catchall {:try_start_5 .. :try_end_d} :catchall_12

    .line 1948
    :try_start_d
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_37

    .line 1950
    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    goto :goto_33

    :catch_14
    move-exception p1

    .line 1946
    :try_start_15
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1f
    move-exception p1

    .line 1944
    new-instance v1, Ljavax/mail/StoreClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1

    :catch_2a
    move-exception p1

    .line 1942
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "QUOTA not supported"

    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_12

    .line 1948
    :goto_33
    :try_start_33
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1949
    throw p1
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method getSession()Ljavax/mail/Session;
    .registers 2

    .line 1496
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    return-object v0
.end method

.method public getSharedNamespaces()[Ljavax/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1867
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 1868
    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->shared:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    if-nez v1, :cond_b

    goto :goto_13

    .line 1870
    :cond_b
    iget-object v0, v0, Lcom/sun/mail/imap/protocol/Namespaces;->shared:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sun/mail/imap/IMAPStore;->namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0

    .line 1869
    :cond_13
    :goto_13
    invoke-super {p0}, Ljavax/mail/Store;->getSharedNamespaces()[Ljavax/mail/Folder;

    move-result-object v0

    return-object v0
.end method

.method getStatusCacheTimeout()I
    .registers 2

    .line 1503
    iget v0, p0, Lcom/sun/mail/imap/IMAPStore;->statusCacheTimeout:I

    return v0
.end method

.method public getUserNamespaces(Ljava/lang/String;)[Ljavax/mail/Folder;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 1855
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getNamespaces()Lcom/sun/mail/imap/protocol/Namespaces;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 1856
    iget-object v1, v0, Lcom/sun/mail/imap/protocol/Namespaces;->otherUsers:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    if-nez v1, :cond_b

    goto :goto_12

    .line 1858
    :cond_b
    iget-object v0, v0, Lcom/sun/mail/imap/protocol/Namespaces;->otherUsers:[Lcom/sun/mail/imap/protocol/Namespaces$Namespace;

    invoke-direct {p0, v0, p1}, Lcom/sun/mail/imap/IMAPStore;->namespaceToFolders([Lcom/sun/mail/imap/protocol/Namespaces$Namespace;Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object p1

    return-object p1

    .line 1857
    :cond_12
    :goto_12
    invoke-super {p0, p1}, Ljavax/mail/Store;->getUserNamespaces(Ljava/lang/String;)[Ljavax/mail/Folder;

    move-result-object p1

    return-object p1
.end method

.method public handleResponse(Lcom/sun/mail/iap/Response;)V
    .registers 4

    .line 1992
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isOK()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isNO()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBAD()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 1993
    :cond_18
    invoke-virtual {p0, p1}, Lcom/sun/mail/imap/IMAPStore;->handleResponseCode(Lcom/sun/mail/iap/Response;)V

    .line 1994
    :cond_1b
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isBYE()Z

    move-result v0

    if-eqz v0, :cond_3b

    .line 1995
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v1, "IMAPStore connection dead"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1998
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailedLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 1999
    :try_start_2c
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->connectionFailed:Z

    .line 2000
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isSynthetic()Z

    move-result p1

    if-eqz p1, :cond_36

    .line 2001
    iput-boolean v1, p0, Lcom/sun/mail/imap/IMAPStore;->forceClose:Z

    .line 2002
    :cond_36
    monitor-exit v0

    return-void

    :catchall_38
    move-exception p1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_2c .. :try_end_3a} :catchall_38

    throw p1

    :cond_3b
    return-void
.end method

.method handleResponseCode(Lcom/sun/mail/iap/Response;)V
    .registers 8

    .line 2205
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->enableResponseEvents:Z

    if-eqz v0, :cond_d

    const/16 v0, 0x3e8

    .line 2206
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V

    .line 2207
    :cond_d
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->getRest()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    .line 2209
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_3b

    const/16 v1, 0x5d

    .line 2210
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-lez v1, :cond_32

    add-int/lit8 v4, v1, 0x1

    .line 2212
    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "[ALERT]"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_32

    move v2, v3

    :cond_32
    add-int/2addr v1, v3

    .line 2215
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_3b
    if-eqz v2, :cond_41

    .line 2218
    invoke-virtual {p0, v3, v0}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V

    goto :goto_51

    .line 2219
    :cond_41
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result p1

    if-eqz p1, :cond_51

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result p1

    if-lez p1, :cond_51

    const/4 p1, 0x2

    .line 2223
    invoke-virtual {p0, p1, v0}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V

    :cond_51
    :goto_51
    return-void
.end method

.method public declared-synchronized hasCapability(Ljava/lang/String;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 1547
    :try_start_2
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 1548
    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->hasCapability(Ljava/lang/String;)Z

    move-result p1
    :try_end_a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_2 .. :try_end_a} :catch_11
    .catchall {:try_start_2 .. :try_end_a} :catchall_f

    .line 1552
    :try_start_a
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_20

    .line 1548
    monitor-exit p0

    return p1

    :catchall_f
    move-exception p1

    goto :goto_1c

    :catch_11
    move-exception p1

    .line 1550
    :try_start_12
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_f

    .line 1552
    :goto_1c
    :try_start_1c
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1553
    throw p1
    :try_end_20
    .catchall {:try_start_1c .. :try_end_20} :catchall_20

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method hasSeparateStoreConnection()Z
    .registers 2

    .line 1274
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$100(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Z

    move-result v0

    return v0
.end method

.method public declared-synchronized id(Ljava/util/Map;)Ljava/util/Map;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 2181
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_37

    const/4 v0, 0x0

    .line 2186
    :try_start_5
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 2187
    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->id(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1
    :try_end_d
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_5 .. :try_end_d} :catch_2a
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_d} :catch_1f
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_d} :catch_14
    .catchall {:try_start_5 .. :try_end_d} :catchall_12

    .line 2195
    :try_start_d
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_37

    .line 2197
    monitor-exit p0

    return-object p1

    :catchall_12
    move-exception p1

    goto :goto_33

    :catch_14
    move-exception p1

    .line 2193
    :try_start_15
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1f
    move-exception p1

    .line 2191
    new-instance v1, Ljavax/mail/StoreClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1

    :catch_2a
    move-exception p1

    .line 2189
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "ID not supported"

    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_33
    .catchall {:try_start_15 .. :try_end_33} :catchall_12

    .line 2195
    :goto_33
    :try_start_33
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2196
    throw p1
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_37

    :catchall_37
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public idle()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 2048
    monitor-enter p0

    .line 2049
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V

    .line 2050
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_106

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2053
    :try_start_7
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2
    :try_end_a
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_7 .. :try_end_a} :catch_dd
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7 .. :try_end_a} :catch_d0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7 .. :try_end_a} :catch_c3
    .catchall {:try_start_7 .. :try_end_a} :catchall_bf

    .line 2054
    :try_start_a
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v3
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_ac

    .line 2055
    :try_start_e
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v4
    :try_end_14
    .catchall {:try_start_e .. :try_end_14} :catchall_a9

    if-eqz v4, :cond_30

    .line 2061
    :try_start_16
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1b} :catch_20
    .catchall {:try_start_16 .. :try_end_1b} :catchall_a9

    .line 2069
    :try_start_1b
    monitor-exit v2
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_a9

    .line 2136
    invoke-direct {p0, v3}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    return-void

    :catch_20
    move-exception v4

    .line 2065
    :try_start_21
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    .line 2067
    new-instance v5, Ljavax/mail/MessagingException;

    const-string v6, "idle interrupted"

    invoke-direct {v5, v6, v4}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 2071
    :cond_30
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->idleStart()V
    :try_end_33
    .catchall {:try_start_21 .. :try_end_33} :catchall_a9

    const/4 v4, 0x1

    .line 2073
    :try_start_34
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v5, v4}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1002(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)I

    .line 2074
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v5, v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1102(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 2075
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_34 .. :try_end_3f} :catchall_a4

    .line 2091
    :cond_3f
    :goto_3f
    :try_start_3f
    invoke-virtual {v3}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->readIdleResponse()Lcom/sun/mail/iap/Response;

    move-result-object v2

    .line 2092
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v5
    :try_end_46
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_3f .. :try_end_46} :catch_a2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_3f .. :try_end_46} :catch_a0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_3f .. :try_end_46} :catch_9e
    .catchall {:try_start_3f .. :try_end_46} :catchall_e8

    if-eqz v2, :cond_64

    .line 2093
    :try_start_48
    invoke-virtual {v3, v2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->processIdleResponse(Lcom/sun/mail/iap/Response;)Z

    move-result v6

    if-nez v6, :cond_4f

    goto :goto_64

    .line 2100
    :cond_4f
    monitor-exit v5
    :try_end_50
    .catchall {:try_start_48 .. :try_end_50} :catchall_9b

    .line 2101
    :try_start_50
    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPStore;->enableImapEvents:Z

    if-eqz v5, :cond_3f

    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->isUnTagged()Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 2102
    invoke-virtual {v2}, Lcom/sun/mail/iap/Response;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v5, 0x3e8

    invoke-virtual {p0, v5, v2}, Lcom/sun/mail/imap/IMAPStore;->notifyStoreListeners(ILjava/lang/String;)V
    :try_end_63
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_50 .. :try_end_63} :catch_a2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_50 .. :try_end_63} :catch_a0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_50 .. :try_end_63} :catch_9e
    .catchall {:try_start_50 .. :try_end_63} :catchall_e8

    goto :goto_3f

    .line 2094
    :cond_64
    :goto_64
    :try_start_64
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2, v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1002(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)I

    .line 2095
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2, v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1102(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 2096
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V
    :try_end_73
    .catchall {:try_start_64 .. :try_end_73} :catchall_9b

    .line 2098
    :try_start_73
    monitor-exit v5
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_98

    .line 2111
    :try_start_74
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->getMinIdleTime()I

    move-result v2
    :try_end_78
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_74 .. :try_end_78} :catch_94
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_74 .. :try_end_78} :catch_91
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_74 .. :try_end_78} :catch_8e
    .catchall {:try_start_74 .. :try_end_78} :catchall_8a

    if-lez v2, :cond_86

    int-to-long v4, v2

    .line 2114
    :try_start_7b
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7e
    .catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_7e} :catch_7f
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_7b .. :try_end_7e} :catch_94
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7b .. :try_end_7e} :catch_91
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7b .. :try_end_7e} :catch_8e
    .catchall {:try_start_7b .. :try_end_7e} :catchall_8a

    goto :goto_86

    .line 2118
    :catch_7f
    :try_start_7f
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_86
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_7f .. :try_end_86} :catch_94
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_7f .. :try_end_86} :catch_91
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_7f .. :try_end_86} :catch_8e
    .catchall {:try_start_7f .. :try_end_86} :catchall_8a

    .line 2136
    :cond_86
    :goto_86
    invoke-direct {p0, v3}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    return-void

    :catchall_8a
    move-exception v2

    move v4, v0

    goto/16 :goto_e9

    :catch_8e
    move-exception v2

    move v4, v0

    goto :goto_c6

    :catch_91
    move-exception v2

    move v4, v0

    goto :goto_d3

    :catch_94
    move-exception v2

    move v4, v0

    goto/16 :goto_e0

    :catchall_98
    move-exception v2

    move v4, v0

    goto :goto_9c

    :catchall_9b
    move-exception v2

    .line 2100
    :goto_9c
    :try_start_9c
    monitor-exit v5
    :try_end_9d
    .catchall {:try_start_9c .. :try_end_9d} :catchall_9b

    :try_start_9d
    throw v2
    :try_end_9e
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_9d .. :try_end_9e} :catch_a2
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_9d .. :try_end_9e} :catch_a0
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_9d .. :try_end_9e} :catch_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_e8

    :catch_9e
    move-exception v2

    goto :goto_c6

    :catch_a0
    move-exception v2

    goto :goto_d3

    :catch_a2
    move-exception v2

    goto :goto_e0

    :catchall_a4
    move-exception v5

    move-object v7, v5

    move v5, v4

    move-object v4, v7

    goto :goto_af

    :catchall_a9
    move-exception v4

    move v5, v0

    goto :goto_af

    :catchall_ac
    move-exception v4

    move v5, v0

    move-object v3, v1

    .line 2075
    :goto_af
    :try_start_af
    monitor-exit v2
    :try_end_b0
    .catchall {:try_start_af .. :try_end_b0} :catchall_bd

    :try_start_b0
    throw v4
    :try_end_b1
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_b0 .. :try_end_b1} :catch_ba
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_b0 .. :try_end_b1} :catch_b7
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b0 .. :try_end_b1} :catch_b4
    .catchall {:try_start_b0 .. :try_end_b1} :catchall_b1

    :catchall_b1
    move-exception v2

    move v4, v5

    goto :goto_e9

    :catch_b4
    move-exception v2

    move v4, v5

    goto :goto_c6

    :catch_b7
    move-exception v2

    move v4, v5

    goto :goto_d3

    :catch_ba
    move-exception v2

    move v4, v5

    goto :goto_e0

    :catchall_bd
    move-exception v4

    goto :goto_af

    :catchall_bf
    move-exception v2

    move v4, v0

    move-object v3, v1

    goto :goto_e9

    :catch_c3
    move-exception v2

    move v4, v0

    move-object v3, v1

    .line 2127
    :goto_c6
    :try_start_c6
    new-instance v5, Ljavax/mail/MessagingException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    :catch_d0
    move-exception v2

    move v4, v0

    move-object v3, v1

    .line 2125
    :goto_d3
    new-instance v5, Ljavax/mail/StoreClosedException;

    invoke-virtual {v2}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, p0, v2}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v5

    :catch_dd
    move-exception v2

    move v4, v0

    move-object v3, v1

    .line 2123
    :goto_e0
    new-instance v5, Ljavax/mail/MessagingException;

    const-string v6, "IDLE not supported"

    invoke-direct {v5, v6, v2}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
    :try_end_e8
    .catchall {:try_start_c6 .. :try_end_e8} :catchall_e8

    :catchall_e8
    move-exception v2

    :goto_e9
    if-eqz v4, :cond_102

    .line 2130
    iget-object v4, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v4

    .line 2131
    :try_start_ee
    iget-object v5, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v5, v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1002(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;I)I

    .line 2132
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0, v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$1102(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Lcom/sun/mail/imap/protocol/IMAPProtocol;)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    .line 2133
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2134
    monitor-exit v4

    goto :goto_102

    :catchall_ff
    move-exception v0

    monitor-exit v4
    :try_end_101
    .catchall {:try_start_ee .. :try_end_101} :catchall_ff

    throw v0

    .line 2136
    :cond_102
    :goto_102
    invoke-direct {p0, v3}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 2137
    throw v2

    :catchall_106
    move-exception v0

    .line 2050
    :try_start_107
    monitor-exit p0
    :try_end_108
    .catchall {:try_start_107 .. :try_end_108} :catchall_106

    throw v0
.end method

.method ignoreBodyStructureSize()Z
    .registers 2

    .line 1489
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->ignoreSize:Z

    return v0
.end method

.method public declared-synchronized isConnected()Z
    .registers 3

    monitor-enter p0

    .line 1585
    :try_start_1
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_21

    if-nez v0, :cond_a

    .line 1588
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_a
    const/4 v0, 0x0

    .line 1609
    :try_start_b
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 1610
    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->noop()V
    :try_end_12
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_b .. :try_end_12} :catch_12
    .catchall {:try_start_b .. :try_end_12} :catchall_16

    .line 1614
    :catch_12
    :try_start_12
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    goto :goto_1b

    :catchall_16
    move-exception v1

    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1615
    throw v1

    .line 1618
    :goto_1b
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0
    :try_end_1f
    .catchall {:try_start_12 .. :try_end_1f} :catchall_21

    monitor-exit p0

    return v0

    :catchall_21
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method isConnectionPoolFull()Z
    .registers 5

    const-string v0, "connection pool current size: "

    .line 1296
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1

    .line 1297
    :try_start_5
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_43

    .line 1298
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1299
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "   pool size: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1300
    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$600(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1298
    invoke-virtual {v2, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1302
    :cond_43
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$600(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)I

    move-result v2

    if-lt v0, v2, :cond_57

    const/4 v0, 0x1

    goto :goto_58

    :cond_57
    const/4 v0, 0x0

    :goto_58
    monitor-exit v1

    return v0

    :catchall_5a
    move-exception v0

    .line 1304
    monitor-exit v1
    :try_end_5c
    .catchall {:try_start_5 .. :try_end_5c} :catchall_5a

    throw v0
.end method

.method public declared-synchronized isSSL()Z
    .registers 2

    monitor-enter p0

    .line 961
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->usingSSL:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected newIMAPFolder(Lcom/sun/mail/imap/protocol/ListInfo;)Lcom/sun/mail/imap/IMAPFolder;
    .registers 6

    .line 1822
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->folderConstructorLI:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_20

    const/4 v0, 0x2

    :try_start_5
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 v1, 0x1

    aput-object p0, v0, v1

    .line 1825
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->folderConstructorLI:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_15} :catch_16

    goto :goto_21

    :catch_16
    move-exception v0

    .line 1827
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "exception creating IMAPFolder class LI"

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_20
    const/4 v0, 0x0

    :goto_21
    if-nez v0, :cond_28

    .line 1832
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder;

    invoke-direct {v0, p1, p0}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Lcom/sun/mail/imap/protocol/ListInfo;Lcom/sun/mail/imap/IMAPStore;)V

    :cond_28
    return-object v0
.end method

.method protected newIMAPFolder(Ljava/lang/String;C)Lcom/sun/mail/imap/IMAPFolder;
    .registers 4

    const/4 v0, 0x0

    .line 1810
    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/mail/imap/IMAPStore;->newIMAPFolder(Ljava/lang/String;CLjava/lang/Boolean;)Lcom/sun/mail/imap/IMAPFolder;

    move-result-object p1

    return-object p1
.end method

.method protected newIMAPFolder(Ljava/lang/String;CLjava/lang/Boolean;)Lcom/sun/mail/imap/IMAPFolder;
    .registers 8

    .line 1786
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->folderConstructor:Ljava/lang/reflect/Constructor;

    if-eqz v0, :cond_2a

    const/4 v0, 0x4

    :try_start_5
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 1789
    invoke-static {p2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    aput-object p0, v0, v1

    const/4 v1, 0x3

    aput-object p3, v0, v1

    .line 1790
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->folderConstructor:Ljava/lang/reflect/Constructor;

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/mail/imap/IMAPFolder;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_1f} :catch_20

    goto :goto_2b

    :catch_20
    move-exception v0

    .line 1792
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    const-string v3, "exception creating IMAPFolder class"

    invoke-virtual {v1, v2, v3, v0}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2a
    const/4 v0, 0x0

    :goto_2b
    if-nez v0, :cond_32

    .line 1797
    new-instance v0, Lcom/sun/mail/imap/IMAPFolder;

    invoke-direct {v0, p1, p2, p0, p3}, Lcom/sun/mail/imap/IMAPFolder;-><init>(Ljava/lang/String;CLcom/sun/mail/imap/IMAPStore;Ljava/lang/Boolean;)V

    :cond_32
    return-object v0
.end method

.method protected newIMAPProtocol(Ljava/lang/String;I)Lcom/sun/mail/imap/protocol/IMAPProtocol;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    .line 762
    new-instance v7, Lcom/sun/mail/imap/protocol/IMAPProtocol;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    .line 763
    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v4

    iget-boolean v5, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    iget-object v6, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    move-object v0, v7

    move-object v2, p1

    move v3, p2

    invoke-direct/range {v0 .. v6}, Lcom/sun/mail/imap/protocol/IMAPProtocol;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/util/Properties;ZLcom/sun/mail/util/MailLogger;)V

    return-object v7
.end method

.method protected preLogin(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/mail/iap/ProtocolException;
        }
    .end annotation

    return-void
.end method

.method protected declared-synchronized protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "protocolConnect login, host="

    const-string v1, "trying to connect to host \""

    const-string v2, "mail."

    const-string v3, "protocolConnect returning false, host="

    monitor-enter p0

    if-eqz p1, :cond_149

    if-eqz p4, :cond_149

    if-nez p3, :cond_11

    goto/16 :goto_149

    :cond_11
    const/4 v3, -0x1

    if-eq p2, v3, :cond_17

    .line 677
    :try_start_14
    iput p2, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    goto :goto_3a

    .line 679
    :cond_17
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->session:Ljavax/mail/Session;

    invoke-virtual {p2}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".port"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget v4, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    invoke-static {p2, v2, v4}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    .line 684
    :goto_3a
    iget p2, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    if-ne p2, v3, :cond_42

    .line 685
    iget p2, p0, Lcom/sun/mail/imap/IMAPStore;->defaultPort:I

    iput p2, p0, Lcom/sun/mail/imap/IMAPStore;->port:I
    :try_end_42
    .catchall {:try_start_14 .. :try_end_42} :catchall_184

    :cond_42
    const/4 p2, 0x0

    .line 690
    :try_start_43
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v2
    :try_end_46
    .catch Lcom/sun/mail/imap/protocol/IMAPReferralException; {:try_start_43 .. :try_end_46} :catch_135
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_43 .. :try_end_46} :catch_11a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_43 .. :try_end_46} :catch_10a
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_43 .. :try_end_46} :catch_103
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_f8
    .catchall {:try_start_43 .. :try_end_46} :catchall_184

    .line 691
    :try_start_46
    iget-object v3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    .line 692
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_46 .. :try_end_51} :catchall_f5

    if-eqz v3, :cond_f2

    .line 695
    :try_start_53
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_87

    .line 696
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\", port "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", isSSL "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/sun/mail/imap/IMAPStore;->isSSL:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 698
    :cond_87
    iget v1, p0, Lcom/sun/mail/imap/IMAPStore;->port:I

    invoke-virtual {p0, p1, v1}, Lcom/sun/mail/imap/IMAPStore;->newIMAPProtocol(Ljava/lang/String;I)Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object p2

    .line 699
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_c5

    .line 700
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", user="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 702
    invoke-direct {p0, p3}, Lcom/sun/mail/imap/IMAPStore;->traceUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", password="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 703
    invoke-direct {p0, p4}, Lcom/sun/mail/imap/IMAPStore;->tracePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 700
    invoke-virtual {v1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 704
    :cond_c5
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 705
    invoke-direct {p0, p2, p3, p4}, Lcom/sun/mail/imap/IMAPStore;->login(Lcom/sun/mail/imap/protocol/IMAPProtocol;Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {p2, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 707
    invoke-virtual {p2, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 709
    invoke-virtual {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->isSSL()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->usingSSL:Z

    .line 711
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->host:Ljava/lang/String;

    .line 712
    iput-object p3, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;

    .line 713
    iput-object p4, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;

    .line 715
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter p1
    :try_end_e4
    .catch Lcom/sun/mail/imap/protocol/IMAPReferralException; {:try_start_53 .. :try_end_e4} :catch_135
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_53 .. :try_end_e4} :catch_11a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_53 .. :try_end_e4} :catch_10a
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_53 .. :try_end_e4} :catch_103
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_e4} :catch_f8
    .catchall {:try_start_53 .. :try_end_e4} :catchall_184

    .line 716
    :try_start_e4
    iget-object p3, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {p3}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 717
    monitor-exit p1

    goto :goto_f2

    :catchall_ef
    move-exception p3

    monitor-exit p1
    :try_end_f1
    .catchall {:try_start_e4 .. :try_end_f1} :catchall_ef

    :try_start_f1
    throw p3
    :try_end_f2
    .catch Lcom/sun/mail/imap/protocol/IMAPReferralException; {:try_start_f1 .. :try_end_f2} :catch_135
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_f1 .. :try_end_f2} :catch_11a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_f1 .. :try_end_f2} :catch_10a
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_f1 .. :try_end_f2} :catch_103
    .catch Ljava/io/IOException; {:try_start_f1 .. :try_end_f2} :catch_f8
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_184

    .line 745
    :cond_f2
    :goto_f2
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catchall_f5
    move-exception p1

    .line 692
    :try_start_f6
    monitor-exit v2
    :try_end_f7
    .catchall {:try_start_f6 .. :try_end_f7} :catchall_f5

    :try_start_f7
    throw p1
    :try_end_f8
    .catch Lcom/sun/mail/imap/protocol/IMAPReferralException; {:try_start_f7 .. :try_end_f8} :catch_135
    .catch Lcom/sun/mail/iap/CommandFailedException; {:try_start_f7 .. :try_end_f8} :catch_11a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_f7 .. :try_end_f8} :catch_10a
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_f7 .. :try_end_f8} :catch_103
    .catch Ljava/io/IOException; {:try_start_f7 .. :try_end_f8} :catch_f8
    .catchall {:try_start_f7 .. :try_end_f8} :catchall_184

    :catch_f8
    move-exception p1

    .line 742
    :try_start_f9
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_103
    move-exception p1

    .line 740
    new-instance p2, Lcom/sun/mail/util/MailConnectException;

    invoke-direct {p2, p1}, Lcom/sun/mail/util/MailConnectException;-><init>(Lcom/sun/mail/util/SocketConnectException;)V

    throw p2

    :catch_10a
    move-exception p1

    if-eqz p2, :cond_110

    .line 736
    invoke-virtual {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 738
    :cond_110
    new-instance p2, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_11a
    move-exception p1

    if-eqz p2, :cond_120

    .line 728
    invoke-virtual {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 730
    :cond_120
    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getResponse()Lcom/sun/mail/iap/Response;

    move-result-object p2

    .line 731
    new-instance p3, Ljavax/mail/AuthenticationFailedException;

    if-eqz p2, :cond_12d

    .line 732
    invoke-virtual {p2}, Lcom/sun/mail/iap/Response;->getRest()Ljava/lang/String;

    move-result-object p1

    goto :goto_131

    :cond_12d
    invoke-virtual {p1}, Lcom/sun/mail/iap/CommandFailedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_131
    invoke-direct {p3, p1}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw p3

    :catch_135
    move-exception p1

    if-eqz p2, :cond_13b

    .line 722
    invoke-virtual {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->disconnect()V

    .line 724
    :cond_13b
    new-instance p2, Lcom/sun/mail/imap/ReferralException;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPReferralException;->getUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/IMAPReferralException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lcom/sun/mail/imap/ReferralException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 667
    :cond_149
    :goto_149
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, v0}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_181

    .line 668
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", user="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 670
    invoke-direct {p0, p3}, Lcom/sun/mail/imap/IMAPStore;->traceUser(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, ", password="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 671
    invoke-direct {p0, p4}, Lcom/sun/mail/imap/IMAPStore;->tracePassword(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 668
    invoke-virtual {p2, p1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_181
    .catchall {:try_start_f9 .. :try_end_181} :catchall_184

    .line 672
    :cond_181
    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :catchall_184
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method releaseFolderStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .registers 4

    if-nez p1, :cond_3

    return-void

    .line 1389
    :cond_3
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->nonStoreResponseHandler:Lcom/sun/mail/iap/ResponseHandler;

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->removeResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1390
    invoke-virtual {p1, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1391
    iget-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter p1

    .line 1392
    :try_start_e
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$202(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;Z)Z

    .line 1393
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1395
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$500(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Lcom/sun/mail/util/MailLogger;

    move-result-object v0

    const-string v1, "releaseFolderStoreProtocol()"

    invoke-virtual {v0, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 1397
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    .line 1398
    monitor-exit p1

    return-void

    :catchall_29
    move-exception v0

    monitor-exit p1
    :try_end_2b
    .catchall {:try_start_e .. :try_end_2b} :catchall_29

    throw v0
.end method

.method releaseProtocol(Lcom/sun/mail/imap/IMAPFolder;Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    .registers 6

    const-string v0, "added an Authenticated connection -- size: "

    .line 1312
    iget-object v1, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    monitor-enter v1

    if-eqz p2, :cond_4a

    .line 1316
    :try_start_7
    invoke-virtual {p0}, Lcom/sun/mail/imap/IMAPStore;->isConnectionPoolFull()Z

    move-result v2

    if-nez v2, :cond_40

    .line 1317
    invoke-virtual {p2, p0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->addResponseHandler(Lcom/sun/mail/iap/ResponseHandler;)V

    .line 1318
    iget-object v2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {v2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 1320
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p2, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_4a

    .line 1321
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    .line 1323
    invoke-static {v0}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$000(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1321
    invoke-virtual {p2, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    goto :goto_4a

    .line 1325
    :cond_40
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPStore;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "pool is full, not adding an Authenticated connection"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_60

    .line 1328
    :try_start_47
    invoke-virtual {p2}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->logout()V
    :try_end_4a
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_47 .. :try_end_4a} :catch_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_60

    .line 1333
    :catch_4a
    :cond_4a
    :goto_4a
    :try_start_4a
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {p2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$400(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object p2

    if-eqz p2, :cond_5b

    .line 1334
    iget-object p2, p0, Lcom/sun/mail/imap/IMAPStore;->pool:Lcom/sun/mail/imap/IMAPStore$ConnectionPool;

    invoke-static {p2}, Lcom/sun/mail/imap/IMAPStore$ConnectionPool;->access$400(Lcom/sun/mail/imap/IMAPStore$ConnectionPool;)Ljava/util/Vector;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 1336
    :cond_5b
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->timeoutConnections()V

    .line 1337
    monitor-exit v1

    return-void

    :catchall_60
    move-exception p1

    monitor-exit v1
    :try_end_62
    .catchall {:try_start_4a .. :try_end_62} :catchall_60

    throw p1
.end method

.method public declared-synchronized setPassword(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 996
    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->password:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 997
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProxyAuthUser(Ljava/lang/String;)V
    .registers 2

    .line 1566
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->proxyAuthUser:Ljava/lang/String;

    return-void
.end method

.method public declared-synchronized setQuota(Ljavax/mail/Quota;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    .line 1964
    :try_start_1
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->checkConnected()V
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_36

    const/4 v0, 0x0

    .line 1967
    :try_start_5
    invoke-direct {p0}, Lcom/sun/mail/imap/IMAPStore;->getStoreProtocol()Lcom/sun/mail/imap/protocol/IMAPProtocol;

    move-result-object v0

    .line 1968
    invoke-virtual {v0, p1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setQuota(Ljavax/mail/Quota;)V
    :try_end_c
    .catch Lcom/sun/mail/iap/BadCommandException; {:try_start_5 .. :try_end_c} :catch_29
    .catch Lcom/sun/mail/iap/ConnectionException; {:try_start_5 .. :try_end_c} :catch_1e
    .catch Lcom/sun/mail/iap/ProtocolException; {:try_start_5 .. :try_end_c} :catch_13
    .catchall {:try_start_5 .. :try_end_c} :catchall_11

    .line 1976
    :try_start_c
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V
    :try_end_f
    .catchall {:try_start_c .. :try_end_f} :catchall_36

    .line 1978
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    goto :goto_32

    :catch_13
    move-exception p1

    .line 1974
    :try_start_14
    new-instance v1, Ljavax/mail/MessagingException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ProtocolException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    :catch_1e
    move-exception p1

    .line 1972
    new-instance v1, Ljavax/mail/StoreClosedException;

    invoke-virtual {p1}, Lcom/sun/mail/iap/ConnectionException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Ljavax/mail/StoreClosedException;-><init>(Ljavax/mail/Store;Ljava/lang/String;)V

    throw v1

    :catch_29
    move-exception p1

    .line 1970
    new-instance v1, Ljavax/mail/MessagingException;

    const-string v2, "QUOTA not supported"

    invoke-direct {v1, v2, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1
    :try_end_32
    .catchall {:try_start_14 .. :try_end_32} :catchall_11

    .line 1976
    :goto_32
    :try_start_32
    invoke-direct {p0, v0}, Lcom/sun/mail/imap/IMAPStore;->releaseStoreProtocol(Lcom/sun/mail/imap/protocol/IMAPProtocol;)V

    .line 1977
    throw p1
    :try_end_36
    .catchall {:try_start_32 .. :try_end_36} :catchall_36

    :catchall_36
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setUsername(Ljava/lang/String;)V
    .registers 2

    monitor-enter p0

    .line 981
    :try_start_1
    iput-object p1, p0, Lcom/sun/mail/imap/IMAPStore;->user:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    .line 982
    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method throwSearchException()Z
    .registers 2

    .line 1524
    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPStore;->throwSearchException:Z

    return v0
.end method
