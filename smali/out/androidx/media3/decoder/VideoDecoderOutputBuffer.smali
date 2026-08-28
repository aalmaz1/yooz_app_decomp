.class public Landroidx/media3/decoder/VideoDecoderOutputBuffer;
.super Landroidx/media3/decoder/DecoderOutputBuffer;
.source "VideoDecoderOutputBuffer.java"


# static fields
.field public static final COLORSPACE_BT2020:I = 0x3

.field public static final COLORSPACE_BT601:I = 0x1

.field public static final COLORSPACE_BT709:I = 0x2

.field public static final COLORSPACE_UNKNOWN:I


# instance fields
.field public colorspace:I

.field public data:Ljava/nio/ByteBuffer;

.field public decoderPrivate:I

.field public format:Landroidx/media3/common/Format;

.field public height:I

.field public mode:I

.field private final owner:Landroidx/media3/decoder/DecoderOutputBuffer$Owner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/media3/decoder/DecoderOutputBuffer$Owner<",
            "Landroidx/media3/decoder/VideoDecoderOutputBuffer;",
            ">;"
        }
    .end annotation
.end field

.field public supplementalData:Ljava/nio/ByteBuffer;

.field public width:I

.field public yuvPlanes:[Ljava/nio/ByteBuffer;

.field public yuvStrides:[I


# direct methods
.method public constructor <init>(Landroidx/media3/decoder/DecoderOutputBuffer$Owner;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/decoder/DecoderOutputBuffer$Owner<",
            "Landroidx/media3/decoder/VideoDecoderOutputBuffer;",
            ">;)V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Landroidx/media3/decoder/DecoderOutputBuffer;-><init>()V

    .line 68
    iput-object p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->owner:Landroidx/media3/decoder/DecoderOutputBuffer$Owner;

    return-void
.end method

.method private static isSafeToMultiply(II)Z
    .registers 3

    if-ltz p0, :cond_e

    if-ltz p1, :cond_e

    if-lez p1, :cond_c

    const v0, 0x7fffffff

    .line 172
    div-int/2addr v0, p1

    if-ge p0, v0, :cond_e

    :cond_c
    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method


# virtual methods
.method public init(JILjava/nio/ByteBuffer;)V
    .registers 5

    .line 87
    iput-wide p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->timeUs:J

    .line 88
    iput p3, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->mode:I

    if-eqz p4, :cond_3b

    .line 89
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result p1

    if-eqz p1, :cond_3b

    const/high16 p1, 0x10000000

    .line 90
    invoke-virtual {p0, p1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->addFlag(I)V

    .line 91
    invoke-virtual {p4}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    .line 92
    iget-object p2, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    if-eqz p2, :cond_26

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result p2

    if-ge p2, p1, :cond_20

    goto :goto_26

    .line 95
    :cond_20
    iget-object p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto :goto_2c

    .line 93
    :cond_26
    :goto_26
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    .line 97
    :goto_2c
    iget-object p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1, p4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 98
    iget-object p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 p1, 0x0

    .line 99
    invoke-virtual {p4, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    goto :goto_3e

    :cond_3b
    const/4 p1, 0x0

    .line 101
    iput-object p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->supplementalData:Ljava/nio/ByteBuffer;

    :goto_3e
    return-void
.end method

.method public initForPrivateFrame(II)V
    .registers 3

    .line 163
    iput p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    .line 164
    iput p2, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    return-void
.end method

.method public initForYuvFrame(IIIII)Z
    .registers 12

    .line 111
    iput p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->width:I

    .line 112
    iput p2, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->height:I

    .line 113
    iput p5, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->colorspace:I

    int-to-long v0, p2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x2

    .line 114
    div-long/2addr v0, v2

    long-to-int p1, v0

    .line 115
    invoke-static {p3, p2}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result p5

    const/4 v0, 0x0

    if-eqz p5, :cond_88

    invoke-static {p4, p1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result p5

    if-nez p5, :cond_1c

    goto :goto_88

    :cond_1c
    mul-int/2addr p2, p3

    mul-int/2addr p1, p4

    mul-int/lit8 p5, p1, 0x2

    add-int/2addr p5, p2

    const/4 v1, 0x2

    .line 121
    invoke-static {p1, v1}, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->isSafeToMultiply(II)Z

    move-result v2

    if-eqz v2, :cond_88

    if-ge p5, p2, :cond_2b

    goto :goto_88

    .line 126
    :cond_2b
    iget-object v2, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    if-eqz v2, :cond_41

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v2

    if-ge v2, p5, :cond_36

    goto :goto_41

    .line 129
    :cond_36
    iget-object v2, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 130
    iget-object v2, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    goto :goto_47

    .line 127
    :cond_41
    :goto_41
    invoke-static {p5}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p5

    iput-object p5, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 133
    :goto_47
    iget-object p5, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    const/4 v2, 0x3

    if-nez p5, :cond_50

    new-array p5, v2, [Ljava/nio/ByteBuffer;

    .line 134
    iput-object p5, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 137
    :cond_50
    iget-object p5, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->data:Ljava/nio/ByteBuffer;

    .line 138
    iget-object v3, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvPlanes:[Ljava/nio/ByteBuffer;

    .line 141
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    aput-object v4, v3, v0

    .line 142
    invoke-virtual {v4, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 143
    invoke-virtual {p5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 144
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v3, v5

    .line 145
    invoke-virtual {v4, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    add-int/2addr p2, p1

    .line 146
    invoke-virtual {p5, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 147
    invoke-virtual {p5}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object p2

    aput-object p2, v3, v1

    .line 148
    invoke-virtual {p2, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 149
    iget-object p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    if-nez p1, :cond_7f

    new-array p1, v2, [I

    .line 150
    iput-object p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    .line 152
    :cond_7f
    iget-object p1, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->yuvStrides:[I

    aput p3, p1, v0

    .line 153
    aput p4, p1, v5

    .line 154
    aput p4, p1, v1

    return v5

    :cond_88
    :goto_88
    return v0
.end method

.method public release()V
    .registers 2

    .line 73
    iget-object v0, p0, Landroidx/media3/decoder/VideoDecoderOutputBuffer;->owner:Landroidx/media3/decoder/DecoderOutputBuffer$Owner;

    invoke-interface {v0, p0}, Landroidx/media3/decoder/DecoderOutputBuffer$Owner;->releaseOutputBuffer(Landroidx/media3/decoder/DecoderOutputBuffer;)V

    return-void
.end method
