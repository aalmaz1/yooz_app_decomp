.class public Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
.super Ljava/lang/Object;
.source "TranscoderOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/otaliastudios/transcoder/TranscoderOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final audioDataSources:Ljava/util/List;
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

.field private final dataSink:Lcom/otaliastudios/transcoder/sink/DataSink;

.field private listener:Lcom/otaliastudios/transcoder/TranscoderListener;

.field private listenerHandler:Landroid/os/Handler;

.field private timeInterpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

.field private validator:Lcom/otaliastudios/transcoder/validator/Validator;

.field private final videoDataSources:Ljava/util/List;
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
.method constructor <init>(Lcom/otaliastudios/transcoder/sink/DataSink;)V
    .registers 3

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->audioDataSources:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->videoDataSources:Ljava/util/List;

    .line 144
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->dataSink:Lcom/otaliastudios/transcoder/sink/DataSink;

    return-void
.end method

.method constructor <init>(Ljava/io/FileDescriptor;)V
    .registers 3

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->audioDataSources:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->videoDataSources:Ljava/util/List;

    .line 140
    new-instance v0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;

    invoke-direct {v0, p1}, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;-><init>(Ljava/io/FileDescriptor;)V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->dataSink:Lcom/otaliastudios/transcoder/sink/DataSink;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .registers 3

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->audioDataSources:Ljava/util/List;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->videoDataSources:Ljava/util/List;

    .line 135
    new-instance v0, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;

    invoke-direct {v0, p1}, Lcom/otaliastudios/transcoder/sink/DefaultDataSink;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->dataSink:Lcom/otaliastudios/transcoder/sink/DataSink;

    return-void
.end method


