.class Landroidx/camera/view/RotationProvider$1;
.super Landroid/view/OrientationEventListener;
.source "RotationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/camera/view/RotationProvider;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static final INVALID_SURFACE_ROTATION:I = -0x1


# instance fields
.field private mRotation:I

.field final synthetic this$0:Landroidx/camera/view/RotationProvider;


# direct methods
.method constructor <init>(Landroidx/camera/view/RotationProvider;Landroid/content/Context;)V
    .registers 3

    .line 86
    iput-object p1, p0, Landroidx/camera/view/RotationProvider$1;->this$0:Landroidx/camera/view/RotationProvider;

    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    .line 89
    iput p1, p0, Landroidx/camera/view/RotationProvider$1;->mRotation:I

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .registers 5

    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    return-void

    .line 99
    :cond_4
    invoke-static {p1}, Landroidx/camera/view/RotationProvider;->orientationToSurfaceRotation(I)I

    move-result p1

    .line 100
    iget v0, p0, Landroidx/camera/view/RotationProvider$1;->mRotation:I

    if-eq v0, p1, :cond_3e

    .line 101
    iput p1, p0, Landroidx/camera/view/RotationProvider$1;->mRotation:I

    .line 104
    iget-object v0, p0, Landroidx/camera/view/RotationProvider$1;->this$0:Landroidx/camera/view/RotationProvider;

    iget-object v0, v0, Landroidx/camera/view/RotationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 105
    :try_start_13
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroidx/camera/view/RotationProvider$1;->this$0:Landroidx/camera/view/RotationProvider;

    iget-object v2, v2, Landroidx/camera/view/RotationProvider;->mListeners:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 106
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_13 .. :try_end_21} :catchall_3b

    .line 107
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3e

    .line 108
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/camera/view/RotationProvider$ListenerWrapper;

    .line 109
    invoke-virtual {v1, p1}, Landroidx/camera/view/RotationProvider$ListenerWrapper;->onRotationChanged(I)V

    goto :goto_2b

    :catchall_3b
    move-exception p1

    .line 106
    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw p1

    :cond_3e
    return-void
.end method
