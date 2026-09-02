.class public final Landroidx/media3/extractor/MpegAudioUtil$Header;
.super Ljava/lang/Object;
.source "MpegAudioUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/media3/extractor/MpegAudioUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Header"
.end annotation


# instance fields
.field public bitrate:I

.field public channels:I

.field public frameSize:I

.field public mimeType:Ljava/lang/String;

.field public sampleRate:I

.field public samplesPerFrame:I

.field public version:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/extractor/MpegAudioUtil$Header;)V
    .registers 3

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iget v0, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->version:I

    iput v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->version:I

    .line 57
    iget-object v0, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    iput-object v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 58
    iget v0, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    iput v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    .line 59
    iget v0, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    iput v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    .line 60
    iget v0, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->channels:I

    iput v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->channels:I

    .line 61
    iget v0, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    iput v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    .line 62
    iget p1, p1, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    iput p1, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    return-void
.end method


# virtual methods
.method public setForHeaderData(I)Z
    .registers 10

    .line 75
    invoke-static {p1}, Landroidx/media3/extractor/MpegAudioUtil;->access$000(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    :cond_8
    ushr-int/lit8 v0, p1, 0x13

    const/4 v2, 0x3

    and-int/2addr v0, v2

    const/4 v3, 0x1

    if-ne v0, v3, :cond_10

    return v1

    :cond_10
    ushr-int/lit8 v4, p1, 0x11

    and-int/2addr v4, v2

    if-nez v4, :cond_16

    return v1

    :cond_16
    ushr-int/lit8 v5, p1, 0xc

    const/16 v6, 0xf

    and-int/2addr v5, v6

    if-eqz v5, :cond_ad

    if-ne v5, v6, :cond_21

    goto/16 :goto_ad

    :cond_21
    ushr-int/lit8 v6, p1, 0xa

    and-int/2addr v6, v2

    if-ne v6, v2, :cond_27

    return v1

    .line 100
    :cond_27
    iput v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->version:I

    .line 101
    invoke-static {}, Landroidx/media3/extractor/MpegAudioUtil;->access$100()[Ljava/lang/String;

    move-result-object v1

    rsub-int/lit8 v7, v4, 0x3

    aget-object v1, v1, v7

    iput-object v1, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->mimeType:Ljava/lang/String;

    .line 102
    invoke-static {}, Landroidx/media3/extractor/MpegAudioUtil;->access$200()[I

    move-result-object v1

    aget v1, v1, v6

    iput v1, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_42

    .line 105
    div-int/2addr v1, v6

    iput v1, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    goto :goto_48

    :cond_42
    if-nez v0, :cond_48

    .line 108
    div-int/lit8 v1, v1, 0x4

    iput v1, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    :cond_48
    :goto_48
    ushr-int/lit8 v1, p1, 0x9

    and-int/2addr v1, v3

    .line 111
    invoke-static {v0, v4}, Landroidx/media3/extractor/MpegAudioUtil;->access$300(II)I

    move-result v7

    iput v7, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->samplesPerFrame:I

    if-ne v4, v2, :cond_71

    if-ne v0, v2, :cond_5d

    .line 114
    invoke-static {}, Landroidx/media3/extractor/MpegAudioUtil;->access$400()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_64

    :cond_5d
    invoke-static {}, Landroidx/media3/extractor/MpegAudioUtil;->access$500()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_64
    iput v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    mul-int/lit8 v0, v0, 0xc

    .line 115
    iget v4, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v0, v4

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    goto :goto_a4

    :cond_71
    const/16 v7, 0x90

    if-ne v0, v2, :cond_90

    if-ne v4, v6, :cond_7f

    .line 120
    invoke-static {}, Landroidx/media3/extractor/MpegAudioUtil;->access$600()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    goto :goto_86

    :cond_7f
    invoke-static {}, Landroidx/media3/extractor/MpegAudioUtil;->access$700()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    :goto_86
    iput v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    mul-int/2addr v0, v7

    .line 121
    iget v4, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v0, v4

    add-int/2addr v0, v1

    iput v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    goto :goto_a4

    .line 124
    :cond_90
    invoke-static {}, Landroidx/media3/extractor/MpegAudioUtil;->access$800()[I

    move-result-object v0

    sub-int/2addr v5, v3

    aget v0, v0, v5

    iput v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->bitrate:I

    if-ne v4, v3, :cond_9d

    const/16 v7, 0x48

    :cond_9d
    mul-int/2addr v7, v0

    .line 125
    iget v0, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->sampleRate:I

    div-int/2addr v7, v0

    add-int/2addr v7, v1

    iput v7, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->frameSize:I

    :goto_a4
    shr-int/lit8 p1, p1, 0x6

    and-int/2addr p1, v2

    if-ne p1, v2, :cond_aa

    move v6, v3

    .line 128
    :cond_aa
    iput v6, p0, Landroidx/media3/extractor/MpegAudioUtil$Header;->channels:I

    return v3

    :cond_ad
    :goto_ad
    return v1
.end method
