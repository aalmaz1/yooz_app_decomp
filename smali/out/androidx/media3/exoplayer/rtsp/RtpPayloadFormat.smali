.class public final Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;
.super Ljava/lang/Object;
.source "RtpPayloadFormat.java"


# static fields
.field public static final RTP_MEDIA_AC3:Ljava/lang/String; = "AC3"

.field public static final RTP_MEDIA_AMR:Ljava/lang/String; = "AMR"

.field public static final RTP_MEDIA_AMR_WB:Ljava/lang/String; = "AMR-WB"

.field public static final RTP_MEDIA_H263_1998:Ljava/lang/String; = "H263-1998"

.field public static final RTP_MEDIA_H263_2000:Ljava/lang/String; = "H263-2000"

.field public static final RTP_MEDIA_H264:Ljava/lang/String; = "H264"

.field public static final RTP_MEDIA_H265:Ljava/lang/String; = "H265"

.field public static final RTP_MEDIA_MPEG4_GENERIC:Ljava/lang/String; = "MPEG4-GENERIC"

.field public static final RTP_MEDIA_MPEG4_LATM_AUDIO:Ljava/lang/String; = "MP4A-LATM"

.field public static final RTP_MEDIA_MPEG4_VIDEO:Ljava/lang/String; = "MP4V-ES"

.field public static final RTP_MEDIA_OPUS:Ljava/lang/String; = "OPUS"

.field public static final RTP_MEDIA_PCMA:Ljava/lang/String; = "PCMA"

.field public static final RTP_MEDIA_PCMU:Ljava/lang/String; = "PCMU"

.field public static final RTP_MEDIA_PCM_L16:Ljava/lang/String; = "L16"

.field public static final RTP_MEDIA_PCM_L8:Ljava/lang/String; = "L8"

.field public static final RTP_MEDIA_VP8:Ljava/lang/String; = "VP8"

.field public static final RTP_MEDIA_VP9:Ljava/lang/String; = "VP9"


# instance fields
.field public final clockRate:I

.field public final fmtpParameters:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final format:Landroidx/media3/common/Format;

.field public final mediaEncoding:Ljava/lang/String;

.field public final rtpPayloadType:I


