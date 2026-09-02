.class public Lcom/otaliastudios/transcoder/TranscoderOptions;
.super Ljava/lang/Object;
.source "TranscoderOptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    }
.end annotation


# instance fields
.field private audioDataSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private audioResampler:Lcom/otaliastudios/transcoder/resample/AudioResampler;

.field private audioStretcher:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

.field private audioTrackStrategy:Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

.field private dataSink:Lcom/otaliastudios/transcoder/sink/DataSink;

.field private listener:Lcom/otaliastudios/transcoder/TranscoderListener;

.field private listenerHandler:Landroid/os/Handler;

.field private timeInterpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

.field private validator:Lcom/otaliastudios/transcoder/validator/Validator;

.field private videoDataSources:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation
.end field

.field private videoRotation:I

.field private videoTrackStrategy:Lcom/otaliastudios/transcoder/strategy/TrackStrategy;


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/otaliastudios/transcoder/TranscoderOptions$1;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Lcom/otaliastudios/transcoder/TranscoderOptions;-><init>()V

    return-void
.end method

.method static synthetic access$1002(Lcom/otaliastudios/transcoder/TranscoderOptions;Lcom/otaliastudios/transcoder/time/TimeInterpolator;)Lcom/otaliastudios/transcoder/time/TimeInterpolator;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->timeInterpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    return-object p1
.end method

.method static synthetic access$102(Lcom/otaliastudios/transcoder/TranscoderOptions;Lcom/otaliastudios/transcoder/TranscoderListener;)Lcom/otaliastudios/transcoder/TranscoderListener;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->listener:Lcom/otaliastudios/transcoder/TranscoderListener;

    return-object p1
.end method

.method static synthetic access$1102(Lcom/otaliastudios/transcoder/TranscoderOptions;Lcom/otaliastudios/transcoder/stretch/AudioStretcher;)Lcom/otaliastudios/transcoder/stretch/AudioStretcher;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->audioStretcher:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    return-object p1
.end method

.method static synthetic access$1202(Lcom/otaliastudios/transcoder/TranscoderOptions;Lcom/otaliastudios/transcoder/resample/AudioResampler;)Lcom/otaliastudios/transcoder/resample/AudioResampler;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->audioResampler:Lcom/otaliastudios/transcoder/resample/AudioResampler;

    return-object p1
.end method

.method static synthetic access$202(Lcom/otaliastudios/transcoder/TranscoderOptions;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->audioDataSources:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$302(Lcom/otaliastudios/transcoder/TranscoderOptions;Ljava/util/List;)Ljava/util/List;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->videoDataSources:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$402(Lcom/otaliastudios/transcoder/TranscoderOptions;Lcom/otaliastudios/transcoder/sink/DataSink;)Lcom/otaliastudios/transcoder/sink/DataSink;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->dataSink:Lcom/otaliastudios/transcoder/sink/DataSink;

    return-object p1
.end method

.method static synthetic access$502(Lcom/otaliastudios/transcoder/TranscoderOptions;Landroid/os/Handler;)Landroid/os/Handler;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->listenerHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$602(Lcom/otaliastudios/transcoder/TranscoderOptions;Lcom/otaliastudios/transcoder/strategy/TrackStrategy;)Lcom/otaliastudios/transcoder/strategy/TrackStrategy;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->audioTrackStrategy:Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    return-object p1
.end method

.method static synthetic access$702(Lcom/otaliastudios/transcoder/TranscoderOptions;Lcom/otaliastudios/transcoder/strategy/TrackStrategy;)Lcom/otaliastudios/transcoder/strategy/TrackStrategy;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->videoTrackStrategy:Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    return-object p1
.end method

.method static synthetic access$802(Lcom/otaliastudios/transcoder/TranscoderOptions;Lcom/otaliastudios/transcoder/validator/Validator;)Lcom/otaliastudios/transcoder/validator/Validator;
    .registers 2

    .line 44
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->validator:Lcom/otaliastudios/transcoder/validator/Validator;

    return-object p1
.end method

.method static synthetic access$902(Lcom/otaliastudios/transcoder/TranscoderOptions;I)I
    .registers 2

    .line 44
    iput p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->videoRotation:I

    return p1
.end method


# virtual methods
.method public getAudioDataSources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation

    .line 78
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->audioDataSources:Ljava/util/List;

    return-object v0
.end method

.method public getAudioResampler()Lcom/otaliastudios/transcoder/resample/AudioResampler;
    .registers 2

    .line 117
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->audioResampler:Lcom/otaliastudios/transcoder/resample/AudioResampler;

    return-object v0
.end method

.method public getAudioStretcher()Lcom/otaliastudios/transcoder/stretch/AudioStretcher;
    .registers 2

    .line 112
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->audioStretcher:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    return-object v0
.end method

.method public getAudioTrackStrategy()Lcom/otaliastudios/transcoder/strategy/TrackStrategy;
    .registers 2

    .line 88
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->audioTrackStrategy:Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    return-object v0
.end method

.method public getDataSink()Lcom/otaliastudios/transcoder/sink/DataSink;
    .registers 2

    .line 73
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->dataSink:Lcom/otaliastudios/transcoder/sink/DataSink;

    return-object v0
.end method

.method public getListener()Lcom/otaliastudios/transcoder/TranscoderListener;
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->listener:Lcom/otaliastudios/transcoder/TranscoderListener;

    return-object v0
.end method

.method public getListenerHandler()Landroid/os/Handler;
    .registers 2

    .line 68
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->listenerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public getTimeInterpolator()Lcom/otaliastudios/transcoder/time/TimeInterpolator;
    .registers 2

    .line 107
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->timeInterpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    return-object v0
.end method

.method public getValidator()Lcom/otaliastudios/transcoder/validator/Validator;
    .registers 2

    .line 98
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->validator:Lcom/otaliastudios/transcoder/validator/Validator;

    return-object v0
.end method

.method public getVideoDataSources()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/otaliastudios/transcoder/source/DataSource;",
            ">;"
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->videoDataSources:Ljava/util/List;

    return-object v0
.end method

.method public getVideoRotation()I
    .registers 2

    .line 102
    iget v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->videoRotation:I

    return v0
.end method

.method public getVideoTrackStrategy()Lcom/otaliastudios/transcoder/strategy/TrackStrategy;
    .registers 2

    .line 93
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions;->videoTrackStrategy:Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    return-object v0
.end method
