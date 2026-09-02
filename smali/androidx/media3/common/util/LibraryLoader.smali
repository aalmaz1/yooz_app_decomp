.class public abstract Landroidx/media3/common/util/LibraryLoader;
.super Ljava/lang/Object;
.source "LibraryLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LibraryLoader"


# instance fields
.field private isAvailable:Z

.field private loadAttempted:Z

.field private nativeLibraries:[Ljava/lang/String;


# direct methods
.method public varargs constructor <init>([Ljava/lang/String;)V
    .registers 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Landroidx/media3/common/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public declared-synchronized isAvailable()Z
    .registers 6

    monitor-enter p0

    .line 48
    :try_start_1
    iget-boolean v0, p0, Landroidx/media3/common/util/LibraryLoader;->loadAttempted:Z

    if-eqz v0, :cond_9

    .line 49
    iget-boolean v0, p0, Landroidx/media3/common/util/LibraryLoader;->isAvailable:Z
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_3f

    monitor-exit p0

    return v0

    :cond_9
    const/4 v0, 0x1

    .line 51
    :try_start_a
    iput-boolean v0, p0, Landroidx/media3/common/util/LibraryLoader;->loadAttempted:Z
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_3f

    .line 53
    :try_start_c
    iget-object v1, p0, Landroidx/media3/common/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_10
    if-ge v3, v2, :cond_1a

    aget-object v4, v1, v3

    .line 54
    invoke-virtual {p0, v4}, Landroidx/media3/common/util/LibraryLoader;->loadLibrary(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_10

    .line 56
    :cond_1a
    iput-boolean v0, p0, Landroidx/media3/common/util/LibraryLoader;->isAvailable:Z
    :try_end_1c
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_c .. :try_end_1c} :catch_1d
    .catchall {:try_start_c .. :try_end_1c} :catchall_3f

    goto :goto_3b

    :catch_1d
    :try_start_1d
    const-string v0, "LibraryLoader"

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroidx/media3/common/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroidx/media3/common/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    :goto_3b
    iget-boolean v0, p0, Landroidx/media3/common/util/LibraryLoader;->isAvailable:Z
    :try_end_3d
    .catchall {:try_start_1d .. :try_end_3d} :catchall_3f

    monitor-exit p0

    return v0

    :catchall_3f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected abstract loadLibrary(Ljava/lang/String;)V
.end method

.method public varargs declared-synchronized setLibraries([Ljava/lang/String;)V
    .registers 4

    monitor-enter p0

    .line 42
    :try_start_1
    iget-boolean v0, p0, Landroidx/media3/common/util/LibraryLoader;->loadAttempted:Z

    if-nez v0, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    const-string v1, "Cannot set libraries after loading"

    invoke-static {v0, v1}, Landroidx/media3/common/util/Assertions;->checkState(ZLjava/lang/Object;)V

    .line 43
    iput-object p1, p0, Landroidx/media3/common/util/LibraryLoader;->nativeLibraries:[Ljava/lang/String;
    :try_end_f
    .catchall {:try_start_1 .. :try_end_f} :catchall_11

    .line 44
    monitor-exit p0

    return-void

    :catchall_11
    move-exception p1

    monitor-exit p0

    throw p1
.end method
