.class public abstract Ljavax/activation/FileTypeMap;
.super Ljava/lang/Object;
.source "FileTypeMap.java"


# static fields
.field private static defaultMap:Ljavax/activation/FileTypeMap;

.field private static map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ljavax/activation/FileTypeMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 66
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Ljavax/activation/FileTypeMap;->map:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getDefaultFileTypeMap()Ljavax/activation/FileTypeMap;
    .registers 4

    const-class v0, Ljavax/activation/FileTypeMap;

    monitor-enter v0

    .line 133
    :try_start_3
    sget-object v1, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_23

    if-eqz v1, :cond_9

    .line 134
    monitor-exit v0

    return-object v1

    .line 137
    :cond_9
    :try_start_9
    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 138
    sget-object v2, Ljavax/activation/FileTypeMap;->map:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/activation/FileTypeMap;

    if-nez v2, :cond_21

    .line 140
    new-instance v2, Ljavax/activation/MimetypesFileTypeMap;

    invoke-direct {v2}, Ljavax/activation/MimetypesFileTypeMap;-><init>()V

    .line 141
    sget-object v3, Ljavax/activation/FileTypeMap;->map:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_21
    .catchall {:try_start_9 .. :try_end_21} :catchall_23

    .line 143
    :cond_21
    monitor-exit v0

    return-object v2

    :catchall_23
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setDefaultFileTypeMap(Ljavax/activation/FileTypeMap;)V
    .registers 5

    const-class v0, Ljavax/activation/FileTypeMap;

    monitor-enter v0

    .line 103
    :try_start_3
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v1
    :try_end_7
    .catchall {:try_start_3 .. :try_end_7} :catchall_35

    if-eqz v1, :cond_28

    .line 107
    :try_start_9
    invoke-virtual {v1}, Ljava/lang/SecurityManager;->checkSetFactory()V
    :try_end_c
    .catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_c} :catch_d
    .catchall {:try_start_9 .. :try_end_c} :catchall_35

    goto :goto_28

    :catch_d
    move-exception v1

    .line 112
    :try_start_e
    const-class v2, Ljavax/activation/FileTypeMap;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    if-eqz v2, :cond_27

    .line 113
    invoke-virtual {v2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v3

    if-eqz v3, :cond_27

    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-ne v2, v3, :cond_27

    goto :goto_28

    .line 115
    :cond_27
    throw v1

    .line 119
    :cond_28
    :goto_28
    sget-object v1, Ljavax/activation/FileTypeMap;->map:Ljava/util/Map;

    invoke-static {}, Ljavax/activation/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sput-object p0, Ljavax/activation/FileTypeMap;->defaultMap:Ljavax/activation/FileTypeMap;
    :try_end_33
    .catchall {:try_start_e .. :try_end_33} :catchall_35

    .line 121
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public abstract getContentType(Ljava/io/File;)Ljava/lang/String;
.end method

.method public abstract getContentType(Ljava/lang/String;)Ljava/lang/String;
.end method
