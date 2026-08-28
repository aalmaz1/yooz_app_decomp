.class public Lcom/sun/mail/pop3/POP3Store;
.super Ljavax/mail/Store;
.source "POP3Store.java"


# instance fields
.field volatile cacheWriteTo:Z

.field private capabilities:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private defaultPort:I

.field volatile disableTop:Z

.field volatile fileCacheDir:Ljava/io/File;

.field volatile finalizeCleanClose:Z

.field volatile forgetTopHeaders:Z

.field private host:Ljava/lang/String;

.field private isSSL:Z

.field volatile keepMessageContent:Z

.field private logger:Lcom/sun/mail/util/MailLogger;

.field volatile messageConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private passwd:Ljava/lang/String;

.field private port:Lcom/sun/mail/pop3/Protocol;

.field private portNum:I

.field private portOwner:Lcom/sun/mail/pop3/POP3Folder;

.field private requireStartTLS:Z

.field volatile rsetBeforeQuit:Z

.field volatile supportsUidl:Z

.field volatile useFileCache:Z

.field private useStartTLS:Z

.field private user:Ljava/lang/String;

.field private usingSSL:Z


# direct methods
.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V
    .registers 5

    const-string v0, "pop3"

    const/4 v1, 0x0

    .line 101
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sun/mail/pop3/POP3Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Ljavax/mail/Session;Ljavax/mail/URLName;Ljava/lang/String;Z)V
    .registers 12

    .line 106
    invoke-direct {p0, p1, p2}, Ljavax/mail/Store;-><init>(Ljavax/mail/Session;Ljavax/mail/URLName;)V

    const-string v0, "pop3"

    .line 72
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    const/16 v0, 0x6e

    .line 73
    iput v0, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    const/4 v1, 0x0

    .line 74
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    const/4 v2, 0x0

    .line 76
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 77
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    .line 78
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    const/4 v3, -0x1

    .line 79
    iput v3, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    .line 80
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    .line 81
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;

    .line 82
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->useStartTLS:Z

    .line 83
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    .line 84
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->usingSSL:Z

    .line 89
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;

    .line 90
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    .line 91
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    .line 92
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    const/4 v3, 0x1

    .line 93
    iput-boolean v3, p0, Lcom/sun/mail/pop3/POP3Store;->supportsUidl:Z

    .line 94
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->cacheWriteTo:Z

    .line 95
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->useFileCache:Z

    .line 96
    iput-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->fileCacheDir:Ljava/io/File;

    .line 97
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->keepMessageContent:Z

    .line 98
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->finalizeCleanClose:Z

    if-eqz p2, :cond_3d

    .line 108
    invoke-virtual {p2}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object p3

    .line 109
    :cond_3d
    iput-object p3, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    .line 110
    new-instance p2, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 111
    invoke-virtual {p1}, Ljavax/mail/Session;->getDebug()Z

    move-result v4

    invoke-virtual {p1}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v5

    const-string v6, "DEBUG POP3"

    invoke-direct {p2, v2, v6, v4, v5}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    iput-object p2, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    const-string p2, "mail."

    if-nez p4, :cond_73

    .line 114
    invoke-virtual {p1}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object p4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".ssl.enable"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p4, v2, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result p4

    :cond_73
    if-eqz p4, :cond_7a

    const/16 v0, 0x3e3

    .line 117
    iput v0, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    goto :goto_7c

    .line 119
    :cond_7a
    iput v0, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    .line 120
    :goto_7c
    iput-boolean p4, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    const-string p4, "rsetbeforequit"

    .line 122
    invoke-direct {p0, p4}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/pop3/POP3Store;->rsetBeforeQuit:Z

    const-string p4, "disabletop"

    .line 123
    invoke-direct {p0, p4}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    const-string p4, "forgettopheaders"

    .line 124
    invoke-direct {p0, p4}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/pop3/POP3Store;->forgetTopHeaders:Z

    const-string p4, "cachewriteto"

    .line 125
    invoke-direct {p0, p4}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/pop3/POP3Store;->cacheWriteTo:Z

    const-string p4, "filecache.enable"

    .line 126
    invoke-direct {p0, p4}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/pop3/POP3Store;->useFileCache:Z

    .line 127
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    const-string v0, ".filecache.dir"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_e5

    .line 128
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_e5

    .line 129
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ".filecache.dir: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    :cond_e5
    if-eqz p4, :cond_ee

    .line 131
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->fileCacheDir:Ljava/io/File;

    :cond_ee
    const-string p4, "keepmessagecontent"

    .line 132
    invoke-direct {p0, p4}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/pop3/POP3Store;->keepMessageContent:Z

    const-string p4, "starttls.enable"

    .line 135
    invoke-direct {p0, p4}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/pop3/POP3Store;->useStartTLS:Z

    const-string p4, "starttls.required"

    .line 138
    invoke-direct {p0, p4}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    const-string p4, "finalizecleanclose"

    .line 141
    invoke-direct {p0, p4}, Lcom/sun/mail/pop3/POP3Store;->getBoolProp(Ljava/lang/String;)Z

    move-result p4

    iput-boolean p4, p0, Lcom/sun/mail/pop3/POP3Store;->finalizeCleanClose:Z

    .line 143
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ".message.class"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_15d

    .line 145
    iget-object p2, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object p3, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string p4, "message class: {0}"

    invoke-virtual {p2, p3, p4, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    .line 147
    :try_start_130
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p2
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_130 .. :try_end_138} :catch_153

    .line 155
    :try_start_138
    invoke-static {p1, v1, p2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1
    :try_end_13c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_138 .. :try_end_13c} :catch_13d
    .catch Ljava/lang/Exception; {:try_start_138 .. :try_end_13c} :catch_153

    goto :goto_141

    .line 160
    :catch_13d
    :try_start_13d
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    :goto_141
    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Class;

    .line 163
    const-class p3, Ljavax/mail/Folder;

    aput-object p3, p2, v1

    sget-object p3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object p3, p2, v3

    .line 164
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->messageConstructor:Ljava/lang/reflect/Constructor;
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_152} :catch_153

    goto :goto_15d

    :catch_153
    move-exception p1

    .line 166
    iget-object p2, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object p3, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string p4, "failed to load message class"

    invoke-virtual {p2, p3, p4, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_15d
    :goto_15d
    return-void
.end method

.method private checkConnected()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 450
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 451
    :cond_7
    new-instance v0, Ljavax/mail/MessagingException;

    const-string v1, "Not connected"

    invoke-direct {v0, v1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static cleanupAndThrow(Lcom/sun/mail/pop3/Protocol;Ljava/io/IOException;)Ljava/io/IOException;
    .registers 3

    .line 331
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_4

    goto :goto_e

    :catchall_4
    move-exception p0

    .line 333
    invoke-static {p0}, Lcom/sun/mail/pop3/POP3Store;->isRecoverable(Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 334
    invoke-virtual {p1, p0}, Ljava/io/IOException;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_e
    return-object p1

    .line 336
    :cond_f
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 337
    instance-of p1, p0, Ljava/lang/Error;

    if-nez p1, :cond_25

    .line 340
    instance-of p1, p0, Ljava/lang/RuntimeException;

    if-eqz p1, :cond_1d

    .line 341
    check-cast p0, Ljava/lang/RuntimeException;

    throw p0

    .line 343
    :cond_1d
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "unexpected exception"

    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    .line 338
    :cond_25
    check-cast p0, Ljava/lang/Error;

    throw p0
.end method

.method private final declared-synchronized getBoolProp(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "mail."

    monitor-enter p0

    .line 176
    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 177
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {v0}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/sun/mail/util/PropUtil;->getBooleanProperty(Ljava/util/Properties;Ljava/lang/String;Z)Z

    move-result v0

    .line 179
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 180
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, ": "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_3 .. :try_end_4d} :catchall_4f

    .line 181
    :cond_4d
    monitor-exit p0

    return v0

    :catchall_4f
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static isRecoverable(Ljava/lang/Throwable;)Z
    .registers 2

    .line 350
    instance-of v0, p0, Ljava/lang/Exception;

    if-nez v0, :cond_b

    instance-of p0, p0, Ljava/lang/LinkageError;

    if-eqz p0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method


# virtual methods
.method public capabilities()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .line 420
    monitor-enter p0

    .line 421
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->capabilities:Ljava/util/Map;

    .line 422
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_10

    if-eqz v0, :cond_b

    .line 424
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0

    .line 426
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0

    :catchall_10
    move-exception v0

    .line 422
    :try_start_11
    monitor-exit p0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public declared-synchronized close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 362
    :try_start_2
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->close(Z)V
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_7

    .line 363
    monitor-exit p0

    return-void

    :catchall_7
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized close(Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    .line 367
    :try_start_2
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v1, :cond_f

    if-eqz p1, :cond_c

    .line 369
    invoke-virtual {v1}, Lcom/sun/mail/pop3/Protocol;->close()V

    goto :goto_f

    .line 371
    :cond_c
    invoke-virtual {v1}, Lcom/sun/mail/pop3/Protocol;->quit()Z
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_f} :catch_1c
    .catchall {:try_start_2 .. :try_end_f} :catchall_15

    .line 375
    :cond_f
    :goto_f
    :try_start_f
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 378
    :goto_11
    invoke-super {p0}, Ljavax/mail/Store;->close()V

    goto :goto_1f

    :catchall_15
    move-exception p1

    .line 375
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 378
    invoke-super {p0}, Ljavax/mail/Store;->close()V

    .line 379
    throw p1

    .line 375
    :catch_1c
    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;
    :try_end_1e
    .catchall {:try_start_f .. :try_end_1e} :catchall_21

    goto :goto_11

    .line 380
    :goto_1f
    monitor-exit p0

    return-void

    :catchall_21
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized closePort(Lcom/sun/mail/pop3/POP3Folder;)V
    .registers 3

    monitor-enter p0

    .line 354
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-ne v0, p1, :cond_a

    const/4 p1, 0x0

    .line 355
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 356
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 358
    :cond_a
    monitor-exit p0

    return-void

    :catchall_c
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 442
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v0, :cond_e

    .line 443
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->finalizeCleanClose:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->close(Z)V
    :try_end_e
    .catchall {:try_start_0 .. :try_end_e} :catchall_12

    .line 445
    :cond_e
    invoke-super {p0}, Ljavax/mail/Store;->finalize()V

    return-void

    :catchall_12
    move-exception v0

    invoke-super {p0}, Ljavax/mail/Store;->finalize()V

    .line 446
    throw v0
.end method

.method public getDefaultFolder()Ljavax/mail/Folder;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 384
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    .line 385
    new-instance v0, Lcom/sun/mail/pop3/DefaultFolder;

    invoke-direct {v0, p0}, Lcom/sun/mail/pop3/DefaultFolder;-><init>(Lcom/sun/mail/pop3/POP3Store;)V

    return-object v0
.end method

.method public getFolder(Ljava/lang/String;)Ljavax/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 393
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    .line 394
    new-instance v0, Lcom/sun/mail/pop3/POP3Folder;

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/pop3/POP3Folder;-><init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V

    return-object v0
.end method

.method public getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 399
    invoke-direct {p0}, Lcom/sun/mail/pop3/POP3Store;->checkConnected()V

    .line 400
    new-instance v0, Lcom/sun/mail/pop3/POP3Folder;

    invoke-virtual {p1}, Ljavax/mail/URLName;->getFile()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/sun/mail/pop3/POP3Folder;-><init>(Lcom/sun/mail/pop3/POP3Store;Ljava/lang/String;)V

    return-object v0
.end method

.method declared-synchronized getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "mail."

    monitor-enter p0

    .line 264
    :try_start_3
    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-eqz v1, :cond_f

    iget-object v2, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-nez v2, :cond_f

    .line 265
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_db

    .line 266
    monitor-exit p0

    return-object v1

    .line 270
    :cond_f
    :try_start_f
    new-instance v7, Lcom/sun/mail/pop3/Protocol;

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    iget v2, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    iget-object v3, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    iget-object v4, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    .line 271
    invoke-virtual {v4}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-boolean v6, p0, Lcom/sun/mail/pop3/POP3Store;->isSSL:Z

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/sun/mail/pop3/Protocol;-><init>(Ljava/lang/String;ILcom/sun/mail/util/MailLogger;Ljava/util/Properties;Ljava/lang/String;Z)V

    .line 273
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->useStartTLS:Z

    if-nez v0, :cond_3a

    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    if-eqz v0, :cond_6c

    :cond_3a
    const-string v0, "STLS"

    .line 274
    invoke-virtual {v7, v0}, Lcom/sun/mail/pop3/Protocol;->hasCapability(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_68

    .line 275
    invoke-virtual {v7}, Lcom/sun/mail/pop3/Protocol;->stls()Z

    move-result v0

    if-eqz v0, :cond_50

    .line 277
    invoke-virtual {v7}, Lcom/sun/mail/pop3/Protocol;->capa()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/sun/mail/pop3/Protocol;->setCapabilities(Ljava/io/InputStream;)V

    goto :goto_6c

    .line 278
    :cond_50
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    if-nez v0, :cond_55

    goto :goto_6c

    .line 279
    :cond_55
    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v0, "STLS required but failed"

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 280
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "STLS required but failed"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    invoke-static {v7, p1}, Lcom/sun/mail/pop3/POP3Store;->cleanupAndThrow(Lcom/sun/mail/pop3/Protocol;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 283
    :cond_68
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->requireStartTLS:Z

    if-nez v0, :cond_c8

    .line 290
    :cond_6c
    :goto_6c
    invoke-virtual {v7}, Lcom/sun/mail/pop3/Protocol;->getCapabilities()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->capabilities:Ljava/util/Map;

    .line 291
    invoke-virtual {v7}, Lcom/sun/mail/pop3/Protocol;->isSSL()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->usingSSL:Z

    .line 299
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    const/4 v1, 0x1

    if-nez v0, :cond_92

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->capabilities:Ljava/util/Map;

    if-eqz v0, :cond_92

    const-string v2, "TOP"

    .line 300
    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_92

    .line 301
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->disableTop:Z

    .line 302
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v2, "server doesn\'t support TOP, disabling it"

    invoke-virtual {v0, v2}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 305
    :cond_92
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->capabilities:Ljava/util/Map;

    if-eqz v0, :cond_a0

    const-string v2, "UIDL"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9f

    goto :goto_a0

    :cond_9f
    const/4 v1, 0x0

    :cond_a0
    :goto_a0
    iput-boolean v1, p0, Lcom/sun/mail/pop3/POP3Store;->supportsUidl:Z

    .line 308
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    iget-object v1, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;

    invoke-virtual {v7, v0, v1}, Lcom/sun/mail/pop3/Protocol;->login(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_be

    .line 320
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-nez v0, :cond_b6

    if-eqz p1, :cond_b6

    .line 321
    iput-object v7, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    .line 322
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    .line 324
    :cond_b6
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;

    if-nez v0, :cond_bc

    .line 325
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->portOwner:Lcom/sun/mail/pop3/POP3Folder;
    :try_end_bc
    .catchall {:try_start_f .. :try_end_bc} :catchall_db

    .line 326
    :cond_bc
    monitor-exit p0

    return-object v7

    .line 309
    :cond_be
    :try_start_be
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    invoke-static {v7, p1}, Lcom/sun/mail/pop3/POP3Store;->cleanupAndThrow(Lcom/sun/mail/pop3/Protocol;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1

    .line 284
    :cond_c8
    iget-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v0, "STLS required but not supported"

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 285
    new-instance p1, Ljava/io/EOFException;

    const-string v0, "STLS required but not supported"

    invoke-direct {p1, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    invoke-static {v7, p1}, Lcom/sun/mail/pop3/POP3Store;->cleanupAndThrow(Lcom/sun/mail/pop3/Protocol;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_db
    .catchall {:try_start_be .. :try_end_db} :catchall_db

    :catchall_db
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method declared-synchronized getSession()Ljavax/mail/Session;
    .registers 2

    monitor-enter p0

    .line 188
    :try_start_1
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isConnected()Z
    .registers 4

    monitor-enter p0

    .line 239
    :try_start_1
    invoke-super {p0}, Ljavax/mail/Store;->isConnected()Z

    move-result v0
    :try_end_5
    .catchall {:try_start_1 .. :try_end_5} :catchall_2c

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 242
    monitor-exit p0

    return v1

    .line 244
    :cond_a
    :try_start_a
    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    if-nez v0, :cond_16

    const/4 v0, 0x0

    .line 245
    invoke-virtual {p0, v0}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;

    goto :goto_1c

    .line 246
    :cond_16
    invoke-virtual {v0}, Lcom/sun/mail/pop3/Protocol;->noop()Z

    move-result v0
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_1a} :catch_27
    .catchall {:try_start_a .. :try_end_1a} :catchall_2c

    if-eqz v0, :cond_1f

    .line 248
    :goto_1c
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    .line 247
    :cond_1f
    :try_start_1f
    new-instance v0, Ljava/io/IOException;

    const-string v2, "NOOP failed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_27} :catch_27
    .catchall {:try_start_1f .. :try_end_27} :catchall_2c

    .line 252
    :catch_27
    :try_start_27
    invoke-super {p0}, Ljavax/mail/Store;->close()V
    :try_end_2a
    .catch Ljavax/mail/MessagingException; {:try_start_27 .. :try_end_2a} :catch_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2c

    .line 256
    :catch_2a
    monitor-exit p0

    return v1

    :catchall_2c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isSSL()Z
    .registers 2

    monitor-enter p0

    .line 436
    :try_start_1
    iget-boolean v0, p0, Lcom/sun/mail/pop3/POP3Store;->usingSSL:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected declared-synchronized protocolConnect(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    const-string v0, "mail."

    monitor-enter p0

    if-eqz p1, :cond_62

    if-eqz p4, :cond_62

    if-nez p3, :cond_a

    goto :goto_62

    :cond_a
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2f

    .line 202
    :try_start_d
    iget-object p2, p0, Lcom/sun/mail/pop3/POP3Store;->session:Ljavax/mail/Session;

    invoke-virtual {p2}, Ljavax/mail/Session;->getProperties()Ljava/util/Properties;

    move-result-object p2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/mail/pop3/POP3Store;->name:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".port"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0, v1}, Lcom/sun/mail/util/PropUtil;->getIntProperty(Ljava/util/Properties;Ljava/lang/String;I)I

    move-result p2

    goto :goto_2f

    :catchall_2d
    move-exception p1

    goto :goto_60

    :cond_2f
    :goto_2f
    if-ne p2, v1, :cond_33

    .line 206
    iget p2, p0, Lcom/sun/mail/pop3/POP3Store;->defaultPort:I

    .line 208
    :cond_33
    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->host:Ljava/lang/String;

    .line 209
    iput p2, p0, Lcom/sun/mail/pop3/POP3Store;->portNum:I

    .line 210
    iput-object p3, p0, Lcom/sun/mail/pop3/POP3Store;->user:Ljava/lang/String;

    .line 211
    iput-object p4, p0, Lcom/sun/mail/pop3/POP3Store;->passwd:Ljava/lang/String;
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_2d

    const/4 p1, 0x0

    .line 213
    :try_start_3c
    invoke-virtual {p0, p1}, Lcom/sun/mail/pop3/POP3Store;->getPort(Lcom/sun/mail/pop3/POP3Folder;)Lcom/sun/mail/pop3/Protocol;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/pop3/POP3Store;->port:Lcom/sun/mail/pop3/Protocol;
    :try_end_42
    .catch Ljava/io/EOFException; {:try_start_3c .. :try_end_42} :catch_55
    .catch Lcom/sun/mail/util/SocketConnectException; {:try_start_3c .. :try_end_42} :catch_4e
    .catch Ljava/io/IOException; {:try_start_3c .. :try_end_42} :catch_45
    .catchall {:try_start_3c .. :try_end_42} :catchall_2d

    .line 222
    monitor-exit p0

    const/4 p1, 0x1

    return p1

    :catch_45
    move-exception p1

    .line 219
    :try_start_46
    new-instance p2, Ljavax/mail/MessagingException;

    const-string p3, "Connect failed"

    invoke-direct {p2, p3, p1}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p2

    :catch_4e
    move-exception p1

    .line 217
    new-instance p2, Lcom/sun/mail/util/MailConnectException;

    invoke-direct {p2, p1}, Lcom/sun/mail/util/MailConnectException;-><init>(Lcom/sun/mail/util/SocketConnectException;)V

    throw p2

    :catch_55
    move-exception p1

    .line 215
    new-instance p2, Ljavax/mail/AuthenticationFailedException;

    invoke-virtual {p1}, Ljava/io/EOFException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/mail/AuthenticationFailedException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_60
    .catchall {:try_start_46 .. :try_end_60} :catchall_2d

    :goto_60
    monitor-exit p0

    throw p1

    .line 197
    :cond_62
    :goto_62
    monitor-exit p0

    const/4 p1, 0x0

    return p1
.end method
