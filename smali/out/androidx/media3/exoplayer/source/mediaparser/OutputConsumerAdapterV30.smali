.class public final Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;
.super Ljava/lang/Object;
.source "OutputConsumerAdapterV30.java"

# interfaces
.implements Landroid/media/MediaParser$OutputConsumer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;,
        Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;
    }
.end annotation


# static fields
.field private static final MEDIA_FORMAT_KEY_CHUNK_INDEX_DURATIONS:Ljava/lang/String; = "chunk-index-long-us-durations"

.field private static final MEDIA_FORMAT_KEY_CHUNK_INDEX_OFFSETS:Ljava/lang/String; = "chunk-index-long-offsets"

.field private static final MEDIA_FORMAT_KEY_CHUNK_INDEX_SIZES:Ljava/lang/String; = "chunk-index-int-sizes"

.field private static final MEDIA_FORMAT_KEY_CHUNK_INDEX_TIMES:Ljava/lang/String; = "chunk-index-long-us-times"

.field private static final MEDIA_FORMAT_KEY_TRACK_TYPE:Ljava/lang/String; = "track-type-string"

.field private static final REGEX_CRYPTO_INFO_PATTERN:Ljava/util/regex/Pattern;

.field private static final SEEK_POINT_PAIR_START:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Landroid/media/MediaParser$SeekPoint;",
            "Landroid/media/MediaParser$SeekPoint;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OConsumerAdapterV30"


# instance fields
.field private containerMimeType:Ljava/lang/String;

.field private dummySeekMap:Landroid/media/MediaParser$SeekMap;

.field private final expectDummySeekMap:Z

.field private extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

.field private lastChunkIndex:Landroidx/media3/extractor/ChunkIndex;

.field private final lastOutputCryptoDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/extractor/TrackOutput$CryptoData;",
            ">;"
        }
    .end annotation
.end field

.field private final lastReceivedCryptoInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/media/MediaCodec$CryptoInfo;",
            ">;"
        }
    .end annotation
.end field

.field private lastSeekMap:Landroid/media/MediaParser$SeekMap;

.field private muxedCaptionFormats:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private primaryTrackIndex:I

.field private final primaryTrackManifestFormat:Landroidx/media3/common/Format;

.field private final primaryTrackType:I

.field private sampleTimestampUpperLimitFilterUs:J

.field private final scratchDataReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;

.field private seekingDisabled:Z

.field private timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

.field private final trackFormats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/common/Format;",
            ">;"
        }
    .end annotation
.end field

.field private final trackOutputs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/media3/extractor/TrackOutput;",
            ">;"
        }
    .end annotation
.end field

.field private tracksEnded:Z

