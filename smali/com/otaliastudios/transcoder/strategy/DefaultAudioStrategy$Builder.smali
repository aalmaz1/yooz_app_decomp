.class public Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;
.super Ljava/lang/Object;
.source "DefaultAudioStrategy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private targetBitRate:J

.field private targetChannels:I

.field private targetMimeType:Ljava/lang/String;

.field private targetSampleRate:I


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 51
    iput v0, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;->targetChannels:I

    .line 52
    iput v0, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;->targetSampleRate:I

    const-wide/high16 v0, -0x8000000000000000L

    .line 53
    iput-wide v0, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;->targetBitRate:J

    const-string v0, "audio/mp4a-latm"

    .line 54
    iput-object v0, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;->targetMimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public bitRate(J)Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;
    .registers 3

    .line 79
    iput-wide p1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;->targetBitRate:J

    return-object p0
.end method

.method public build()Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;
    .registers 3

    .line 102
    new-instance v0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;

    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;->options()Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;-><init>(Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;)V

    return-object v0
.end method

.method public channels(I)Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;
    .registers 2

    .line 61
    iput p1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;->targetChannels:I

    return-object p0
.end method

.method public mimeType(Ljava/lang/String;)Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;
    .registers 2

    .line 85
    iput-object p1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;->targetMimeType:Ljava/lang/String;

    return-object p0
.end method

.method public options()Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;
    .registers 4

    .line 92
    new-instance v0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;-><init>(Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$1;)V

    .line 93
    iget v1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;->targetChannels:I

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;->access$102(Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;I)I

    .line 94
    iget v1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;->targetSampleRate:I

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;->access$202(Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;I)I

    .line 95
    iget-object v1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;->targetMimeType:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;->access$302(Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    iget-wide v1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;->targetBitRate:J

    invoke-static {v0, v1, v2}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;->access$402(Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;J)J

    return-object v0
.end method

.method public sampleRate(I)Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;
    .registers 2

    .line 67
    iput p1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;->targetSampleRate:I

    return-object p0
.end method
