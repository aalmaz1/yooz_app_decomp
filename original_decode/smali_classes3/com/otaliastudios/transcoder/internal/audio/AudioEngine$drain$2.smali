.class final Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AudioEngine.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->drain()Lcom/otaliastudios/transcoder/internal/pipeline/State;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/nio/ShortBuffer;",
        "Ljava/lang/Long;",
        "Ljava/lang/Double;",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok<",
        "Lcom/otaliastudios/transcoder/internal/codec/EncoderData;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0006\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0008H\n"
    }
    d2 = {
        "<anonymous>",
        "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;",
        "Lcom/otaliastudios/transcoder/internal/codec/EncoderData;",
        "inBuffer",
        "Ljava/nio/ShortBuffer;",
        "timeUs",
        "",
        "stretch",
        ""
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $outBuffer:Ljava/nio/ShortBuffer;

.field final synthetic $outBytes:Ljava/nio/ByteBuffer;

.field final synthetic $outId:I

.field final synthetic this$0:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;


# direct methods
.method constructor <init>(Ljava/nio/ShortBuffer;Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;Ljava/nio/ByteBuffer;I)V
    .locals 0

    iput-object p1, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->$outBuffer:Ljava/nio/ShortBuffer;

    iput-object p2, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->this$0:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

    iput-object p3, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->$outBytes:Ljava/nio/ByteBuffer;

    iput p4, p0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->$outId:I

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/nio/ShortBuffer;JD)Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ShortBuffer;",
            "JD)",
            "Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok<",
            "Lcom/otaliastudios/transcoder/internal/codec/EncoderData;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "inBuffer"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v2, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->$outBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v2

    .line 78
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v3

    int-to-double v4, v3

    mul-double v6, v4, p4

    .line 81
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    .line 82
    iget-object v8, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->this$0:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

    invoke-static {v8}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->access$getRemixer$p(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;)Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;

    move-result-object v8

    const-string v9, "remixer"

    const/4 v10, 0x0

    if-nez v8, :cond_0

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v10

    :cond_0
    double-to-int v6, v6

    invoke-interface {v8, v6}, Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;->getRemixedSize(I)I

    move-result v6

    int-to-double v6, v6

    .line 83
    iget-object v8, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->this$0:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

    invoke-static {v8}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->access$getTargetFormat$p(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;)Landroid/media/MediaFormat;

    move-result-object v11

    invoke-static {v8, v11}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->access$getSampleRate(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;Landroid/media/MediaFormat;)I

    move-result v8

    int-to-double v11, v8

    mul-double/2addr v6, v11

    iget-object v8, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->this$0:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

    invoke-static {v8}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->access$getRawFormat$p(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;)Landroid/media/MediaFormat;

    move-result-object v11

    const-string v12, "rawFormat"

    if-nez v11, :cond_1

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v11, v10

    :cond_1
    invoke-static {v8, v11}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->access$getSampleRate(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;Landroid/media/MediaFormat;)I

    move-result v8

    int-to-double v13, v8

    div-double/2addr v6, v13

    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    int-to-double v13, v2

    cmpg-double v2, v6, v13

    if-gtz v2, :cond_2

    goto :goto_0

    :cond_2
    div-double/2addr v6, v4

    div-double/2addr v13, v6

    .line 88
    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v3, v2

    .line 90
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/nio/ShortBuffer;->position()I

    move-result v2

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    int-to-double v2, v3

    mul-double v2, v2, p4

    .line 93
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    .line 94
    iget-object v4, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->this$0:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

    invoke-static {v4}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->access$getBuffers$p(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;)Lcom/otaliastudios/transcoder/internal/audio/ShortBuffers;

    move-result-object v4

    double-to-int v2, v2

    const-string v3, "stretch"

    invoke-virtual {v4, v3, v2}, Lcom/otaliastudios/transcoder/internal/audio/ShortBuffers;->acquire(Ljava/lang/String;I)Ljava/nio/ShortBuffer;

    move-result-object v3

    .line 95
    iget-object v4, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->this$0:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

    invoke-static {v4}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->access$getStretcher$p(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;)Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    move-result-object v4

    iget-object v5, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->this$0:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

    invoke-static {v5}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->access$getRawFormat$p(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;)Landroid/media/MediaFormat;

    move-result-object v6

    if-nez v6, :cond_3

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v6, v10

    :cond_3
    invoke-static {v5, v6}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->access$getChannels(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;Landroid/media/MediaFormat;)I

    move-result v5

    invoke-interface {v4, v1, v3, v5}, Lcom/otaliastudios/transcoder/stretch/AudioStretcher;->stretch(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;I)V

    .line 96
    invoke-virtual {v3}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 99
    iget-object v1, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->this$0:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

    invoke-static {v1}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->access$getRemixer$p(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;)Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;

    move-result-object v1

    if-nez v1, :cond_4

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v10

    :cond_4
    invoke-interface {v1, v2}, Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;->getRemixedSize(I)I

    move-result v1

    .line 100
    iget-object v2, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->this$0:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

    invoke-static {v2}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->access$getBuffers$p(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;)Lcom/otaliastudios/transcoder/internal/audio/ShortBuffers;

    move-result-object v2

    const-string v4, "remix"

    invoke-virtual {v2, v4, v1}, Lcom/otaliastudios/transcoder/internal/audio/ShortBuffers;->acquire(Ljava/lang/String;I)Ljava/nio/ShortBuffer;

    move-result-object v14

    .line 101
    iget-object v1, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->this$0:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

    invoke-static {v1}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->access$getRemixer$p(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;)Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;

    move-result-object v1

    if-nez v1, :cond_5

    invoke-static {v9}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v10

    :cond_5
    invoke-interface {v1, v3, v14}, Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;->remix(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;)V

    .line 102
    invoke-virtual {v14}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 105
    iget-object v1, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->this$0:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

    invoke-static {v1}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->access$getResampler$p(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;)Lcom/otaliastudios/transcoder/resample/AudioResampler;

    move-result-object v13

    .line 106
    iget-object v1, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->this$0:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

    invoke-static {v1}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->access$getRawFormat$p(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;)Landroid/media/MediaFormat;

    move-result-object v2

    if-nez v2, :cond_6

    invoke-static {v12}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move-object v10, v2

    :goto_1
    invoke-static {v1, v10}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->access$getSampleRate(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;Landroid/media/MediaFormat;)I

    move-result v15

    .line 107
    iget-object v1, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->$outBuffer:Ljava/nio/ShortBuffer;

    iget-object v2, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->this$0:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

    invoke-static {v2}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->access$getTargetFormat$p(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;)Landroid/media/MediaFormat;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->access$getSampleRate(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;Landroid/media/MediaFormat;)I

    move-result v17

    .line 108
    iget-object v2, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->this$0:Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;

    invoke-static {v2}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->access$getTargetFormat$p(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;)Landroid/media/MediaFormat;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;->access$getChannels(Lcom/otaliastudios/transcoder/internal/audio/AudioEngine;Landroid/media/MediaFormat;)I

    move-result v18

    move-object/from16 v16, v1

    .line 105
    invoke-interface/range {v13 .. v18}, Lcom/otaliastudios/transcoder/resample/AudioResampler;->resample(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;II)V

    .line 109
    iget-object v1, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->$outBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->flip()Ljava/nio/Buffer;

    .line 112
    iget-object v1, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->$outBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 113
    iget-object v1, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->$outBytes:Ljava/nio/ByteBuffer;

    iget-object v2, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->$outBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->limit()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 114
    iget-object v1, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->$outBytes:Ljava/nio/ByteBuffer;

    iget-object v2, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->$outBuffer:Ljava/nio/ShortBuffer;

    invoke-virtual {v2}, Ljava/nio/ShortBuffer;->position()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 115
    new-instance v1, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    new-instance v2, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;

    iget-object v3, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->$outBytes:Ljava/nio/ByteBuffer;

    iget v4, v0, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->$outId:I

    move-wide/from16 v5, p2

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/otaliastudios/transcoder/internal/codec/EncoderData;-><init>(Ljava/nio/ByteBuffer;IJ)V

    invoke-direct {v1, v2}, Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;-><init>(Ljava/lang/Object;)V

    return-object v1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 74
    move-object v1, p1

    check-cast v1, Ljava/nio/ShortBuffer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v4

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/otaliastudios/transcoder/internal/audio/AudioEngine$drain$2;->invoke(Ljava/nio/ShortBuffer;JD)Lcom/otaliastudios/transcoder/internal/pipeline/State$Ok;

    move-result-object p1

    return-object p1
.end method
