.class public Lcom/otaliastudios/transcoder/stretch/DefaultAudioStretcher;
.super Ljava/lang/Object;
.source "DefaultAudioStretcher.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/stretch/AudioStretcher;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public stretch(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;I)V
    .registers 6

    .line 15
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    if-ge v0, v1, :cond_10

    .line 16
    sget-object v0, Lcom/otaliastudios/transcoder/stretch/DefaultAudioStretcher;->INSERT:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    invoke-interface {v0, p1, p2, p3}, Lcom/otaliastudios/transcoder/stretch/AudioStretcher;->stretch(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;I)V

    goto :goto_25

    .line 17
    :cond_10
    invoke-virtual {p1}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v0

    invoke-virtual {p2}, Ljava/nio/ShortBuffer;->remaining()I

    move-result v1

    if-le v0, v1, :cond_20

    .line 18
    sget-object v0, Lcom/otaliastudios/transcoder/stretch/DefaultAudioStretcher;->CUT:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    invoke-interface {v0, p1, p2, p3}, Lcom/otaliastudios/transcoder/stretch/AudioStretcher;->stretch(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;I)V

    goto :goto_25

    .line 20
    :cond_20
    sget-object v0, Lcom/otaliastudios/transcoder/stretch/DefaultAudioStretcher;->PASSTHROUGH:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    invoke-interface {v0, p1, p2, p3}, Lcom/otaliastudios/transcoder/stretch/AudioStretcher;->stretch(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;I)V

    :goto_25
    return-void
.end method
