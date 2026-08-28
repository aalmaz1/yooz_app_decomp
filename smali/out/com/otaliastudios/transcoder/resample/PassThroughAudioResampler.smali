.class public Lcom/otaliastudios/transcoder/resample/PassThroughAudioResampler;
.super Ljava/lang/Object;
.source "PassThroughAudioResampler.java"

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
    .registers 6

    if-ne p2, p4, :cond_6

    .line 19
    invoke-virtual {p3, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    return-void

    .line 17
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Illegal use of PassThroughAudioResampler"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
