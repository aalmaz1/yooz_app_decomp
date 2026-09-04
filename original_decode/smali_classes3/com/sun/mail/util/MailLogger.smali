.class public final Lcom/sun/mail/util/MailLogger;
.super Ljava/lang/Object;
.source "MailLogger.java"


# instance fields
.field private final debug:Z

.field private final logger:Ljava/util/logging/Logger;

.field private final out:Ljava/io/PrintStream;

.field private final prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/io/PrintStream;",
            ")V"
        }
    .end annotation

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/sun/mail/util/MailLogger;->packageOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 135
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    .line 136
    iput-object p3, p0, Lcom/sun/mail/util/MailLogger;->prefix:Ljava/lang/String;

    .line 137
    iput-boolean p4, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    if-eqz p5, :cond_0

    goto :goto_0

    .line 138
    :cond_0
    sget-object p5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    :goto_0
    iput-object p5, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;Ljavax/mail/Session;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljavax/mail/Session;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 167
    invoke-virtual {p3}, Ljavax/mail/Session;->getDebug()Z

    move-result v0

    invoke-virtual {p3}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object p3

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/io/PrintStream;",
            ")V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    invoke-direct {p0, p1}, Lcom/sun/mail/util/MailLogger;->packageOf(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    .line 115
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    .line 116
    iput-object p2, p0, Lcom/sun/mail/util/MailLogger;->prefix:Ljava/lang/String;

    .line 117
    iput-boolean p3, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    if-eqz p4, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    :goto_0
    iput-object p4, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljavax/mail/Session;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 152
    invoke-virtual {p3}, Ljavax/mail/Session;->getDebug()Z

    move-result v0

    invoke-virtual {p3}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object p3

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    .line 97
    iput-object p2, p0, Lcom/sun/mail/util/MailLogger;->prefix:Ljava/lang/String;

    .line 98
    iput-boolean p3, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    if-eqz p4, :cond_0

    goto :goto_0

    .line 99
    :cond_0
    sget-object p4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    :goto_0
    iput-object p4, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    return-void
.end method

.method private debugOut(Ljava/lang/String;)V
    .locals 3

    .line 372
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->prefix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/mail/util/MailLogger;->prefix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 375
    :cond_0
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private ifDebugOut(Ljava/lang/String;)V
    .locals 1

    .line 363
    iget-boolean v0, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    if-eqz v0, :cond_0

    .line 364
    invoke-direct {p0, p1}, Lcom/sun/mail/util/MailLogger;->debugOut(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private inferCaller()Ljava/lang/StackTraceElement;
    .locals 5

    .line 408
    new-instance v0, Ljava/lang/Throwable;

    invoke-direct {v0}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x0

    .line 411
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 412
    aget-object v2, v0, v1

    .line 413
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    .line 414
    invoke-direct {p0, v2}, Lcom/sun/mail/util/MailLogger;->isLoggerImplFrame(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 420
    :cond_1
    :goto_1
    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 421
    aget-object v2, v0, v1

    .line 422
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    .line 423
    invoke-direct {p0, v3}, Lcom/sun/mail/util/MailLogger;->isLoggerImplFrame(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 431
    :cond_3
    new-instance v0, Ljava/lang/StackTraceElement;

    const-class v1, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 432
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, -0x1

    const-string v4, "log"

    invoke-direct {v0, v2, v4, v1, v3}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v0
.end method

.method private isLoggerImplFrame(Ljava/lang/String;)Z
    .locals 1

    .line 441
    const-class v0, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private packageOf(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 386
    invoke-virtual {p1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 388
    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 389
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2e

    .line 390
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_1

    const/4 v1, 0x0

    .line 392
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public config(Ljava/lang/String;)V
    .locals 1

    .line 321
    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public fine(Ljava/lang/String;)V
    .locals 1

    .line 329
    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public finer(Ljava/lang/String;)V
    .locals 1

    .line 337
    sget-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public finest(Ljava/lang/String;)V
    .locals 1

    .line 345
    sget-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    invoke-virtual {p0, v0, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method

.method public getLogger(Ljava/lang/Class;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/sun/mail/util/MailLogger;"
        }
    .end annotation

    .line 194
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    iget-boolean v1, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    iget-object v2, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    return-object v0
.end method

.method public getLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;
    .locals 3

    .line 180
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    iget-boolean v1, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    iget-object v2, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V

    return-object v0
.end method

.method public getSubLogger(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/mail/util/MailLogger;
    .locals 3

    .line 209
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-boolean v1, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    iget-object v2, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    invoke-direct {v0, p1, p2, v1, v2}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V

    return-object v0
.end method

.method public getSubLogger(Ljava/lang/String;Ljava/lang/String;Z)Lcom/sun/mail/util/MailLogger;
    .locals 3

    .line 227
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v2}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/io/PrintStream;)V

    return-object v0
.end method

.method public isLoggable(Ljava/util/logging/Level;)Z
    .locals 1

    .line 355
    iget-boolean v0, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;)V
    .locals 3

    .line 237
    invoke-direct {p0, p2}, Lcom/sun/mail/util/MailLogger;->ifDebugOut(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/sun/mail/util/MailLogger;->inferCaller()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 240
    iget-object v1, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, p1, v2, v0, p2}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6

    .line 251
    iget-boolean v0, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 252
    invoke-static {p2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 253
    invoke-direct {p0, p2}, Lcom/sun/mail/util/MailLogger;->debugOut(Ljava/lang/String;)V

    :cond_0
    move-object v4, p2

    .line 256
    iget-object p2, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 257
    invoke-direct {p0}, Lcom/sun/mail/util/MailLogger;->inferCaller()Ljava/lang/StackTraceElement;

    move-result-object p2

    .line 258
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 7

    .line 301
    iget-boolean v0, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_0

    .line 303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", THROW: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/mail/util/MailLogger;->debugOut(Ljava/lang/String;)V

    .line 304
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->out:Ljava/io/PrintStream;

    invoke-virtual {p3, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    .line 306
    :cond_0
    invoke-direct {p0, p2}, Lcom/sun/mail/util/MailLogger;->debugOut(Ljava/lang/String;)V

    .line 310
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 311
    invoke-direct {p0}, Lcom/sun/mail/util/MailLogger;->inferCaller()Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 312
    iget-object v1, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v4

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public varargs log(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6

    .line 269
    iget-boolean v0, p0, Lcom/sun/mail/util/MailLogger;->debug:Z

    if-eqz v0, :cond_0

    .line 270
    invoke-static {p2, p3}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 271
    invoke-direct {p0, p2}, Lcom/sun/mail/util/MailLogger;->debugOut(Ljava/lang/String;)V

    :cond_0
    move-object v4, p2

    .line 274
    iget-object p2, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p2, p1}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 275
    invoke-direct {p0}, Lcom/sun/mail/util/MailLogger;->inferCaller()Ljava/lang/StackTraceElement;

    move-result-object p2

    .line 276
    iget-object v0, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v3

    move-object v1, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public varargs logf(Ljava/util/logging/Level;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 289
    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 290
    invoke-direct {p0, p2}, Lcom/sun/mail/util/MailLogger;->ifDebugOut(Ljava/lang/String;)V

    .line 291
    iget-object p3, p0, Lcom/sun/mail/util/MailLogger;->logger:Ljava/util/logging/Logger;

    invoke-virtual {p3, p1, p2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    return-void
.end method