# direct methods
.method public constructor <init>(Landroidx/media3/common/Format;IILjava/util/Map;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/media3/common/Format;",
            "II",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput p2, p0, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->rtpPayloadType:I

    .line 174
    iput p3, p0, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->clockRate:I

    .line 175
    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    .line 176
    invoke-static {p4}, Lcom/google/common/collect/ImmutableMap;->copyOf(Ljava/util/Map;)Lcom/google/common/collect/ImmutableMap;

    move-result-object p1

    iput-object p1, p0, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->fmtpParameters:Lcom/google/common/collect/ImmutableMap;

    .line 177
    iput-object p5, p0, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->mediaEncoding:Ljava/lang/String;

    return-void
.end method

.method public static getMimeTypeFromRtpMediaType(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 94
    invoke-static {p0}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_120

    goto/16 :goto_e6

    :sswitch_11
    const-string v1, "H263-2000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_e6

    :cond_1b
    const/16 v2, 0x10

    goto/16 :goto_e6

    :sswitch_1f
    const-string v1, "H263-1998"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_29

    goto/16 :goto_e6

    :cond_29
    const/16 v2, 0xf

    goto/16 :goto_e6

    :sswitch_2d
    const-string v1, "MP4V-ES"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    goto/16 :goto_e6

    :cond_37
    const/16 v2, 0xe

    goto/16 :goto_e6

    :sswitch_3b
    const-string v1, "AMR-WB"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    goto/16 :goto_e6

    :cond_45
    const/16 v2, 0xd

    goto/16 :goto_e6

    :sswitch_49
    const-string v1, "MP4A-LATM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    goto/16 :goto_e6

    :cond_53
    const/16 v2, 0xc

    goto/16 :goto_e6

    :sswitch_57
    const-string v1, "PCMU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_61

    goto/16 :goto_e6

    :cond_61
    const/16 v2, 0xb

    goto/16 :goto_e6

    :sswitch_65
    const-string v1, "PCMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6f

    goto/16 :goto_e6

    :cond_6f
    const/16 v2, 0xa

    goto/16 :goto_e6

    :sswitch_73
    const-string v1, "OPUS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7d

    goto/16 :goto_e6

    :cond_7d
    const/16 v2, 0x9

    goto/16 :goto_e6

    :sswitch_81
    const-string v1, "H265"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8b

    goto/16 :goto_e6

    :cond_8b
    const/16 v2, 0x8

    goto/16 :goto_e6

    :sswitch_8f
    const-string v1, "H264"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_98

    goto :goto_e6

    :cond_98
    const/4 v2, 0x7

    goto :goto_e6

    :sswitch_9a
    const-string v1, "VP9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a3

    goto :goto_e6

    :cond_a3
    const/4 v2, 0x6

    goto :goto_e6

    :sswitch_a5
    const-string v1, "VP8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ae

    goto :goto_e6

    :cond_ae
    const/4 v2, 0x5

    goto :goto_e6

    :sswitch_b0
    const-string v1, "L16"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b9

    goto :goto_e6

    :cond_b9
    const/4 v2, 0x4

    goto :goto_e6

    :sswitch_bb
    const-string v1, "AMR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c4

    goto :goto_e6

    :cond_c4
    const/4 v2, 0x3

    goto :goto_e6

    :sswitch_c6
    const-string v1, "AC3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_cf

    goto :goto_e6

    :cond_cf
    const/4 v2, 0x2

    goto :goto_e6

    :sswitch_d1
    const-string v1, "L8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_da

    goto :goto_e6

    :cond_da
    const/4 v2, 0x1

    goto :goto_e6

    :sswitch_dc
    const-string v1, "MPEG4-GENERIC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e5

    goto :goto_e6

    :cond_e5
    const/4 v2, 0x0

    :goto_e6
    packed-switch v2, :pswitch_data_166

    .line 127
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_ef
    const-string/jumbo p0, "video/3gpp"

    return-object p0

    :pswitch_f3
    const-string/jumbo p0, "video/mp4v-es"

    return-object p0

    :pswitch_f7
    const-string p0, "audio/amr-wb"

    return-object p0

    :pswitch_fa
    const-string p0, "audio/g711-mlaw"

    return-object p0

    :pswitch_fd
    const-string p0, "audio/g711-alaw"

    return-object p0

    :pswitch_100
    const-string p0, "audio/opus"

    return-object p0

    :pswitch_103
    const-string/jumbo p0, "video/hevc"

    return-object p0

    :pswitch_107
    const-string/jumbo p0, "video/avc"

    return-object p0

    :pswitch_10b
    const-string/jumbo p0, "video/x-vnd.on2.vp9"

    return-object p0

    :pswitch_10f
    const-string/jumbo p0, "video/x-vnd.on2.vp8"

    return-object p0

    :pswitch_113
    const-string p0, "audio/3gpp"

    return-object p0

    :pswitch_116
    const-string p0, "audio/ac3"

    return-object p0

    :pswitch_119
    const-string p0, "audio/raw"

    return-object p0

    :pswitch_11c
    const-string p0, "audio/mp4a-latm"

    return-object p0

    nop

    :sswitch_data_120
    .sparse-switch
        -0x7290cac7 -> :sswitch_dc
        0x96c -> :sswitch_d1
        0xfc51 -> :sswitch_c6
        0xfda6 -> :sswitch_bb
        0x12371 -> :sswitch_b0
        0x14cbe -> :sswitch_a5
        0x14cbf -> :sswitch_9a
        0x217d28 -> :sswitch_8f
        0x217d29 -> :sswitch_81
        0x25203f -> :sswitch_73
        0x2562c7 -> :sswitch_65
        0x2562db -> :sswitch_57
        0x3f401eeb -> :sswitch_49
        0x734e0c52 -> :sswitch_3b
        0x74c813f6 -> :sswitch_2d
        0x7f62e82d -> :sswitch_1f
        0x7f6339a4 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_166
    .packed-switch 0x0
        :pswitch_11c
        :pswitch_119
        :pswitch_116
        :pswitch_113
        :pswitch_119
        :pswitch_10f
        :pswitch_10b
        :pswitch_107
        :pswitch_103
        :pswitch_100
        :pswitch_fd
        :pswitch_fa
        :pswitch_11c
        :pswitch_f7
        :pswitch_f3
        :pswitch_ef
        :pswitch_ef
    .end packed-switch
.end method

.method public static getRawPcmEncodingType(Ljava/lang/String;)I
    .registers 3

    const-string v0, "L8"

    .line 134
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_13

    const-string v1, "L16"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    goto :goto_13

    :cond_11
    const/4 v1, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v1, 0x1

    .line 133
    :goto_14
    invoke-static {v1}, Landroidx/media3/common/util/Assertions;->checkArgument(Z)V

    .line 135
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1f

    const/4 p0, 0x3

    goto :goto_21

    :cond_1f
    const/high16 p0, 0x10000000

    :goto_21
    return p0
.end method

.method static isFormatSupported(Landroidx/media3/exoplayer/rtsp/MediaDescription;)Z
    .registers 5

    .line 62
    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription;->rtpMapAttribute:Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;

    iget-object p0, p0, Landroidx/media3/exoplayer/rtsp/MediaDescription$RtpMapAttribute;->mediaEncoding:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/common/base/Ascii;->toUpperCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_f2

    goto/16 :goto_ec

    :sswitch_17
    const-string v0, "H263-2000"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_21

    goto/16 :goto_ec

    :cond_21
    const/16 v3, 0x10

    goto/16 :goto_ec

    :sswitch_25
    const-string v0, "H263-1998"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2f

    goto/16 :goto_ec

    :cond_2f
    const/16 v3, 0xf

    goto/16 :goto_ec

    :sswitch_33
    const-string v0, "MP4V-ES"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3d

    goto/16 :goto_ec

    :cond_3d
    const/16 v3, 0xe

    goto/16 :goto_ec

    :sswitch_41
    const-string v0, "AMR-WB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4b

    goto/16 :goto_ec

    :cond_4b
    const/16 v3, 0xd

    goto/16 :goto_ec

    :sswitch_4f
    const-string v0, "MP4A-LATM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_59

    goto/16 :goto_ec

    :cond_59
    const/16 v3, 0xc

    goto/16 :goto_ec

    :sswitch_5d
    const-string v0, "PCMU"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_67

    goto/16 :goto_ec

    :cond_67
    const/16 v3, 0xb

    goto/16 :goto_ec

    :sswitch_6b
    const-string v0, "PCMA"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_75

    goto/16 :goto_ec

    :cond_75
    const/16 v3, 0xa

    goto/16 :goto_ec

    :sswitch_79
    const-string v0, "OPUS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_83

    goto/16 :goto_ec

    :cond_83
    const/16 v3, 0x9

    goto/16 :goto_ec

    :sswitch_87
    const-string v0, "H265"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_91

    goto/16 :goto_ec

    :cond_91
    const/16 v3, 0x8

    goto/16 :goto_ec

    :sswitch_95
    const-string v0, "H264"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9e

    goto :goto_ec

    :cond_9e
    const/4 v3, 0x7

    goto :goto_ec

    :sswitch_a0
    const-string v0, "VP9"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a9

    goto :goto_ec

    :cond_a9
    const/4 v3, 0x6

    goto :goto_ec

    :sswitch_ab
    const-string v0, "VP8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b4

    goto :goto_ec

    :cond_b4
    const/4 v3, 0x5

    goto :goto_ec

    :sswitch_b6
    const-string v0, "L16"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_bf

    goto :goto_ec

    :cond_bf
    const/4 v3, 0x4

    goto :goto_ec

    :sswitch_c1
    const-string v0, "AMR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_ca

    goto :goto_ec

    :cond_ca
    const/4 v3, 0x3

    goto :goto_ec

    :sswitch_cc
    const-string v0, "AC3"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d5

    goto :goto_ec

    :cond_d5
    const/4 v3, 0x2

    goto :goto_ec

    :sswitch_d7
    const-string v0, "L8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e0

    goto :goto_ec

    :cond_e0
    move v3, v1

    goto :goto_ec

    :sswitch_e2
    const-string v0, "MPEG4-GENERIC"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_eb

    goto :goto_ec

    :cond_eb
    move v3, v2

    :goto_ec
    packed-switch v3, :pswitch_data_138

    return v2

    :pswitch_f0
    return v1

    nop

    :sswitch_data_f2
    .sparse-switch
        -0x7290cac7 -> :sswitch_e2
        0x96c -> :sswitch_d7
        0xfc51 -> :sswitch_cc
        0xfda6 -> :sswitch_c1
        0x12371 -> :sswitch_b6
        0x14cbe -> :sswitch_ab
        0x14cbf -> :sswitch_a0
        0x217d28 -> :sswitch_95
        0x217d29 -> :sswitch_87
        0x25203f -> :sswitch_79
        0x2562c7 -> :sswitch_6b
        0x2562db -> :sswitch_5d
        0x3f401eeb -> :sswitch_4f
        0x734e0c52 -> :sswitch_41
        0x74c813f6 -> :sswitch_33
        0x7f62e82d -> :sswitch_25
        0x7f6339a4 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_138
    .packed-switch 0x0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
        :pswitch_f0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    :cond_4
    const/4 v1, 0x0

    if-eqz p1, :cond_41

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_12

    goto :goto_41

    .line 188
    :cond_12
    check-cast p1, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;

    .line 189
    iget v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->rtpPayloadType:I

    iget v3, p1, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->rtpPayloadType:I

    if-ne v2, v3, :cond_3f

    iget v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->clockRate:I

    iget v3, p1, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->clockRate:I

    if-ne v2, v3, :cond_3f

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    .line 191
    invoke-virtual {v2, v3}, Landroidx/media3/common/Format;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->fmtpParameters:Lcom/google/common/collect/ImmutableMap;

    iget-object v3, p1, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->fmtpParameters:Lcom/google/common/collect/ImmutableMap;

    .line 192
    invoke-virtual {v2, v3}, Lcom/google/common/collect/ImmutableMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3f

    iget-object v2, p0, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->mediaEncoding:Ljava/lang/String;

    iget-object p1, p1, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->mediaEncoding:Ljava/lang/String;

    .line 193
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3f

    goto :goto_40

    :cond_3f
    move v0, v1

    :goto_40
    return v0

    :cond_41
    :goto_41
    return v1
.end method

.method public hashCode()I
    .registers 3

    const/16 v0, 0xd9

    .line 199
    iget v1, p0, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->rtpPayloadType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 200
    iget v1, p0, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->clockRate:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 201
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    invoke-virtual {v1}, Landroidx/media3/common/Format;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 202
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->fmtpParameters:Lcom/google/common/collect/ImmutableMap;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMap;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 203
    iget-object v1, p0, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->mediaEncoding:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
