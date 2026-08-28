.class public final Landroidx/camera/core/impl/SessionProcessorSurface;
.super Landroidx/camera/core/impl/DeferrableSurface;
.source "SessionProcessorSurface.java"


# instance fields
.field private final mOutputConfigId:I

.field private final mSurface:Landroid/view/Surface;


# direct methods
.method public constructor <init>(Landroid/view/Surface;I)V
    .registers 3

    .line 39
    invoke-direct {p0}, Landroidx/camera/core/impl/DeferrableSurface;-><init>()V

    .line 40
    iput-object p1, p0, Landroidx/camera/core/impl/SessionProcessorSurface;->mSurface:Landroid/view/Surface;

    .line 41
    iput p2, p0, Landroidx/camera/core/impl/SessionProcessorSurface;->mOutputConfigId:I

    return-void
.end method


# virtual methods
.method public getOutputConfigId()I
    .registers 2

    .line 45
    iget v0, p0, Landroidx/camera/core/impl/SessionProcessorSurface;->mOutputConfigId:I

    return v0
.end method

.method public provideSurface()Lcom/google/common/util/concurrent/ListenableFuture;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroid/view/Surface;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Landroidx/camera/core/impl/SessionProcessorSurface;->mSurface:Landroid/view/Surface;

    invoke-static {v0}, Landroidx/camera/core/impl/utils/futures/Futures;->immediateFuture(Ljava/lang/Object;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object v0

    return-object v0
.end method
