.class public final Landroidx/media3/exoplayer/video/PlaceholderSurface;
.super Landroid/view/Surface;
.source "PlaceholderSurface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PlaceholderSurface"

.field private static secureMode:I

.field private static secureModeInitialized:Z


# instance fields
.field public final secure:Z

.field private final thread:Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

.field private threadReleased:Z


# direct methods
.method private constructor <init>(Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;Z)V
    .registers 4

    .line 96
    invoke-direct {p0, p2}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 97
    iput-object p1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->thread:Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

    .line 98
    iput-boolean p3, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secure:Z

    return-void
.end method

.method synthetic constructor <init>(Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;ZLandroidx/media3/exoplayer/video/PlaceholderSurface$1;)V
    .registers 5

    .line 40
    invoke-direct {p0, p1, p2, p3}, Landroidx/media3/exoplayer/video/PlaceholderSurface;-><init>(Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;Landroid/graphics/SurfaceTexture;Z)V

    return-void
.end method

.method private static getSecureMode(Landroid/content/Context;)I
    .registers 1

    .line 117
    invoke-static {p0}, Landroidx/media3/common/util/GlUtil;->isProtectedContentExtensionSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_10

    .line 118
    invoke-static {}, Landroidx/media3/common/util/GlUtil;->isSurfacelessContextExtensionSupported()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x2

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method public static declared-synchronized isSecureSupported(Landroid/content/Context;)Z
    .registers 4

    const-class v0, Landroidx/media3/exoplayer/video/PlaceholderSurface;

    monitor-enter v0

    .line 60
    :try_start_3
    sget-boolean v1, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secureModeInitialized:Z

    const/4 v2, 0x1

    if-nez v1, :cond_10

    .line 61
    invoke-static {p0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->getSecureMode(Landroid/content/Context;)I

    move-result p0

    sput p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secureMode:I

    .line 62
    sput-boolean v2, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secureModeInitialized:Z

    .line 64
    :cond_10
    sget p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secureMode:I
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_18

    if-eqz p0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :goto_16
    monitor-exit v0

    return v2

    :catchall_18
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static newInstance(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;
    .registers 3

    const/4 v0, 0x0

    if-eqz p1, :cond_c

    .line 89
    invoke-static {p0}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->isSecureSupported(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_a

    goto :goto_c

    :cond_a
    move p0, v0

    goto :goto_d

    :cond_c
    :goto_c
    const/4 p0, 0x1

    :goto_d
    invoke-static {p0}, Landroidx/media3/common/util/Assertions;->checkState(Z)V

    .line 90
    new-instance p0, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

    invoke-direct {p0}, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;-><init>()V

    if-eqz p1, :cond_19

    .line 91
    sget v0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->secureMode:I

    :cond_19
    invoke-virtual {p0, v0}, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->init(I)Landroidx/media3/exoplayer/video/PlaceholderSurface;

    move-result-object p0

    return-object p0
.end method

.method public static newInstanceV17(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 75
    invoke-static {p0, p1}, Landroidx/media3/exoplayer/video/PlaceholderSurface;->newInstance(Landroid/content/Context;Z)Landroidx/media3/exoplayer/video/PlaceholderSurface;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public release()V
    .registers 3

    .line 103
    invoke-super {p0}, Landroid/view/Surface;->release()V

    .line 108
    iget-object v0, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->thread:Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

    monitor-enter v0

    .line 109
    :try_start_6
    iget-boolean v1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->threadReleased:Z

    if-nez v1, :cond_12

    .line 110
    iget-object v1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->thread:Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;

    invoke-virtual {v1}, Landroidx/media3/exoplayer/video/PlaceholderSurface$PlaceholderSurfaceThread;->release()V

    const/4 v1, 0x1

    .line 111
    iput-boolean v1, p0, Landroidx/media3/exoplayer/video/PlaceholderSurface;->threadReleased:Z

    .line 113
    :cond_12
    monitor-exit v0

    return-void

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_6 .. :try_end_16} :catchall_14

    throw v1
.end method
