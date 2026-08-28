.class public final Ljavax/mail/Session;
.super Ljava/lang/Object;
.source "Session.java"


# static fields
.field private static final confDir:Ljava/lang/String;

.field private static defaultSession:Ljavax/mail/Session;


# instance fields
.field private final addressMap:Ljava/util/Properties;

.field private final authTable:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljavax/mail/URLName;",
            "Ljavax/mail/PasswordAuthentication;",
            ">;"
        }
    .end annotation
.end field

.field private final authenticator:Ljavax/mail/Authenticator;

.field private debug:Z

.field private loadedProviders:Z

.field private logger:Lcom/sun/mail/util/MailLogger;

.field private out:Ljava/io/PrintStream;

.field private final props:Ljava/util/Properties;

.field private providers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/mail/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private final providersByClassName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/mail/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private final providersByProtocol:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavax/mail/Provider;",
            ">;"
        }
    .end annotation
.end field

.field private final q:Ljavax/mail/EventQueue;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 240
    :try_start_0
    new-instance v0, Ljavax/mail/Session$1;

    invoke-direct {v0}, Ljavax/mail/Session$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_d

    :catch_c
    const/4 v0, 0x0

    .line 257
    :goto_d
    sput-object v0, Ljavax/mail/Session;->confDir:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V
    .registers 7

    .line 261
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 218
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Ljavax/mail/Session;->debug:Z

    .line 224
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Map;

    .line 225
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Map;

    .line 226
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    .line 262
    iput-object p1, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    .line 263
    iput-object p2, p0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    const-string v0, "mail.debug"

    .line 265
    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_39

    const/4 v0, 0x1

    .line 266
    iput-boolean v0, p0, Ljavax/mail/Session;->debug:Z

    .line 268
    :cond_39
    invoke-direct {p0}, Ljavax/mail/Session;->initLogger()V

    .line 269
    iget-object v0, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v2, "JavaMail version {0}"

    const-string v3, "1.6.2"

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p2, :cond_4e

    .line 274
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    goto :goto_52

    .line 276
    :cond_4e
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 278
    :goto_52
    invoke-direct {p0, p2}, Ljavax/mail/Session;->loadAddressMap(Ljava/lang/Class;)V

    .line 279
    new-instance p2, Ljavax/mail/EventQueue;

    const-string v0, "mail.event.executor"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/concurrent/Executor;

    invoke-direct {p2, p1}, Ljavax/mail/EventQueue;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Ljavax/mail/Session;->q:Ljavax/mail/EventQueue;

    return-void
.end method

