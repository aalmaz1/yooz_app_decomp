.class public Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;
.super Ljava/lang/Object;
.source "DefaultAudioStrategy.java"

# interfaces
.implements Lcom/otaliastudios/transcoder/strategy/TrackStrategy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;,
        Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;
    }
.end annotation


# static fields
.field public static final BITRATE_UNKNOWN:J = -0x8000000000000000L

.field public static final CHANNELS_AS_INPUT:I = -0x1

.field public static final SAMPLE_RATE_AS_INPUT:I = -0x1


# instance fields
.field private options:Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;


# direct methods
.method public constructor <init>(Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;)V
    .registers 2

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;

    return-void
.end method

.method public static builder()Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;
    .registers 1

    .line 47
    new-instance v0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;

    invoke-direct {v0}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Builder;-><init>()V

    return-object v0
.end method

.method private getInputChannelCount(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;)I"
        }
    .end annotation

    .line 152
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFormat;

    const-string v2, "channel-count"

    .line 153
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_5

    :cond_1c
    return v0
.end method

.method private getInputSampleRate(Ljava/util/List;)I
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;)I"
        }
    .end annotation

    .line 160
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const v0, 0x7fffffff

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaFormat;

    const-string v2, "sample-rate"

    .line 161
    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_7

    :cond_1e
    return v0
.end method


# virtual methods
.method public createOutputFormat(Ljava/util/List;Landroid/media/MediaFormat;)Lcom/otaliastudios/transcoder/common/TrackStatus;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/MediaFormat;",
            ">;",
            "Landroid/media/MediaFormat;",
            ")",
            "Lcom/otaliastudios/transcoder/common/TrackStatus;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;->access$100(Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_e

    .line 118
    invoke-direct {p0, p1}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;->getInputChannelCount(Ljava/util/List;)I

    move-result v0

    goto :goto_14

    .line 119
    :cond_e
    iget-object v0, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;

    invoke-static {v0}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;->access$100(Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;)I

    move-result v0

    .line 120
    :goto_14
    iget-object v2, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;

    invoke-static {v2}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;->access$200(Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;)I

    move-result v2

    if-ne v2, v1, :cond_21

    .line 121
    invoke-direct {p0, p1}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;->getInputSampleRate(Ljava/util/List;)I

    move-result v2

    goto :goto_27

    .line 122
    :cond_21
    iget-object v2, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;

    invoke-static {v2}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;->access$200(Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;)I

    move-result v2

    .line 124
    :goto_27
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const-wide/high16 v5, -0x8000000000000000L

    const-string v7, "bitrate"

    if-ne v3, v4, :cond_65

    iget-object v3, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;

    .line 125
    invoke-static {v3}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;->access$100(Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;)I

    move-result v3

    if-ne v3, v1, :cond_65

    iget-object v3, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;

    .line 126
    invoke-static {v3}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;->access$200(Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;)I

    move-result v3

    if-ne v3, v1, :cond_65

    iget-object v1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;

    .line 127
    invoke-static {v1}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;->access$400(Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;)J

    move-result-wide v3

    cmp-long v1, v3, v5

    if-nez v1, :cond_65

    const/4 v1, 0x0

    .line 128
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/MediaFormat;

    invoke-virtual {v3, v7}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_65

    .line 131
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaFormat;

    invoke-virtual {p1, v7}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    int-to-long v3, p1

    goto :goto_7a

    .line 135
    :cond_65
    iget-object p1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;

    invoke-static {p1}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;->access$400(Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;)J

    move-result-wide v3

    cmp-long p1, v3, v5

    if-nez p1, :cond_74

    .line 136
    invoke-static {v0, v2}, Lcom/otaliastudios/transcoder/internal/utils/BitRates;->estimateAudioBitRate(II)J

    move-result-wide v3

    goto :goto_7a

    .line 137
    :cond_74
    iget-object p1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;

    invoke-static {p1}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;->access$400(Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;)J

    move-result-wide v3

    .line 139
    :goto_7a
    iget-object p1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;

    invoke-static {p1}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;->access$300(Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "mime"

    invoke-virtual {p2, v1, p1}, Landroid/media/MediaFormat;->setString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "sample-rate"

    .line 140
    invoke-virtual {p2, p1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string p1, "channel-count"

    .line 141
    invoke-virtual {p2, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    long-to-int p1, v3

    .line 142
    invoke-virtual {p2, v7, p1}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 143
    iget-object p1, p0, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy;->options:Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;

    invoke-static {p1}, Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;->access$300(Lcom/otaliastudios/transcoder/strategy/DefaultAudioStrategy$Options;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "audio/mp4a-latm"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_a7

    const-string p1, "aac-profile"

    const/4 v0, 0x2

    .line 144
    invoke-virtual {p2, p1, v0}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    .line 147
    :cond_a7
    sget-object p1, Lcom/otaliastudios/transcoder/common/TrackStatus;->COMPRESSING:Lcom/otaliastudios/transcoder/common/TrackStatus;

    return-object p1
.end method