# virtual methods
.method public addDataSource(Landroid/content/Context;Landroid/net/Uri;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 4

    .line 199
    new-instance v0, Lcom/otaliastudios/transcoder/source/UriDataSource;

    invoke-direct {v0, p1, p2}, Lcom/otaliastudios/transcoder/source/UriDataSource;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->addDataSource(Lcom/otaliastudios/transcoder/source/DataSource;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addDataSource(Landroid/content/res/AssetFileDescriptor;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 3

    .line 178
    new-instance v0, Lcom/otaliastudios/transcoder/source/AssetFileDescriptorDataSource;

    invoke-direct {v0, p1}, Lcom/otaliastudios/transcoder/source/AssetFileDescriptorDataSource;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    invoke-virtual {p0, v0}, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->addDataSource(Lcom/otaliastudios/transcoder/source/DataSource;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addDataSource(Lcom/otaliastudios/transcoder/common/TrackType;Landroid/content/Context;Landroid/net/Uri;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 5

    .line 205
    new-instance v0, Lcom/otaliastudios/transcoder/source/UriDataSource;

    invoke-direct {v0, p2, p3}, Lcom/otaliastudios/transcoder/source/UriDataSource;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->addDataSource(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/source/DataSource;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addDataSource(Lcom/otaliastudios/transcoder/common/TrackType;Landroid/content/res/AssetFileDescriptor;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 4

    .line 183
    new-instance v0, Lcom/otaliastudios/transcoder/source/AssetFileDescriptorDataSource;

    invoke-direct {v0, p2}, Lcom/otaliastudios/transcoder/source/AssetFileDescriptorDataSource;-><init>(Landroid/content/res/AssetFileDescriptor;)V

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->addDataSource(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/source/DataSource;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addDataSource(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/source/DataSource;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 4

    .line 158
    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackType;->AUDIO:Lcom/otaliastudios/transcoder/common/TrackType;

    if-ne p1, v0, :cond_a

    .line 159
    iget-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->audioDataSources:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_13

    .line 160
    :cond_a
    sget-object v0, Lcom/otaliastudios/transcoder/common/TrackType;->VIDEO:Lcom/otaliastudios/transcoder/common/TrackType;

    if-ne p1, v0, :cond_13

    .line 161
    iget-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->videoDataSources:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_13
    :goto_13
    return-object p0
.end method

.method public addDataSource(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/io/FileDescriptor;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 4

    .line 173
    new-instance v0, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;

    invoke-direct {v0, p2}, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->addDataSource(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/source/DataSource;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addDataSource(Lcom/otaliastudios/transcoder/common/TrackType;Ljava/lang/String;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 4

    .line 193
    new-instance v0, Lcom/otaliastudios/transcoder/source/FilePathDataSource;

    invoke-direct {v0, p2}, Lcom/otaliastudios/transcoder/source/FilePathDataSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->addDataSource(Lcom/otaliastudios/transcoder/common/TrackType;Lcom/otaliastudios/transcoder/source/DataSource;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addDataSource(Lcom/otaliastudios/transcoder/source/DataSource;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 3

    .line 150
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->audioDataSources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->videoDataSources:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public addDataSource(Ljava/io/FileDescriptor;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 3

    .line 168
    new-instance v0, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;

    invoke-direct {v0, p1}, Lcom/otaliastudios/transcoder/source/FileDescriptorDataSource;-><init>(Ljava/io/FileDescriptor;)V

    invoke-virtual {p0, v0}, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->addDataSource(Lcom/otaliastudios/transcoder/source/DataSource;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addDataSource(Ljava/lang/String;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 3

    .line 188
    new-instance v0, Lcom/otaliastudios/transcoder/source/FilePathDataSource;

    invoke-direct {v0, p1}, Lcom/otaliastudios/transcoder/source/FilePathDataSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->addDataSource(Lcom/otaliastudios/transcoder/source/DataSource;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/otaliastudios/transcoder/TranscoderOptions;
    .registers 3

    .line 341
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->listener:Lcom/otaliastudios/transcoder/TranscoderListener;

    if-eqz v0, :cond_d2

    .line 344
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->audioDataSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->videoDataSources:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    goto :goto_1d

    .line 345
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "we need at least one data source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 347
    :cond_1d
    :goto_1d
    iget v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->videoRotation:I

    if-eqz v0, :cond_36

    const/16 v1, 0x5a

    if-eq v0, v1, :cond_36

    const/16 v1, 0xb4

    if-eq v0, v1, :cond_36

    const/16 v1, 0x10e

    if-ne v0, v1, :cond_2e

    goto :goto_36

    .line 348
    :cond_2e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Accepted values for rotation are 0, 90, 180, 270"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 350
    :cond_36
    :goto_36
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->listenerHandler:Landroid/os/Handler;

    if-nez v0, :cond_4b

    .line 351
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_44

    .line 352
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 353
    :cond_44
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->listenerHandler:Landroid/os/Handler;

    .line 355
    :cond_4b
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->audioTrackStrategy:Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    if-nez v0, :cond_59

    .line 356
    invoke-static {}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;->builder()Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;->build()Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->audioTrackStrategy:Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    .line 358
    :cond_59
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->videoTrackStrategy:Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    if-nez v0, :cond_63

    .line 359
    invoke-static {}, Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategies;->for720x1280()Lcom/otaliastudios/transcoder/strategy/DefaultVideoStrategy;

    move-result-object v0

    iput-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->videoTrackStrategy:Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    .line 361
    :cond_63
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->validator:Lcom/otaliastudios/transcoder/validator/Validator;

    if-nez v0, :cond_6e

    .line 362
    new-instance v0, Lcom/otaliastudios/transcoder/validator/DefaultValidator;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/validator/DefaultValidator;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->validator:Lcom/otaliastudios/transcoder/validator/Validator;

    .line 364
    :cond_6e
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->timeInterpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    if-nez v0, :cond_79

    .line 365
    new-instance v0, Lcom/otaliastudios/transcoder/time/DefaultTimeInterpolator;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/time/DefaultTimeInterpolator;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->timeInterpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    .line 367
    :cond_79
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->audioStretcher:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    if-nez v0, :cond_84

    .line 368
    new-instance v0, Lcom/otaliastudios/transcoder/stretch/DefaultAudioStretcher;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/stretch/DefaultAudioStretcher;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->audioStretcher:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    .line 370
    :cond_84
    iget-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->audioResampler:Lcom/otaliastudios/transcoder/resample/AudioResampler;

    if-nez v0, :cond_8f

    .line 371
    new-instance v0, Lcom/otaliastudios/transcoder/resample/DefaultAudioResampler;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/resample/DefaultAudioResampler;-><init>()V

    iput-object v0, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->audioResampler:Lcom/otaliastudios/transcoder/resample/AudioResampler;

    .line 373
    :cond_8f
    new-instance v0, Lcom/otaliastudios/transcoder/TranscoderOptions;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/otaliastudios/transcoder/TranscoderOptions;-><init>(Lcom/otaliastudios/transcoder/TranscoderOptions$1;)V

    .line 374
    iget-object v1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->listener:Lcom/otaliastudios/transcoder/TranscoderListener;

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->access$102(Lcom/otaliastudios/transcoder/TranscoderOptions;Lcom/otaliastudios/transcoder/TranscoderListener;)Lcom/otaliastudios/transcoder/TranscoderListener;

    .line 375
    iget-object v1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->audioDataSources:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->access$202(Lcom/otaliastudios/transcoder/TranscoderOptions;Ljava/util/List;)Ljava/util/List;

    .line 376
    iget-object v1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->videoDataSources:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->access$302(Lcom/otaliastudios/transcoder/TranscoderOptions;Ljava/util/List;)Ljava/util/List;

    .line 377
    iget-object v1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->dataSink:Lcom/otaliastudios/transcoder/sink/DataSink;

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->access$402(Lcom/otaliastudios/transcoder/TranscoderOptions;Lcom/otaliastudios/transcoder/sink/DataSink;)Lcom/otaliastudios/transcoder/sink/DataSink;

    .line 378
    iget-object v1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->listenerHandler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->access$502(Lcom/otaliastudios/transcoder/TranscoderOptions;Landroid/os/Handler;)Landroid/os/Handler;

    .line 379
    iget-object v1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->audioTrackStrategy:Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->access$602(Lcom/otaliastudios/transcoder/TranscoderOptions;Lcom/otaliastudios/transcoder/strategy/TrackStrategy;)Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    .line 380
    iget-object v1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->videoTrackStrategy:Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->access$702(Lcom/otaliastudios/transcoder/TranscoderOptions;Lcom/otaliastudios/transcoder/strategy/TrackStrategy;)Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    .line 381
    iget-object v1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->validator:Lcom/otaliastudios/transcoder/validator/Validator;

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->access$802(Lcom/otaliastudios/transcoder/TranscoderOptions;Lcom/otaliastudios/transcoder/validator/Validator;)Lcom/otaliastudios/transcoder/validator/Validator;

    .line 382
    iget v1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->videoRotation:I

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->access$902(Lcom/otaliastudios/transcoder/TranscoderOptions;I)I

    .line 383
    iget-object v1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->timeInterpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->access$1002(Lcom/otaliastudios/transcoder/TranscoderOptions;Lcom/otaliastudios/transcoder/time/TimeInterpolator;)Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    .line 384
    iget-object v1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->audioStretcher:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->access$1102(Lcom/otaliastudios/transcoder/TranscoderOptions;Lcom/otaliastudios/transcoder/stretch/AudioStretcher;)Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    .line 385
    iget-object v1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->audioResampler:Lcom/otaliastudios/transcoder/resample/AudioResampler;

    invoke-static {v0, v1}, Lcom/otaliastudios/transcoder/TranscoderOptions;->access$1202(Lcom/otaliastudios/transcoder/TranscoderOptions;Lcom/otaliastudios/transcoder/resample/AudioResampler;)Lcom/otaliastudios/transcoder/resample/AudioResampler;

    return-object v0

    .line 342
    :cond_d2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "listener can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAudioResampler(Lcom/otaliastudios/transcoder/resample/AudioResampler;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 2

    .line 334
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->audioResampler:Lcom/otaliastudios/transcoder/resample/AudioResampler;

    return-object p0
.end method

.method public setAudioStretcher(Lcom/otaliastudios/transcoder/stretch/AudioStretcher;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 2

    .line 320
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->audioStretcher:Lcom/otaliastudios/transcoder/stretch/AudioStretcher;

    return-object p0
.end method

.method public setAudioTrackStrategy(Lcom/otaliastudios/transcoder/strategy/TrackStrategy;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 2

    .line 217
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->audioTrackStrategy:Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    return-object p0
.end method

.method public setListener(Lcom/otaliastudios/transcoder/TranscoderListener;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 2

    .line 236
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->listener:Lcom/otaliastudios/transcoder/TranscoderListener;

    return-object p0
.end method

.method public setListenerHandler(Landroid/os/Handler;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 2

    .line 251
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->listenerHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public setSpeed(F)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 3

    .line 307
    new-instance v0, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator;

    invoke-direct {v0, p1}, Lcom/otaliastudios/transcoder/time/SpeedTimeInterpolator;-><init>(F)V

    invoke-virtual {p0, v0}, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->setTimeInterpolator(Lcom/otaliastudios/transcoder/time/TimeInterpolator;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setTimeInterpolator(Lcom/otaliastudios/transcoder/time/TimeInterpolator;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 2

    .line 293
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->timeInterpolator:Lcom/otaliastudios/transcoder/time/TimeInterpolator;

    return-object p0
.end method

.method public setValidator(Lcom/otaliastudios/transcoder/validator/Validator;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->validator:Lcom/otaliastudios/transcoder/validator/Validator;

    return-object p0
.end method

.method public setVideoRotation(I)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 2

    .line 278
    iput p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->videoRotation:I

    return-object p0
.end method

.method public setVideoTrackStrategy(Lcom/otaliastudios/transcoder/strategy/TrackStrategy;)Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;
    .registers 2

    .line 230
    iput-object p1, p0, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->videoTrackStrategy:Lcom/otaliastudios/transcoder/strategy/TrackStrategy;

    return-object p0
.end method

.method public transcode()Ljava/util/concurrent/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/Future<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 391
    invoke-static {}, Lcom/otaliastudios/transcoder/Transcoder;->getInstance()Lcom/otaliastudios/transcoder/Transcoder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/otaliastudios/transcoder/TranscoderOptions$Builder;->build()Lcom/otaliastudios/transcoder/TranscoderOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/otaliastudios/transcoder/Transcoder;->transcode(Lcom/otaliastudios/transcoder/TranscoderOptions;)Ljava/util/concurrent/Future;

    move-result-object v0

    return-object v0
.end method