.method static synthetic access$000(Ljavax/mail/Session;Ljava/io/InputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 214
    invoke-direct {p0, p1}, Ljavax/mail/Session;->loadProvidersFromStream(Ljava/io/InputStream;)V

    return-void
.end method

.method static synthetic access$100(Ljavax/mail/Session;)Ljava/util/Properties;
    .registers 1

    .line 214
    iget-object p0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    return-object p0
.end method

.method static getContextClassLoader()Ljava/lang/ClassLoader;
    .registers 1

    .line 1343
    new-instance v0, Ljavax/mail/Session$4;

    invoke-direct {v0}, Ljavax/mail/Session$4;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getDefaultInstance(Ljava/util/Properties;)Ljavax/mail/Session;
    .registers 2

    const/4 v0, 0x0

    .line 418
    invoke-static {p0, v0}, Ljavax/mail/Session;->getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getDefaultInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;
    .registers 4

    const-class v0, Ljavax/mail/Session;

    monitor-enter v0

    .line 374
    :try_start_3
    sget-object v1, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    if-nez v1, :cond_18

    .line 375
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1

    if-eqz v1, :cond_10

    .line 377
    invoke-virtual {v1}, Ljava/lang/SecurityManager;->checkSetFactory()V

    .line 378
    :cond_10
    new-instance v1, Ljavax/mail/Session;

    invoke-direct {v1, p0, p1}, Ljavax/mail/Session;-><init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V

    sput-object v1, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;

    goto :goto_33

    .line 381
    :cond_18
    iget-object p0, v1, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    if-ne p0, p1, :cond_1d

    goto :goto_33

    :cond_1d
    if-eqz p0, :cond_37

    if-eqz p1, :cond_37

    .line 385
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 386
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    if-ne p0, p1, :cond_37

    .line 393
    :goto_33
    sget-object p0, Ljavax/mail/Session;->defaultSession:Ljavax/mail/Session;
    :try_end_35
    .catchall {:try_start_3 .. :try_end_35} :catchall_3f

    monitor-exit v0

    return-object p0

    .line 390
    :cond_37
    :try_start_37
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Access to default session denied"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3f
    .catchall {:try_start_37 .. :try_end_3f} :catchall_3f

    :catchall_3f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstance(Ljava/util/Properties;)Ljavax/mail/Session;
    .registers 3

    .line 321
    new-instance v0, Ljavax/mail/Session;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljavax/mail/Session;-><init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V

    return-object v0
.end method

.method public static getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;
    .registers 3

    .line 304
    new-instance v0, Ljavax/mail/Session;

    invoke-direct {v0, p0, p1}, Ljavax/mail/Session;-><init>(Ljava/util/Properties;Ljavax/mail/Authenticator;)V

    return-object v0
.end method

.method private getProviderByClassName(Ljava/lang/String;)Ljavax/mail/Provider;
    .registers 6

    .line 984
    iget-object v0, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Provider;

    if-eqz v0, :cond_b

    return-object v0

    .line 989
    :cond_b
    const-class v1, Ljavax/mail/Provider;

    invoke-static {v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 990
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/Provider;

    .line 991
    invoke-virtual {v2}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    return-object v2

    .line 996
    :cond_2c
    iget-boolean v1, p0, Ljavax/mail/Session;->loadedProviders:Z

    if-nez v1, :cond_3d

    const/4 v0, 0x1

    .line 997
    invoke-direct {p0, v0}, Ljavax/mail/Session;->loadProviders(Z)V

    .line 998
    iget-object v0, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljavax/mail/Provider;

    :cond_3d
    return-object v0
.end method

.method private getProviderByProtocol(Ljava/lang/String;)Ljavax/mail/Provider;
    .registers 6

    .line 1011
    iget-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/mail/Provider;

    if-eqz v0, :cond_b

    return-object v0

    .line 1016
    :cond_b
    const-class v1, Ljavax/mail/Provider;

    invoke-static {v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 1017
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_15
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/Provider;

    .line 1018
    invoke-virtual {v2}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    return-object v2

    .line 1023
    :cond_2c
    iget-boolean v1, p0, Ljavax/mail/Session;->loadedProviders:Z

    if-nez v1, :cond_3d

    const/4 v0, 0x1

    .line 1024
    invoke-direct {p0, v0}, Ljavax/mail/Session;->loadProviders(Z)V

    .line 1025
    iget-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljavax/mail/Provider;

    :cond_3d
    return-object v0
.end method

.method private static getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/InputStream;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1361
    :try_start_0
    new-instance v0, Ljavax/mail/Session$5;

    invoke-direct {v0, p0, p1}, Ljavax/mail/Session$5;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    .line 1378
    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0
.end method

.method private static getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;
    .registers 3

    .line 1383
    new-instance v0, Ljavax/mail/Session$6;

    invoke-direct {v0, p0, p1}, Ljavax/mail/Session$6;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/net/URL;

    return-object p0
.end method

.method private getService(Ljavax/mail/Provider;Ljavax/mail/URLName;Ljava/lang/Class;)Ljavax/mail/Service;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavax/mail/Service;",
            ">(",
            "Ljavax/mail/Provider;",
            "Ljavax/mail/URLName;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    const-string v0, " "

    const-string v1, "Exception loading provider"

    if-eqz p1, :cond_ed

    if-nez p2, :cond_17

    .line 830
    new-instance p2, Ljavax/mail/URLName;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p2

    invoke-direct/range {v2 .. v8}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 838
    :cond_17
    iget-object v2, p0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    if-eqz v2, :cond_24

    .line 839
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    goto :goto_2c

    .line 841
    :cond_24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    :goto_2c
    const/4 v3, 0x0

    .line 847
    :try_start_2d
    invoke-static {}, Ljavax/mail/Session;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_31} :catch_77

    if-eqz v4, :cond_3c

    .line 851
    :try_start_33
    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4
    :try_end_3b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_33 .. :try_end_3b} :catch_3c
    .catch Ljava/lang/Exception; {:try_start_33 .. :try_end_3b} :catch_77

    goto :goto_3d

    :catch_3c
    :cond_3c
    const/4 v4, 0x0

    :goto_3d
    if-eqz v4, :cond_45

    .line 855
    :try_start_3f
    invoke-virtual {p3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_4d

    .line 857
    :cond_45
    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    .line 859
    :cond_4d
    invoke-virtual {p3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_54

    goto :goto_85

    .line 860
    :cond_54
    new-instance v2, Ljava/lang/ClassCastException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 861
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_77} :catch_77

    .line 867
    :catch_77
    :try_start_77
    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 868
    invoke-virtual {p3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_83
    .catch Ljava/lang/Exception; {:try_start_77 .. :try_end_83} :catch_db

    if-eqz v2, :cond_b8

    :goto_85
    const/4 v0, 0x2

    :try_start_86
    new-array v2, v0, [Ljava/lang/Class;

    .line 880
    const-class v5, Ljavax/mail/Session;

    aput-object v5, v2, v3

    const-class v5, Ljavax/mail/URLName;

    const/4 v6, 0x1

    aput-object v5, v2, v6

    .line 881
    invoke-virtual {v4, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v3

    aput-object p2, v0, v6

    .line 884
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_86 .. :try_end_9f} :catch_a6

    .line 891
    invoke-virtual {p3, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/mail/Service;

    return-object p1

    :catch_a6
    move-exception p2

    .line 887
    iget-object p3, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p3, v0, v1, p2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 888
    new-instance p2, Ljavax/mail/NoSuchProviderException;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 869
    :cond_b8
    :try_start_b8
    new-instance p2, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 870
    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_db
    .catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_db} :catch_db

    :catch_db
    move-exception p2

    .line 873
    iget-object p3, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p3, v0, v1, p2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 874
    new-instance p2, Ljavax/mail/NoSuchProviderException;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 825
    :cond_ed
    new-instance p1, Ljavax/mail/NoSuchProviderException;

    const-string p2, "null"

    invoke-direct {p1, p2}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private getStore(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Store;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    if-eqz p1, :cond_13

    .line 654
    invoke-virtual {p1}, Ljavax/mail/Provider;->getType()Ljavax/mail/Provider$Type;

    move-result-object v0

    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    if-ne v0, v1, :cond_13

    .line 658
    const-class v0, Ljavax/mail/Store;

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/Session;->getService(Ljavax/mail/Provider;Ljavax/mail/URLName;Ljava/lang/Class;)Ljavax/mail/Service;

    move-result-object p1

    check-cast p1, Ljavax/mail/Store;

    return-object p1

    .line 655
    :cond_13
    new-instance p1, Ljavax/mail/NoSuchProviderException;

    const-string p2, "invalid provider"

    invoke-direct {p1, p2}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static getSystemResources(Ljava/lang/String;)[Ljava/net/URL;
    .registers 2

    .line 1401
    new-instance v0, Ljavax/mail/Session$7;

    invoke-direct {v0, p0}, Ljavax/mail/Session$7;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/net/URL;

    return-object p0
.end method

.method private getTransport(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Transport;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    if-eqz p1, :cond_13

    .line 800
    invoke-virtual {p1}, Ljavax/mail/Provider;->getType()Ljavax/mail/Provider$Type;

    move-result-object v0

    sget-object v1, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    if-ne v0, v1, :cond_13

    .line 804
    const-class v0, Ljavax/mail/Transport;

    invoke-direct {p0, p1, p2, v0}, Ljavax/mail/Session;->getService(Ljavax/mail/Provider;Ljavax/mail/URLName;Ljava/lang/Class;)Ljavax/mail/Service;

    move-result-object p1

    check-cast p1, Ljavax/mail/Transport;

    return-object p1

    .line 801
    :cond_13
    new-instance p1, Ljavax/mail/NoSuchProviderException;

    const-string p2, "invalid provider"

    invoke-direct {p1, p2}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final declared-synchronized initLogger()V
    .registers 6

    monitor-enter p0

    .line 283
    :try_start_1
    new-instance v0, Lcom/sun/mail/util/MailLogger;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "DEBUG"

    iget-boolean v3, p0, Ljavax/mail/Session;->debug:Z

    invoke-virtual {p0}, Ljavax/mail/Session;->getDebugOut()Ljava/io/PrintStream;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/sun/mail/util/MailLogger;-><init>(Ljava/lang/Class;Ljava/lang/String;ZLjava/io/PrintStream;)V

    iput-object v0, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;
    :try_end_14
    .catchall {:try_start_1 .. :try_end_14} :catchall_16

    .line 284
    monitor-exit p0

    return-void

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private loadAddressMap(Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1177
    new-instance v0, Ljavax/mail/Session$3;

    invoke-direct {v0, p0}, Ljavax/mail/Session$3;-><init>(Ljavax/mail/Session;)V

    const-string v1, "/META-INF/javamail.default.address.map"

    const/4 v2, 0x1

    .line 1185
    invoke-direct {p0, v1, p1, v0, v2}, Ljavax/mail/Session;->loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;Z)V

    const-string v1, "META-INF/javamail.address.map"

    .line 1188
    invoke-direct {p0, v1, p1, v0}, Ljavax/mail/Session;->loadAllResources(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V

    .line 1193
    :try_start_10
    sget-object p1, Ljavax/mail/Session;->confDir:Ljava/lang/String;

    if-eqz p1, :cond_2a

    .line 1194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "javamail.address.map"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Ljavax/mail/Session;->loadFile(Ljava/lang/String;Ljavax/mail/StreamLoader;)V
    :try_end_2a
    .catch Ljava/lang/SecurityException; {:try_start_10 .. :try_end_2a} :catch_2a

    .line 1197
    :catch_2a
    :cond_2a
    iget-object p1, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {p1}, Ljava/util/Properties;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_42

    .line 1198
    iget-object p1, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v0, "failed to load address map, using defaults"

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 1199
    iget-object p1, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    const-string v0, "rfc822"

    const-string v1, "smtp"

    invoke-virtual {p1, v0, v1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_42
    return-void
.end method

.method private loadAllResources(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/mail/StreamLoader;",
            ")V"
        }
    .end annotation

    const-string v0, "Exception loading resource"

    const/4 v1, 0x0

    .line 1286
    :try_start_3
    invoke-static {}, Ljavax/mail/Session;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-nez v2, :cond_d

    .line 1288
    invoke-virtual {p2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    :cond_d
    if-eqz v2, :cond_14

    .line 1290
    invoke-static {v2, p1}, Ljavax/mail/Session;->getResources(Ljava/lang/ClassLoader;Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v2

    goto :goto_18

    .line 1292
    :cond_14
    invoke-static {p1}, Ljavax/mail/Session;->getSystemResources(Ljava/lang/String;)[Ljava/net/URL;

    move-result-object v2
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_18} :catch_76

    :goto_18
    if-eqz v2, :cond_74

    move v3, v1

    move v4, v3

    .line 1294
    :goto_1c
    :try_start_1c
    array-length v5, v2

    if-ge v3, v5, :cond_7f

    .line 1295
    aget-object v5, v2, v3

    .line 1297
    iget-object v6, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v7, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v8, "URL {0}"

    invoke-virtual {v6, v7, v8, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2a} :catch_72

    const/4 v6, 0x0

    .line 1299
    :try_start_2b
    invoke-static {v5}, Ljavax/mail/Session;->openStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v6

    if-eqz v6, :cond_3f

    .line 1301
    invoke-interface {p3, v6}, Ljavax/mail/StreamLoader;->load(Ljava/io/InputStream;)V

    const/4 v4, 0x1

    .line 1303
    iget-object v7, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v9, "successfully loaded resource: {0}"

    invoke-virtual {v7, v8, v9, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_48

    .line 1306
    :cond_3f
    iget-object v7, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v9, "not loading resource: {0}"

    invoke-virtual {v7, v8, v9, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_48
    .catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_48} :catch_6c
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_48} :catch_5b
    .catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_48} :catch_50
    .catchall {:try_start_2b .. :try_end_48} :catchall_4e

    :goto_48
    if-eqz v6, :cond_6f

    .line 1320
    :goto_4a
    :try_start_4a
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_6f
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_4d} :catch_72

    goto :goto_6f

    :catchall_4e
    move-exception v2

    goto :goto_66

    :catch_50
    move-exception v5

    .line 1315
    :try_start_51
    iget-object v7, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v0, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v6, :cond_6f

    goto :goto_4a

    :catch_5b
    move-exception v5

    .line 1312
    iget-object v7, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v8, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v7, v8, v0, v5}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_63
    .catchall {:try_start_51 .. :try_end_63} :catchall_4e

    if-eqz v6, :cond_6f

    goto :goto_4a

    :goto_66
    if-eqz v6, :cond_6b

    .line 1320
    :try_start_68
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_6b
    .catch Ljava/io/IOException; {:try_start_68 .. :try_end_6b} :catch_6b
    .catch Ljava/lang/Exception; {:try_start_68 .. :try_end_6b} :catch_72

    .line 1322
    :catch_6b
    :cond_6b
    :try_start_6b
    throw v2
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_6c} :catch_72

    :catch_6c
    if-eqz v6, :cond_6f

    goto :goto_4a

    :catch_6f
    :cond_6f
    :goto_6f
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    :catch_72
    move-exception v2

    goto :goto_78

    :cond_74
    move v4, v1

    goto :goto_7f

    :catch_76
    move-exception v2

    move v4, v1

    .line 1326
    :goto_78
    iget-object v3, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v3, v5, v0, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7f
    :goto_7f
    if-nez v4, :cond_93

    .line 1334
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3, v1}, Ljavax/mail/Session;->loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;Z)V

    :cond_93
    return-void
.end method

.method private loadFile(Ljava/lang/String;Ljavax/mail/StreamLoader;)V
    .registers 8

    const-string v0, "not loading file: "

    const/4 v1, 0x0

    .line 1228
    :try_start_3
    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_d} :catch_77
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_4f
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_d} :catch_2a
    .catchall {:try_start_3 .. :try_end_d} :catchall_28

    .line 1229
    :try_start_d
    invoke-interface {p2, v2}, Ljavax/mail/StreamLoader;->load(Ljava/io/InputStream;)V

    .line 1230
    iget-object p2, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v1, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v3, "successfully loaded file: {0}"

    invoke-virtual {p2, v1, v3, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_19} :catch_26
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_19} :catch_23
    .catch Ljava/lang/SecurityException; {:try_start_d .. :try_end_19} :catch_20
    .catchall {:try_start_d .. :try_end_19} :catchall_1d

    .line 1242
    :try_start_19
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_7a

    goto :goto_7a

    :catchall_1d
    move-exception p1

    move-object v1, v2

    goto :goto_71

    :catch_20
    move-exception p2

    move-object v1, v2

    goto :goto_2b

    :catch_23
    move-exception p2

    move-object v1, v2

    goto :goto_50

    :catch_26
    move-object v1, v2

    goto :goto_77

    :catchall_28
    move-exception p1

    goto :goto_71

    :catch_2a
    move-exception p2

    .line 1237
    :goto_2b
    :try_start_2b
    iget-object v2, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_49

    .line 1238
    iget-object v2, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, p2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_49
    .catchall {:try_start_2b .. :try_end_49} :catchall_28

    :cond_49
    if-eqz v1, :cond_7a

    .line 1242
    :goto_4b
    :try_start_4b
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4b .. :try_end_4e} :catch_7a

    goto :goto_7a

    :catch_4f
    move-exception p2

    .line 1234
    :goto_50
    :try_start_50
    iget-object v2, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {v2, v3}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 1235
    iget-object v2, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v3, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, p1, p2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6e
    .catchall {:try_start_50 .. :try_end_6e} :catchall_28

    :cond_6e
    if-eqz v1, :cond_7a

    goto :goto_4b

    :goto_71
    if-eqz v1, :cond_76

    .line 1242
    :try_start_73
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_73 .. :try_end_76} :catch_76

    .line 1244
    :catch_76
    :cond_76
    throw p1

    :catch_77
    :goto_77
    if-eqz v1, :cond_7a

    goto :goto_4b

    :catch_7a
    :cond_7a
    :goto_7a
    return-void
