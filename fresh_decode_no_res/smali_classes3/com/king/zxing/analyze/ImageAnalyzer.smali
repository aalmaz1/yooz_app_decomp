.class public abstract Lcom/king/zxing/analyze/ImageAnalyzer;
.super Ljava/lang/Object;
.source "ImageAnalyzer.java"

# interfaces
.implements Lcom/king/camera/scan/analyze/Analyzer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/king/camera/scan/analyze/Analyzer<",
        "Lcom/google/zxing/Result;",
        ">;"
    }
.end annotation


# instance fields
.field private final joinQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/king/zxing/analyze/ImageAnalyzer;->queue:Ljava/util/Queue;

    .line 28
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/king/zxing/analyze/ImageAnalyzer;->joinQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method


# virtual methods
.method public abstract analyze([BII)Lcom/google/zxing/Result;
.end method

.method public analyze(Landroidx/camera/core/ImageProxy;Lcom/king/camera/scan/analyze/Analyzer$OnAnalyzeListener;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/camera/core/ImageProxy;",
            "Lcom/king/camera/scan/analyze/Analyzer$OnAnalyzeListener<",
            "Lcom/google/zxing/Result;",
            ">;)V"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/king/zxing/analyze/ImageAnalyzer;->joinQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 44
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v0

    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    .line 45
    div-int/lit8 v2, v0, 0x4

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    new-array v0, v0, [B

    .line 46
    iget-object v2, p0, Lcom/king/zxing/analyze/ImageAnalyzer;->queue:Ljava/util/Queue;

    invoke-interface {v2, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 47
    iget-object v0, p0, Lcom/king/zxing/analyze/ImageAnalyzer;->joinQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/king/zxing/analyze/ImageAnalyzer;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 52
    :cond_1
    iget-object v0, p0, Lcom/king/zxing/analyze/ImageAnalyzer;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    const/4 v2, 0x0

    .line 55
    :try_start_0
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getImageInfo()Landroidx/camera/core/ImageInfo;

    move-result-object v3

    invoke-interface {v3}, Landroidx/camera/core/ImageInfo;->getRotationDegrees()I

    move-result v3

    .line 56
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getWidth()I

    move-result v4

    .line 57
    invoke-interface {p1}, Landroidx/camera/core/ImageProxy;->getHeight()I

    move-result v5

    .line 59
    invoke-static {p1, v0}, Lcom/king/camera/scan/util/ImageUtils;->yuv_420_888toNv21(Landroidx/camera/core/ImageProxy;[B)V

    const/16 p1, 0x5a

    const/4 v6, 0x0

    if-eq v3, p1, :cond_3

    const/16 p1, 0x10e

    if-ne v3, p1, :cond_2

    goto :goto_0

    .line 71
    :cond_2
    invoke-virtual {p0, v0, v4, v5}, Lcom/king/zxing/analyze/ImageAnalyzer;->analyze([BII)Lcom/google/zxing/Result;

    move-result-object p1

    goto :goto_3

    .line 63
    :cond_3
    :goto_0
    array-length p1, v0

    new-array p1, p1, [B

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_5

    move v8, v6

    :goto_2
    if-ge v8, v4, :cond_4

    mul-int v9, v8, v5

    add-int/2addr v9, v5

    sub-int/2addr v9, v7

    sub-int/2addr v9, v1

    mul-int v10, v7, v4

    add-int/2addr v10, v8

    .line 66
    aget-byte v10, v0, v10

    aput-byte v10, p1, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 69
    :cond_5
    invoke-virtual {p0, p1, v5, v4}, Lcom/king/zxing/analyze/ImageAnalyzer;->analyze([BII)Lcom/google/zxing/Result;

    move-result-object p1

    :goto_3
    if-eqz p1, :cond_6

    .line 74
    new-instance v1, Lcom/king/camera/scan/FrameMetadata;

    invoke-direct {v1, v4, v5, v3}, Lcom/king/camera/scan/FrameMetadata;-><init>(III)V

    .line 78
    iget-object v3, p0, Lcom/king/zxing/analyze/ImageAnalyzer;->joinQueue:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 79
    new-instance v3, Lcom/king/camera/scan/AnalyzeResult;

    const/16 v4, 0x11

    invoke-direct {v3, v0, v4, v1, p1}, Lcom/king/camera/scan/AnalyzeResult;-><init>([BILcom/king/camera/scan/FrameMetadata;Ljava/lang/Object;)V

    invoke-interface {p2, v3}, Lcom/king/camera/scan/analyze/Analyzer$OnAnalyzeListener;->onSuccess(Lcom/king/camera/scan/AnalyzeResult;)V

    goto :goto_4

    .line 81
    :cond_6
    iget-object p1, p0, Lcom/king/zxing/analyze/ImageAnalyzer;->queue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-interface {p2, v2}, Lcom/king/camera/scan/analyze/Analyzer$OnAnalyzeListener;->onFailure(Ljava/lang/Exception;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 86
    :catch_0
    iget-object p1, p0, Lcom/king/zxing/analyze/ImageAnalyzer;->queue:Ljava/util/Queue;

    invoke-interface {p1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-interface {p2, v2}, Lcom/king/camera/scan/analyze/Analyzer$OnAnalyzeListener;->onFailure(Ljava/lang/Exception;)V

    :goto_4
    return-void
.end method
