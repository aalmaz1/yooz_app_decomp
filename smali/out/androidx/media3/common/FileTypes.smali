.class public final Landroidx/media3/common/FileTypes;
.super Ljava/lang/Object;
.source "FileTypes.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/media3/common/FileTypes$Type;
    }
.end annotation


# static fields
.field public static final AC3:I = 0x0

.field public static final AC4:I = 0x1

.field public static final ADTS:I = 0x2

.field public static final AMR:I = 0x3

.field public static final AVI:I = 0x10

.field public static final AVIF:I = 0x15

.field public static final BMP:I = 0x13

.field private static final EXTENSION_AAC:Ljava/lang/String; = ".aac"

.field private static final EXTENSION_AC3:Ljava/lang/String; = ".ac3"

.field private static final EXTENSION_AC4:Ljava/lang/String; = ".ac4"

.field private static final EXTENSION_ADTS:Ljava/lang/String; = ".adts"

.field private static final EXTENSION_AMR:Ljava/lang/String; = ".amr"

.field private static final EXTENSION_AVI:Ljava/lang/String; = ".avi"

.field private static final EXTENSION_AVIF:Ljava/lang/String; = ".avif"

.field private static final EXTENSION_BMP:Ljava/lang/String; = ".bmp"

.field private static final EXTENSION_DIB:Ljava/lang/String; = ".dib"

.field private static final EXTENSION_EC3:Ljava/lang/String; = ".ec3"

.field private static final EXTENSION_FLAC:Ljava/lang/String; = ".flac"

.field private static final EXTENSION_FLV:Ljava/lang/String; = ".flv"

.field private static final EXTENSION_HEIC:Ljava/lang/String; = ".heic"

.field private static final EXTENSION_HEIF:Ljava/lang/String; = ".heif"

.field private static final EXTENSION_JPEG:Ljava/lang/String; = ".jpeg"

.field private static final EXTENSION_JPG:Ljava/lang/String; = ".jpg"

.field private static final EXTENSION_M2P:Ljava/lang/String; = ".m2p"

.field private static final EXTENSION_MID:Ljava/lang/String; = ".mid"

.field private static final EXTENSION_MIDI:Ljava/lang/String; = ".midi"

.field private static final EXTENSION_MP3:Ljava/lang/String; = ".mp3"

.field private static final EXTENSION_MP4:Ljava/lang/String; = ".mp4"

.field private static final EXTENSION_MPEG:Ljava/lang/String; = ".mpeg"

.field private static final EXTENSION_MPG:Ljava/lang/String; = ".mpg"

.field private static final EXTENSION_OPUS:Ljava/lang/String; = ".opus"

.field private static final EXTENSION_PNG:Ljava/lang/String; = ".png"

.field private static final EXTENSION_PREFIX_CMF:Ljava/lang/String; = ".cmf"

.field private static final EXTENSION_PREFIX_M4:Ljava/lang/String; = ".m4"

.field private static final EXTENSION_PREFIX_MK:Ljava/lang/String; = ".mk"

.field private static final EXTENSION_PREFIX_MP4:Ljava/lang/String; = ".mp4"

.field private static final EXTENSION_PREFIX_OG:Ljava/lang/String; = ".og"

.field private static final EXTENSION_PREFIX_TS:Ljava/lang/String; = ".ts"

.field private static final EXTENSION_PS:Ljava/lang/String; = ".ps"

.field private static final EXTENSION_SMF:Ljava/lang/String; = ".smf"

.field private static final EXTENSION_TS:Ljava/lang/String; = ".ts"

.field private static final EXTENSION_VTT:Ljava/lang/String; = ".vtt"

.field private static final EXTENSION_WAV:Ljava/lang/String; = ".wav"

.field private static final EXTENSION_WAVE:Ljava/lang/String; = ".wave"

.field private static final EXTENSION_WEBM:Ljava/lang/String; = ".webm"

.field private static final EXTENSION_WEBP:Ljava/lang/String; = ".webp"

.field private static final EXTENSION_WEBVTT:Ljava/lang/String; = ".webvtt"

.field public static final FLAC:I = 0x4

.field public static final FLV:I = 0x5

