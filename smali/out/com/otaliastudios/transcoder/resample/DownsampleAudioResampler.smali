.class public Lcom/otaliastudios/transcoder/resample/DownsampleAudioResampler;
.super Ljava/lang/Object;
.source "DownsampleAudioResampler.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/resample/AudioResampler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ratio(II)F
    .registers 2

    int-to-float p0, p0

    int-to-float p1, p1

    div-float/2addr p0, p1

    return p0
.end method


# virtual methods
.method public resample(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;II)V
    .registers 14

    if-lt p2, p4, :cond_67

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p5, v0, :cond_1e

    if-ne p5, v1, :cond_9

    goto :goto_1e

    .line 22
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Illegal use of DownsampleAudioResampler. Channels:"

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_1e
    :goto_1e
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    div-int/2addr v0, p5

    int-to-double v2, v0

    int-to-double v4, p4

    int-to-double v6, p2

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p2, v2

    sub-int/2addr v0, p2

    .line 29
    invoke-static {p2, p2}, Lcom/otaliastudios/transcoder/resample/DownsampleAudioResampler;->ratio(II)F

    move-result p4

    .line 30
    invoke-static {v0, v0}, Lcom/otaliastudios/transcoder/resample/DownsampleAudioResampler;->ratio(II)F

    move-result v2

    move v3, p2

    move v4, v0

    :goto_38
    if-lez v3, :cond_66

    if-lez v4, :cond_66

    cmpl-float v5, p4, v2

    if-ltz v5, :cond_57

    .line 35
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result p4

    invoke-virtual {p3, p4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    if-ne p5, v1, :cond_50

    .line 36
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->get()S

    move-result p4

    invoke-virtual {p3, p4}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    :cond_50
    add-int/lit8 v3, v3, -0x1

    .line 38
    invoke-static {v3, p2}, Lcom/otaliastudios/transcoder/resample/DownsampleAudioResampler;->ratio(II)F

    move-result p4

    goto :goto_38

    .line 41
    :cond_57
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->position()I

    move-result v2

    add-int/2addr v2, p5

    invoke-virtual {p1, v2}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    add-int/lit8 v4, v4, -0x1

    .line 43
    invoke-static {v4, v0}, Lcom/otaliastudios/transcoder/resample/DownsampleAudioResampler;->ratio(II)F

    move-result v2

    goto :goto_38

    :cond_66
    return-void

    .line 19
    :cond_67
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal use of DownsampleAudioResampler"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
