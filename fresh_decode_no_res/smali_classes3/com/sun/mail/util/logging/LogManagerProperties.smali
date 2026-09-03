.class final Lcom/sun/mail/util/logging/LogManagerProperties;
.super Ljava/util/Properties;
.source "LogManagerProperties.java"


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final LOG_MANAGER:Ljava/lang/Object;

.field private static final LR_GET_INSTANT:Ljava/lang/reflect/Method;

.field private static volatile REFLECT_NAMES:[Ljava/lang/String; = null

.field private static final ZDT_OF_INSTANT:Ljava/lang/reflect/Method;

.field private static final ZI_SYSTEM_DEFAULT:Ljava/lang/reflect/Method;

.field private static final serialVersionUID:J = -0x1f1604fcef521d6cL


# instance fields
.field private final prefix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const-string v0, "java.time.ZoneId"

    const/4 v1, 0x0

    .line 105
    :try_start_0
    const-class v2, Ljava/util/logging/LogRecord;

    const-string v3, "getInstant"

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 108
    :try_start_1
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v5, "systemDefault"

    new-array v6, v4, [Ljava/lang/Class;

    .line 109
    invoke-virtual {v3, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 110
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_2

    const-string v5, "java.time.ZonedDateTime"

    .line 114
    invoke-static {v5}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    const-string v6, "ofInstant"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const-string v8, "java.time.Instant"

    .line 115
    invoke-static {v8}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    aput-object v8, v7, v4

    .line 116
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v4, 0x1

    aput-object v0, v7, v4

    .line 115
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 117
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 121
    const-class v4, Ljava/lang/Comparable;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    goto/16 :goto_5

    .line 122
    :cond_0
    new-instance v4, Ljava/lang/NoSuchMethodException;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 118
    :cond_1
    new-instance v4, Ljava/lang/NoSuchMethodException;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/lang/LinkageError; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v1

    goto :goto_1

    .line 111
    :cond_2
    :try_start_4
    new-instance v0, Ljava/lang/NoSuchMethodException;

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/LinkageError; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto :goto_1

    :catch_0
    move-object v0, v1

    goto :goto_2

    :catch_1
    move-object v0, v1

    goto :goto_3

    :catch_2
    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v3, v1

    goto :goto_0

    :catch_3
    move-object v0, v1

    move-object v3, v0

    goto :goto_2

    :catch_4
    move-object v0, v1

    move-object v3, v0

    goto :goto_3

    :catch_5
    move-object v0, v1

    move-object v3, v0

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    move-object v1, v0

    move-object v0, v3

    .line 133
    :goto_1
    throw v1

    :catch_6
    move-object v0, v1

    move-object v2, v0

    move-object v3, v2

    :catch_7
    :goto_2
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    goto :goto_5

    :catch_8
    move-object v0, v1

    move-object v2, v0

    move-object v3, v2

    :catch_9
    :goto_3
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    goto :goto_5

    :catch_a
    move-object v0, v1

    move-object v2, v0

    move-object v3, v2

    :catch_b
    :goto_4
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    if-nez v0, :cond_3

    goto :goto_5

    :cond_3
    move-object v1, v2

    goto :goto_6

    :cond_4
    :goto_5
    move-object v0, v1

    move-object v3, v0

    .line 135
    :goto_6
    sput-object v1, Lcom/sun/mail/util/logging/LogManagerProperties;->LR_GET_INSTANT:Ljava/lang/reflect/Method;

    .line 136
    sput-object v3, Lcom/sun/mail/util/logging/LogManagerProperties;->ZI_SYSTEM_DEFAULT:Ljava/lang/reflect/Method;

    .line 137
    sput-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->ZDT_OF_INSTANT:Ljava/lang/reflect/Method;

    .line 150
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->loadLogManager()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->LOG_MANAGER:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 0

    .line 866
    invoke-direct {p0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 870
    iput-object p2, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->prefix:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 868
    throw p1
.end method

.method static checkLogManagerAccess()V
    .locals 3

    .line 248
    sget-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->LOG_MANAGER:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 251
    :try_start_0
    instance-of v2, v0, Ljava/util/logging/LogManager;

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    .line 253
    check-cast v0, Ljava/util/logging/LogManager;

    invoke-virtual {v0}, Ljava/util/logging/LogManager;->checkAccess()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    if-nez v1, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    throw v0

    :catch_1
    :cond_1
    :goto_0
    if-nez v1, :cond_2

    .line 265
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->checkLoggingAccess()V

    :cond_2
    return-void
.end method

.method private static checkLoggingAccess()V
    .locals 5

    const-string v0, "global"

    .line 288
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 290
    :try_start_0
    const-class v3, Ljava/util/logging/Logger;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-ne v3, v4, :cond_0

    .line 291
    move-object v3, v1

    check-cast v3, Ljava/util/logging/Handler;

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->removeHandler(Ljava/util/logging/Handler;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    move v2, v0

    :catch_0
    :cond_0
    if-nez v2, :cond_1

    .line 298
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 300
    new-instance v2, Ljava/util/logging/LoggingPermission;

    const-string v3, "control"

    invoke-direct {v2, v3, v1}, Ljava/util/logging/LoggingPermission;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    :cond_1
    return-void
.end method

.method private exportCopy(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 1

    .line 1096
    invoke-static {p0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    .line 1097
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    .line 1098
    invoke-virtual {v0, p0}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    return-object v0
.end method

.method private static findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 795
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->getClassLoaders()[Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    .line 798
    aget-object v2, v0, v1

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 800
    :try_start_0
    invoke-static {p0, v1, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 802
    :catch_0
    aget-object v0, v0, v3

    invoke-static {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->tryLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 805
    :cond_0
    aget-object v0, v0, v3

    invoke-static {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->tryLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method static fromLogManager(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 216
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 219
    sget-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->LOG_MANAGER:Ljava/lang/Object;

    .line 221
    :try_start_0
    instance-of v1, v0, Ljava/util/Properties;

    if-eqz v1, :cond_0

    .line 222
    move-object v1, v0

    check-cast v1, Ljava/util/Properties;

    invoke-virtual {v1, p0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    if-eqz v0, :cond_1

    .line 229
    :try_start_1
    instance-of v1, v0, Ljava/util/logging/LogManager;

    if-eqz v1, :cond_1

    .line 230
    check-cast v0, Ljava/util/logging/LogManager;

    invoke-virtual {v0, p0}, Ljava/util/logging/LogManager;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/LinkageError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static getClassLoaders()[Ljava/lang/ClassLoader;
    .locals 1

    .line 832
    new-instance v0, Lcom/sun/mail/util/logging/LogManagerProperties$1;

    invoke-direct {v0}, Lcom/sun/mail/util/logging/LogManagerProperties$1;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/ClassLoader;

    return-object v0
.end method

.method static getLocalHost(Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 373
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "getLocalHost"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 374
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 375
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v1

    const-class v3, Ljava/lang/String;

    if-ne v1, v3, :cond_0

    new-array v1, v2, [Ljava/lang/Object;

    .line 376
    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 378
    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 383
    invoke-static {p0}, Lcom/sun/mail/util/logging/LogManagerProperties;->paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 381
    invoke-static {p0}, Lcom/sun/mail/util/logging/LogManagerProperties;->wrapOrThrow(Ljava/lang/ExceptionInInitializerError;)Ljava/lang/reflect/InvocationTargetException;

    move-result-object p0

    throw p0
.end method

.method static getZonedDateTime(Ljava/util/logging/LogRecord;)Ljava/lang/Comparable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/logging/LogRecord;",
            ")",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    .line 329
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 331
    sget-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->ZDT_OF_INSTANT:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    :try_start_0
    new-array v2, v2, [Ljava/lang/Object;

    .line 334
    sget-object v3, Lcom/sun/mail/util/logging/LogManagerProperties;->LR_GET_INSTANT:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    .line 335
    invoke-virtual {v3, p0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, v2, v4

    sget-object p0, Lcom/sun/mail/util/logging/LogManagerProperties;->ZI_SYSTEM_DEFAULT:Ljava/lang/reflect/Method;

    new-array v3, v4, [Ljava/lang/Object;

    .line 336
    invoke-virtual {p0, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const/4 v3, 0x1

    aput-object p0, v2, v3

    .line 334
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Comparable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    .line 341
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 342
    instance-of v1, v0, Ljava/lang/Error;

    if-nez v1, :cond_1

    .line 344
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_0

    .line 345
    check-cast v0, Ljava/lang/RuntimeException;

    throw v0

    .line 347
    :cond_0
    new-instance v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-direct {v0, p0}, Ljava/lang/reflect/UndeclaredThrowableException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 343
    :cond_1
    check-cast v0, Ljava/lang/Error;

    throw v0

    :catch_1
    :cond_2
    return-object v1
.end method

.method static hasLogManager()Z
    .locals 1

    .line 313
    sget-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->LOG_MANAGER:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 314
    instance-of v0, v0, Ljava/util/Properties;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isReflectionClass(Ljava/lang/String;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 641
    sget-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->REFLECT_NAMES:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 643
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->reflectionClassNames()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/mail/util/logging/LogManagerProperties;->REFLECT_NAMES:[Ljava/lang/String;

    .line 646
    :cond_0
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 647
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 652
    :cond_2
    invoke-static {p0}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    return v2
.end method

.method static isStaticUtilityClass(Ljava/lang/String;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 607
    invoke-static {p0}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 608
    const-class v0, Ljava/lang/Object;

    const/4 v1, 0x0

    if-eq p0, v0, :cond_2

    .line 611
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object p0

    array-length v2, p0

    if-eqz v2, :cond_2

    .line 613
    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, p0, v3

    .line 614
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v5

    if-eq v5, v0, :cond_0

    .line 615
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    move v1, p0

    :cond_2
    :goto_1
    return v1
.end method

.method private static loadLogManager()Ljava/lang/Object;
    .locals 1

    .line 161
    :try_start_0
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->readConfiguration()Ljava/util/Properties;

    move-result-object v0

    goto :goto_0

    .line 163
    :catch_1
    invoke-static {}, Lcom/sun/mail/util/logging/LogManagerProperties;->readConfiguration()Ljava/util/Properties;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method static newComparator(Ljava/lang/String;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/util/logging/LogRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 519
    const-class v0, Ljava/util/Comparator;

    invoke-static {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Comparator;

    return-object p0
.end method

.method static newErrorManager(Ljava/lang/String;)Ljava/util/logging/ErrorManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 590
    const-class v0, Ljava/util/logging/ErrorManager;

    invoke-static {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/logging/ErrorManager;

    return-object p0
.end method

.method static newFilter(Ljava/lang/String;)Ljava/util/logging/Filter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 475
    const-class v0, Ljava/util/logging/Filter;

    invoke-static {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/logging/Filter;

    return-object p0
.end method

.method static newFormatter(Ljava/lang/String;)Ljava/util/logging/Formatter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 496
    const-class v0, Ljava/util/logging/Formatter;

    invoke-static {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/logging/Formatter;

    return-object p0
.end method

.method static newObjectFrom(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 714
    :try_start_0
    invoke-static {p0}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    .line 717
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    .line 719
    invoke-virtual {p0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception p0

    .line 721
    :try_start_2
    invoke-static {p0}, Lcom/sun/mail/util/logging/LogManagerProperties;->paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    .line 724
    :cond_0
    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " cannot be cast to "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 725
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    .line 735
    invoke-static {p0}, Lcom/sun/mail/util/logging/LogManagerProperties;->wrapOrThrow(Ljava/lang/ExceptionInInitializerError;)Ljava/lang/reflect/InvocationTargetException;

    move-result-object p0

    throw p0

    :catch_2
    move-exception p0

    .line 733
    new-instance p1, Ljava/lang/ClassNotFoundException;

    invoke-virtual {p0}, Ljava/lang/NoClassDefFoundError;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private static paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;
    .locals 3

    .line 749
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 753
    instance-of v1, v0, Ljava/lang/VirtualMachineError;

    instance-of v2, v0, Ljava/lang/ThreadDeath;

    or-int/2addr v1, v2

    if-nez v1, :cond_0

    goto :goto_0

    .line 755
    :cond_0
    check-cast v0, Ljava/lang/Error;

    throw v0

    :cond_1
    :goto_0
    return-object p0
.end method

.method static parseDurationToMillis(Ljava/lang/CharSequence;)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    :try_start_0
    const-string v0, "java.time.Duration"

    .line 406
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "parse"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    .line 407
    const-class v4, Ljava/lang/CharSequence;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 408
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 409
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "toMillis"

    new-array v4, v5, [Ljava/lang/Class;

    .line 413
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 414
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 415
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    const/4 p0, 0x0

    .line 418
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0

    .line 416
    :cond_0
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 410
    :cond_1
    new-instance p0, Ljava/lang/NoSuchMethodException;

    invoke-virtual {v1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    .line 422
    invoke-static {p0}, Lcom/sun/mail/util/logging/LogManagerProperties;->paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 420
    invoke-static {p0}, Lcom/sun/mail/util/logging/LogManagerProperties;->wrapOrThrow(Ljava/lang/ExceptionInInitializerError;)Ljava/lang/reflect/InvocationTargetException;

    move-result-object p0

    throw p0
.end method

.method private preWrite(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1085
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private static readConfiguration()Ljava/util/Properties;
    .locals 3

    .line 186
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :try_start_0
    const-string v1, "java.util.logging.config.file"

    .line 188
    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 190
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v1

    .line 191
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 195
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 196
    throw v1
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/LinkageError; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :cond_0
    :goto_0
    return-object v0
.end method

.method private static reflectionClassNames()[Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 669
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 670
    const-class v1, Ljava/lang/Throwable;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    .line 671
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    array-length v4, v3
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v2

    :goto_0
    const-class v6, Lcom/sun/mail/util/logging/LogManagerProperties;

    if-ge v5, v4, :cond_0

    :try_start_1
    aget-object v7, v3, v5

    .line 672
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 673
    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 679
    :cond_0
    const-class v3, Ljava/lang/Throwable;

    const-string v4, "fillInStackTrace"

    new-array v5, v2, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 680
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v4, v1, v2

    .line 681
    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 682
    invoke-virtual {v4}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 687
    :cond_1
    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 689
    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;

    move-result-object v0

    throw v0
.end method

.method static reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 540
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    .line 550
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "reversed"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 551
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-class v2, Ljava/util/Comparator;

    .line 552
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    :try_start_1
    new-array v2, v3, [Ljava/lang/Object;

    .line 554
    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;
    :try_end_1
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 556
    :try_start_2
    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->wrapOrThrow(Ljava/lang/ExceptionInInitializerError;)Ljava/lang/reflect/InvocationTargetException;

    move-result-object v1

    throw v1
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v1

    .line 563
    invoke-static {v1}, Lcom/sun/mail/util/logging/LogManagerProperties;->paramOrError(Ljava/lang/reflect/InvocationTargetException;)Ljava/lang/Exception;

    :catch_2
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 567
    invoke-static {p0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method static toLanguageTag(Ljava/util/Locale;)Ljava/lang/String;
    .locals 7

    .line 435
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 436
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    .line 437
    invoke-virtual {p0}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object p0

    .line 438
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    new-array v2, v2, [C

    .line 439
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    .line 440
    invoke-virtual {v0, v4, v3, v2, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 441
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x2d

    if-nez v5, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_1

    .line 442
    :cond_0
    aput-char v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 444
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v1, v4, v5, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 445
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v3, v5

    .line 448
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    .line 449
    :cond_2
    aput-char v6, v2, v3

    add-int/lit8 v3, v3, 0x1

    .line 451
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v4, v0, v2, v3}, Ljava/lang/String;->getChars(II[CI)V

    .line 452
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    add-int/2addr v3, p0

    .line 454
    :cond_3
    invoke-static {v2, v4, v3}, Ljava/lang/String;->valueOf([CII)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static tryLoad(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 820
    invoke-static {p0, v0, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p0

    return-object p0

    .line 822
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method private static wrapOrThrow(Ljava/lang/ExceptionInInitializerError;)Ljava/lang/reflect/InvocationTargetException;
    .locals 1

    .line 773
    invoke-virtual {p0}, Ljava/lang/ExceptionInInitializerError;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Error;

    if-nez v0, :cond_0

    .line 778
    new-instance v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-direct {v0, p0}, Ljava/lang/reflect/InvocationTargetException;-><init>(Ljava/lang/Throwable;)V

    return-object v0

    .line 774
    :cond_0
    throw p0
.end method

.method private declared-synchronized writeReplace()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    monitor-enter p0

    .line 1112
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Properties;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->exportCopy(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clone()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 884
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-direct {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->exportCopy(Ljava/util/Properties;)Ljava/util/Properties;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized containsKey(Ljava/lang/Object;)Z
    .locals 3

    monitor-enter p0

    .line 1006
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    .line 1007
    invoke-virtual {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    .line 1009
    iget-object v0, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :cond_2
    :goto_1
    move v0, v1

    .line 1011
    :cond_3
    monitor-exit p0

    return v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-ne p1, p0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 1056
    :cond_1
    instance-of v1, p1, Ljava/util/Properties;

    if-nez v1, :cond_2

    return v0

    .line 1060
    :cond_2
    invoke-super {p0, p1}, Ljava/util/Properties;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    monitor-enter p0

    .line 949
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 950
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 957
    iget-object v0, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_1

    .line 958
    iget-object v1, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-virtual {v1, p1}, Ljava/util/Properties;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 959
    invoke-super {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 962
    :cond_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized getProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    monitor-enter p0

    .line 896
    :try_start_0
    iget-object v0, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->defaults:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    .line 898
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 899
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/sun/mail/util/logging/LogManagerProperties;->prefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 903
    invoke-static {p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->fromLogManager(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    .line 913
    invoke-super {p0, p1, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 915
    :cond_2
    invoke-super {p0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 916
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_3

    check-cast p1, Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    move-object v0, p1

    .line 919
    :cond_4
    :goto_1
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 933
    invoke-virtual {p0, p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    return-object p2
.end method

.method public hashCode()I
    .locals 1

    .line 1071
    invoke-super {p0}, Ljava/util/Properties;->hashCode()I

    move-result v0

    return v0
.end method

.method public propertyNames()Ljava/util/Enumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration<",
            "*>;"
        }
    .end annotation

    .line 1038
    invoke-super {p0}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 975
    :try_start_0
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_1

    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 976
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->preWrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 977
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 978
    :goto_0
    monitor-exit p0

    return-object v0

    .line 980
    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    .line 1024
    :try_start_0
    invoke-direct {p0, p1}, Lcom/sun/mail/util/logging/LogManagerProperties;->preWrite(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1025
    invoke-super {p0, p1}, Ljava/util/Properties;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    .line 1026
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 993
    invoke-virtual {p0, p1, p2}, Lcom/sun/mail/util/logging/LogManagerProperties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
