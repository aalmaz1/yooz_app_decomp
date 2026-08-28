.class public Lcom/otaliastudios/transcoder/resample/DefaultAudioResampler;
.super Ljava/lang/Object;
.source "DefaultAudioResampler.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/resample/AudioResampler;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public resample(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;II)V
    .registers 14

    if-ge p2, p4, :cond_d

    .line 16
    sget-object v0, Lcom/otaliastudios/transcoder/resample/DefaultAudioResampler;->UPSAMPLE:Lcom/otaliastudios/transcoder/resample/AudioResampler;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/otaliastudios/transcoder/resample/AudioResampler;->resample(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;II)V

    goto :goto_24

    :cond_d
    if-le p2, p4, :cond_1a

    .line 18
    sget-object v1, Lcom/otaliastudios/transcoder/resample/DefaultAudioResampler;->DOWNSAMPLE:Lcom/otaliastudios/transcoder/resample/AudioResampler;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/otaliastudios/transcoder/resample/AudioResampler;->resample(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;II)V

    goto :goto_24

    .line 20
    :cond_1a
    sget-object v2, Lcom/otaliastudios/transcoder/resample/DefaultAudioResampler;->PASSTHROUGH:Lcom/otaliastudios/transcoder/resample/AudioResampler;

    move-object v3, p1

    move v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/otaliastudios/transcoder/resample/AudioResampler;->resample(Ljava/nio/ShortBuffer;ILjava/nio/ShortBuffer;II)V

    :goto_24
    return-void
.end method