.end method

.method private loadProviders(Z)V
    .registers 15

    .line 1035
    new-instance v0, Ljavax/mail/Session$2;

    invoke-direct {v0, p0}, Ljavax/mail/Session$2;-><init>(Ljavax/mail/Session;)V

    .line 1045
    :try_start_5
    sget-object v1, Ljavax/mail/Session;->confDir:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 1046
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "javamail.providers"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljavax/mail/Session;->loadFile(Ljava/lang/String;Ljavax/mail/StreamLoader;)V
    :try_end_1f
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_1f} :catch_1f

    .line 1051
    :catch_1f
    :cond_1f
    iget-object v1, p0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    if-eqz v1, :cond_28

    .line 1052
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2c

    .line 1054
    :cond_28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    :goto_2c
    const-string v2, "META-INF/javamail.providers"

    .line 1057
    invoke-direct {p0, v2, v1, v0}, Ljavax/mail/Session;->loadAllResources(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;)V

    const-string v2, "/META-INF/javamail.default.providers"

    const/4 v3, 0x0

    .line 1060
    invoke-direct {p0, v2, v1, v0, v3}, Ljavax/mail/Session;->loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;Z)V

    .line 1066
    iget-object v0, p0, Ljavax/mail/Session;->providers:Ljava/util/List;

    if-eqz v0, :cond_41

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_bc

    :cond_41
    if-eqz p1, :cond_bc

    .line 1067
    iget-object p1, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v0, "failed to load any providers, using defaults"

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 1069
    new-instance p1, Ljavax/mail/Provider;

    sget-object v2, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    const-string v3, "imap"

    const-string v4, "com.sun.mail.imap.IMAPStore"

    const-string v5, "Oracle"

    const-string v6, "1.6.2"

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 1072
    new-instance p1, Ljavax/mail/Provider;

    sget-object v8, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    const-string v9, "imaps"

    const-string v10, "com.sun.mail.imap.IMAPSSLStore"

    const-string v11, "Oracle"

    const-string v12, "1.6.2"

    move-object v7, p1

    invoke-direct/range {v7 .. v12}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 1075
    new-instance p1, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    const-string v2, "pop3"

    const-string v3, "com.sun.mail.pop3.POP3Store"

    const-string v4, "Oracle"

    const-string v5, "1.6.2"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 1078
    new-instance p1, Ljavax/mail/Provider;

    sget-object v7, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    const-string v8, "pop3s"

    const-string v9, "com.sun.mail.pop3.POP3SSLStore"

    const-string v10, "Oracle"

    const-string v11, "1.6.2"

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 1081
    new-instance p1, Ljavax/mail/Provider;

    sget-object v1, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    const-string v2, "smtp"

    const-string v3, "com.sun.mail.smtp.SMTPTransport"

    const-string v4, "Oracle"

    const-string v5, "1.6.2"

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 1084
    new-instance p1, Ljavax/mail/Provider;

    sget-object v7, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    const-string v8, "smtps"

    const-string v9, "com.sun.mail.smtp.SMTPSSLTransport"

    const-string v10, "Oracle"

    const-string v11, "1.6.2"

    move-object v6, p1

    invoke-direct/range {v6 .. v11}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    .line 1089
    :cond_bc
    iget-object p1, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_101

    .line 1091
    iget-object p1, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    const-string v0, "Tables of loaded providers from javamail.providers"

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 1092
    iget-object p1, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Providers Listed By Class Name: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Map;

    .line 1093
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1092
    invoke-virtual {p1, v0}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    .line 1094
    iget-object p1, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Providers Listed By Protocol: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Map;

    .line 1095
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1094
    invoke-virtual {p1, v0}, Lcom/sun/mail/util/MailLogger;->config(Ljava/lang/String;)V

    :cond_101
    const/4 p1, 0x1

    .line 1097
    iput-boolean p1, p0, Ljavax/mail/Session;->loadedProviders:Z

    return-void