.field static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final HEIF:I = 0x14

.field public static final JPEG:I = 0xe

.field public static final MATROSKA:I = 0x6

.field public static final MIDI:I = 0xf

.field public static final MP3:I = 0x7

.field public static final MP4:I = 0x8

.field public static final OGG:I = 0x9

.field public static final PNG:I = 0x11

.field public static final PS:I = 0xa

.field public static final TS:I = 0xb

.field public static final UNKNOWN:I = -0x1

.field public static final WAV:I = 0xc

.field public static final WEBP:I = 0x12

.field public static final WEBVTT:I = 0xd


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 185
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static inferFileTypeFromMimeType(Ljava/lang/String;)I
    .registers 25

    const/4 v0, -0x1

    if-nez p0, :cond_4

    return v0

    .line 205
    :cond_4
    invoke-static/range {p0 .. p0}, Landroidx/media3/common/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v3, 0x15

    const/16 v4, 0x14

    const/16 v5, 0x13

    const/16 v6, 0x12

    const/16 v7, 0x11

    const/16 v8, 0x10

    const/16 v9, 0xf

    const/16 v10, 0xe

    const/16 v11, 0xd

    const/16 v12, 0xc

    const/16 v13, 0xb

    const/16 v14, 0xa

    const/16 v15, 0x9

    const/16 v16, 0x8

    const/16 v17, 0x7

    const/16 v18, 0x6

    const/16 v19, 0x5

    const/16 v20, 0x4

    const/16 v21, 0x3

    const/16 v22, 0x1

    const/16 v23, 0x0

    sparse-switch v2, :sswitch_data_200

    :goto_3c
    move v1, v0

    goto/16 :goto_1e6

    :sswitch_3f
    const-string/jumbo v2, "video/x-matroska"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_49

    goto :goto_3c

    :cond_49
    const/16 v1, 0x1f

    goto/16 :goto_1e6

    :sswitch_4d
    const-string v2, "audio/webm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_56

    goto :goto_3c

    :cond_56
    const/16 v1, 0x1e

    goto/16 :goto_1e6

    :sswitch_5a
    const-string v2, "audio/mpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_63

    goto :goto_3c

    :cond_63
    const/16 v1, 0x1d

    goto/16 :goto_1e6

    :sswitch_67
    const-string v2, "audio/midi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_70

    goto :goto_3c

    :cond_70
    const/16 v1, 0x1c

    goto/16 :goto_1e6

    :sswitch_74
    const-string v2, "audio/flac"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7d

    goto :goto_3c

    :cond_7d
    const/16 v1, 0x1b

    goto/16 :goto_1e6

    :sswitch_81
    const-string v2, "audio/eac3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8a

    goto :goto_3c

    :cond_8a
    const/16 v1, 0x1a

    goto/16 :goto_1e6

    :sswitch_8e
    const-string v2, "audio/3gpp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_97

    goto :goto_3c

    :cond_97
    const/16 v1, 0x19

    goto/16 :goto_1e6

    :sswitch_9b
    const-string/jumbo v2, "video/mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a5

    goto :goto_3c

    :cond_a5
    const/16 v1, 0x18

    goto/16 :goto_1e6

    :sswitch_a9
    const-string v2, "audio/wav"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b2

    goto :goto_3c

    :cond_b2
    const/16 v1, 0x17

    goto/16 :goto_1e6

    :sswitch_b6
    const-string v2, "audio/ogg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c0

    goto/16 :goto_3c

    :cond_c0
    const/16 v1, 0x16

    goto/16 :goto_1e6

    :sswitch_c4
    const-string v2, "audio/mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_ce

    goto/16 :goto_3c

    :cond_ce
    move v1, v3

    goto/16 :goto_1e6

    :sswitch_d1
    const-string v2, "audio/amr"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_db

    goto/16 :goto_3c

    :cond_db
    move v1, v4

    goto/16 :goto_1e6

    :sswitch_de
    const-string v2, "audio/ac4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e8

    goto/16 :goto_3c

    :cond_e8
    move v1, v5

    goto/16 :goto_1e6

    :sswitch_eb
    const-string v2, "audio/ac3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f5

    goto/16 :goto_3c

    :cond_f5
    move v1, v6

    goto/16 :goto_1e6

    :sswitch_f8
    const-string/jumbo v2, "video/x-flv"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_103

    goto/16 :goto_3c

    :cond_103
    move v1, v7

    goto/16 :goto_1e6

    :sswitch_106
    const-string v2, "application/webm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_110

    goto/16 :goto_3c

    :cond_110
    move v1, v8

    goto/16 :goto_1e6

    :sswitch_113
    const-string v2, "audio/x-matroska"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11d

    goto/16 :goto_3c

    :cond_11d
    move v1, v9

    goto/16 :goto_1e6

    :sswitch_120
    const-string v2, "image/png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12a

    goto/16 :goto_3c

    :cond_12a
    move v1, v10

    goto/16 :goto_1e6

    :sswitch_12d
    const-string v2, "image/bmp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_137

    goto/16 :goto_3c

    :cond_137
    move v1, v11

    goto/16 :goto_1e6

    :sswitch_13a
    const-string v2, "text/vtt"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_144

    goto/16 :goto_3c

    :cond_144
    move v1, v12

    goto/16 :goto_1e6

    :sswitch_147
    const-string/jumbo v2, "video/x-msvideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_152

    goto/16 :goto_3c

    :cond_152
    move v1, v13

    goto/16 :goto_1e6

    :sswitch_155
    const-string v2, "application/mp4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_15f

    goto/16 :goto_3c

    :cond_15f
    move v1, v14

    goto/16 :goto_1e6

    :sswitch_162
    const-string v2, "image/webp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16c

    goto/16 :goto_3c

    :cond_16c
    move v1, v15

    goto/16 :goto_1e6

    :sswitch_16f
    const-string v2, "image/jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_179

    goto/16 :goto_3c

    :cond_179
    move/from16 v1, v16

    goto/16 :goto_1e6

    :sswitch_17d
    const-string v2, "image/heif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_187

    goto/16 :goto_3c

    :cond_187
    move/from16 v1, v17

    goto :goto_1e6

    :sswitch_18a
    const-string v2, "image/heic"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_194

    goto/16 :goto_3c

    :cond_194
    move/from16 v1, v18

    goto :goto_1e6

    :sswitch_197
    const-string v2, "image/avif"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1a1

    goto/16 :goto_3c

    :cond_1a1
    move/from16 v1, v19

    goto :goto_1e6

    :sswitch_1a4
    const-string v2, "audio/amr-wb"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1ae

    goto/16 :goto_3c

    :cond_1ae
    move/from16 v1, v20

    goto :goto_1e6

    :sswitch_1b1
    const-string/jumbo v2, "video/webm"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1bc

    goto/16 :goto_3c

    :cond_1bc
    move/from16 v1, v21

    goto :goto_1e6

    :sswitch_1bf
    const-string/jumbo v2, "video/mp2t"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1ca

    goto/16 :goto_3c

    :cond_1ca
    const/4 v1, 0x2

    goto :goto_1e6

    :sswitch_1cc
    const-string/jumbo v2, "video/mp2p"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d7

    goto/16 :goto_3c

    :cond_1d7
    move/from16 v1, v22

    goto :goto_1e6

    :sswitch_1da
    const-string v2, "audio/eac3-joc"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1e4

    goto/16 :goto_3c

    :cond_1e4
    move/from16 v1, v23

    :goto_1e6
    packed-switch v1, :pswitch_data_282

    return v0

    :pswitch_1ea
    return v17

    :pswitch_1eb
    return v9

    :pswitch_1ec
    return v20

    :pswitch_1ed
    return v12

    :pswitch_1ee
    return v15

    :pswitch_1ef
    return v22

    :pswitch_1f0
    return v19

    :pswitch_1f1
    return v7

    :pswitch_1f2
    return v5

    :pswitch_1f3
    return v11

    :pswitch_1f4
    return v8

    :pswitch_1f5
    return v16

    :pswitch_1f6
    return v6

    :pswitch_1f7
    return v10

    :pswitch_1f8
    return v4

    :pswitch_1f9
    return v3

    :pswitch_1fa
    return v21

    :pswitch_1fb
    return v18

    :pswitch_1fc
    return v13

    :pswitch_1fd
    return v14

    :pswitch_1fe
    return v23

    nop

    :sswitch_data_200
    .sparse-switch
        -0x7e929daa -> :sswitch_1da
        -0x6315f78b -> :sswitch_1cc
        -0x6315f787 -> :sswitch_1bf
        -0x63118f53 -> :sswitch_1b1
        -0x5fc6f775 -> :sswitch_1a4
        -0x58abd7ba -> :sswitch_197
        -0x58a8e8f5 -> :sswitch_18a
        -0x58a8e8f2 -> :sswitch_17d
        -0x58a7d764 -> :sswitch_16f
        -0x58a21830 -> :sswitch_162
        -0x4a681e4e -> :sswitch_155
        -0x405dba54 -> :sswitch_147
        -0x3be2f26c -> :sswitch_13a
        -0x3468a12f -> :sswitch_12d
        -0x34686c8b -> :sswitch_120
        -0x17118226 -> :sswitch_113
        -0x2974308 -> :sswitch_106
        0xd45707 -> :sswitch_f8
        0xb269698 -> :sswitch_eb
        0xb269699 -> :sswitch_de
        0xb26980d -> :sswitch_d1
        0xb26c538 -> :sswitch_c4
        0xb26cbd6 -> :sswitch_b6
        0xb26e933 -> :sswitch_a9
        0x4f62635d -> :sswitch_9b
        0x59976a2d -> :sswitch_8e
        0x59ae0c65 -> :sswitch_81
        0x59aeaa01 -> :sswitch_74
        0x59b1cdba -> :sswitch_67
        0x59b1e81e -> :sswitch_5a
        0x59b64a32 -> :sswitch_4d
        0x79909c15 -> :sswitch_3f
    .end sparse-switch

    :pswitch_data_282
    .packed-switch 0x0
        :pswitch_1fe
        :pswitch_1fd
        :pswitch_1fc
        :pswitch_1fb
        :pswitch_1fa
        :pswitch_1f9
        :pswitch_1f8
        :pswitch_1f8
        :pswitch_1f7
        :pswitch_1f6
        :pswitch_1f5
        :pswitch_1f4
        :pswitch_1f3
        :pswitch_1f2
        :pswitch_1f1
        :pswitch_1fb
        :pswitch_1fb
        :pswitch_1f0
        :pswitch_1fe
        :pswitch_1ef
        :pswitch_1fa
        :pswitch_1f5
        :pswitch_1ee
        :pswitch_1ed
        :pswitch_1f5
        :pswitch_1fa
        :pswitch_1fe
        :pswitch_1ec
        :pswitch_1eb
        :pswitch_1ea
        :pswitch_1fb
        :pswitch_1fb
    .end packed-switch
