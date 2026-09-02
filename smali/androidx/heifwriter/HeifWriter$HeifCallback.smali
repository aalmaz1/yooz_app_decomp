.class Landroidx/heifwriter/HeifWriter$HeifCallback;
.super Landroidx/heifwriter/HeifEncoder$Callback;
.source "HeifWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/heifwriter/HeifWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "HeifCallback"
.end annotation


# instance fields
.field private mEncoderStopped:Z

.field final synthetic this$0:Landroidx/heifwriter/HeifWriter;


# direct methods
.method constructor <init>(Landroidx/heifwriter/HeifWriter;)V
    .registers 2

    .line 553
    iput-object p1, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    invoke-direct {p0}, Landroidx/heifwriter/HeifEncoder$Callback;-><init>()V

    return-void
.end method

.method private stopAndNotify(Ljava/lang/Exception;)V
    .registers 3

    .line 643
    iget-boolean v0, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->mEncoderStopped:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    const/4 v0, 0x1

    .line 645
    iput-boolean v0, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->mEncoderStopped:Z

    .line 646
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget-object v0, v0, Landroidx/heifwriter/HeifWriter;->mResultWaiter:Landroidx/heifwriter/HeifWriter$ResultWaiter;

    invoke-virtual {v0, p1}, Landroidx/heifwriter/HeifWriter$ResultWaiter;->signalResult(Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public onComplete(Landroidx/heifwriter/HeifEncoder;)V
    .registers 2

    const/4 p1, 0x0

    .line 634
    invoke-direct {p0, p1}, Landroidx/heifwriter/HeifWriter$HeifCallback;->stopAndNotify(Ljava/lang/Exception;)V

    return-void
.end method

.method public onDrainOutputBuffer(Landroidx/heifwriter/HeifEncoder;Ljava/nio/ByteBuffer;)V
    .registers 10

    .line 606
    iget-boolean p1, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->mEncoderStopped:Z

    if-eqz p1, :cond_5

    return-void

    .line 611
    :cond_5
    iget-object p1, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget-object p1, p1, Landroidx/heifwriter/HeifWriter;->mTrackIndexArray:[I

    if-nez p1, :cond_16

    .line 612
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Output buffer received before format info"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/heifwriter/HeifWriter$HeifCallback;->stopAndNotify(Ljava/lang/Exception;)V

    return-void

    .line 617
    :cond_16
    iget-object p1, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget p1, p1, Landroidx/heifwriter/HeifWriter;->mOutputIndex:I

    iget-object v0, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget v0, v0, Landroidx/heifwriter/HeifWriter;->mMaxImages:I

    iget-object v1, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget v1, v1, Landroidx/heifwriter/HeifWriter;->mNumTiles:I

    mul-int/2addr v0, v1

    if-ge p1, v0, :cond_4f

    .line 618
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 619
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    .line 620
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget-object v0, v0, Landroidx/heifwriter/HeifWriter;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget-object v1, v1, Landroidx/heifwriter/HeifWriter;->mTrackIndexArray:[I

    iget-object v2, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget v2, v2, Landroidx/heifwriter/HeifWriter;->mOutputIndex:I

    iget-object v3, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget v3, v3, Landroidx/heifwriter/HeifWriter;->mNumTiles:I

    div-int/2addr v2, v3

    aget v1, v1, v2

    invoke-virtual {v0, v1, p2, p1}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    .line 624
    :cond_4f
    iget-object p1, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget p2, p1, Landroidx/heifwriter/HeifWriter;->mOutputIndex:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroidx/heifwriter/HeifWriter;->mOutputIndex:I

    .line 627
    iget-object p1, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget p1, p1, Landroidx/heifwriter/HeifWriter;->mOutputIndex:I

    iget-object p2, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget p2, p2, Landroidx/heifwriter/HeifWriter;->mMaxImages:I

    iget-object v0, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget v0, v0, Landroidx/heifwriter/HeifWriter;->mNumTiles:I

    mul-int/2addr p2, v0

    if-ne p1, p2, :cond_6a

    const/4 p1, 0x0

    .line 628
    invoke-direct {p0, p1}, Landroidx/heifwriter/HeifWriter$HeifCallback;->stopAndNotify(Ljava/lang/Exception;)V

    :cond_6a
    return-void
.end method

.method public onError(Landroidx/heifwriter/HeifEncoder;Landroid/media/MediaCodec$CodecException;)V
    .registers 3

    .line 639
    invoke-direct {p0, p2}, Landroidx/heifwriter/HeifWriter$HeifCallback;->stopAndNotify(Ljava/lang/Exception;)V

    return-void
.end method

.method public onOutputFormatChanged(Landroidx/heifwriter/HeifEncoder;Landroid/media/MediaFormat;)V
    .registers 7

    .line 562
    iget-boolean p1, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->mEncoderStopped:Z

    if-eqz p1, :cond_5

    return-void

    .line 567
    :cond_5
    iget-object p1, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget-object p1, p1, Landroidx/heifwriter/HeifWriter;->mTrackIndexArray:[I

    if-eqz p1, :cond_16

    .line 568
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Output format changed after muxer started"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/heifwriter/HeifWriter$HeifCallback;->stopAndNotify(Ljava/lang/Exception;)V

    return-void

    :cond_16
    const/4 p1, 0x1

    :try_start_17
    const-string v0, "grid-rows"

    .line 574
    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v1, "grid-cols"

    .line 575
    invoke-virtual {p2, v1}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    .line 576
    iget-object v2, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    mul-int/2addr v0, v1

    iput v0, v2, Landroidx/heifwriter/HeifWriter;->mNumTiles:I
    :try_end_28
    .catch Ljava/lang/NullPointerException; {:try_start_17 .. :try_end_28} :catch_29
    .catch Ljava/lang/ClassCastException; {:try_start_17 .. :try_end_28} :catch_29

    goto :goto_2d

    .line 578
    :catch_29
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iput p1, v0, Landroidx/heifwriter/HeifWriter;->mNumTiles:I

    .line 582
    :goto_2d
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget v1, v0, Landroidx/heifwriter/HeifWriter;->mMaxImages:I

    new-array v1, v1, [I

    iput-object v1, v0, Landroidx/heifwriter/HeifWriter;->mTrackIndexArray:[I

    .line 585
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget v0, v0, Landroidx/heifwriter/HeifWriter;->mRotation:I

    if-lez v0, :cond_5e

    .line 586
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setting rotation: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget v1, v1, Landroidx/heifwriter/HeifWriter;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HeifWriter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    iget-object v0, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget-object v0, v0, Landroidx/heifwriter/HeifWriter;->mMuxer:Landroid/media/MediaMuxer;

    iget-object v1, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget v1, v1, Landroidx/heifwriter/HeifWriter;->mRotation:I

    invoke-virtual {v0, v1}, Landroid/media/MediaMuxer;->setOrientationHint(I)V

    :cond_5e
    const/4 v0, 0x0

    move v1, v0

    .line 589
    :goto_60
    iget-object v2, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget-object v2, v2, Landroidx/heifwriter/HeifWriter;->mTrackIndexArray:[I

    array-length v2, v2

    if-ge v1, v2, :cond_86

    .line 591
    iget-object v2, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget v2, v2, Landroidx/heifwriter/HeifWriter;->mPrimaryIndex:I

    if-ne v1, v2, :cond_6f

    move v2, p1

    goto :goto_70

    :cond_6f
    move v2, v0

    :goto_70
    const-string v3, "is-default"

    invoke-virtual {p2, v3, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 592
    iget-object v2, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget-object v2, v2, Landroidx/heifwriter/HeifWriter;->mTrackIndexArray:[I

    iget-object v3, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget-object v3, v3, Landroidx/heifwriter/HeifWriter;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {v3, p2}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_60

    .line 594
    :cond_86
    iget-object p2, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget-object p2, p2, Landroidx/heifwriter/HeifWriter;->mMuxer:Landroid/media/MediaMuxer;

    invoke-virtual {p2}, Landroid/media/MediaMuxer;->start()V

    .line 595
    iget-object p2, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    iget-object p2, p2, Landroidx/heifwriter/HeifWriter;->mMuxerStarted:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p2, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 596
    iget-object p1, p0, Landroidx/heifwriter/HeifWriter$HeifCallback;->this$0:Landroidx/heifwriter/HeifWriter;

    invoke-virtual {p1}, Landroidx/heifwriter/HeifWriter;->processExifData()V

    return-void
.end method
