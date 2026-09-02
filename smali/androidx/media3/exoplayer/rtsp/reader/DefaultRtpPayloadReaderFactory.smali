.class public final Landroidx/media3/exoplayer/rtsp/reader/DefaultRtpPayloadReaderFactory;
.super Ljava/lang/Object;
.source "DefaultRtpPayloadReaderFactory.java"

# interfaces
.implements Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader$Factory;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createPayloadReader(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)Landroidx/media3/exoplayer/rtsp/reader/RtpPayloadReader;
    .registers 5

    .line 33
    iget-object v0, p1, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->format:Landroidx/media3/common/Format;

    iget-object v0, v0, Landroidx/media3/common/Format;->sampleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroidx/media3/common/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_120

    goto/16 :goto_c8

    :sswitch_17
    const-string v1, "audio/g711-mlaw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_c8

    :cond_21
    const/16 v2, 0xd

    goto/16 :goto_c8

    :sswitch_25
    const-string v1, "audio/g711-alaw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    goto/16 :goto_c8

    :cond_2f
    const/16 v2, 0xc

    goto/16 :goto_c8

    :sswitch_33
    const-string/jumbo v1, "video/x-vnd.on2.vp9"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3e

    goto/16 :goto_c8

    :cond_3e
    const/16 v2, 0xb

    goto/16 :goto_c8

    :sswitch_42
    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4d

    goto/16 :goto_c8

    :cond_4d
    const/16 v2, 0xa

    goto/16 :goto_c8

    :sswitch_51
    const-string v1, "audio/opus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5b

    goto/16 :goto_c8

    :cond_5b
    const/16 v2, 0x9

    goto/16 :goto_c8

    :sswitch_5f
    const-string v1, "audio/3gpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_69

    goto/16 :goto_c8

    :cond_69
    const/16 v2, 0x8

    goto/16 :goto_c8

    :sswitch_6d
    const-string/jumbo v1, "video/avc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_77

    goto :goto_c8

    :cond_77
    const/4 v2, 0x7

    goto :goto_c8

    :sswitch_79
    const-string/jumbo v1, "video/mp4v-es"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    goto :goto_c8

    :cond_83
    const/4 v2, 0x6

    goto :goto_c8

    :sswitch_85
    const-string v1, "audio/raw"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8e

    goto :goto_c8

    :cond_8e
    const/4 v2, 0x5

    goto :goto_c8

    :sswitch_90
    const-string v1, "audio/ac3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_99

    goto :goto_c8

    :cond_99
    const/4 v2, 0x4

    goto :goto_c8

    :sswitch_9b
    const-string v1, "audio/mp4a-latm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a4

    goto :goto_c8

    :cond_a4
    const/4 v2, 0x3

    goto :goto_c8

    :sswitch_a6
    const-string v1, "audio/amr-wb"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_af

    goto :goto_c8

    :cond_af
    const/4 v2, 0x2

    goto :goto_c8

    :sswitch_b1
    const-string/jumbo v1, "video/hevc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_bb

    goto :goto_c8

    :cond_bb
    const/4 v2, 0x1

    goto :goto_c8

    :sswitch_bd
    const-string/jumbo v1, "video/3gpp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c7

    goto :goto_c8

    :cond_c7
    const/4 v2, 0x0

    :goto_c8
    packed-switch v2, :pswitch_data_15a

    const/4 p1, 0x0

    return-object p1

    .line 62
    :pswitch_cd
    new-instance v0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/rtsp/reader/RtpVp9Reader;-><init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V

    return-object v0

    .line 60
    :pswitch_d3
    new-instance v0, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/rtsp/reader/RtpVp8Reader;-><init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V

    return-object v0

    .line 46
    :pswitch_d9
    new-instance v0, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/rtsp/reader/RtpOpusReader;-><init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V

    return-object v0

    .line 54
    :pswitch_df
    new-instance v0, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/rtsp/reader/RtpH264Reader;-><init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V

    return-object v0

    .line 58
    :pswitch_e5
    new-instance v0, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/rtsp/reader/RtpMpeg4Reader;-><init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V

    return-object v0

    .line 50
    :pswitch_eb
    new-instance v0, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/rtsp/reader/RtpPcmReader;-><init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V

    return-object v0

    .line 35
    :pswitch_f1
    new-instance v0, Landroidx/media3/exoplayer/rtsp/reader/RtpAc3Reader;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/rtsp/reader/RtpAc3Reader;-><init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V

    return-object v0

    .line 37
    :pswitch_f7
    iget-object v0, p1, Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;->mediaEncoding:Ljava/lang/String;

    const-string v1, "MP4A-LATM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_107

    .line 38
    new-instance v0, Landroidx/media3/exoplayer/rtsp/reader/RtpMp4aReader;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/rtsp/reader/RtpMp4aReader;-><init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V

    return-object v0

    .line 40
    :cond_107
    new-instance v0, Landroidx/media3/exoplayer/rtsp/reader/RtpAacReader;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/rtsp/reader/RtpAacReader;-><init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V

    return-object v0

    .line 44
    :pswitch_10d
    new-instance v0, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/rtsp/reader/RtpAmrReader;-><init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V

    return-object v0

    .line 56
    :pswitch_113
    new-instance v0, Landroidx/media3/exoplayer/rtsp/reader/RtpH265Reader;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/rtsp/reader/RtpH265Reader;-><init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V

    return-object v0

    .line 52
    :pswitch_119
    new-instance v0, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;

    invoke-direct {v0, p1}, Landroidx/media3/exoplayer/rtsp/reader/RtpH263Reader;-><init>(Landroidx/media3/exoplayer/rtsp/RtpPayloadFormat;)V

    return-object v0

    nop

    :sswitch_data_120
    .sparse-switch
        -0x63306f58 -> :sswitch_bd
        -0x63185e82 -> :sswitch_b1
        -0x5fc6f775 -> :sswitch_a6
        -0x3313c2e -> :sswitch_9b
        0xb269698 -> :sswitch_90
        0xb26d66f -> :sswitch_85
        0x46cdc642 -> :sswitch_79
        0x4f62373a -> :sswitch_6d
        0x59976a2d -> :sswitch_5f
        0x59b2d2d8 -> :sswitch_51
        0x5f50bed8 -> :sswitch_42
        0x5f50bed9 -> :sswitch_33
        0x71710385 -> :sswitch_25
        0x717677f9 -> :sswitch_17
    .end sparse-switch

    :pswitch_data_15a
    .packed-switch 0x0
        :pswitch_119
        :pswitch_113
        :pswitch_10d
        :pswitch_f7
        :pswitch_f1
        :pswitch_eb
        :pswitch_e5
        :pswitch_df
        :pswitch_10d
        :pswitch_d9
        :pswitch_d3
        :pswitch_cd
        :pswitch_eb
        :pswitch_eb
    .end packed-switch
.end method
