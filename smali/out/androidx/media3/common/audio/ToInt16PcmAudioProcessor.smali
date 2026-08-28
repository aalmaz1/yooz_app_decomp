.class public final Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;
.super Landroidx/media3/common/audio/BaseAudioProcessor;
.source "ToInt16PcmAudioProcessor.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 40
    invoke-direct {p0}, Landroidx/media3/common/audio/BaseAudioProcessor;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigure(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)Landroidx/media3/common/audio/AudioProcessor$AudioFormat;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;
        }
    .end annotation

    .line 45
    iget v0, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    if-eq v0, v1, :cond_26

    if-eq v0, v2, :cond_26

    const/high16 v1, 0x10000000

    if-eq v0, v1, :cond_26

    const/16 v1, 0x15

    if-eq v0, v1, :cond_26

    const/high16 v1, 0x50000000

    if-eq v0, v1, :cond_26

    const/16 v1, 0x16

    if-eq v0, v1, :cond_26

    const/high16 v1, 0x60000000

    if-eq v0, v1, :cond_26

    const/4 v1, 0x4

    if-ne v0, v1, :cond_20

    goto :goto_26

    .line 54
    :cond_20
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;

    invoke-direct {v0, p1}, Landroidx/media3/common/audio/AudioProcessor$UnhandledAudioFormatException;-><init>(Landroidx/media3/common/audio/AudioProcessor$AudioFormat;)V

    throw v0

    :cond_26
    :goto_26
    if-eq v0, v2, :cond_32

    .line 57
    new-instance v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->sampleRate:I

    iget p1, p1, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->channelCount:I

    invoke-direct {v0, v1, p1, v2}, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;-><init>(III)V

    goto :goto_34

    .line 59
    :cond_32
    sget-object v0, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->NOT_SET:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    :goto_34
    return-object v0
.end method

.method public queueInput(Ljava/nio/ByteBuffer;)V
    .registers 13

    .line 65
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 66
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    sub-int v2, v1, v0

    .line 69
    iget-object v3, p0, Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    const/high16 v4, 0x60000000

    const/high16 v5, 0x50000000

    const/high16 v6, 0x10000000

    const/16 v7, 0x16

    const/16 v8, 0x15

    const/4 v9, 0x4

    const/4 v10, 0x3

    if-eq v3, v10, :cond_35

    if-eq v3, v9, :cond_32

    if-eq v3, v8, :cond_2f

    if-eq v3, v7, :cond_32

    if-eq v3, v6, :cond_37

    if-eq v3, v5, :cond_2f

    if-ne v3, v4, :cond_29

    goto :goto_32

    .line 89
    :cond_29
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    .line 78
    :cond_2f
    div-int/lit8 v2, v2, 0x3

    goto :goto_35

    .line 83
    :cond_32
    :goto_32
    div-int/lit8 v2, v2, 0x2

    goto :goto_37

    :cond_35
    :goto_35
    mul-int/lit8 v2, v2, 0x2

    .line 93
    :cond_37
    :goto_37
    invoke-virtual {p0, v2}, Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;->replaceOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 94
    iget-object v3, p0, Landroidx/media3/common/audio/ToInt16PcmAudioProcessor;->inputAudioFormat:Landroidx/media3/common/audio/AudioProcessor$AudioFormat;

    iget v3, v3, Landroidx/media3/common/audio/AudioProcessor$AudioFormat;->encoding:I

    if-eq v3, v10, :cond_e5

    if-eq v3, v9, :cond_c0

    if-eq v3, v8, :cond_a9

    if-eq v3, v7, :cond_92

    if-eq v3, v6, :cond_7d

    if-eq v3, v5, :cond_68

    if-ne v3, v4, :cond_62

    :goto_4d
    if-ge v0, v1, :cond_fa

    add-int/lit8 v3, v0, 0x1

    .line 133
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 134
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_4d

    .line 155
    :cond_62
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1

    :cond_68
    :goto_68
    if-ge v0, v1, :cond_fa

    add-int/lit8 v3, v0, 0x1

    .line 119
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 120
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x3

    goto :goto_68

    :cond_7d
    :goto_7d
    if-ge v0, v1, :cond_fa

    add-int/lit8 v3, v0, 0x1

    .line 105
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 106
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x2

    goto :goto_7d

    :cond_92
    :goto_92
    if-ge v0, v1, :cond_fa

    add-int/lit8 v3, v0, 0x2

    .line 126
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x3

    .line 127
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_92

    :cond_a9
    :goto_a9
    if-ge v0, v1, :cond_fa

    add-int/lit8 v3, v0, 0x1

    .line 112
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v3, v0, 0x2

    .line 113
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x3

    goto :goto_a9

    :cond_c0
    :goto_c0
    if-ge v0, v1, :cond_fa

    .line 144
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getFloat(I)F

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v3, v4, v5}, Landroidx/media3/common/util/Util;->constrainValue(FFF)F

    move-result v3

    const v4, 0x46fffe00    # 32767.0f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-short v3, v3

    and-int/lit16 v4, v3, 0xff

    int-to-byte v4, v4

    .line 146
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    shr-int/lit8 v3, v3, 0x8

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 147
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x4

    goto :goto_c0

    :cond_e5
    :goto_e5
    if-ge v0, v1, :cond_fa

    const/4 v3, 0x0

    .line 98
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 99
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_e5

    .line 157
    :cond_fa
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 158
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method