.end method

.method private loadProvidersFromStream(Ljava/io/InputStream;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_cf

    .line 1103
    new-instance v0, Lcom/sun/mail/util/LineInputStream;

    invoke-direct {v0, p1}, Lcom/sun/mail/util/LineInputStream;-><init>(Ljava/io/InputStream;)V

    .line 1107
    :goto_7
    invoke-virtual {v0}, Lcom/sun/mail/util/LineInputStream;->readLine()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_cf

    const-string v1, "#"

    .line 1109
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_7

    .line 1111
    :cond_16
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_21

    goto :goto_7

    .line 1118
    :cond_21
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    move-object v4, v2

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move-object v8, v7

    .line 1119
    :cond_2e
    :goto_2e
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_a6

    .line 1120
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "="

    .line 1123
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const-string v9, "protocol="

    .line 1124
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_52

    add-int/lit8 v3, v3, 0x1

    .line 1125
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    goto :goto_2e

    :cond_52
    const-string v9, "type="

    .line 1126
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_76

    add-int/lit8 v3, v3, 0x1

    .line 1127
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "store"

    .line 1128
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6b

    .line 1129
    sget-object v4, Ljavax/mail/Provider$Type;->STORE:Ljavax/mail/Provider$Type;

    goto :goto_2e

    :cond_6b
    const-string v3, "transport"

    .line 1130
    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1131
    sget-object v4, Ljavax/mail/Provider$Type;->TRANSPORT:Ljavax/mail/Provider$Type;

    goto :goto_2e

    :cond_76
    const-string v9, "class="

    .line 1133
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_86

    add-int/lit8 v3, v3, 0x1

    .line 1134
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v6, v2

    goto :goto_2e

    :cond_86
    const-string v9, "vendor="

    .line 1135
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_96

    add-int/lit8 v3, v3, 0x1

    .line 1136
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v7, v2

    goto :goto_2e

    :cond_96
    const-string v9, "version="

    .line 1137
    invoke-virtual {v2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2e

    add-int/lit8 v3, v3, 0x1

    .line 1138
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v8, v2

    goto :goto_2e

    :cond_a6
    if-eqz v4, :cond_c4

    if-eqz v5, :cond_c4

    if-eqz v6, :cond_c4

    .line 1144
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_c4

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_b9

    goto :goto_c4

    .line 1150
    :cond_b9
    new-instance p1, Ljavax/mail/Provider;

    move-object v3, p1

    invoke-direct/range {v3 .. v8}, Ljavax/mail/Provider;-><init>(Ljavax/mail/Provider$Type;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    invoke-virtual {p0, p1}, Ljavax/mail/Session;->addProvider(Ljavax/mail/Provider;)V

    goto/16 :goto_7

    .line 1146
    :cond_c4
    :goto_c4
    iget-object v1, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v3, "Bad provider entry: {0}"

    invoke-virtual {v1, v2, v3, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_cf
    return-void
.end method

.method private loadResource(Ljava/lang/String;Ljava/lang/Class;Ljavax/mail/StreamLoader;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/mail/StreamLoader;",
            "Z)V"
        }
    .end annotation

    const-string v0, "Exception loading resource"

    const/4 v1, 0x0

    .line 1254
    :try_start_3
    invoke-static {p2, p1}, Ljavax/mail/Session;->getResourceAsStream(Ljava/lang/Class;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    if-eqz v1, :cond_16

    .line 1256
    invoke-interface {p3, v1}, Ljavax/mail/StreamLoader;->load(Ljava/io/InputStream;)V

    .line 1257
    iget-object p2, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object p3, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string p4, "successfully loaded resource: {0}"

    invoke-virtual {p2, p3, p4, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_21

    :cond_16
    if-eqz p4, :cond_21

    .line 1261
    iget-object p2, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object p3, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string p4, "expected resource not found: {0}"

    invoke-virtual {p2, p3, p4, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_21} :catch_34
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_21} :catch_29
    .catchall {:try_start_3 .. :try_end_21} :catchall_27

    :cond_21
    :goto_21
    if-eqz v1, :cond_3f

    .line 1271
    :goto_23
    :try_start_23
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_3f

    goto :goto_3f

    :catchall_27
    move-exception p1

    goto :goto_40

    :catch_29
    move-exception p1

    .line 1267
    :try_start_2a
    iget-object p2, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object p3, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p2, p3, v0, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    if-eqz v1, :cond_3f

    goto :goto_23

    :catch_34
    move-exception p1

    .line 1265
    iget-object p2, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object p3, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    invoke-virtual {p2, p3, v0, p1}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3c
    .catchall {:try_start_2a .. :try_end_3c} :catchall_27

    if-eqz v1, :cond_3f

    goto :goto_23

    :catch_3f
    :cond_3f
    :goto_3f
    return-void

    :goto_40
    if-eqz v1, :cond_45

    .line 1271
    :try_start_42
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_45

    .line 1273
    :catch_45
    :cond_45
    throw p1
.end method

.method private static openStream(Ljava/net/URL;)Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1421
    :try_start_0
    new-instance v0, Ljavax/mail/Session$8;

    invoke-direct {v0, p0}, Ljavax/mail/Session$8;-><init>(Ljava/net/URL;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/InputStream;
    :try_end_b
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_b} :catch_c

    return-object p0

    :catch_c
    move-exception p0

    .line 1430
    invoke-virtual {p0}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    throw p0
.end method


# virtual methods
.method public declared-synchronized addProvider(Ljavax/mail/Provider;)V
    .registers 4

    monitor-enter p0

    .line 1166
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Session;->providers:Ljava/util/List;

    if-nez v0, :cond_c

    .line 1167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavax/mail/Session;->providers:Ljava/util/List;

    .line 1168
    :cond_c
    iget-object v0, p0, Ljavax/mail/Session;->providers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    iget-object v0, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Map;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    iget-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Map;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 1171
    iget-object v0, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Map;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catchall {:try_start_1 .. :try_end_2f} :catchall_31

    .line 1172
    :cond_2f
    monitor-exit p0

    return-void

    :catchall_31
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getDebug()Z
    .registers 2

    monitor-enter p0

    .line 449
    :try_start_1
    iget-boolean v0, p0, Ljavax/mail/Session;->debug:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getDebugOut()Ljava/io/PrintStream;
    .registers 2

    monitor-enter p0

    .line 475
    :try_start_1
    iget-object v0, p0, Ljavax/mail/Session;->out:Ljava/io/PrintStream;

    if-nez v0, :cond_9

    .line 476
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_b

    monitor-exit p0

    return-object v0

    .line 478
    :cond_9
    monitor-exit p0

    return-object v0

    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getEventQueue()Ljavax/mail/EventQueue;
    .registers 2

    .line 1435
    iget-object v0, p0, Ljavax/mail/Session;->q:Ljavax/mail/EventQueue;

    return-object v0
.end method

.method public getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/MessagingException;
        }
    .end annotation

    .line 688
    invoke-virtual {p0, p1}, Ljavax/mail/Session;->getStore(Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Ljavax/mail/Store;->connect()V

    .line 690
    invoke-virtual {v0, p1}, Ljavax/mail/Store;->getFolder(Ljavax/mail/URLName;)Ljavax/mail/Folder;

    move-result-object p1

    return-object p1
.end method

.method public getPasswordAuthentication(Ljavax/mail/URLName;)Ljavax/mail/PasswordAuthentication;
    .registers 3

    .line 921
    iget-object v0, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/mail/PasswordAuthentication;

    return-object p1
.end method

.method public getProperties()Ljava/util/Properties;
    .registers 2

    .line 962
    iget-object v0, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 973
    iget-object v0, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized getProvider(Ljava/lang/String;)Ljavax/mail/Provider;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    const-string v0, "getProvider() returning "

    const-string v1, "mail."

    const-string v2, "No provider for "

    const-string v3, "mail."

    monitor-enter p0

    if-eqz p1, :cond_95

    .line 524
    :try_start_b
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_95

    .line 531
    iget-object v4, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".class"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_57

    .line 533
    iget-object v4, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v4, v5}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v4

    if-eqz v4, :cond_52

    .line 534
    iget-object v4, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, ".class property exists and points to "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V

    .line 538
    :cond_52
    invoke-direct {p0, v3}, Ljavax/mail/Session;->getProviderByClassName(Ljava/lang/String;)Ljavax/mail/Provider;

    move-result-object v1

    goto :goto_58

    :cond_57
    const/4 v1, 0x0

    :goto_58
    if-nez v1, :cond_5e

    .line 542
    invoke-direct {p0, p1}, Ljavax/mail/Session;->getProviderByProtocol(Ljava/lang/String;)Ljavax/mail/Provider;

    move-result-object v1

    :cond_5e
    if-eqz v1, :cond_82

    .line 547
    iget-object p1, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v2, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {p1, v2}, Lcom/sun/mail/util/MailLogger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result p1

    if-eqz p1, :cond_80

    .line 548
    iget-object p1, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/mail/Provider;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/mail/util/MailLogger;->fine(Ljava/lang/String;)V
    :try_end_80
    .catchall {:try_start_b .. :try_end_80} :catchall_9d

    .line 550
    :cond_80
    monitor-exit p0

    return-object v1

    .line 545
    :cond_82
    :try_start_82
    new-instance v0, Ljavax/mail/NoSuchProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 525
    :cond_95
    new-instance p1, Ljavax/mail/NoSuchProviderException;

    const-string v0, "Invalid protocol: null"

    invoke-direct {p1, v0}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_9d
    .catchall {:try_start_82 .. :try_end_9d} :catchall_9d

    :catchall_9d
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProviders()[Ljavax/mail/Provider;
    .registers 5

    monitor-enter p0

    .line 489
    :try_start_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 492
    const-class v1, Ljavax/mail/Provider;

    invoke-static {v1}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;)Ljava/util/ServiceLoader;

    move-result-object v1

    .line 493
    invoke-virtual {v1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x1

    :goto_11
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/mail/Provider;

    .line 494
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto :goto_11

    .line 498
    :cond_22
    iget-boolean v1, p0, Ljavax/mail/Session;->loadedProviders:Z

    if-nez v1, :cond_29

    .line 499
    invoke-direct {p0, v2}, Ljavax/mail/Session;->loadProviders(Z)V

    .line 500
    :cond_29
    iget-object v1, p0, Ljavax/mail/Session;->providers:Ljava/util/List;

    if-eqz v1, :cond_30

    .line 501
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 502
    :cond_30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljavax/mail/Provider;

    .line 503
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_1 .. :try_end_39} :catchall_3b

    .line 504
    monitor-exit p0

    return-object v1

    :catchall_3b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getStore()Ljavax/mail/Store;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    const-string v0, "mail.store.protocol"

    .line 586
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getStore(Ljava/lang/String;)Ljavax/mail/Store;

    move-result-object v0

    return-object v0
.end method

.method public getStore(Ljava/lang/String;)Ljavax/mail/Store;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .line 600
    new-instance v7, Ljavax/mail/URLName;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljavax/mail/Session;->getStore(Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object p1

    return-object p1
.end method

.method public getStore(Ljavax/mail/Provider;)Ljavax/mail/Store;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 634
    invoke-direct {p0, p1, v0}, Ljavax/mail/Session;->getStore(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object p1

    return-object p1
.end method

.method public getStore(Ljavax/mail/URLName;)Ljavax/mail/Store;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .line 619
    invoke-virtual {p1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 620
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProvider(Ljava/lang/String;)Ljavax/mail/Provider;

    move-result-object v0

    .line 621
    invoke-direct {p0, v0, p1}, Ljavax/mail/Session;->getStore(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Store;

    move-result-object p1

    return-object p1
.end method

.method public getTransport()Ljavax/mail/Transport;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    const-string v0, "mail.transport.protocol"

    .line 703
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 705
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v0

    return-object v0

    .line 707
    :cond_d
    iget-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    const-string v1, "rfc822"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 709
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v0

    return-object v0

    :cond_1e
    const-string v0, "smtp"

    .line 710
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object v0

    return-object v0
.end method

.method public getTransport(Ljava/lang/String;)Ljavax/mail/Transport;
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .line 725
    new-instance v7, Ljavax/mail/URLName;

    const/4 v2, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Ljavax/mail/URLName;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v7}, Ljavax/mail/Session;->getTransport(Ljavax/mail/URLName;)Ljavax/mail/Transport;

    move-result-object p1

    return-object p1
.end method

.method public getTransport(Ljavax/mail/Address;)Ljavax/mail/Transport;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .line 776
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mail.transport.protocol."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 777
    invoke-virtual {p1}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1e

    .line 779
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object p1

    return-object p1

    .line 780
    :cond_1e
    iget-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {p1}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_31

    .line 782
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getTransport(Ljava/lang/String;)Ljavax/mail/Transport;

    move-result-object p1

    return-object p1

    .line 783
    :cond_31
    new-instance v0, Ljavax/mail/NoSuchProviderException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No provider for Address type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 784
    invoke-virtual {p1}, Ljavax/mail/Address;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getTransport(Ljavax/mail/Provider;)Ljavax/mail/Transport;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 759
    invoke-direct {p0, p1, v0}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Transport;

    move-result-object p1

    return-object p1
.end method

.method public getTransport(Ljavax/mail/URLName;)Ljavax/mail/Transport;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    .line 743
    invoke-virtual {p1}, Ljavax/mail/URLName;->getProtocol()Ljava/lang/String;

    move-result-object v0

    .line 744
    invoke-virtual {p0, v0}, Ljavax/mail/Session;->getProvider(Ljava/lang/String;)Ljavax/mail/Provider;

    move-result-object v0

    .line 745
    invoke-direct {p0, v0, p1}, Ljavax/mail/Session;->getTransport(Ljavax/mail/Provider;Ljavax/mail/URLName;)Ljavax/mail/Transport;

    move-result-object p1

    return-object p1
.end method

.method public requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;
    .registers 12

    .line 948
    iget-object v0, p0, Ljavax/mail/Session;->authenticator:Ljavax/mail/Authenticator;

    if-eqz v0, :cond_e

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 949
    invoke-virtual/range {v0 .. v5}, Ljavax/mail/Authenticator;->requestPasswordAuthentication(Ljava/net/InetAddress;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/mail/PasswordAuthentication;

    move-result-object p1

    return-object p1

    :cond_e
    const/4 p1, 0x0

    return-object p1
.end method

.method public declared-synchronized setDebug(Z)V
    .registers 5

    monitor-enter p0

    .line 437
    :try_start_1
    iput-boolean p1, p0, Ljavax/mail/Session;->debug:Z

    .line 438
    invoke-direct {p0}, Ljavax/mail/Session;->initLogger()V

    .line 439
    iget-object p1, p0, Ljavax/mail/Session;->logger:Lcom/sun/mail/util/MailLogger;

    sget-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    const-string v1, "setDebug: JavaMail version {0}"

    const-string v2, "1.6.2"

    invoke-virtual {p1, v0, v1, v2}, Lcom/sun/mail/util/MailLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    .line 441
    monitor-exit p0

    return-void

    :catchall_13
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setDebugOut(Ljava/io/PrintStream;)V
    .registers 2

    monitor-enter p0

    .line 463
    :try_start_1
    iput-object p1, p0, Ljavax/mail/Session;->out:Ljava/io/PrintStream;

    .line 464
    invoke-direct {p0}, Ljavax/mail/Session;->initLogger()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 465
    monitor-exit p0

    return-void

    :catchall_8
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPasswordAuthentication(Ljavax/mail/URLName;Ljavax/mail/PasswordAuthentication;)V
    .registers 4

    if-nez p2, :cond_8

    .line 908
    iget-object p2, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    invoke-virtual {p2, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    .line 910
    :cond_8
    iget-object v0, p0, Ljavax/mail/Session;->authTable:Ljava/util/Hashtable;

    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_d
    return-void
.end method

.method public declared-synchronized setProtocolForAddress(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    if-nez p2, :cond_9

    .line 1217
    :try_start_3
    iget-object p2, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {p2, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_e

    .line 1219
    :cond_9
    iget-object v0, p0, Ljavax/mail/Session;->addressMap:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_10

    .line 1220
    :goto_e
    monitor-exit p0

    return-void

    :catchall_10
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setProvider(Ljavax/mail/Provider;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/mail/NoSuchProviderException;
        }
    .end annotation

    const-string v0, "mail."

    monitor-enter p0

    if-eqz p1, :cond_3b

    .line 568
    :try_start_5
    iget-object v1, p0, Ljavax/mail/Session;->providersByProtocol:Ljava/util/Map;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget-object v1, p0, Ljavax/mail/Session;->providersByClassName:Ljava/util/Map;

    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 570
    iget-object v1, p0, Ljavax/mail/Session;->props:Ljava/util/Properties;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/mail/Provider;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ".class"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 571
    invoke-virtual {p1}, Ljavax/mail/Provider;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 570
    invoke-virtual {v1, v0, p1}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_37
    .catchall {:try_start_5 .. :try_end_37} :catchall_39

    .line 572
    monitor-exit p0

    return-void

    :catchall_39
    move-exception p1

    goto :goto_43

    .line 566
    :cond_3b
    :try_start_3b
    new-instance p1, Ljavax/mail/NoSuchProviderException;

    const-string v0, "Can\'t set null provider"

    invoke-direct {p1, v0}, Ljavax/mail/NoSuchProviderException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_43
    .catchall {:try_start_3b .. :try_end_43} :catchall_39

    :goto_43
    monitor-exit p0

    throw p1
.end method