.end method

.method public static inferFileTypeFromResponseHeaders(Ljava/util/Map;)I
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    const-string v0, "Content-Type"

    .line 190
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_19

    .line 192
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    :cond_11
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_1a

    :cond_19
    :goto_19
    const/4 p0, 0x0

    .line 193
    :goto_1a
    invoke-static {p0}, Landroidx/media3/common/FileTypes;->inferFileTypeFromMimeType(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static inferFileTypeFromUri(Landroid/net/Uri;)I
    .registers 7

    .line 267
    invoke-virtual {p0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object p0

    const/4 v0, -0x1

    if-nez p0, :cond_8

    return v0

    :cond_8
    const-string v1, ".ac3"

    .line 270
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1b1

    const-string v1, ".ec3"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1a

    goto/16 :goto_1b1

    :cond_1a
    const-string v1, ".ac4"

    .line 272
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    const/4 p0, 0x1

    return p0

    :cond_24
    const-string v1, ".adts"

    .line 274
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1af

    const-string v1, ".aac"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    goto/16 :goto_1af

    :cond_36
    const-string v1, ".amr"

    .line 276
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_40

    const/4 p0, 0x3

    return p0

    :cond_40
    const-string v1, ".flac"

    .line 278
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_4a

    return v2

    :cond_4a
    const-string v1, ".flv"

    .line 280
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_54

    return v3

    :cond_54
    const-string v1, ".mid"

    .line 282
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1ac

    const-string v1, ".midi"

    .line 283
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1ac

    const-string v1, ".smf"

    .line 284
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6e

    goto/16 :goto_1ac

    .line 288
    :cond_6e
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const-string v4, ".mk"

    .line 286
    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1aa

    const-string v1, ".webm"

    .line 289
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_85

    goto/16 :goto_1aa

    :cond_85
    const-string v1, ".mp3"

    .line 291
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8f

    const/4 p0, 0x7

    return p0

    :cond_8f
    const-string v1, ".mp4"

    .line 293
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1a7

    .line 296
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v2

    const-string v5, ".m4"

    .line 294
    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v4

    if-nez v4, :cond_1a7

    .line 299
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int/2addr v4, v3

    .line 297
    invoke-virtual {p0, v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1a7

    .line 302
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v3

    const-string v3, ".cmf"

    .line 300
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_be

    goto/16 :goto_1a7

    .line 306
    :cond_be
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v2

    const-string v3, ".og"

    .line 304
    invoke-virtual {p0, v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_1a4

    const-string v1, ".opus"

    .line 307
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_d5

    goto/16 :goto_1a4

    :cond_d5
    const-string v1, ".ps"

    .line 309
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a1

    const-string v1, ".mpeg"

    .line 310
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a1

    const-string v1, ".mpg"

    .line 311
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1a1

    const-string v1, ".m2p"

    .line 312
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_f7

    goto/16 :goto_1a1

    :cond_f7
    const-string v1, ".ts"

    .line 314
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19e

    .line 317
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    .line 315
    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_10c

    goto/16 :goto_19e

    :cond_10c
    const-string v1, ".wav"

    .line 319
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_19b

    const-string v1, ".wave"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11e

    goto/16 :goto_19b

    :cond_11e
    const-string v1, ".vtt"

    .line 321
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_198

    const-string v1, ".webvtt"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12f

    goto :goto_198

    :cond_12f
    const-string v1, ".jpg"

    .line 323
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_195

    const-string v1, ".jpeg"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_140

    goto :goto_195

    :cond_140
    const-string v1, ".avi"

    .line 325
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14b

    const/16 p0, 0x10

    return p0

    :cond_14b
    const-string v1, ".png"

    .line 327
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_156

    const/16 p0, 0x11

    return p0

    :cond_156
    const-string v1, ".webp"

    .line 329
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_161

    const/16 p0, 0x12

    return p0

    :cond_161
    const-string v1, ".bmp"

    .line 331
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_192

    const-string v1, ".dib"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_172

    goto :goto_192

    :cond_172
    const-string v1, ".heic"

    .line 333
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_18f

    const-string v1, ".heif"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_183

    goto :goto_18f

    :cond_183
    const-string v1, ".avif"

    .line 335
    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18e

    const/16 p0, 0x15

    return p0

    :cond_18e
    return v0

    :cond_18f
    :goto_18f
    const/16 p0, 0x14

    return p0

    :cond_192
    :goto_192
    const/16 p0, 0x13

    return p0

    :cond_195
    :goto_195
    const/16 p0, 0xe

    return p0

    :cond_198
    :goto_198
    const/16 p0, 0xd

    return p0

    :cond_19b
    :goto_19b
    const/16 p0, 0xc

    return p0

    :cond_19e
    :goto_19e
    const/16 p0, 0xb

    return p0

    :cond_1a1
    :goto_1a1
    const/16 p0, 0xa

    return p0

    :cond_1a4
    :goto_1a4
    const/16 p0, 0x9

    return p0

    :cond_1a7
    :goto_1a7
    const/16 p0, 0x8

    return p0

    :cond_1aa
    :goto_1aa
    const/4 p0, 0x6

    return p0

    :cond_1ac
    :goto_1ac
    const/16 p0, 0xf

    return p0

    :cond_1af
    :goto_1af
    const/4 p0, 0x2

    return p0

    :cond_1b1
    :goto_1b1
    const/4 p0, 0x0

    return p0
.end method
