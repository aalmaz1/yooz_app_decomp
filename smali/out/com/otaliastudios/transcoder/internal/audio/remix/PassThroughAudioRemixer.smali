.class public Lcom/otaliastudios/transcoder/internal/audio/remix/PassThroughAudioRemixer;
.super Ljava/lang/Object;
.source "PassThroughAudioRemixer.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/internal/audio/remix/AudioRemixer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRemixedSize(I)I
    .registers 2

    return p1
.end method

.method public remix(Ljava/nio/ShortBuffer;Ljava/nio/ShortBuffer;)V
    .registers 3

    .line 16
    invoke-virtual {p2, p1}, Ljava/nio/ShortBuffer;->put(Ljava/nio/ShortBuffer;)Ljava/nio/ShortBuffer;

    return-void
.end method
