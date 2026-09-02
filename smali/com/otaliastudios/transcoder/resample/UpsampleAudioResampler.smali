.class public Lcom/otaliastudios/transcoder/resample/UpsampleAudioResampler;
.super Ljava/lang/Object;
.source "UpsampleAudioResampler.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/resample/AudioResampler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fakeSample(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;II)S
    .registers 4

    .line 70
    invoke-virtual {p0}, Ljava/nio/ShortBuffer;->position()I

    move-result p1

    sub-int/2addr p1, p3

    invoke-virtual {p0, p1}, Ljava/nio/ShortBuffer;->get(I)S

    move-result p0

    return p0
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
    .registers 15

    if-gt p2, p4, :cond_6f

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p5, v0, :cond_1e

    if-ne p5, v1, :cond_9

    goto :goto_1e

    .line 22
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "Illegal use of UpsampleAudioResampler. Channels:"

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

    move-result v2

    div-int/2addr v2, p5

    int-to-double v3, v2

    int-to-double v5, p4

    int-to-double v7, p2

    div-double/2addr v5, v7

    mul-double/2addr v3, v5

    .line 25
    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int p2, v3

    sub-int/2addr p2, v2

    .line 29
    invoke-static {v2, v2}, Lcom/otaliastudios/transcoder/resample/UpsampleAudioResampler;->ratio(II)F

    move-result p4

    .line 30
    invoke-static {p2, p2}, Lcom/otaliastudios/transcoder/resample/UpsampleAudioResampler;->ratio(II)F

    move-result v3

    move v5, p2

    move v4, v2

    :goto_38
    if-lez v4, :cond_6e

    if-lez v5, :cond_6e

    cmpl-float v6, p4, v3

    if-ltz v6, :cond_57

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
    add-int/lit8 v4, v4, -0x1

    .line 38
    invoke-static {v4, v2}, Lcom/otaliastudios/transcoder/resample/UpsampleAudioResampler;->ratio(II)F

    move-result p4

    goto :goto_38

    .line 40
    :cond_57
    invoke-static {p3, p1, v0, p5}, Lcom/otaliastudios/transcoder/resample/UpsampleAudioResampler;->fakeSample(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;II)S

    move-result v3

    invoke-virtual {p3, v3}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    if-ne p5, v1, :cond_67

    .line 41
    invoke-static {p3, p1, v1, p5}, Lcom/otaliastudios/transcoder/resample/UpsampleAudioResampler;->fakeSample(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;II)S

    move-result v3

    invoke-virtual {p3, v3}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    :cond_67
    add-int/lit8 v5, v5, -0x1

    .line 43
    invoke-static {v5, p2}, Lcom/otaliastudios/transcoder/resample/UpsampleAudioResampler;->ratio(II)F

    move-result v3

    goto :goto_38

    :cond_6e
    return-void

    .line 19
    :cond_6f
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal use of UpsampleAudioResampler"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