.field private tracksFoundCalled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 85
    sget-object v0, Landroid/media/MediaParser$SeekPoint;->START:Landroid/media/MediaParser$SeekPoint;

    sget-object v1, Landroid/media/MediaParser$SeekPoint;->START:Landroid/media/MediaParser$SeekPoint;

    .line 86
    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->SEEK_POINT_PAIR_START:Landroid/util/Pair;

    const-string v0, "pattern \\(encrypt: (\\d+), skip: (\\d+)\\)"

    .line 94
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->REGEX_CRYPTO_INFO_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, -0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 124
    invoke-direct {p0, v2, v0, v1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;-><init>(Landroidx/media3/common/Format;IZ)V

    return-void
.end method

.method public constructor <init>(Landroidx/media3/common/Format;IZ)V
    .registers 4

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-boolean p3, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->expectDummySeekMap:Z

    .line 145
    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->primaryTrackManifestFormat:Landroidx/media3/common/Format;

    .line 146
    iput p2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->primaryTrackType:I

    .line 147
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    .line 148
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackFormats:Ljava/util/ArrayList;

    .line 149
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastReceivedCryptoInfos:Ljava/util/ArrayList;

    .line 150
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastOutputCryptoDatas:Ljava/util/ArrayList;

    .line 151
    new-instance p1, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;-><init>(Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$1;)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->scratchDataReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;

    .line 152
    new-instance p1, Landroidx/media3/extractor/NoOpExtractorOutput;

    invoke-direct {p1}, Landroidx/media3/extractor/NoOpExtractorOutput;-><init>()V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 153
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->sampleTimestampUpperLimitFilterUs:J

    .line 154
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->muxedCaptionFormats:Ljava/util/List;

    return-void
.end method

.method private ensureSpaceForTrackIndex(I)V
    .registers 5

    .line 373
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_6
    if-gt v0, p1, :cond_20

    .line 374
    iget-object v1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 375
    iget-object v1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackFormats:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    iget-object v1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastReceivedCryptoInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 377
    iget-object v1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastOutputCryptoDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_20
    return-void
.end method

.method private static getFlag(Landroid/media/MediaFormat;Ljava/lang/String;I)I
    .registers 4

    const/4 v0, 0x0

    .line 565
    invoke-virtual {p0, p1, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_9

    :cond_8
    move p2, v0

    :goto_9
    return p2
.end method

.method private static getInitializationData(Landroid/media/MediaFormat;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/media/MediaFormat;",
            ")",
            "Ljava/util/List<",
            "[B>;"
        }
    .end annotation

    .line 569
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 572
    :goto_6
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "csd-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    if-nez v1, :cond_1e

    return-object v0

    .line 576
    :cond_1e
    invoke-static {v1}, Landroidx/media3/common/util/MediaFormatUtil;->getArray(Ljava/nio/ByteBuffer;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v1, v3

    goto :goto_6
.end method

.method private static getMimeType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 582
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_fc

    goto/16 :goto_b8

    :sswitch_d
    const-string v0, "android.media.mediaparser.FlvParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_b8

    :cond_17
    const/16 v1, 0xd

    goto/16 :goto_b8

    :sswitch_1b
    const-string v0, "android.media.mediaparser.Mp3Parser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto/16 :goto_b8

    :cond_25
    const/16 v1, 0xc

    goto/16 :goto_b8

    :sswitch_29
    const-string v0, "android.media.mediaparser.Ac4Parser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    goto/16 :goto_b8

    :cond_33
    const/16 v1, 0xb

    goto/16 :goto_b8

    :sswitch_37
    const-string v0, "android.media.mediaparser.MatroskaParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_41

    goto/16 :goto_b8

    :cond_41
    const/16 v1, 0xa

    goto/16 :goto_b8

    :sswitch_45
    const-string v0, "android.media.mediaparser.FlacParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4f

    goto/16 :goto_b8

    :cond_4f
    const/16 v1, 0x9

    goto/16 :goto_b8

    :sswitch_53
    const-string v0, "android.media.mediaparser.AmrParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5d

    goto/16 :goto_b8

    :cond_5d
    const/16 v1, 0x8

    goto/16 :goto_b8

    :sswitch_61
    const-string v0, "android.media.mediaparser.Ac3Parser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6a

    goto :goto_b8

    :cond_6a
    const/4 v1, 0x7

    goto :goto_b8

    :sswitch_6c
    const-string v0, "android.media.mediaparser.FragmentedMp4Parser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_75

    goto :goto_b8

    :cond_75
    const/4 v1, 0x6

    goto :goto_b8

    :sswitch_77
    const-string v0, "android.media.mediaparser.PsParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_80

    goto :goto_b8

    :cond_80
    const/4 v1, 0x5

    goto :goto_b8

    :sswitch_82
    const-string v0, "android.media.mediaparser.WavParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto :goto_b8

    :cond_8b
    const/4 v1, 0x4

    goto :goto_b8

    :sswitch_8d
    const-string v0, "android.media.mediaparser.AdtsParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_96

    goto :goto_b8

    :cond_96
    const/4 v1, 0x3

    goto :goto_b8

    :sswitch_98
    const-string v0, "android.media.mediaparser.TsParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a1

    goto :goto_b8

    :cond_a1
    const/4 v1, 0x2

    goto :goto_b8

    :sswitch_a3
    const-string v0, "android.media.mediaparser.OggParser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ac

    goto :goto_b8

    :cond_ac
    const/4 v1, 0x1

    goto :goto_b8

    :sswitch_ae
    const-string v0, "android.media.mediaparser.Mp4Parser"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b7

    goto :goto_b8

    :cond_b7
    const/4 v1, 0x0

    :goto_b8
    packed-switch v1, :pswitch_data_136

    .line 611
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Illegal parser name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_d0
    const-string/jumbo p0, "video/x-flv"

    return-object p0

    :pswitch_d4
    const-string p0, "audio/mpeg"

    return-object p0

    :pswitch_d7
    const-string p0, "audio/ac4"

    return-object p0

    :pswitch_da
    const-string/jumbo p0, "video/webm"

    return-object p0

    :pswitch_de
    const-string p0, "audio/flac"

    return-object p0

    :pswitch_e1
    const-string p0, "audio/amr"

    return-object p0

    :pswitch_e4
    const-string p0, "audio/ac3"

    return-object p0

    :pswitch_e7
    const-string/jumbo p0, "video/mp2p"

    return-object p0

    :pswitch_eb
    const-string p0, "audio/raw"

    return-object p0

    :pswitch_ee
    const-string p0, "audio/mp4a-latm"

    return-object p0

    :pswitch_f1
    const-string/jumbo p0, "video/mp2t"

    return-object p0

    :pswitch_f5
    const-string p0, "audio/ogg"

    return-object p0

    :pswitch_f8
    const-string/jumbo p0, "video/mp4"

    return-object p0

    :sswitch_data_fc
    .sparse-switch
        -0x7afe9a64 -> :sswitch_ae
        -0x6f828246 -> :sswitch_a3
        -0x5d5dc92e -> :sswitch_98
        -0x35a8150b -> :sswitch_8d
        -0x23289ea9 -> :sswitch_82
        0x31d8356 -> :sswitch_77
        0x6f5c06d -> :sswitch_6c
        0x1676aefc -> :sswitch_61
        0x29eb04b1 -> :sswitch_53
        0x2dd08ffb -> :sswitch_45
        0x39936bdf -> :sswitch_37
        0x4b5cea3d -> :sswitch_29
        0x501b2a5b -> :sswitch_1b
        0x7af8efdb -> :sswitch_d
    .end sparse-switch

    :pswitch_data_136
    .packed-switch 0x0
        :pswitch_f8
        :pswitch_f5
        :pswitch_f1
        :pswitch_ee
        :pswitch_eb
        :pswitch_e7
        :pswitch_f8
        :pswitch_e4
        :pswitch_e1
        :pswitch_de
        :pswitch_da
        :pswitch_d7
        :pswitch_d4
        :pswitch_d0
    .end packed-switch
.end method

.method private static getSelectionFlags(Landroid/media/MediaFormat;)I
    .registers 4

    const-string v0, "is-autoselect"

    const/4 v1, 0x4

    .line 547
    invoke-static {p0, v0, v1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->getFlag(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v0

    or-int/lit8 v0, v0, 0x0

    const-string v1, "is-default"

    const/4 v2, 0x1

    .line 552
    invoke-static {p0, v1, v2}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->getFlag(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result v1

    or-int/2addr v0, v1

    const-string v1, "is-forced-subtitle"

    const/4 v2, 0x2

    .line 557
    invoke-static {p0, v1, v2}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->getFlag(Landroid/media/MediaFormat;Ljava/lang/String;I)I

    move-result p0

    or-int/2addr p0, v0

    return p0
.end method

.method private maybeEndTracks()V
    .registers 4

    .line 421
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->tracksFoundCalled:Z

    if-eqz v0, :cond_26

    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->tracksEnded:Z

    if-eqz v0, :cond_9

    goto :goto_26

    .line 424
    :cond_9
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_10
    if-ge v1, v0, :cond_1e

    .line 426
    iget-object v2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_1b

    return-void

    :cond_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 430
    :cond_1e
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0}, Landroidx/media3/extractor/ExtractorOutput;->endTracks()V

    const/4 v0, 0x1

    .line 431
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->tracksEnded:Z

    :cond_26
    :goto_26
    return-void
.end method

.method private maybeObtainChunkIndex(Landroid/media/MediaFormat;)Z
    .registers 9

    const-string v0, "chunk-index-int-sizes"

    .line 345
    invoke-virtual {p1, v0}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 p1, 0x0

    return p1

    .line 349
    :cond_a
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    const-string v1, "chunk-index-long-offsets"

    .line 351
    invoke-virtual {p1, v1}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 352
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v1

    const-string v2, "chunk-index-long-us-durations"

    .line 354
    invoke-virtual {p1, v2}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    .line 355
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object v2

    const-string v3, "chunk-index-long-us-times"

    .line 357
    invoke-virtual {p1, v3}, Landroid/media/MediaFormat;->getByteBuffer(Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    .line 358
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asLongBuffer()Ljava/nio/LongBuffer;

    move-result-object p1

    .line 359
    invoke-virtual {v0}, Ljava/nio/IntBuffer;->remaining()I

    move-result v3

    new-array v3, v3, [I

    .line 360
    invoke-virtual {v1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v4

    new-array v4, v4, [J

    .line 361
    invoke-virtual {v2}, Ljava/nio/LongBuffer;->remaining()I

    move-result v5

    new-array v5, v5, [J

    .line 362
    invoke-virtual {p1}, Ljava/nio/LongBuffer;->remaining()I

    move-result v6

    new-array v6, v6, [J

    .line 363
    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->get([I)Ljava/nio/IntBuffer;

    .line 364
    invoke-virtual {v1, v4}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 365
    invoke-virtual {v2, v5}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 366
    invoke-virtual {p1, v6}, Ljava/nio/LongBuffer;->get([J)Ljava/nio/LongBuffer;

    .line 367
    new-instance p1, Landroidx/media3/extractor/ChunkIndex;

    invoke-direct {p1, v3, v4, v5, v6}, Landroidx/media3/extractor/ChunkIndex;-><init>([I[J[J[J)V

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastChunkIndex:Landroidx/media3/extractor/ChunkIndex;

    .line 368
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v0, p1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    const/4 p1, 0x1

    return p1
.end method

.method private toExoPlayerCryptoData(ILandroid/media/MediaCodec$CryptoInfo;)Landroidx/media3/extractor/TrackOutput$CryptoData;
    .registers 8

    if-nez p2, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 387
    :cond_4
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastReceivedCryptoInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaCodec$CryptoInfo;

    if-ne v0, p2, :cond_1d

    .line 392
    iget-object p2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastOutputCryptoDatas:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/extractor/TrackOutput$CryptoData;

    invoke-static {p1}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/media3/extractor/TrackOutput$CryptoData;

    goto :goto_74

    .line 401
    :cond_1d
    :try_start_1d
    sget-object v0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->REGEX_CRYPTO_INFO_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {p2}, Landroid/media/MediaCodec$CryptoInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 402
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    const/4 v1, 0x1

    .line 403
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    .line 404
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/media3/common/util/Util;->castNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_48
    .catch Ljava/lang/RuntimeException; {:try_start_1d .. :try_end_48} :catch_49

    goto :goto_60

    :catch_49
    move-exception v0

    .line 407
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unexpected error while parsing CryptoInfo: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OConsumerAdapterV30"

    invoke-static {v2, v1, v0}, Landroidx/media3/common/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    move v0, v1

    .line 412
    :goto_60
    new-instance v2, Landroidx/media3/extractor/TrackOutput$CryptoData;

    iget v3, p2, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    iget-object v4, p2, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    invoke-direct {v2, v3, v4, v1, v0}, Landroidx/media3/extractor/TrackOutput$CryptoData;-><init>(I[BII)V

    .line 414
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastReceivedCryptoInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 415
    iget-object p2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastOutputCryptoDatas:Ljava/util/ArrayList;

    invoke-virtual {p2, p1, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-object p1, v2

    :goto_74
    return-object p1
.end method

.method private static toExoPlayerDrmInitData(Ljava/lang/String;Landroid/media/DrmInitData;)Landroidx/media3/common/DrmInitData;
    .registers 9

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return-object p0

    .line 535
    :cond_4
    invoke-virtual {p1}, Landroid/media/DrmInitData;->getSchemeInitDataCount()I

    move-result v0

    new-array v1, v0, [Landroidx/media3/common/DrmInitData$SchemeData;

    const/4 v2, 0x0

    :goto_b
    if-ge v2, v0, :cond_21

    .line 537
    invoke-virtual {p1, v2}, Landroid/media/DrmInitData;->getSchemeInitDataAt(I)Landroid/media/DrmInitData$SchemeInitData;

    move-result-object v3

    .line 538
    new-instance v4, Landroidx/media3/common/DrmInitData$SchemeData;

    iget-object v5, v3, Landroid/media/DrmInitData$SchemeInitData;->uuid:Ljava/util/UUID;

    iget-object v6, v3, Landroid/media/DrmInitData$SchemeInitData;->mimeType:Ljava/lang/String;

    iget-object v3, v3, Landroid/media/DrmInitData$SchemeInitData;->data:[B

    invoke-direct {v4, v5, v6, v3}, Landroidx/media3/common/DrmInitData$SchemeData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_b

    .line 541
    :cond_21
    new-instance p1, Landroidx/media3/common/DrmInitData;

    invoke-direct {p1, p0, v1}, Landroidx/media3/common/DrmInitData;-><init>(Ljava/lang/String;[Landroidx/media3/common/DrmInitData$SchemeData;)V

    return-object p1
.end method

.method private toExoPlayerFormat(Landroid/media/MediaParser$TrackData;)Landroidx/media3/common/Format;
    .registers 10

    .line 460
    iget-object v0, p1, Landroid/media/MediaParser$TrackData;->mediaFormat:Landroid/media/MediaFormat;

    const-string v1, "mime"

    .line 461
    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "caption-service-number"

    const/4 v3, -0x1

    .line 463
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v2

    .line 465
    new-instance v4, Landroidx/media3/common/Format$Builder;

    invoke-direct {v4}, Landroidx/media3/common/Format$Builder;-><init>()V

    const-string v5, "crypto-mode-fourcc"

    .line 469
    invoke-virtual {v0, v5}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object p1, p1, Landroid/media/MediaParser$TrackData;->drmInitData:Landroid/media/DrmInitData;

    .line 468
    invoke-static {v5, p1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->toExoPlayerDrmInitData(Ljava/lang/String;Landroid/media/DrmInitData;)Landroidx/media3/common/DrmInitData;

    move-result-object p1

    .line 467
    invoke-virtual {v4, p1}, Landroidx/media3/common/Format$Builder;->setDrmInitData(Landroidx/media3/common/DrmInitData;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    iget-object v4, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->containerMimeType:Ljava/lang/String;

    .line 470
    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setContainerMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "bitrate"

    .line 472
    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v4

    .line 471
    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setPeakBitrate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "channel-count"

    .line 475
    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v4

    .line 474
    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setChannelCount(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 477
    invoke-static {v0}, Landroidx/media3/common/util/MediaFormatUtil;->getColorInfo(Landroid/media/MediaFormat;)Landroidx/media3/common/ColorInfo;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setColorInfo(Landroidx/media3/common/ColorInfo;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 478
    invoke-virtual {p1, v1}, Landroidx/media3/common/Format$Builder;->setSampleMimeType(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "codecs-string"

    .line 479
    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setCodecs(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "frame-rate"

    const/high16 v5, -0x40800000    # -1.0f

    .line 481
    invoke-virtual {v0, v4, v5}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;F)F

    move-result v4

    .line 480
    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setFrameRate(F)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string/jumbo v4, "width"

    .line 484
    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v4

    .line 483
    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setWidth(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "height"

    .line 486
    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v4

    .line 485
    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setHeight(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 487
    invoke-static {v0}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->getInitializationData(Landroid/media/MediaFormat;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setInitializationData(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "language"

    .line 488
    invoke-virtual {v0, v4}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "max-input-size"

    .line 490
    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v4

    .line 489
    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setMaxInputSize(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "exo-pcm-encoding"

    .line 493
    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v4

    .line 492
    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setPcmEncoding(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "rotation-degrees"

    const/4 v5, 0x0

    .line 495
    invoke-virtual {v0, v4, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v4

    .line 494
    invoke-virtual {p1, v4}, Landroidx/media3/common/Format$Builder;->setRotationDegrees(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v4, "sample-rate"

    .line 497
    invoke-virtual {v0, v4, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v3

    .line 496
    invoke-virtual {p1, v3}, Landroidx/media3/common/Format$Builder;->setSampleRate(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 499
    invoke-static {v0}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->getSelectionFlags(Landroid/media/MediaFormat;)I

    move-result v3

    invoke-virtual {p1, v3}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v3, "encoder-delay"

    .line 501
    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v3

    .line 500
    invoke-virtual {p1, v3}, Landroidx/media3/common/Format$Builder;->setEncoderDelay(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v3, "encoder-padding"

    .line 503
    invoke-virtual {v0, v3, v5}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v3

    .line 502
    invoke-virtual {p1, v3}, Landroidx/media3/common/Format$Builder;->setEncoderPadding(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v3, "pixel-width-height-ratio-float"

    const/high16 v4, 0x3f800000    # 1.0f

    .line 505
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;F)F

    move-result v3

    .line 504
    invoke-virtual {p1, v3}, Landroidx/media3/common/Format$Builder;->setPixelWidthHeightRatio(F)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    const-string v3, "subsample-offset-us-long"

    const-wide v6, 0x7fffffffffffffffL

    .line 507
    invoke-virtual {v0, v3, v6, v7}, Landroid/media/MediaFormat;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    .line 506
    invoke-virtual {p1, v3, v4}, Landroidx/media3/common/Format$Builder;->setSubsampleOffsetUs(J)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 509
    invoke-virtual {p1, v2}, Landroidx/media3/common/Format$Builder;->setAccessibilityChannel(I)Landroidx/media3/common/Format$Builder;

    move-result-object p1

    .line 510
    :goto_eb
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->muxedCaptionFormats:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v5, v0, :cond_12e

    .line 511
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->muxedCaptionFormats:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/common/Format;

    .line 512
    iget-object v3, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v3, v1}, Landroidx/media3/common/util/Util;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12b

    iget v3, v0, Landroidx/media3/common/Format;->accessibilityChannel:I

    if-ne v3, v2, :cond_12b

    .line 516
    iget-object v1, v0, Landroidx/media3/common/Format;->language:Ljava/lang/String;

    .line 517
    invoke-virtual {p1, v1}, Landroidx/media3/common/Format$Builder;->setLanguage(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/common/Format;->roleFlags:I

    .line 518
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setRoleFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget v2, v0, Landroidx/media3/common/Format;->selectionFlags:I

    .line 519
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setSelectionFlags(I)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/common/Format;->label:Ljava/lang/String;

    .line 520
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setLabel(Ljava/lang/String;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v2, v0, Landroidx/media3/common/Format;->labels:Ljava/util/List;

    .line 521
    invoke-virtual {v1, v2}, Landroidx/media3/common/Format$Builder;->setLabels(Ljava/util/List;)Landroidx/media3/common/Format$Builder;

    move-result-object v1

    iget-object v0, v0, Landroidx/media3/common/Format;->metadata:Landroidx/media3/common/Metadata;

    .line 522
    invoke-virtual {v1, v0}, Landroidx/media3/common/Format$Builder;->setMetadata(Landroidx/media3/common/Metadata;)Landroidx/media3/common/Format$Builder;

    goto :goto_12e

    :cond_12b
    add-int/lit8 v5, v5, 0x1

    goto :goto_eb

    .line 526
    :cond_12e
    :goto_12e
    invoke-virtual {p1}, Landroidx/media3/common/Format$Builder;->build()Landroidx/media3/common/Format;

    move-result-object p1

    return-object p1
.end method

.method private static toTrackTypeConstant(Ljava/lang/String;)I
    .registers 6

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 438
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_5a

    :goto_11
    move v1, v0

    goto :goto_4b

    :sswitch_13
    const-string/jumbo v1, "video"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_11

    :cond_1d
    const/4 v1, 0x4

    goto :goto_4b

    :sswitch_1f
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    goto :goto_11

    :cond_28
    move v1, v2

    goto :goto_4b

    :sswitch_2a
    const-string v1, "text"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_33

    goto :goto_11

    :cond_33
    move v1, v3

    goto :goto_4b

    :sswitch_35
    const-string/jumbo v1, "unknown"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3f

    goto :goto_11

    :cond_3f
    move v1, v4

    goto :goto_4b

    :sswitch_41
    const-string v1, "metadata"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4a

    goto :goto_11

    :cond_4a
    const/4 v1, 0x0

    :goto_4b
    packed-switch v1, :pswitch_data_70

    .line 451
    invoke-static {p0}, Landroidx/media3/common/MimeTypes;->getTrackType(Ljava/lang/String;)I

    move-result p0

    return p0

    :pswitch_53
    return v3

    :pswitch_54
    return v4

    :pswitch_55
    return v2

    :pswitch_56
    return v0

    :pswitch_57
    const/4 p0, 0x5

    return p0

    nop

    :sswitch_data_5a
    .sparse-switch
        -0x1ad284d1 -> :sswitch_41
        -0x10fa53b6 -> :sswitch_35
        0x36452d -> :sswitch_2a
        0x58d9bd6 -> :sswitch_1f
        0x6b0147b -> :sswitch_13
    .end sparse-switch

    :pswitch_data_70
    .packed-switch 0x0
        :pswitch_57
        :pswitch_56
        :pswitch_55
        :pswitch_54
        :pswitch_53
    .end packed-switch
.end method


# virtual methods
.method public disableSeeking()V
    .registers 2

    const/4 v0, 0x1

    .line 189
    iput-boolean v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->seekingDisabled:Z

    return-void
.end method

.method public getChunkIndex()Landroidx/media3/extractor/ChunkIndex;
    .registers 2

    .line 207
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastChunkIndex:Landroidx/media3/extractor/ChunkIndex;

    return-object v0
.end method

.method public getDummySeekMap()Landroid/media/MediaParser$SeekMap;
    .registers 2

    .line 201
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->dummySeekMap:Landroid/media/MediaParser$SeekMap;

    return-object v0
.end method

.method public getSampleFormats()[Landroidx/media3/common/Format;
    .registers 4

    .line 236
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->tracksFoundCalled:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    .line 239
    :cond_6
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackFormats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Landroidx/media3/common/Format;

    const/4 v1, 0x0

    .line 240
    :goto_f
    iget-object v2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackFormats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2a

    .line 241
    iget-object v2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackFormats:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Format;

    invoke-static {v2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/media3/common/Format;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    :cond_2a
    return-object v0
.end method

.method public getSeekPoints(J)Landroid/util/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/Pair<",
            "Landroid/media/MediaParser$SeekPoint;",
            "Landroid/media/MediaParser$SeekPoint;",
            ">;"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastSeekMap:Landroid/media/MediaParser$SeekMap;

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1, p2}, Landroid/media/MediaParser$SeekMap;->getSeekPoints(J)Landroid/util/Pair;

    move-result-object p1

    goto :goto_b

    :cond_9
    sget-object p1, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->SEEK_POINT_PAIR_START:Landroid/util/Pair;

    :goto_b
    return-object p1
.end method

.method public onSampleCompleted(IJIIILandroid/media/MediaCodec$CryptoInfo;)V
    .registers 15

    .line 329
    iget-wide v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->sampleTimestampUpperLimitFilterUs:J

    const-wide v2, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v2, v0, v2

    if-eqz v2, :cond_10

    cmp-long v0, p2, v0

    if-ltz v0, :cond_10

    return-void

    .line 333
    :cond_10
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    if-eqz v0, :cond_18

    .line 334
    invoke-virtual {v0, p2, p3}, Landroidx/media3/common/util/TimestampAdjuster;->adjustSampleTimestamp(J)J

    move-result-wide p2

    :cond_18
    move-wide v1, p2

    .line 336
    iget-object p2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/media3/extractor/TrackOutput;

    invoke-static {p2}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    move-object v0, p2

    check-cast v0, Landroidx/media3/extractor/TrackOutput;

    .line 337
    invoke-direct {p0, p1, p7}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->toExoPlayerCryptoData(ILandroid/media/MediaCodec$CryptoInfo;)Landroidx/media3/extractor/TrackOutput$CryptoData;

    move-result-object v6

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-interface/range {v0 .. v6}, Landroidx/media3/extractor/TrackOutput;->sampleMetadata(JIIILandroidx/media3/extractor/TrackOutput$CryptoData;)V

    return-void
.end method

.method public onSampleDataFound(ILandroid/media/MediaParser$InputReader;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 310
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->ensureSpaceForTrackIndex(I)V

    .line 311
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->scratchDataReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;

    iput-object p2, v0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;->input:Landroid/media/MediaParser$InputReader;

    .line 312
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/TrackOutput;

    if-nez v0, :cond_1d

    .line 314
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v0

    .line 315
    iget-object v1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 317
    :cond_1d
    iget-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->scratchDataReaderAdapter:Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$DataReaderAdapter;

    .line 318
    invoke-interface {p2}, Landroid/media/MediaParser$InputReader;->getLength()J

    move-result-wide v1

    long-to-int p2, v1

    const/4 v1, 0x1

    .line 317
    invoke-interface {v0, p1, p2, v1}, Landroidx/media3/extractor/TrackOutput;->sampleData(Landroidx/media3/common/DataReader;IZ)I

    return-void
.end method

.method public onSeekMapFound(Landroid/media/MediaParser$SeekMap;)V
    .registers 7

    .line 256
    iget-boolean v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->expectDummySeekMap:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->dummySeekMap:Landroid/media/MediaParser$SeekMap;

    if-nez v0, :cond_b

    .line 258
    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->dummySeekMap:Landroid/media/MediaParser$SeekMap;

    goto :goto_33

    .line 260
    :cond_b
    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->lastSeekMap:Landroid/media/MediaParser$SeekMap;

    .line 261
    invoke-virtual {p1}, Landroid/media/MediaParser$SeekMap;->getDurationMicros()J

    move-result-wide v0

    .line 262
    iget-object v2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    .line 263
    iget-boolean v3, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->seekingDisabled:Z

    if-eqz v3, :cond_2a

    .line 264
    new-instance p1, Landroidx/media3/extractor/SeekMap$Unseekable;

    const-wide/32 v3, -0x80000000

    cmp-long v3, v0, v3

    if-eqz v3, :cond_21

    goto :goto_26

    :cond_21
    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 265
    :goto_26
    invoke-direct {p1, v0, v1}, Landroidx/media3/extractor/SeekMap$Unseekable;-><init>(J)V

    goto :goto_30

    .line 266
    :cond_2a
    new-instance v0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30$SeekMapAdapter;-><init>(Landroid/media/MediaParser$SeekMap;)V

    move-object p1, v0

    .line 262
    :goto_30
    invoke-interface {v2, p1}, Landroidx/media3/extractor/ExtractorOutput;->seekMap(Landroidx/media3/extractor/SeekMap;)V

    :goto_33
    return-void
.end method

.method public onTrackCountFound(I)V
    .registers 2

    const/4 p1, 0x1

    .line 250
    iput-boolean p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->tracksFoundCalled:Z

    .line 251
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->maybeEndTracks()V

    return-void
.end method

.method public onTrackDataFound(ILandroid/media/MediaParser$TrackData;)V
    .registers 6

    .line 272
    iget-object v0, p2, Landroid/media/MediaParser$TrackData;->mediaFormat:Landroid/media/MediaFormat;

    invoke-direct {p0, v0}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->maybeObtainChunkIndex(Landroid/media/MediaFormat;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 277
    :cond_9
    invoke-direct {p0, p1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->ensureSpaceForTrackIndex(I)V

    .line 278
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/media3/extractor/TrackOutput;

    if-nez v0, :cond_44

    .line 281
    iget-object v0, p2, Landroid/media/MediaParser$TrackData;->mediaFormat:Landroid/media/MediaFormat;

    const-string/jumbo v1, "track-type-string"

    invoke-virtual {v0, v1}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_23

    move-object v1, v0

    goto :goto_2b

    .line 286
    :cond_23
    iget-object v1, p2, Landroid/media/MediaParser$TrackData;->mediaFormat:Landroid/media/MediaFormat;

    const-string v2, "mime"

    invoke-virtual {v1, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 283
    :goto_2b
    invoke-static {v1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->toTrackTypeConstant(Ljava/lang/String;)I

    move-result v1

    .line 287
    iget v2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->primaryTrackType:I

    if-ne v1, v2, :cond_35

    .line 288
    iput p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->primaryTrackIndex:I

    .line 290
    :cond_35
    iget-object v2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    invoke-interface {v2, p1, v1}, Landroidx/media3/extractor/ExtractorOutput;->track(II)Landroidx/media3/extractor/TrackOutput;

    move-result-object v1

    .line 291
    iget-object v2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackOutputs:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    if-eqz v0, :cond_43

    return-void

    :cond_43
    move-object v0, v1

    .line 298
    :cond_44
    invoke-direct {p0, p2}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->toExoPlayerFormat(Landroid/media/MediaParser$TrackData;)Landroidx/media3/common/Format;

    move-result-object p2

    .line 300
    iget-object v1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->primaryTrackManifestFormat:Landroidx/media3/common/Format;

    if-eqz v1, :cond_55

    iget v2, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->primaryTrackIndex:I

    if-ne p1, v2, :cond_55

    .line 301
    invoke-virtual {p2, v1}, Landroidx/media3/common/Format;->withManifestFormatInfo(Landroidx/media3/common/Format;)Landroidx/media3/common/Format;

    move-result-object v1

    goto :goto_56

    :cond_55
    move-object v1, p2

    .line 299
    :goto_56
    invoke-interface {v0, v1}, Landroidx/media3/extractor/TrackOutput;->format(Landroidx/media3/common/Format;)V

    .line 303
    iget-object v0, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->trackFormats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 304
    invoke-direct {p0}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->maybeEndTracks()V

    return-void
.end method

.method public setExtractorOutput(Landroidx/media3/extractor/ExtractorOutput;)V
    .registers 2

    .line 179
    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->extractorOutput:Landroidx/media3/extractor/ExtractorOutput;

    return-void
.end method

.method public setMuxedCaptionFormats(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/media3/common/Format;",
            ">;)V"
        }
    .end annotation

    .line 184
    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->muxedCaptionFormats:Ljava/util/List;

    return-void
.end method

.method public setSampleTimestampUpperLimitFilterUs(J)V
    .registers 3

    .line 167
    iput-wide p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->sampleTimestampUpperLimitFilterUs:J

    return-void
.end method

.method public setSelectedParserName(Ljava/lang/String;)V
    .registers 2

    .line 227
    invoke-static {p1}, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->containerMimeType:Ljava/lang/String;

    return-void
.end method

.method public setTimestampAdjuster(Landroidx/media3/common/util/TimestampAdjuster;)V
    .registers 2

    .line 172
    iput-object p1, p0, Landroidx/media3/exoplayer/source/mediaparser/OutputConsumerAdapterV30;->timestampAdjuster:Landroidx/media3/common/util/TimestampAdjuster;

    return-void
.end method
